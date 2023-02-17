.class final Lorg/solovyev/android/checkout/MainThread;
.super Ljava/lang/Object;
.source "MainThread.java"

# interfaces
.implements Lorg/solovyev/android/checkout/CancellableExecutor;


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 40
    iput-object p1, p0, Lorg/solovyev/android/checkout/MainThread;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static isMainThread()Z
    .locals 2

    .line 44
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public cancel(Ljava/lang/Runnable;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/solovyev/android/checkout/MainThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 56
    invoke-static {}, Lorg/solovyev/android/checkout/MainThread;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lorg/solovyev/android/checkout/MainThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
