.class public final synthetic Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/firestore/EventListener;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/DocumentReference;

.field public final synthetic f$1:Lcom/google/firebase/firestore/EventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/DocumentReference;Lcom/google/firebase/firestore/EventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/DocumentReference;

    iput-object p2, p0, Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda0;->f$1:Lcom/google/firebase/firestore/EventListener;

    return-void
.end method


# virtual methods
.method public final onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/DocumentReference;

    iget-object v1, p0, Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda0;->f$1:Lcom/google/firebase/firestore/EventListener;

    check-cast p1, Lcom/google/firebase/firestore/core/ViewSnapshot;

    invoke-static {v0, v1, p1, p2}, Lcom/google/firebase/firestore/DocumentReference;->$r8$lambda$GF131yLOtm0PQYErAZvV1mYKmvw(Lcom/google/firebase/firestore/DocumentReference;Lcom/google/firebase/firestore/EventListener;Lcom/google/firebase/firestore/core/ViewSnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method
