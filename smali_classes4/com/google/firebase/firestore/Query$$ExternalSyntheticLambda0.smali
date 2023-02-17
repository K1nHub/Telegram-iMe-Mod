.class public final synthetic Lcom/google/firebase/firestore/Query$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/Query;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/Query;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/Query$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/Query;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/Query$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/Query;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/Query;->$r8$lambda$CA9Dwb1i3JPG4GxsEseBzGUKhuo(Lcom/google/firebase/firestore/Query;Lcom/google/android/gms/tasks/Task;)Lcom/google/firebase/firestore/QuerySnapshot;

    move-result-object p1

    return-object p1
.end method
