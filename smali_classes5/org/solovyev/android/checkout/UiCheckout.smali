.class public abstract Lorg/solovyev/android/checkout/UiCheckout;
.super Lorg/solovyev/android/checkout/Checkout;
.source "UiCheckout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/solovyev/android/checkout/UiCheckout$OneShotRequestListener;
    }
.end annotation


# instance fields
.field private final mFlows:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/solovyev/android/checkout/PurchaseFlow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lorg/solovyev/android/checkout/Billing;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lorg/solovyev/android/checkout/Checkout;-><init>(Ljava/lang/Object;Lorg/solovyev/android/checkout/Billing;)V

    .line 57
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/solovyev/android/checkout/UiCheckout;->mFlows:Landroid/util/SparseArray;

    return-void
.end method

.method private createPurchaseFlow(ILorg/solovyev/android/checkout/RequestListener;Z)Lorg/solovyev/android/checkout/PurchaseFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/solovyev/android/checkout/RequestListener<",
            "Lorg/solovyev/android/checkout/Purchase;",
            ">;Z)",
            "Lorg/solovyev/android/checkout/PurchaseFlow;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lorg/solovyev/android/checkout/UiCheckout;->mFlows:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/solovyev/android/checkout/PurchaseFlow;

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    .line 202
    new-instance p3, Lorg/solovyev/android/checkout/UiCheckout$OneShotRequestListener;

    invoke-direct {p3, p0, p2, p1}, Lorg/solovyev/android/checkout/UiCheckout$OneShotRequestListener;-><init>(Lorg/solovyev/android/checkout/UiCheckout;Lorg/solovyev/android/checkout/RequestListener;I)V

    move-object p2, p3

    .line 204
    :cond_0
    iget-object p3, p0, Lorg/solovyev/android/checkout/Checkout;->mBilling:Lorg/solovyev/android/checkout/Billing;

    invoke-virtual {p0}, Lorg/solovyev/android/checkout/UiCheckout;->makeIntentStarter()Lorg/solovyev/android/checkout/IntentStarter;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Lorg/solovyev/android/checkout/Billing;->createPurchaseFlow(Lorg/solovyev/android/checkout/IntentStarter;ILorg/solovyev/android/checkout/RequestListener;)Lorg/solovyev/android/checkout/PurchaseFlow;

    move-result-object p2

    .line 205
    iget-object p3, p0, Lorg/solovyev/android/checkout/UiCheckout;->mFlows:Landroid/util/SparseArray;

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-object p2

    .line 199
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Purchase flow associated with requestCode="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " already exists"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public createOneShotPurchaseFlow(ILorg/solovyev/android/checkout/RequestListener;)Lorg/solovyev/android/checkout/PurchaseFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/solovyev/android/checkout/RequestListener<",
            "Lorg/solovyev/android/checkout/Purchase;",
            ">;)",
            "Lorg/solovyev/android/checkout/PurchaseFlow;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 192
    invoke-direct {p0, p1, p2, v0}, Lorg/solovyev/android/checkout/UiCheckout;->createPurchaseFlow(ILorg/solovyev/android/checkout/RequestListener;Z)Lorg/solovyev/android/checkout/PurchaseFlow;

    move-result-object p1

    return-object p1
.end method

.method public createOneShotPurchaseFlow(Lorg/solovyev/android/checkout/RequestListener;)Lorg/solovyev/android/checkout/PurchaseFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/solovyev/android/checkout/RequestListener<",
            "Lorg/solovyev/android/checkout/Purchase;",
            ">;)",
            "Lorg/solovyev/android/checkout/PurchaseFlow;"
        }
    .end annotation

    const v0, 0xcafe

    .line 145
    invoke-virtual {p0, v0, p1}, Lorg/solovyev/android/checkout/UiCheckout;->createOneShotPurchaseFlow(ILorg/solovyev/android/checkout/RequestListener;)Lorg/solovyev/android/checkout/PurchaseFlow;

    move-result-object p1

    return-object p1
.end method

.method public destroyPurchaseFlow()V
    .locals 1

    const v0, 0xcafe

    .line 97
    invoke-virtual {p0, v0}, Lorg/solovyev/android/checkout/UiCheckout;->destroyPurchaseFlow(I)V

    return-void
.end method

.method public destroyPurchaseFlow(I)V
    .locals 2

    .line 107
    iget-object v0, p0, Lorg/solovyev/android/checkout/UiCheckout;->mFlows:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/solovyev/android/checkout/PurchaseFlow;

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lorg/solovyev/android/checkout/UiCheckout;->mFlows:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 114
    invoke-virtual {v0}, Lorg/solovyev/android/checkout/PurchaseFlow;->cancel()V

    return-void
.end method

.method public getPurchaseFlow()Lorg/solovyev/android/checkout/PurchaseFlow;
    .locals 1

    const v0, 0xcafe

    .line 122
    invoke-virtual {p0, v0}, Lorg/solovyev/android/checkout/UiCheckout;->getPurchaseFlow(I)Lorg/solovyev/android/checkout/PurchaseFlow;

    move-result-object v0

    return-object v0
.end method

.method public getPurchaseFlow(I)Lorg/solovyev/android/checkout/PurchaseFlow;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/solovyev/android/checkout/UiCheckout;->mFlows:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/solovyev/android/checkout/PurchaseFlow;

    if-eqz p1, :cond_0

    return-object p1

    .line 134
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Purchase flow doesn\'t exist. Have you forgotten to create it?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract makeIntentStarter()Lorg/solovyev/android/checkout/IntentStarter;
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 256
    iget-object v0, p0, Lorg/solovyev/android/checkout/UiCheckout;->mFlows:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/solovyev/android/checkout/PurchaseFlow;

    if-nez v0, :cond_0

    .line 258
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Purchase flow doesn\'t exist for requestCode="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Have you forgotten to create it?"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/solovyev/android/checkout/Billing;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 261
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/solovyev/android/checkout/PurchaseFlow;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public startPurchaseFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lorg/solovyev/android/checkout/RequestListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lorg/solovyev/android/checkout/RequestListener<",
            "Lorg/solovyev/android/checkout/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 225
    invoke-virtual {p0, p5}, Lorg/solovyev/android/checkout/UiCheckout;->createOneShotPurchaseFlow(Lorg/solovyev/android/checkout/RequestListener;)Lorg/solovyev/android/checkout/PurchaseFlow;

    .line 226
    new-instance p5, Lorg/solovyev/android/checkout/UiCheckout$1;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/solovyev/android/checkout/UiCheckout$1;-><init>(Lorg/solovyev/android/checkout/UiCheckout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, p5}, Lorg/solovyev/android/checkout/Checkout;->whenReady(Lorg/solovyev/android/checkout/Checkout$Listener;)V

    return-void
.end method

.method public startPurchaseFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/solovyev/android/checkout/RequestListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/solovyev/android/checkout/RequestListener<",
            "Lorg/solovyev/android/checkout/Purchase;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 217
    invoke-virtual/range {v0 .. v5}, Lorg/solovyev/android/checkout/UiCheckout;->startPurchaseFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lorg/solovyev/android/checkout/RequestListener;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/solovyev/android/checkout/UiCheckout;->mFlows:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 67
    invoke-super {p0}, Lorg/solovyev/android/checkout/Checkout;->stop()V

    return-void
.end method
