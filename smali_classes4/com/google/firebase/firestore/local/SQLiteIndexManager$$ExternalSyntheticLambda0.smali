.class public final synthetic Lcom/google/firebase/firestore/local/SQLiteIndexManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->$r8$lambda$HX30GZdF6nZQQHng9N92OA8sM9Y(Ljava/util/ArrayList;Landroid/database/Cursor;)V

    return-void
.end method
