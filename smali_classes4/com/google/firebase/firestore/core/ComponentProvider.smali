.class public abstract Lcom/google/firebase/firestore/core/ComponentProvider;
.super Ljava/lang/Object;
.source "ComponentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;
    }
.end annotation


# instance fields
.field private connectivityMonitor:Lcom/google/firebase/firestore/remote/ConnectivityMonitor;

.field private eventManager:Lcom/google/firebase/firestore/core/EventManager;

.field private garbageCollectionScheduler:Lcom/google/firebase/firestore/local/Scheduler;

.field private indexBackfillScheduler:Lcom/google/firebase/firestore/local/Scheduler;

.field private localStore:Lcom/google/firebase/firestore/local/LocalStore;

.field private persistence:Lcom/google/firebase/firestore/local/Persistence;

.field private remoteStore:Lcom/google/firebase/firestore/remote/RemoteStore;

.field private syncEngine:Lcom/google/firebase/firestore/core/SyncEngine;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createConnectivityMonitor(Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;)Lcom/google/firebase/firestore/remote/ConnectivityMonitor;
.end method

.method protected abstract createEventManager(Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;)Lcom/google/firebase/firestore/core/EventManager;
.end method

.method protected abstract createGarbageCollectionScheduler(Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;)Lcom/google/firebase/firestore/local/Scheduler;
.end method

.method protected abstract createIndexBackfillScheduler(Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;)Lcom/google/firebase/firestore/local/Scheduler;
.end method

.method protected abstract createLocalStore(Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;)Lcom/google/firebase/firestore/local/LocalStore;
.end method

.method protected abstract createPersistence(Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;)Lcom/google/firebase/firestore/local/Persistence;
.end method

.method protected abstract createRemoteStore(Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;)Lcom/google/firebase/firestore/remote/RemoteStore;
.end method

.method protected abstract createSyncEngine(Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;)Lcom/google/firebase/firestore/core/SyncEngine;
.end method

.method protected getConnectivityMonitor()Lcom/google/firebase/firestore/remote/ConnectivityMonitor;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->connectivityMonitor:Lcom/google/firebase/firestore/remote/ConnectivityMonitor;

    return-object v0
.end method

.method public getEventManager()Lcom/google/firebase/firestore/core/EventManager;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->eventManager:Lcom/google/firebase/firestore/core/EventManager;

    return-object v0
.end method

.method public getGarbageCollectionScheduler()Lcom/google/firebase/firestore/local/Scheduler;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->garbageCollectionScheduler:Lcom/google/firebase/firestore/local/Scheduler;

    return-object v0
.end method

.method public getIndexBackfillScheduler()Lcom/google/firebase/firestore/local/Scheduler;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->indexBackfillScheduler:Lcom/google/firebase/firestore/local/Scheduler;

    return-object v0
.end method

.method public getLocalStore()Lcom/google/firebase/firestore/local/LocalStore;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    return-object v0
.end method

.method public getPersistence()Lcom/google/firebase/firestore/local/Persistence;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    return-object v0
.end method

.method public getRemoteStore()Lcom/google/firebase/firestore/remote/RemoteStore;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->remoteStore:Lcom/google/firebase/firestore/remote/RemoteStore;

    return-object v0
.end method

.method public getSyncEngine()Lcom/google/firebase/firestore/core/SyncEngine;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->syncEngine:Lcom/google/firebase/firestore/core/SyncEngine;

    return-object v0
.end method

.method public initialize(Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;)V
    .locals 1

    .line 137
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/core/ComponentProvider;->createPersistence(Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;)Lcom/google/firebase/firestore/local/Persistence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    .line 138
    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/Persistence;->start()V

    .line 139
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/core/ComponentProvider;->createLocalStore(Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;)Lcom/google/firebase/firestore/local/LocalStore;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    .line 140
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/core/ComponentProvider;->createConnectivityMonitor(Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;)Lcom/google/firebase/firestore/remote/ConnectivityMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->connectivityMonitor:Lcom/google/firebase/firestore/remote/ConnectivityMonitor;

    .line 141
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/core/ComponentProvider;->createRemoteStore(Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;)Lcom/google/firebase/firestore/remote/RemoteStore;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->remoteStore:Lcom/google/firebase/firestore/remote/RemoteStore;

    .line 142
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/core/ComponentProvider;->createSyncEngine(Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;)Lcom/google/firebase/firestore/core/SyncEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->syncEngine:Lcom/google/firebase/firestore/core/SyncEngine;

    .line 143
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/core/ComponentProvider;->createEventManager(Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;)Lcom/google/firebase/firestore/core/EventManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->eventManager:Lcom/google/firebase/firestore/core/EventManager;

    .line 144
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/LocalStore;->start()V

    .line 145
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->remoteStore:Lcom/google/firebase/firestore/remote/RemoteStore;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/RemoteStore;->start()V

    .line 146
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/core/ComponentProvider;->createGarbageCollectionScheduler(Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;)Lcom/google/firebase/firestore/local/Scheduler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->garbageCollectionScheduler:Lcom/google/firebase/firestore/local/Scheduler;

    .line 147
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/core/ComponentProvider;->createIndexBackfillScheduler(Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;)Lcom/google/firebase/firestore/local/Scheduler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->indexBackfillScheduler:Lcom/google/firebase/firestore/local/Scheduler;

    return-void
.end method
