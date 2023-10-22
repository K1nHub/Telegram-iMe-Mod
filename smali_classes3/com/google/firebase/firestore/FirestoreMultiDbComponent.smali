.class Lcom/google/firebase/firestore/FirestoreMultiDbComponent;
.super Ljava/lang/Object;
.source "FirestoreMultiDbComponent.java"

# interfaces
.implements Lcom/google/firebase/FirebaseAppLifecycleListener;


# instance fields
.field private final app:Lcom/google/firebase/FirebaseApp;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/inject/Deferred;Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/inject/Deferred<",
            "Lcom/google/firebase/auth/internal/InternalAuthProvider;",
            ">;",
            "Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 53
    iput-object p2, p0, Lcom/google/firebase/firestore/FirestoreMultiDbComponent;->app:Lcom/google/firebase/FirebaseApp;

    .line 56
    invoke-virtual {p2, p0}, Lcom/google/firebase/FirebaseApp;->addLifecycleEventListener(Lcom/google/firebase/FirebaseAppLifecycleListener;)V

    return-void
.end method
