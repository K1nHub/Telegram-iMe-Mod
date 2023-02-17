.class final Lorg/solovyev/android/checkout/MainThreadRequestListener;
.super Lorg/solovyev/android/checkout/RequestListenerWrapper;
.source "MainThreadRequestListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/solovyev/android/checkout/RequestListenerWrapper<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private mErrorRunnable:Ljava/lang/Runnable;

.field private final mMainThread:Lorg/solovyev/android/checkout/CancellableExecutor;

.field private mSuccessRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/solovyev/android/checkout/CancellableExecutor;Lorg/solovyev/android/checkout/RequestListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/solovyev/android/checkout/CancellableExecutor;",
            "Lorg/solovyev/android/checkout/RequestListener<",
            "TR;>;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p2}, Lorg/solovyev/android/checkout/RequestListenerWrapper;-><init>(Lorg/solovyev/android/checkout/RequestListener;)V

    .line 47
    iput-object p1, p0, Lorg/solovyev/android/checkout/MainThreadRequestListener;->mMainThread:Lorg/solovyev/android/checkout/CancellableExecutor;

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 73
    iget-object v0, p0, Lorg/solovyev/android/checkout/MainThreadRequestListener;->mSuccessRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 74
    iget-object v2, p0, Lorg/solovyev/android/checkout/MainThreadRequestListener;->mMainThread:Lorg/solovyev/android/checkout/CancellableExecutor;

    invoke-interface {v2, v0}, Lorg/solovyev/android/checkout/CancellableExecutor;->cancel(Ljava/lang/Runnable;)V

    .line 75
    iput-object v1, p0, Lorg/solovyev/android/checkout/MainThreadRequestListener;->mSuccessRunnable:Ljava/lang/Runnable;

    .line 78
    :cond_0
    iget-object v0, p0, Lorg/solovyev/android/checkout/MainThreadRequestListener;->mErrorRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 79
    iget-object v2, p0, Lorg/solovyev/android/checkout/MainThreadRequestListener;->mMainThread:Lorg/solovyev/android/checkout/CancellableExecutor;

    invoke-interface {v2, v0}, Lorg/solovyev/android/checkout/CancellableExecutor;->cancel(Ljava/lang/Runnable;)V

    .line 80
    iput-object v1, p0, Lorg/solovyev/android/checkout/MainThreadRequestListener;->mErrorRunnable:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method public onError(ILjava/lang/Exception;)V
    .locals 1

    .line 63
    new-instance v0, Lorg/solovyev/android/checkout/MainThreadRequestListener$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/solovyev/android/checkout/MainThreadRequestListener$2;-><init>(Lorg/solovyev/android/checkout/MainThreadRequestListener;ILjava/lang/Exception;)V

    iput-object v0, p0, Lorg/solovyev/android/checkout/MainThreadRequestListener;->mErrorRunnable:Ljava/lang/Runnable;

    .line 69
    iget-object p1, p0, Lorg/solovyev/android/checkout/MainThreadRequestListener;->mMainThread:Lorg/solovyev/android/checkout/CancellableExecutor;

    invoke-interface {p1, v0}, Lorg/solovyev/android/checkout/CancellableExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 52
    new-instance v0, Lorg/solovyev/android/checkout/MainThreadRequestListener$1;

    invoke-direct {v0, p0, p1}, Lorg/solovyev/android/checkout/MainThreadRequestListener$1;-><init>(Lorg/solovyev/android/checkout/MainThreadRequestListener;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/solovyev/android/checkout/MainThreadRequestListener;->mSuccessRunnable:Ljava/lang/Runnable;

    .line 58
    iget-object p1, p0, Lorg/solovyev/android/checkout/MainThreadRequestListener;->mMainThread:Lorg/solovyev/android/checkout/CancellableExecutor;

    invoke-interface {p1, v0}, Lorg/solovyev/android/checkout/CancellableExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
