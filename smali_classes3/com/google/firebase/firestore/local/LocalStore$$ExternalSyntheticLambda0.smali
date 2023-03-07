.class public final synthetic Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/firestore/util/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/local/IndexBackfiller;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/IndexBackfiller;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/local/IndexBackfiller;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/local/IndexBackfiller;

    invoke-static {v0}, Lcom/google/firebase/firestore/local/LocalStore;->$r8$lambda$ljQS4ACYsTHGov2ggZP9bzGkWpc(Lcom/google/firebase/firestore/local/IndexBackfiller;)Lcom/google/firebase/firestore/local/IndexBackfiller$Results;

    move-result-object v0

    return-object v0
.end method
