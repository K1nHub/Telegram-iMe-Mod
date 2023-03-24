.class final Lcom/google/firebase/firestore/local/SQLiteIndexManager;
.super Ljava/lang/Object;
.source "SQLiteIndexManager.java"

# interfaces
.implements Lcom/google/firebase/firestore/local/IndexManager;


# instance fields
.field private final collectionParentsCache:Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;

.field private final db:Lcom/google/firebase/firestore/local/SQLitePersistence;


# direct methods
.method public static synthetic $r8$lambda$HX30GZdF6nZQQHng9N92OA8sM9Y(Ljava/util/ArrayList;Landroid/database/Cursor;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->lambda$getCollectionParents$0(Ljava/util/ArrayList;Landroid/database/Cursor;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/firestore/local/SQLitePersistence;Lcom/google/firebase/firestore/local/LocalSerializer;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance p2, Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;

    invoke-direct {p2}, Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->collectionParentsCache:Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;

    .line 62
    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    return-void
.end method

.method private static synthetic lambda$getCollectionParents$0(Ljava/util/ArrayList;Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/firestore/local/EncodedPath;->decodeResourcePath(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addToCollectionParentIndex(Lcom/google/firebase/firestore/model/ResourcePath;)V
    .locals 6

    .line 68
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/BasePath;->length()I

    move-result v0

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Expected a collection path."

    invoke-static {v0, v5, v4}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->collectionParentsCache:Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;->add(Lcom/google/firebase/firestore/model/ResourcePath;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/BasePath;->getLastSegment()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/BasePath;->popLast()Lcom/google/firebase/firestore/model/BasePath;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/model/ResourcePath;

    .line 73
    iget-object v4, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    .line 78
    invoke-static {p1}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    const-string p1, "INSERT OR REPLACE INTO collection_parents (collection_id, parent) VALUES (?, ?)"

    .line 73
    invoke-virtual {v4, p1, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public getCollectionParents(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/ResourcePath;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v2, "SELECT parent FROM collection_parents WHERE collection_id = ?"

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 86
    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object p1

    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteIndexManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/google/firebase/firestore/local/SQLiteIndexManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;)V

    .line 87
    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    return-object v0
.end method
