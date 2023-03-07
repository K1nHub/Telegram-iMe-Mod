.class Lorg/solovyev/android/checkout/UiCheckout$OneShotRequestListener;
.super Lorg/solovyev/android/checkout/RequestListenerWrapper;
.source "UiCheckout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/solovyev/android/checkout/UiCheckout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OneShotRequestListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/solovyev/android/checkout/RequestListenerWrapper<",
        "Lorg/solovyev/android/checkout/Purchase;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRequestCode:I

.field final synthetic this$0:Lorg/solovyev/android/checkout/UiCheckout;


# direct methods
.method public constructor <init>(Lorg/solovyev/android/checkout/UiCheckout;Lorg/solovyev/android/checkout/RequestListener;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/solovyev/android/checkout/RequestListener<",
            "Lorg/solovyev/android/checkout/Purchase;",
            ">;I)V"
        }
    .end annotation

    .line 268
    iput-object p1, p0, Lorg/solovyev/android/checkout/UiCheckout$OneShotRequestListener;->this$0:Lorg/solovyev/android/checkout/UiCheckout;

    .line 269
    invoke-direct {p0, p2}, Lorg/solovyev/android/checkout/RequestListenerWrapper;-><init>(Lorg/solovyev/android/checkout/RequestListener;)V

    .line 270
    iput p3, p0, Lorg/solovyev/android/checkout/UiCheckout$OneShotRequestListener;->mRequestCode:I

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 281
    iget-object v0, p0, Lorg/solovyev/android/checkout/UiCheckout$OneShotRequestListener;->this$0:Lorg/solovyev/android/checkout/UiCheckout;

    iget v1, p0, Lorg/solovyev/android/checkout/UiCheckout$OneShotRequestListener;->mRequestCode:I

    invoke-virtual {v0, v1}, Lorg/solovyev/android/checkout/UiCheckout;->destroyPurchaseFlow(I)V

    return-void
.end method

.method public onError(ILjava/lang/Exception;)V
    .locals 2

    .line 275
    iget-object v0, p0, Lorg/solovyev/android/checkout/UiCheckout$OneShotRequestListener;->this$0:Lorg/solovyev/android/checkout/UiCheckout;

    iget v1, p0, Lorg/solovyev/android/checkout/UiCheckout$OneShotRequestListener;->mRequestCode:I

    invoke-virtual {v0, v1}, Lorg/solovyev/android/checkout/UiCheckout;->destroyPurchaseFlow(I)V

    .line 276
    invoke-super {p0, p1, p2}, Lorg/solovyev/android/checkout/RequestListenerWrapper;->onError(ILjava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 265
    check-cast p1, Lorg/solovyev/android/checkout/Purchase;

    invoke-virtual {p0, p1}, Lorg/solovyev/android/checkout/UiCheckout$OneShotRequestListener;->onSuccess(Lorg/solovyev/android/checkout/Purchase;)V

    return-void
.end method

.method public onSuccess(Lorg/solovyev/android/checkout/Purchase;)V
    .locals 2

    .line 286
    iget-object v0, p0, Lorg/solovyev/android/checkout/UiCheckout$OneShotRequestListener;->this$0:Lorg/solovyev/android/checkout/UiCheckout;

    iget v1, p0, Lorg/solovyev/android/checkout/UiCheckout$OneShotRequestListener;->mRequestCode:I

    invoke-virtual {v0, v1}, Lorg/solovyev/android/checkout/UiCheckout;->destroyPurchaseFlow(I)V

    .line 287
    invoke-super {p0, p1}, Lorg/solovyev/android/checkout/RequestListenerWrapper;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
