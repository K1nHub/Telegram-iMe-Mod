package com.google.firebase.components;

import com.google.firebase.events.Event;
import com.google.firebase.events.EventHandler;
import com.google.firebase.events.Publisher;
import com.google.firebase.events.Subscriber;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.Executor;
import p033j$.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class EventBus implements Subscriber, Publisher {
    private final Executor defaultExecutor;
    private final Map<Class<?>, ConcurrentHashMap<EventHandler<Object>, Executor>> handlerMap = new HashMap();
    private Queue<Event<?>> pendingEvents = new ArrayDeque();

    /* JADX INFO: Access modifiers changed from: package-private */
    public EventBus(Executor executor) {
        this.defaultExecutor = executor;
    }

    public void publish(final Event<?> event) {
        Preconditions.checkNotNull(event);
        synchronized (this) {
            Queue<Event<?>> queue = this.pendingEvents;
            if (queue != null) {
                queue.add(event);
                return;
            }
            for (final Map.Entry<EventHandler<Object>, Executor> entry : getHandlers(event)) {
                entry.getValue().execute(new Runnable() { // from class: com.google.firebase.components.EventBus$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        EventBus.lambda$publish$0(entry, event);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$publish$0(Map.Entry entry, Event event) {
        ((EventHandler) entry.getKey()).handle(event);
    }

    private synchronized Set<Map.Entry<EventHandler<Object>, Executor>> getHandlers(Event<?> event) {
        ConcurrentHashMap<EventHandler<Object>, Executor> concurrentHashMap;
        concurrentHashMap = this.handlerMap.get(event.getType());
        return concurrentHashMap == null ? Collections.emptySet() : concurrentHashMap.entrySet();
    }

    @Override // com.google.firebase.events.Subscriber
    public synchronized <T> void subscribe(Class<T> cls, Executor executor, EventHandler<? super T> eventHandler) {
        Preconditions.checkNotNull(cls);
        Preconditions.checkNotNull(eventHandler);
        Preconditions.checkNotNull(executor);
        if (!this.handlerMap.containsKey(cls)) {
            this.handlerMap.put(cls, new ConcurrentHashMap<>());
        }
        this.handlerMap.get(cls).put(eventHandler, executor);
    }

    @Override // com.google.firebase.events.Subscriber
    public <T> void subscribe(Class<T> cls, EventHandler<? super T> eventHandler) {
        subscribe(cls, this.defaultExecutor, eventHandler);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void enablePublishingAndFlushPending() {
        Queue<Event<?>> queue;
        synchronized (this) {
            queue = this.pendingEvents;
            if (queue != null) {
                this.pendingEvents = null;
            } else {
                queue = null;
            }
        }
        if (queue != null) {
            for (Event<?> event : queue) {
                publish(event);
            }
        }
    }
}
