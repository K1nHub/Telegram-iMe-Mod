.class Lorg/solovyev/android/checkout/RequestListenerWrapper;
.super Ljava/lang/Object;
.source "RequestListenerWrapper.java"

# interfaces
.implements Lorg/solovyev/android/checkout/CancellableRequestListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/solovyev/android/checkout/CancellableRequestListener<",
        "TR;>;"
    }
.end annotation


# instance fields
.field protected final mListener:Lorg/solovyev/android/checkout/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/solovyev/android/checkout/RequestListener<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/solovyev/android/checkout/RequestListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/solovyev/android/checkout/RequestListener<",
            "TR;>;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/solovyev/android/checkout/RequestListenerWrapper;->mListener:Lorg/solovyev/android/checkout/RequestListener;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 47
    invoke-virtual {p0}, Lorg/solovyev/android/checkout/RequestListenerWrapper;->onCancel()V

    .line 48
    iget-object v0, p0, Lorg/solovyev/android/checkout/RequestListenerWrapper;->mListener:Lorg/solovyev/android/checkout/RequestListener;

    invoke-static {v0}, Lorg/solovyev/android/checkout/Billing;->cancel(Lorg/solovyev/android/checkout/RequestListener;)V

    return-void
.end method

.method protected onCancel()V
    .locals 0

    return-void
.end method

.method public onError(ILjava/lang/Exception;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/solovyev/android/checkout/RequestListenerWrapper;->mListener:Lorg/solovyev/android/checkout/RequestListener;

    invoke-interface {v0, p1, p2}, Lorg/solovyev/android/checkout/RequestListener;->onError(ILjava/lang/Exception;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/solovyev/android/checkout/RequestListenerWrapper;->mListener:Lorg/solovyev/android/checkout/RequestListener;

    invoke-interface {v0, p1}, Lorg/solovyev/android/checkout/RequestListener;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
