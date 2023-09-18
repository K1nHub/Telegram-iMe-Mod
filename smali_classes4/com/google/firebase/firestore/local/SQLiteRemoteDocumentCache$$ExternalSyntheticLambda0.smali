.class public final synthetic Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/google/firebase/firestore/util/BackgroundQueue;

.field public final synthetic f$3:Lcom/google/firebase/firestore/core/Query;

.field public final synthetic f$4:[Lcom/google/firebase/database/collection/ImmutableSortedMap;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;ILcom/google/firebase/firestore/util/BackgroundQueue;Lcom/google/firebase/firestore/core/Query;[Lcom/google/firebase/database/collection/ImmutableSortedMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;

    iput p2, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda0;->f$2:Lcom/google/firebase/firestore/util/BackgroundQueue;

    iput-object p4, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda0;->f$3:Lcom/google/firebase/firestore/core/Query;

    iput-object p5, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda0;->f$4:[Lcom/google/firebase/database/collection/ImmutableSortedMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;

    iget v1, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda0;->f$2:Lcom/google/firebase/firestore/util/BackgroundQueue;

    iget-object v3, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda0;->f$3:Lcom/google/firebase/firestore/core/Query;

    iget-object v4, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda0;->f$4:[Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-object v5, p1

    check-cast v5, Landroid/database/Cursor;

    invoke-static/range {v0 .. v5}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->$r8$lambda$x3lphr6QyqTsOgZWp9MsT60tUk4(Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;ILcom/google/firebase/firestore/util/BackgroundQueue;Lcom/google/firebase/firestore/core/Query;[Lcom/google/firebase/database/collection/ImmutableSortedMap;Landroid/database/Cursor;)V

    return-void
.end method
