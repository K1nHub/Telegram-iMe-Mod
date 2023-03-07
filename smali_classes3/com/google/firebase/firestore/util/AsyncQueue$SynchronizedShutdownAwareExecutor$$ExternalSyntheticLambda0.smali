.class public final synthetic Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final synthetic f$1:Ljava/util/concurrent/Callable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/util/concurrent/Callable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p2, p0, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v1, p0, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/Callable;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;->$r8$lambda$pKSAgg-ozJ8RbUveSl-44aUfFQw(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/util/concurrent/Callable;)V

    return-void
.end method
