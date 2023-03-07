.class final Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;
.super Ljava/lang/Object;
.source "SQLiteRemoteDocumentCache.java"

# interfaces
.implements Lcom/google/firebase/firestore/local/RemoteDocumentCache;


# instance fields
.field private final db:Lcom/google/firebase/firestore/local/SQLitePersistence;

.field private final serializer:Lcom/google/firebase/firestore/local/LocalSerializer;


# direct methods
.method public static synthetic $r8$lambda$BmnAijWf8-PHOEZs-QHJNJnzAAs(Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;Landroid/database/Cursor;)Lcom/google/firebase/firestore/model/MutableDocument;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->lambda$get$0(Landroid/database/Cursor;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$S3F_sg_wkJ7DWJDv1PVAhqj_09A(Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;Ljava/util/Map;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->lambda$getAll$1(Ljava/util/Map;Landroid/database/Cursor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p6zbnhKI01WFs5r9v38qoZoEPxc(Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;[BLcom/google/firebase/firestore/core/Query;[Lcom/google/firebase/database/collection/ImmutableSortedMap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->lambda$getAllDocumentsMatchingQuery$2([BLcom/google/firebase/firestore/core/Query;[Lcom/google/firebase/database/collection/ImmutableSortedMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x3lphr6QyqTsOgZWp9MsT60tUk4(Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;ILcom/google/firebase/firestore/util/BackgroundQueue;Lcom/google/firebase/firestore/core/Query;[Lcom/google/firebase/database/collection/ImmutableSortedMap;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->lambda$getAllDocumentsMatchingQuery$3(ILcom/google/firebase/firestore/util/BackgroundQueue;Lcom/google/firebase/firestore/core/Query;[Lcom/google/firebase/database/collection/ImmutableSortedMap;Landroid/database/Cursor;)V

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/firestore/local/SQLitePersistence;Lcom/google/firebase/firestore/local/LocalSerializer;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 45
    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    return-void
.end method

.method private decodeMaybeDocument([B)Lcom/google/firebase/firestore/model/MutableDocument;
    .locals 2

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    .line 209
    invoke-static {p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->parseFrom([B)Lcom/google/firebase/firestore/proto/MaybeDocument;

    move-result-object p1

    .line 208
    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/LocalSerializer;->decodeMaybeDocument(Lcom/google/firebase/firestore/proto/MaybeDocument;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "MaybeDocument failed to parse: %s"

    .line 211
    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

.method private synthetic lambda$get$0(Landroid/database/Cursor;)Lcom/google/firebase/firestore/model/MutableDocument;
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->decodeMaybeDocument([B)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$getAll$1(Ljava/util/Map;Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->decodeMaybeDocument([B)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object p2

    .line 115
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$getAllDocumentsMatchingQuery$2([BLcom/google/firebase/firestore/core/Query;[Lcom/google/firebase/database/collection/ImmutableSortedMap;)V
    .locals 2

    .line 184
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->decodeMaybeDocument([B)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->isFoundDocument()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Lcom/google/firebase/firestore/core/Query;->matches(Lcom/google/firebase/firestore/model/Document;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 186
    monitor-enter p0

    const/4 p2, 0x0

    .line 187
    :try_start_0
    aget-object v0, p3, p2

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object p1

    aput-object p1, p3, p2

    .line 188
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$getAllDocumentsMatchingQuery$3(ILcom/google/firebase/firestore/util/BackgroundQueue;Lcom/google/firebase/firestore/core/Query;[Lcom/google/firebase/database/collection/ImmutableSortedMap;Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    .line 172
    invoke-interface {p5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/local/EncodedPath;->decodeResourcePath(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/BasePath;->length()I

    move-result v0

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 177
    invoke-interface {p5, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    .line 181
    invoke-interface {p5}, Landroid/database/Cursor;->isLast()Z

    move-result p5

    if-eqz p5, :cond_1

    sget-object p2, Lcom/google/firebase/firestore/util/Executors;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 182
    :cond_1
    new-instance p5, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda3;

    invoke-direct {p5, p0, p1, p3, p4}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda3;-><init>(Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;[BLcom/google/firebase/firestore/core/Query;[Lcom/google/firebase/database/collection/ImmutableSortedMap;)V

    invoke-interface {p2, p5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private pathForKey(Lcom/google/firebase/firestore/model/DocumentKey;)Ljava/lang/String;
    .locals 0

    .line 203
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public add(Lcom/google/firebase/firestore/model/MutableDocument;Lcom/google/firebase/firestore/model/SnapshotVersion;)V
    .locals 8

    .line 50
    sget-object v0, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 51
    invoke-virtual {p2, v0}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Cannot add document to the RemoteDocumentCache with a read time of zero"

    .line 50
    invoke-static {v0, v4, v3}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 54
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->pathForKey(Lcom/google/firebase/firestore/model/DocumentKey;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/SnapshotVersion;->getTimestamp()Lcom/google/firebase/Timestamp;

    move-result-object p2

    .line 56
    iget-object v3, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    invoke-virtual {v3, p1}, Lcom/google/firebase/firestore/local/LocalSerializer;->encodeMaybeDocument(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/proto/MaybeDocument;

    move-result-object v3

    .line 58
    iget-object v4, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    .line 63
    invoke-virtual {p2}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x2

    .line 64
    invoke-virtual {p2}, Lcom/google/firebase/Timestamp;->getNanoseconds()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v0

    const/4 p2, 0x3

    .line 65
    invoke-interface {v3}, Lcom/google/protobuf/MessageLite;->toByteArray()[B

    move-result-object v0

    aput-object v0, v5, p2

    const-string p2, "INSERT OR REPLACE INTO remote_documents (path, read_time_seconds, read_time_nanos, contents) VALUES (?, ?, ?, ?)"

    .line 58
    invoke-virtual {v4, p2, v5}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    iget-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    invoke-virtual {p2}, Lcom/google/firebase/firestore/local/SQLitePersistence;->getIndexManager()Lcom/google/firebase/firestore/local/IndexManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/BasePath;->popLast()Lcom/google/firebase/firestore/model/BasePath;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-interface {p2, p1}, Lcom/google/firebase/firestore/local/IndexManager;->addToCollectionParentIndex(Lcom/google/firebase/firestore/model/ResourcePath;)V

    return-void
.end method

.method public get(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/MutableDocument;
    .locals 4

    .line 79
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->pathForKey(Lcom/google/firebase/firestore/model/DocumentKey;)Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v2, "SELECT contents FROM remote_documents WHERE path = ?"

    .line 82
    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 83
    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda2;-><init>(Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;)V

    .line 84
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->firstValue(Lcom/google/firebase/firestore/util/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/MutableDocument;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->newInvalidDocument(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getAll(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 92
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 96
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 99
    invoke-static {v2}, Lcom/google/firebase/firestore/model/MutableDocument;->newInvalidDocument(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 102
    :cond_1
    new-instance p1, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v3, "SELECT contents FROM remote_documents WHERE path IN ("

    const-string v4, ") ORDER BY path"

    invoke-direct {p1, v2, v3, v0, v4}, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;-><init>(Lcom/google/firebase/firestore/local/SQLitePersistence;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 109
    :goto_2
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->hasMoreSubqueries()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->performNextSubquery()Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v0

    new-instance v2, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;Ljava/util/Map;)V

    .line 112
    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    goto :goto_2

    :cond_2
    return-object v1
.end method

.method public getAllDocumentsMatchingQuery(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/Query;",
            "Lcom/google/firebase/firestore/model/SnapshotVersion;",
            ")",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;"
        }
    .end annotation

    .line 126
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Query;->isCollectionGroupQuery()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "CollectionGroup queries should be handled in LocalDocumentsView"

    .line 125
    invoke-static {v0, v4, v3}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Query;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/BasePath;->length()I

    move-result v3

    add-int/lit8 v6, v3, 0x1

    .line 133
    invoke-static {v0}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v0}, Lcom/google/firebase/firestore/local/EncodedPath;->prefixSuccessor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/SnapshotVersion;->getTimestamp()Lcom/google/firebase/Timestamp;

    move-result-object v4

    .line 137
    new-instance v10, Lcom/google/firebase/firestore/util/BackgroundQueue;

    invoke-direct {v10}, Lcom/google/firebase/firestore/util/BackgroundQueue;-><init>()V

    new-array v11, v1, [Lcom/google/firebase/database/collection/ImmutableSortedMap;

    .line 141
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentCollections;->emptyMutableDocumentMap()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v5

    aput-object v5, v11, v2

    .line 144
    sget-object v5, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {p2, v5}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v5, 0x2

    if-eqz p2, :cond_0

    .line 145
    iget-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v4, "SELECT path, contents FROM remote_documents WHERE path >= ? AND path < ?"

    .line 146
    invoke-virtual {p2, v4}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object p2

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v2

    aput-object v3, v4, v1

    .line 147
    invoke-virtual {p2, v4}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object p2

    goto :goto_0

    .line 152
    :cond_0
    iget-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v7, "SELECT path, contents FROM remote_documents WHERE path >= ? AND path < ?AND (read_time_seconds > ? OR (read_time_seconds = ? AND read_time_nanos > ?))"

    .line 153
    invoke-virtual {p2, v7}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object p2

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v2

    aput-object v3, v7, v1

    .line 159
    invoke-virtual {v4}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v5

    const/4 v0, 0x3

    .line 160
    invoke-virtual {v4}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v0

    const/4 v0, 0x4

    .line 161
    invoke-virtual {v4}, Lcom/google/firebase/Timestamp;->getNanoseconds()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v0

    .line 156
    invoke-virtual {p2, v7}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object p2

    .line 163
    :goto_0
    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda0;

    move-object v4, v0

    move-object v5, p0

    move-object v7, v10

    move-object v8, p1

    move-object v9, v11

    invoke-direct/range {v4 .. v9}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;ILcom/google/firebase/firestore/util/BackgroundQueue;Lcom/google/firebase/firestore/core/Query;[Lcom/google/firebase/database/collection/ImmutableSortedMap;)V

    invoke-virtual {p2, v0}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 194
    :try_start_0
    invoke-virtual {v10}, Lcom/google/firebase/firestore/util/BackgroundQueue;->drain()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "Interrupted while deserializing documents"

    .line 196
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    .line 199
    :goto_1
    aget-object p1, v11, v2

    return-object p1
.end method

.method public remove(Lcom/google/firebase/firestore/model/DocumentKey;)V
    .locals 3

    .line 72
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->pathForKey(Lcom/google/firebase/firestore/model/DocumentKey;)Ljava/lang/String;

    move-result-object p1

    .line 74
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "DELETE FROM remote_documents WHERE path = ?"

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
