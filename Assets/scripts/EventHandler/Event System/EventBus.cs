using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Security.Permissions;
using UnityEngine;
using UnityEngine.SceneManagement;

public static class EventBus
{
    private static readonly Dictionary<Type, List<EventBusEvent>> eventListeners =
        new Dictionary<Type, List<EventBusEvent>>();
    private static readonly Dictionary<Type, List<EventBusEvent>> scenePersistentEventListeners =
        new Dictionary<Type, List<EventBusEvent>>();
    private static bool initialized = false;

    /// <summary>
    /// Start listening for an event of type T or one of it's subclasses. 
    /// </summary>
    /// <param name="scenePersistent">If true listener won't automatically unsubscribe when changing scene
    ///								  Don't use this unless the object subscribing is also scene persistent</param>
    public static void AddListener<T>(Action<object, T> listener, bool scenePersistent = false) where T : BaseEvent
    {
        Dictionary<Type, List<EventBusEvent>> listeners =
            scenePersistent ? scenePersistentEventListeners : eventListeners;


        AddListener(new MultiFireEventBusEvent<T>(listener), listeners);
    }

    public static void RemoveListener<T>(Action<object, T> listenerToRemove, bool scenePersistent = false) where T : BaseEvent
    {
        Dictionary<Type, List<EventBusEvent>> listeners =
            scenePersistent ? scenePersistentEventListeners : eventListeners;

        RemoveListener<T, MultiFireEventBusEvent<T>>(listenerToRemove, listeners);
    }

    /// <summary>
    /// Trigger all events listening for type T or one of it's super classes
    /// </summary>
    public static void TriggerEvent<T>(object sender, T eventArgs) where T : BaseEvent
    {
        var listenersToInvoke =
            eventListeners.Concat(scenePersistentEventListeners)
			.Where(kvp => eventArgs.GetType() == kvp.Key || eventArgs.GetType().IsSubclassOf(kvp.Key));

        if(listenersToInvoke.Any())
        {
            foreach(EventBusEvent eventBusEvent in new List<EventBusEvent>(listenersToInvoke.SelectMany(kvp => kvp.Value)))
            {
                eventBusEvent.Trigger(sender, eventArgs);
            }
        }
    }

    /// <summary>
    /// If you think you need to use this you're probably wrong
    /// </summary>
    public static void RemoveAllListeners()
    {
        Debug.LogWarning("Removing all listeners");
        eventListeners.Clear();
        scenePersistentEventListeners.Clear();
    }

    /// <summary>
    /// Start listening for an event of type T and remove the listener the first time it's triggered
    /// </summary>
    public static void AddSingleFireListener<T>(Action<object, T> listener, bool scenePersistent = false) where T : BaseEvent
    {
        Dictionary<Type, List<EventBusEvent>> listeners =
            scenePersistent ? scenePersistentEventListeners : eventListeners;

        AddListener(new SingleFireEventBusEvent<T>(listener), listeners);
    }

    public static void RemoveSingleFireListener<T>(Action<object, T> listenerToRemove, bool scenePersistent = false) where T : BaseEvent
    {
        Dictionary<Type, List<EventBusEvent>> listeners =
            scenePersistent ? scenePersistentEventListeners : eventListeners;

        RemoveListener<T, SingleFireEventBusEvent<T>>(listenerToRemove, listeners);
    }

    private static void AddListener<T>(EventBusEvent<T> eventToAdd) where T : BaseEvent
    {
        AddListener(eventToAdd, eventListeners);
    }

    private static void AddListener<T>(EventBusEvent<T> eventToAdd,
                                    Dictionary<Type, List<EventBusEvent>> listeners) where T : BaseEvent
    {
        if(!initialized)
        {
            Initialize();
        }

        if(!listeners.ContainsKey(typeof(T)))
        {
            listeners.Add(typeof(T), new List<EventBusEvent>());
        }
        listeners[typeof(T)].Add(eventToAdd);
    }

    private static void RemoveListener<EventT, EventBusEventT>(Action<object, EventT> listenerToRemove,
                                                            Dictionary<Type, List<EventBusEvent>> listeners)
		where EventT : BaseEvent
		where EventBusEventT : EventBusEvent<EventT>
    {
        if(listeners.ContainsKey(typeof(EventT)))
        {
            EventBusEvent eventToRemove = listeners[typeof(EventT)]
				.OfType<EventBusEventT>()
				.FirstOrDefault(ev => ev.EventEquals(listenerToRemove));

            if(eventToRemove != null)
            {
                listeners[typeof(EventT)].Remove(eventToRemove);
            }
        }
    }

    private static void Initialize()
    {
        SceneManager.activeSceneChanged += SceneChanged;
        SceneManager.sceneUnloaded += SceneUnloaded;

        initialized = true;
    }

    private static void SceneChanged(Scene oldScene, Scene newScene)
    {
        TriggerEvent(null, new GameStateEvent.SceneLoadedEvent(newScene.name, newScene.buildIndex));
    }

    private static void SceneUnloaded(Scene oldScene)
    {
		if (oldScene.name != "Preview Scene")
		{
			Debug.Log("Unloading " + oldScene.name + ". If you just started the game, this shouldn't happen");
			eventListeners.Clear(); 
		}
    }
}