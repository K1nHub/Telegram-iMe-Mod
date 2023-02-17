.class public final Lcom/google/firebase/firestore/local/LocalStore;
.super Ljava/lang/Object;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;
    }
.end annotation


# static fields
.field private static final RESUME_TOKEN_MAX_AGE_SECONDS:J


# instance fields
.field private final indexManager:Lcom/google/firebase/firestore/local/IndexManager;

.field private localDocuments:Lcom/google/firebase/firestore/local/LocalDocumentsView;

.field private final localViewReferences:Lcom/google/firebase/firestore/local/ReferenceSet;

.field private mutationQueue:Lcom/google/firebase/firestore/local/MutationQueue;

.field private final persistence:Lcom/google/firebase/firestore/local/Persistence;

.field private final queryDataByTarget:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/firebase/firestore/local/TargetData;",
            ">;"
        }
    .end annotation
.end field

.field private queryEngine:Lcom/google/firebase/firestore/local/QueryEngine;

.field private final remoteDocuments:Lcom/google/firebase/firestore/local/RemoteDocumentCache;

.field private final targetCache:Lcom/google/firebase/firestore/local/TargetCache;

.field private final targetIdByTarget:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/core/Target;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final targetIdGenerator:Lcom/google/firebase/firestore/core/TargetIdGenerator;


# direct methods
.method public static synthetic $r8$lambda$3LeY0CgpcJmk6UWjJ2TaBDVpSYE(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/LocalStore;->lambda$setLastStreamToken$4(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7x82UM8xRlZuqvCIPXDIvxPc81A(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;Lcom/google/firebase/firestore/core/Target;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/local/LocalStore;->lambda$allocateTarget$7(Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;Lcom/google/firebase/firestore/core/Target;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A2IF0ajRqHJvj3vIej1Up8dgZMA(Lcom/google/firebase/firestore/local/LocalStore;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/LocalStore;->lambda$releaseTarget$14(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$HnkWX_MRtmxXr0rZPokY6wj9E98(Lcom/google/firebase/firestore/local/LocalStore;I)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/LocalStore;->lambda$rejectBatch$3(I)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QwqA_2xMu_5B77vKXejsTFLJrVk(Lcom/google/firebase/firestore/local/LocalStore;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/local/LocalStore;->lambda$startMutationQueue$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$WKs4Or0sKg9O7nSJmeYb4wxBmk8(Lcom/google/firebase/firestore/local/LocalStore;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/LocalStore;->lambda$notifyLocalViewChanges$6(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YPxy4JdG9Do_TmoqxXe1lKQfVcw(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/remote/RemoteEvent;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/local/LocalStore;->lambda$applyRemoteEvent$5(Lcom/google/firebase/firestore/remote/RemoteEvent;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_BNYDYP-yVV-g_zrK3DPqWQtG2w(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/LocalStore;->lambda$acknowledgeBatch$2(Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ljQS4ACYsTHGov2ggZP9bzGkWpc(Lcom/google/firebase/firestore/local/IndexBackfiller;)Lcom/google/firebase/firestore/local/IndexBackfiller$Results;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/firestore/local/LocalStore;->lambda$backfillIndexes$16(Lcom/google/firebase/firestore/local/IndexBackfiller;)Lcom/google/firebase/firestore/local/IndexBackfiller$Results;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oztu29dmSeswgtaWiWj6q8eOWVI(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/local/LruGarbageCollector;)Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/LocalStore;->lambda$collectGarbage$15(Lcom/google/firebase/firestore/local/LruGarbageCollector;)Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 105
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/firestore/local/LocalStore;->RESUME_TOKEN_MAX_AGE_SECONDS:J

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/local/Persistence;Lcom/google/firebase/firestore/local/QueryEngine;Lcom/google/firebase/firestore/auth/User;)V
    .locals 3

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/Persistence;->isStarted()Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "LocalStore was passed an unstarted persistence implementation"

    .line 144
    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 146
    iput-object p1, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    .line 147
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/Persistence;->getTargetCache()Lcom/google/firebase/firestore/local/TargetCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetCache:Lcom/google/firebase/firestore/local/TargetCache;

    .line 148
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/Persistence;->getBundleCache()Lcom/google/firebase/firestore/local/BundleCache;

    .line 149
    invoke-interface {v0}, Lcom/google/firebase/firestore/local/TargetCache;->getHighestTargetId()I

    move-result v0

    invoke-static {v0}, Lcom/google/firebase/firestore/core/TargetIdGenerator;->forTargetCache(I)Lcom/google/firebase/firestore/core/TargetIdGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetIdGenerator:Lcom/google/firebase/firestore/core/TargetIdGenerator;

    .line 150
    invoke-virtual {p1, p3}, Lcom/google/firebase/firestore/local/Persistence;->getMutationQueue(Lcom/google/firebase/firestore/auth/User;)Lcom/google/firebase/firestore/local/MutationQueue;

    move-result-object p3

    iput-object p3, p0, Lcom/google/firebase/firestore/local/LocalStore;->mutationQueue:Lcom/google/firebase/firestore/local/MutationQueue;

    .line 151
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/Persistence;->getRemoteDocumentCache()Lcom/google/firebase/firestore/local/RemoteDocumentCache;

    move-result-object p3

    iput-object p3, p0, Lcom/google/firebase/firestore/local/LocalStore;->remoteDocuments:Lcom/google/firebase/firestore/local/RemoteDocumentCache;

    .line 152
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/Persistence;->getIndexManager()Lcom/google/firebase/firestore/local/IndexManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    .line 153
    new-instance v1, Lcom/google/firebase/firestore/local/LocalDocumentsView;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/LocalStore;->mutationQueue:Lcom/google/firebase/firestore/local/MutationQueue;

    invoke-direct {v1, p3, v2, v0}, Lcom/google/firebase/firestore/local/LocalDocumentsView;-><init>(Lcom/google/firebase/firestore/local/RemoteDocumentCache;Lcom/google/firebase/firestore/local/MutationQueue;Lcom/google/firebase/firestore/local/IndexManager;)V

    iput-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->localDocuments:Lcom/google/firebase/firestore/local/LocalDocumentsView;

    .line 155
    iput-object p2, p0, Lcom/google/firebase/firestore/local/LocalStore;->queryEngine:Lcom/google/firebase/firestore/local/QueryEngine;

    .line 156
    invoke-interface {p2, v1}, Lcom/google/firebase/firestore/local/QueryEngine;->setLocalDocumentsView(Lcom/google/firebase/firestore/local/LocalDocumentsView;)V

    .line 158
    new-instance p2, Lcom/google/firebase/firestore/local/ReferenceSet;

    invoke-direct {p2}, Lcom/google/firebase/firestore/local/ReferenceSet;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/firestore/local/LocalStore;->localViewReferences:Lcom/google/firebase/firestore/local/ReferenceSet;

    .line 159
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/Persistence;->getReferenceDelegate()Lcom/google/firebase/firestore/local/ReferenceDelegate;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/google/firebase/firestore/local/ReferenceDelegate;->setInMemoryPins(Lcom/google/firebase/firestore/local/ReferenceSet;)V

    .line 161
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/LocalStore;->queryDataByTarget:Landroid/util/SparseArray;

    .line 162
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetIdByTarget:Ljava/util/Map;

    return-void
.end method

.method private applyWriteToRemoteDocuments(Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;)V
    .locals 7

    .line 783
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;->getBatch()Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    move-result-object v0

    .line 784
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getKeys()Ljava/util/Set;

    move-result-object v1

    .line 785
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 786
    iget-object v3, p0, Lcom/google/firebase/firestore/local/LocalStore;->remoteDocuments:Lcom/google/firebase/firestore/local/RemoteDocumentCache;

    invoke-interface {v3, v2}, Lcom/google/firebase/firestore/local/RemoteDocumentCache;->get(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v3

    .line 787
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;->getDocVersions()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/SnapshotVersion;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "docVersions should contain every doc in the write."

    .line 788
    invoke-static {v5, v6, v4}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 790
    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/MutableDocument;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/firebase/firestore/model/SnapshotVersion;->compareTo(Lcom/google/firebase/firestore/model/SnapshotVersion;)I

    move-result v2

    if-gez v2, :cond_0

    .line 791
    invoke-virtual {v0, v3, p1}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->applyToRemoteDocument(Lcom/google/firebase/firestore/model/MutableDocument;Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;)V

    .line 792
    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/MutableDocument;->isValidDocument()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 793
    iget-object v2, p0, Lcom/google/firebase/firestore/local/LocalStore;->remoteDocuments:Lcom/google/firebase/firestore/local/RemoteDocumentCache;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;->getCommitVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/google/firebase/firestore/local/RemoteDocumentCache;->add(Lcom/google/firebase/firestore/model/MutableDocument;Lcom/google/firebase/firestore/model/SnapshotVersion;)V

    goto :goto_0

    .line 798
    :cond_2
    iget-object p1, p0, Lcom/google/firebase/firestore/local/LocalStore;->mutationQueue:Lcom/google/firebase/firestore/local/MutationQueue;

    invoke-interface {p1, v0}, Lcom/google/firebase/firestore/local/MutationQueue;->removeMutationBatch(Lcom/google/firebase/firestore/model/mutation/MutationBatch;)V

    return-void
.end method

.method private synthetic lambda$acknowledgeBatch$2(Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .locals 3

    .line 271
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;->getBatch()Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->mutationQueue:Lcom/google/firebase/firestore/local/MutationQueue;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;->getStreamToken()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/firebase/firestore/local/MutationQueue;->acknowledgeBatch(Lcom/google/firebase/firestore/model/mutation/MutationBatch;Lcom/google/protobuf/ByteString;)V

    .line 273
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/LocalStore;->applyWriteToRemoteDocuments(Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;)V

    .line 274
    iget-object p1, p0, Lcom/google/firebase/firestore/local/LocalStore;->mutationQueue:Lcom/google/firebase/firestore/local/MutationQueue;

    invoke-interface {p1}, Lcom/google/firebase/firestore/local/MutationQueue;->performConsistencyCheck()V

    .line 275
    iget-object p1, p0, Lcom/google/firebase/firestore/local/LocalStore;->localDocuments:Lcom/google/firebase/firestore/local/LocalDocumentsView;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getKeys()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/local/LocalDocumentsView;->getDocuments(Ljava/lang/Iterable;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$allocateTarget$7(Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;Lcom/google/firebase/firestore/core/Target;)V
    .locals 7

    .line 577
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetIdGenerator:Lcom/google/firebase/firestore/core/TargetIdGenerator;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/TargetIdGenerator;->nextId()I

    move-result v3

    iput v3, p1, Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;->targetId:I

    .line 578
    new-instance v0, Lcom/google/firebase/firestore/local/TargetData;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    .line 582
    invoke-virtual {v1}, Lcom/google/firebase/firestore/local/Persistence;->getReferenceDelegate()Lcom/google/firebase/firestore/local/ReferenceDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/firebase/firestore/local/ReferenceDelegate;->getCurrentSequenceNumber()J

    move-result-wide v4

    sget-object v6, Lcom/google/firebase/firestore/local/QueryPurpose;->LISTEN:Lcom/google/firebase/firestore/local/QueryPurpose;

    move-object v1, v0

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/firestore/local/TargetData;-><init>(Lcom/google/firebase/firestore/core/Target;IJLcom/google/firebase/firestore/local/QueryPurpose;)V

    iput-object v0, p1, Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;->cached:Lcom/google/firebase/firestore/local/TargetData;

    .line 584
    iget-object p1, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetCache:Lcom/google/firebase/firestore/local/TargetCache;

    invoke-interface {p1, v0}, Lcom/google/firebase/firestore/local/TargetCache;->addTargetData(Lcom/google/firebase/firestore/local/TargetData;)V

    return-void
.end method

.method private synthetic lambda$applyRemoteEvent$5(Lcom/google/firebase/firestore/remote/RemoteEvent;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .locals 8

    .line 348
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/RemoteEvent;->getTargetChanges()Ljava/util/Map;

    move-result-object v0

    .line 349
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/local/Persistence;->getReferenceDelegate()Lcom/google/firebase/firestore/local/ReferenceDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/firebase/firestore/local/ReferenceDelegate;->getCurrentSequenceNumber()J

    move-result-wide v1

    .line 351
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 352
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 353
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 354
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/remote/TargetChange;

    .line 356
    iget-object v5, p0, Lcom/google/firebase/firestore/local/LocalStore;->queryDataByTarget:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/local/TargetData;

    if-nez v5, :cond_1

    goto :goto_0

    .line 363
    :cond_1
    iget-object v6, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetCache:Lcom/google/firebase/firestore/local/TargetCache;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/remote/TargetChange;->getRemovedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Lcom/google/firebase/firestore/local/TargetCache;->removeMatchingKeys(Lcom/google/firebase/database/collection/ImmutableSortedSet;I)V

    .line 364
    iget-object v6, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetCache:Lcom/google/firebase/firestore/local/TargetCache;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/remote/TargetChange;->getAddedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Lcom/google/firebase/firestore/local/TargetCache;->addMatchingKeys(Lcom/google/firebase/database/collection/ImmutableSortedSet;I)V

    .line 366
    invoke-virtual {v3}, Lcom/google/firebase/firestore/remote/TargetChange;->getResumeToken()Lcom/google/protobuf/ByteString;

    move-result-object v6

    .line 368
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 371
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/RemoteEvent;->getSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/firebase/firestore/local/TargetData;->withResumeToken(Lcom/google/protobuf/ByteString;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object v6

    .line 372
    invoke-virtual {v6, v1, v2}, Lcom/google/firebase/firestore/local/TargetData;->withSequenceNumber(J)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object v6

    .line 373
    iget-object v7, p0, Lcom/google/firebase/firestore/local/LocalStore;->queryDataByTarget:Landroid/util/SparseArray;

    invoke-virtual {v7, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 377
    invoke-static {v5, v6, v3}, Lcom/google/firebase/firestore/local/LocalStore;->shouldPersistTargetData(Lcom/google/firebase/firestore/local/TargetData;Lcom/google/firebase/firestore/local/TargetData;Lcom/google/firebase/firestore/remote/TargetChange;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 378
    iget-object v3, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetCache:Lcom/google/firebase/firestore/local/TargetCache;

    invoke-interface {v3, v6}, Lcom/google/firebase/firestore/local/TargetCache;->updateTargetData(Lcom/google/firebase/firestore/local/TargetData;)V

    goto :goto_0

    .line 383
    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/RemoteEvent;->getDocumentUpdates()Ljava/util/Map;

    move-result-object v0

    .line 384
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/RemoteEvent;->getResolvedLimboDocuments()Ljava/util/Set;

    move-result-object v1

    .line 386
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 387
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 388
    iget-object v4, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/local/Persistence;->getReferenceDelegate()Lcom/google/firebase/firestore/local/ReferenceDelegate;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/google/firebase/firestore/local/ReferenceDelegate;->updateLimboDocument(Lcom/google/firebase/firestore/model/DocumentKey;)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 393
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/RemoteEvent;->getSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/firebase/firestore/local/LocalStore;->populateDocumentChanges(Ljava/util/Map;Ljava/util/Map;Lcom/google/firebase/firestore/model/SnapshotVersion;)Ljava/util/Map;

    move-result-object p1

    .line 398
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetCache:Lcom/google/firebase/firestore/local/TargetCache;

    invoke-interface {v0}, Lcom/google/firebase/firestore/local/TargetCache;->getLastRemoteSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v0

    .line 399
    sget-object v1, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {p2, v1}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 401
    invoke-virtual {p2, v0}, Lcom/google/firebase/firestore/model/SnapshotVersion;->compareTo(Lcom/google/firebase/firestore/model/SnapshotVersion;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v3

    aput-object v0, v4, v2

    const-string v0, "Watch stream reverted to previous snapshot?? (%s < %s)"

    .line 400
    invoke-static {v1, v0, v4}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 405
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetCache:Lcom/google/firebase/firestore/local/TargetCache;

    invoke-interface {v0, p2}, Lcom/google/firebase/firestore/local/TargetCache;->setLastRemoteSnapshotVersion(Lcom/google/firebase/firestore/model/SnapshotVersion;)V

    .line 408
    :cond_6
    iget-object p2, p0, Lcom/google/firebase/firestore/local/LocalStore;->localDocuments:Lcom/google/firebase/firestore/local/LocalDocumentsView;

    invoke-virtual {p2, p1}, Lcom/google/firebase/firestore/local/LocalDocumentsView;->getLocalViewOfDocuments(Ljava/util/Map;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$backfillIndexes$16(Lcom/google/firebase/firestore/local/IndexBackfiller;)Lcom/google/firebase/firestore/local/IndexBackfiller$Results;
    .locals 0

    .line 807
    invoke-virtual {p0}, Lcom/google/firebase/firestore/local/IndexBackfiller;->backfill()Lcom/google/firebase/firestore/local/IndexBackfiller$Results;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$collectGarbage$15(Lcom/google/firebase/firestore/local/LruGarbageCollector;)Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;
    .locals 1

    .line 803
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->queryDataByTarget:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/local/LruGarbageCollector;->collect(Landroid/util/SparseArray;)Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$notifyLocalViewChanges$6(Ljava/util/List;)V
    .locals 6

    .line 515
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/local/LocalViewChanges;

    .line 516
    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/LocalViewChanges;->getTargetId()I

    move-result v1

    .line 518
    iget-object v2, p0, Lcom/google/firebase/firestore/local/LocalStore;->localViewReferences:Lcom/google/firebase/firestore/local/ReferenceSet;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/LocalViewChanges;->getAdded()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/firebase/firestore/local/ReferenceSet;->addReferences(Lcom/google/firebase/database/collection/ImmutableSortedSet;I)V

    .line 519
    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/LocalViewChanges;->getRemoved()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v2

    .line 520
    invoke-virtual {v2}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 521
    iget-object v5, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    invoke-virtual {v5}, Lcom/google/firebase/firestore/local/Persistence;->getReferenceDelegate()Lcom/google/firebase/firestore/local/ReferenceDelegate;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/google/firebase/firestore/local/ReferenceDelegate;->removeReference(Lcom/google/firebase/firestore/model/DocumentKey;)V

    goto :goto_1

    .line 523
    :cond_1
    iget-object v3, p0, Lcom/google/firebase/firestore/local/LocalStore;->localViewReferences:Lcom/google/firebase/firestore/local/ReferenceSet;

    invoke-virtual {v3, v2, v1}, Lcom/google/firebase/firestore/local/ReferenceSet;->removeReferences(Lcom/google/firebase/database/collection/ImmutableSortedSet;I)V

    .line 525
    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/LocalViewChanges;->isFromCache()Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->queryDataByTarget:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/local/TargetData;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    new-array v2, v2, [Ljava/lang/Object;

    .line 530
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "Can\'t set limbo-free snapshot version for unknown target: %s"

    .line 527
    invoke-static {v4, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 533
    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/TargetData;->getSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v2

    .line 535
    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/local/TargetData;->withLastLimboFreeSnapshotVersion(Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object v0

    .line 536
    iget-object v2, p0, Lcom/google/firebase/firestore/local/LocalStore;->queryDataByTarget:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private synthetic lambda$rejectBatch$3(I)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->mutationQueue:Lcom/google/firebase/firestore/local/MutationQueue;

    invoke-interface {v0, p1}, Lcom/google/firebase/firestore/local/MutationQueue;->lookupMutationBatch(I)Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Attempt to reject nonexistent batch!"

    .line 292
    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 294
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->mutationQueue:Lcom/google/firebase/firestore/local/MutationQueue;

    invoke-interface {v0, p1}, Lcom/google/firebase/firestore/local/MutationQueue;->removeMutationBatch(Lcom/google/firebase/firestore/model/mutation/MutationBatch;)V

    .line 295
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->mutationQueue:Lcom/google/firebase/firestore/local/MutationQueue;

    invoke-interface {v0}, Lcom/google/firebase/firestore/local/MutationQueue;->performConsistencyCheck()V

    .line 296
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->localDocuments:Lcom/google/firebase/firestore/local/LocalDocumentsView;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getKeys()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/LocalDocumentsView;->getDocuments(Ljava/lang/Iterable;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$releaseTarget$14(I)V
    .locals 5

    .line 729
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->queryDataByTarget:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/local/TargetData;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 730
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v2, "Tried to release nonexistent target: %s"

    invoke-static {v3, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 736
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->localViewReferences:Lcom/google/firebase/firestore/local/ReferenceSet;

    .line 737
    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/local/ReferenceSet;->removeReferencesForId(I)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v1

    .line 738
    invoke-virtual {v1}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 739
    iget-object v3, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/local/Persistence;->getReferenceDelegate()Lcom/google/firebase/firestore/local/ReferenceDelegate;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/google/firebase/firestore/local/ReferenceDelegate;->removeReference(Lcom/google/firebase/firestore/model/DocumentKey;)V

    goto :goto_1

    .line 743
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/local/Persistence;->getReferenceDelegate()Lcom/google/firebase/firestore/local/ReferenceDelegate;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/firebase/firestore/local/ReferenceDelegate;->removeTarget(Lcom/google/firebase/firestore/local/TargetData;)V

    .line 744
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->queryDataByTarget:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 745
    iget-object p1, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetIdByTarget:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/TargetData;->getTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$setLastStreamToken$4(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->mutationQueue:Lcom/google/firebase/firestore/local/MutationQueue;

    invoke-interface {v0, p1}, Lcom/google/firebase/firestore/local/MutationQueue;->setLastStreamToken(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private synthetic lambda$startMutationQueue$0()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->mutationQueue:Lcom/google/firebase/firestore/local/MutationQueue;

    invoke-interface {v0}, Lcom/google/firebase/firestore/local/MutationQueue;->start()V

    return-void
.end method

.method private populateDocumentChanges(Ljava/util/Map;Ljava/util/Map;Lcom/google/firebase/firestore/model/SnapshotVersion;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/SnapshotVersion;",
            ">;",
            "Lcom/google/firebase/firestore/model/SnapshotVersion;",
            ")",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;"
        }
    .end annotation

    .line 429
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 433
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->remoteDocuments:Lcom/google/firebase/firestore/local/RemoteDocumentCache;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/firebase/firestore/local/RemoteDocumentCache;->getAll(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v1

    .line 435
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 436
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 437
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/MutableDocument;

    .line 438
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/model/MutableDocument;

    if-eqz p2, :cond_0

    .line 440
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/model/SnapshotVersion;

    goto :goto_1

    :cond_0
    move-object v5, p3

    .line 445
    :goto_1
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/MutableDocument;->isNoDocument()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/MutableDocument;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v6

    sget-object v7, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {v6, v7}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 448
    iget-object v4, p0, Lcom/google/firebase/firestore/local/LocalStore;->remoteDocuments:Lcom/google/firebase/firestore/local/RemoteDocumentCache;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/firebase/firestore/local/RemoteDocumentCache;->remove(Lcom/google/firebase/firestore/model/DocumentKey;)V

    .line 449
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 450
    :cond_1
    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/MutableDocument;->isValidDocument()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_3

    .line 451
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/MutableDocument;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/MutableDocument;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/google/firebase/firestore/model/SnapshotVersion;->compareTo(Lcom/google/firebase/firestore/model/SnapshotVersion;)I

    move-result v6

    if-gtz v6, :cond_3

    .line 452
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/MutableDocument;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/MutableDocument;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/google/firebase/firestore/model/SnapshotVersion;->compareTo(Lcom/google/firebase/firestore/model/SnapshotVersion;)I

    move-result v6

    if-nez v6, :cond_2

    .line 453
    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/MutableDocument;->hasPendingWrites()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v7

    .line 464
    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/MutableDocument;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v3

    aput-object v3, v5, v8

    const/4 v3, 0x2

    .line 465
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/MutableDocument;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v2

    aput-object v2, v5, v3

    const-string v2, "LocalStore"

    const-string v3, "Ignoring outdated watch update for %s.Current version: %s  Watch version: %s"

    .line 460
    invoke-static {v2, v3, v5}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 454
    :cond_3
    :goto_2
    sget-object v4, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 455
    invoke-virtual {v4, v5}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v8

    new-array v6, v7, [Ljava/lang/Object;

    const-string v7, "Cannot add a document when the remote version is zero"

    .line 454
    invoke-static {v4, v7, v6}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 457
    iget-object v4, p0, Lcom/google/firebase/firestore/local/LocalStore;->remoteDocuments:Lcom/google/firebase/firestore/local/RemoteDocumentCache;

    invoke-interface {v4, v2, v5}, Lcom/google/firebase/firestore/local/RemoteDocumentCache;->add(Lcom/google/firebase/firestore/model/MutableDocument;Lcom/google/firebase/firestore/model/SnapshotVersion;)V

    .line 458
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    return-object v0
.end method

.method private static shouldPersistTargetData(Lcom/google/firebase/firestore/local/TargetData;Lcom/google/firebase/firestore/local/TargetData;Lcom/google/firebase/firestore/remote/TargetChange;)Z
    .locals 5

    .line 484
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getResumeToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Attempted to persist query data with empty resume token"

    .line 483
    invoke-static {v0, v4, v3}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 488
    invoke-virtual {p0}, Lcom/google/firebase/firestore/local/TargetData;->getResumeToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 494
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/SnapshotVersion;->getTimestamp()Lcom/google/firebase/Timestamp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide v3

    .line 495
    invoke-virtual {p0}, Lcom/google/firebase/firestore/local/TargetData;->getSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/SnapshotVersion;->getTimestamp()Lcom/google/firebase/Timestamp;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide p0

    sub-long/2addr v3, p0

    .line 497
    sget-wide p0, Lcom/google/firebase/firestore/local/LocalStore;->RESUME_TOKEN_MAX_AGE_SECONDS:J

    cmp-long v0, v3, p0

    if-ltz v0, :cond_1

    return v1

    .line 504
    :cond_1
    invoke-virtual {p2}, Lcom/google/firebase/firestore/remote/TargetChange;->getAddedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->size()I

    move-result p0

    .line 505
    invoke-virtual {p2}, Lcom/google/firebase/firestore/remote/TargetChange;->getModifiedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->size()I

    move-result p1

    add-int/2addr p0, p1

    .line 506
    invoke-virtual {p2}, Lcom/google/firebase/firestore/remote/TargetChange;->getRemovedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->size()I

    move-result p1

    add-int/2addr p0, p1

    if-lez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private startMutationQueue()V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    new-instance v1, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda5;-><init>(Lcom/google/firebase/firestore/local/LocalStore;)V

    const-string v2, "Start MutationQueue"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/local/Persistence;->runTransaction(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public acknowledgeBatch(Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;",
            ")",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    new-instance v1, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda3;-><init>(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;)V

    const-string p1, "Acknowledge batch"

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/firestore/local/Persistence;->runTransaction(Ljava/lang/String;Lcom/google/firebase/firestore/util/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/database/collection/ImmutableSortedMap;

    return-object p1
.end method

.method public allocateTarget(Lcom/google/firebase/firestore/core/Target;)Lcom/google/firebase/firestore/local/TargetData;
    .locals 4

    .line 567
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetCache:Lcom/google/firebase/firestore/local/TargetCache;

    invoke-interface {v0, p1}, Lcom/google/firebase/firestore/local/TargetCache;->getTargetData(Lcom/google/firebase/firestore/core/Target;)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/TargetData;->getTargetId()I

    move-result v1

    goto :goto_0

    .line 573
    :cond_0
    new-instance v0, Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;-><init>(Lcom/google/firebase/firestore/local/LocalStore$1;)V

    .line 574
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    new-instance v2, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda7;-><init>(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;Lcom/google/firebase/firestore/core/Target;)V

    const-string v3, "Allocate target"

    invoke-virtual {v1, v3, v2}, Lcom/google/firebase/firestore/local/Persistence;->runTransaction(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 586
    iget v1, v0, Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;->targetId:I

    .line 587
    iget-object v0, v0, Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;->cached:Lcom/google/firebase/firestore/local/TargetData;

    .line 590
    :goto_0
    iget-object v2, p0, Lcom/google/firebase/firestore/local/LocalStore;->queryDataByTarget:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 591
    iget-object v2, p0, Lcom/google/firebase/firestore/local/LocalStore;->queryDataByTarget:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 592
    iget-object v2, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetIdByTarget:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public applyRemoteEvent(Lcom/google/firebase/firestore/remote/RemoteEvent;)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/remote/RemoteEvent;",
            ")",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;"
        }
    .end annotation

    .line 342
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/RemoteEvent;->getSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    new-instance v2, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda4;-><init>(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/remote/RemoteEvent;Lcom/google/firebase/firestore/model/SnapshotVersion;)V

    const-string p1, "Apply remote event"

    invoke-virtual {v1, p1, v2}, Lcom/google/firebase/firestore/local/Persistence;->runTransaction(Ljava/lang/String;Lcom/google/firebase/firestore/util/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/database/collection/ImmutableSortedMap;

    return-object p1
.end method

.method public backfillIndexes(Lcom/google/firebase/firestore/local/IndexBackfiller;)Lcom/google/firebase/firestore/local/IndexBackfiller$Results;
    .locals 2

    .line 807
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    new-instance v1, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/local/IndexBackfiller;)V

    const-string p1, "Backfill Indexes"

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/firestore/local/Persistence;->runTransaction(Ljava/lang/String;Lcom/google/firebase/firestore/util/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/local/IndexBackfiller$Results;

    return-object p1
.end method

.method public collectGarbage(Lcom/google/firebase/firestore/local/LruGarbageCollector;)Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;
    .locals 2

    .line 802
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    new-instance v1, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda2;-><init>(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/local/LruGarbageCollector;)V

    const-string p1, "Collect garbage"

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/firestore/local/Persistence;->runTransaction(Ljava/lang/String;Lcom/google/firebase/firestore/util/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;

    return-object p1
.end method

.method public executeQuery(Lcom/google/firebase/firestore/core/Query;Z)Lcom/google/firebase/firestore/local/QueryResult;
    .locals 4

    .line 757
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Query;->toTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/local/LocalStore;->getTargetData(Lcom/google/firebase/firestore/core/Target;)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object v0

    .line 758
    sget-object v1, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 759
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentKey;->emptyKeySet()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 762
    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/TargetData;->getLastLimboFreeSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v2

    .line 763
    iget-object v3, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetCache:Lcom/google/firebase/firestore/local/TargetCache;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/TargetData;->getTargetId()I

    move-result v0

    invoke-interface {v3, v0}, Lcom/google/firebase/firestore/local/TargetCache;->getMatchingKeysForTargetId(I)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    move-object v2, v1

    .line 766
    :goto_0
    iget-object v3, p0, Lcom/google/firebase/firestore/local/LocalStore;->queryEngine:Lcom/google/firebase/firestore/local/QueryEngine;

    if-eqz p2, :cond_1

    move-object v1, v2

    :cond_1
    if-eqz p2, :cond_2

    move-object p2, v0

    goto :goto_1

    .line 770
    :cond_2
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentKey;->emptyKeySet()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object p2

    .line 767
    :goto_1
    invoke-interface {v3, p1, v1, p2}, Lcom/google/firebase/firestore/local/QueryEngine;->getDocumentsMatchingQuery(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/database/collection/ImmutableSortedSet;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object p1

    .line 771
    new-instance p2, Lcom/google/firebase/firestore/local/QueryResult;

    invoke-direct {p2, p1, v0}, Lcom/google/firebase/firestore/local/QueryResult;-><init>(Lcom/google/firebase/database/collection/ImmutableSortedMap;Lcom/google/firebase/database/collection/ImmutableSortedSet;)V

    return-object p2
.end method

.method public getLastRemoteSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetCache:Lcom/google/firebase/firestore/local/TargetCache;

    invoke-interface {v0}, Lcom/google/firebase/firestore/local/TargetCache;->getLastRemoteSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v0

    return-object v0
.end method

.method public getLastStreamToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->mutationQueue:Lcom/google/firebase/firestore/local/MutationQueue;

    invoke-interface {v0}, Lcom/google/firebase/firestore/local/MutationQueue;->getLastStreamToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNextMutationBatch(I)Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->mutationQueue:Lcom/google/firebase/firestore/local/MutationQueue;

    invoke-interface {v0, p1}, Lcom/google/firebase/firestore/local/MutationQueue;->getNextMutationBatchAfterBatchId(I)Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    move-result-object p1

    return-object p1
.end method

.method getTargetData(Lcom/google/firebase/firestore/core/Target;)Lcom/google/firebase/firestore/local/TargetData;
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetIdByTarget:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 606
    iget-object p1, p0, Lcom/google/firebase/firestore/local/LocalStore;->queryDataByTarget:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/local/TargetData;

    return-object p1

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetCache:Lcom/google/firebase/firestore/local/TargetCache;

    invoke-interface {v0, p1}, Lcom/google/firebase/firestore/local/TargetCache;->getTargetData(Lcom/google/firebase/firestore/core/Target;)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object p1

    return-object p1
.end method

.method public handleUserChange(Lcom/google/firebase/firestore/auth/User;)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/auth/User;",
            ")",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->mutationQueue:Lcom/google/firebase/firestore/local/MutationQueue;

    invoke-interface {v0}, Lcom/google/firebase/firestore/local/MutationQueue;->getAllMutationBatches()Ljava/util/List;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/local/Persistence;->getMutationQueue(Lcom/google/firebase/firestore/auth/User;)Lcom/google/firebase/firestore/local/MutationQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/firestore/local/LocalStore;->mutationQueue:Lcom/google/firebase/firestore/local/MutationQueue;

    .line 184
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/LocalStore;->startMutationQueue()V

    .line 186
    iget-object p1, p0, Lcom/google/firebase/firestore/local/LocalStore;->mutationQueue:Lcom/google/firebase/firestore/local/MutationQueue;

    invoke-interface {p1}, Lcom/google/firebase/firestore/local/MutationQueue;->getAllMutationBatches()Ljava/util/List;

    move-result-object p1

    .line 189
    new-instance v1, Lcom/google/firebase/firestore/local/LocalDocumentsView;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/LocalStore;->remoteDocuments:Lcom/google/firebase/firestore/local/RemoteDocumentCache;

    iget-object v3, p0, Lcom/google/firebase/firestore/local/LocalStore;->mutationQueue:Lcom/google/firebase/firestore/local/MutationQueue;

    iget-object v4, p0, Lcom/google/firebase/firestore/local/LocalStore;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/firebase/firestore/local/LocalDocumentsView;-><init>(Lcom/google/firebase/firestore/local/RemoteDocumentCache;Lcom/google/firebase/firestore/local/MutationQueue;Lcom/google/firebase/firestore/local/IndexManager;)V

    iput-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->localDocuments:Lcom/google/firebase/firestore/local/LocalDocumentsView;

    .line 190
    iget-object v2, p0, Lcom/google/firebase/firestore/local/LocalStore;->queryEngine:Lcom/google/firebase/firestore/local/QueryEngine;

    invoke-interface {v2, v1}, Lcom/google/firebase/firestore/local/QueryEngine;->setLocalDocumentsView(Lcom/google/firebase/firestore/local/LocalDocumentsView;)V

    .line 193
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentKey;->emptyKeySet()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    .line 194
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 195
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    .line 196
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getMutations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/mutation/Mutation;

    .line 197
    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->insert(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v1

    goto :goto_0

    .line 203
    :cond_2
    iget-object p1, p0, Lcom/google/firebase/firestore/local/LocalStore;->localDocuments:Lcom/google/firebase/firestore/local/LocalDocumentsView;

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/local/LocalDocumentsView;->getDocuments(Ljava/lang/Iterable;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public notifyLocalViewChanges(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/local/LocalViewChanges;",
            ">;)V"
        }
    .end annotation

    .line 512
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    new-instance v1, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda9;-><init>(Lcom/google/firebase/firestore/local/LocalStore;Ljava/util/List;)V

    const-string p1, "notifyLocalViewChanges"

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/firestore/local/Persistence;->runTransaction(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public rejectBatch(I)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    new-instance v1, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/firestore/local/LocalStore;I)V

    const-string p1, "Reject batch"

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/firestore/local/Persistence;->runTransaction(Ljava/lang/String;Lcom/google/firebase/firestore/util/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/database/collection/ImmutableSortedMap;

    return-object p1
.end method

.method public releaseTarget(I)V
    .locals 2

    .line 726
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    new-instance v1, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda6;-><init>(Lcom/google/firebase/firestore/local/LocalStore;I)V

    const-string p1, "Release target"

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/firestore/local/Persistence;->runTransaction(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLastStreamToken(Lcom/google/protobuf/ByteString;)V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    new-instance v1, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda8;-><init>(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/protobuf/ByteString;)V

    const-string p1, "Set stream token"

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/firestore/local/Persistence;->runTransaction(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public start()V
    .locals 0

    .line 166
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/LocalStore;->startMutationQueue()V

    return-void
.end method
