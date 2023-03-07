package com.google.firebase.firestore.core;

import android.content.Context;
import com.google.firebase.firestore.FirebaseFirestoreSettings;
import com.google.firebase.firestore.auth.User;
import com.google.firebase.firestore.local.LocalStore;
import com.google.firebase.firestore.local.Persistence;
import com.google.firebase.firestore.local.Scheduler;
import com.google.firebase.firestore.remote.ConnectivityMonitor;
import com.google.firebase.firestore.remote.Datastore;
import com.google.firebase.firestore.remote.RemoteStore;
import com.google.firebase.firestore.util.AsyncQueue;
/* loaded from: classes3.dex */
public abstract class ComponentProvider {
    private ConnectivityMonitor connectivityMonitor;
    private EventManager eventManager;
    private Scheduler garbageCollectionScheduler;
    private Scheduler indexBackfillScheduler;
    private LocalStore localStore;
    private Persistence persistence;
    private RemoteStore remoteStore;
    private SyncEngine syncEngine;

    protected abstract ConnectivityMonitor createConnectivityMonitor(Configuration configuration);

    protected abstract EventManager createEventManager(Configuration configuration);

    protected abstract Scheduler createGarbageCollectionScheduler(Configuration configuration);

    protected abstract Scheduler createIndexBackfillScheduler(Configuration configuration);

    protected abstract LocalStore createLocalStore(Configuration configuration);

    protected abstract Persistence createPersistence(Configuration configuration);

    protected abstract RemoteStore createRemoteStore(Configuration configuration);

    protected abstract SyncEngine createSyncEngine(Configuration configuration);

    /* loaded from: classes3.dex */
    public static class Configuration {
        private final AsyncQueue asyncQueue;
        private final Context context;
        private final DatabaseInfo databaseInfo;
        private final Datastore datastore;
        private final User initialUser;
        private final int maxConcurrentLimboResolutions;
        private final FirebaseFirestoreSettings settings;

        public Configuration(Context context, AsyncQueue asyncQueue, DatabaseInfo databaseInfo, Datastore datastore, User user, int i, FirebaseFirestoreSettings firebaseFirestoreSettings) {
            this.context = context;
            this.asyncQueue = asyncQueue;
            this.databaseInfo = databaseInfo;
            this.datastore = datastore;
            this.initialUser = user;
            this.maxConcurrentLimboResolutions = i;
            this.settings = firebaseFirestoreSettings;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public FirebaseFirestoreSettings getSettings() {
            return this.settings;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public AsyncQueue getAsyncQueue() {
            return this.asyncQueue;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public DatabaseInfo getDatabaseInfo() {
            return this.databaseInfo;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Datastore getDatastore() {
            return this.datastore;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public User getInitialUser() {
            return this.initialUser;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public int getMaxConcurrentLimboResolutions() {
            return this.maxConcurrentLimboResolutions;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Context getContext() {
            return this.context;
        }
    }

    public Persistence getPersistence() {
        return this.persistence;
    }

    public Scheduler getGarbageCollectionScheduler() {
        return this.garbageCollectionScheduler;
    }

    public Scheduler getIndexBackfillScheduler() {
        return this.indexBackfillScheduler;
    }

    public LocalStore getLocalStore() {
        return this.localStore;
    }

    public SyncEngine getSyncEngine() {
        return this.syncEngine;
    }

    public RemoteStore getRemoteStore() {
        return this.remoteStore;
    }

    public EventManager getEventManager() {
        return this.eventManager;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ConnectivityMonitor getConnectivityMonitor() {
        return this.connectivityMonitor;
    }

    public void initialize(Configuration configuration) {
        Persistence createPersistence = createPersistence(configuration);
        this.persistence = createPersistence;
        createPersistence.start();
        this.localStore = createLocalStore(configuration);
        this.connectivityMonitor = createConnectivityMonitor(configuration);
        this.remoteStore = createRemoteStore(configuration);
        this.syncEngine = createSyncEngine(configuration);
        this.eventManager = createEventManager(configuration);
        this.localStore.start();
        this.remoteStore.start();
        this.garbageCollectionScheduler = createGarbageCollectionScheduler(configuration);
        this.indexBackfillScheduler = createIndexBackfillScheduler(configuration);
    }
}
