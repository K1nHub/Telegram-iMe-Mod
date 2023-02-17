.class abstract Lorg/solovyev/android/checkout/BasePurchasesRequest;
.super Lorg/solovyev/android/checkout/Request;
.source "BasePurchasesRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/solovyev/android/checkout/Request<",
        "Lorg/solovyev/android/checkout/Purchases;",
        ">;"
    }
.end annotation


# instance fields
.field protected final mContinuationToken:Ljava/lang/String;

.field protected final mProduct:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lorg/solovyev/android/checkout/BasePurchasesRequest;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lorg/solovyev/android/checkout/Request;-><init>(Lorg/solovyev/android/checkout/Request;)V

    .line 29
    iget-object p1, p1, Lorg/solovyev/android/checkout/BasePurchasesRequest;->mProduct:Ljava/lang/String;

    iput-object p1, p0, Lorg/solovyev/android/checkout/BasePurchasesRequest;->mProduct:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lorg/solovyev/android/checkout/BasePurchasesRequest;->mContinuationToken:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lorg/solovyev/android/checkout/RequestType;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lorg/solovyev/android/checkout/Request;-><init>(Lorg/solovyev/android/checkout/RequestType;I)V

    .line 23
    iput-object p3, p0, Lorg/solovyev/android/checkout/BasePurchasesRequest;->mProduct:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lorg/solovyev/android/checkout/BasePurchasesRequest;->mContinuationToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getCacheKey()Ljava/lang/String;
    .locals 2

    .line 70
    iget-object v0, p0, Lorg/solovyev/android/checkout/BasePurchasesRequest;->mContinuationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/solovyev/android/checkout/BasePurchasesRequest;->mProduct:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/solovyev/android/checkout/BasePurchasesRequest;->mContinuationToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/solovyev/android/checkout/BasePurchasesRequest;->mProduct:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract processPurchases(Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/solovyev/android/checkout/Purchase;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract request(Lcom/android/vending/billing/IInAppBillingService;Ljava/lang/String;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method final start(Lcom/android/vending/billing/IInAppBillingService;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1, p2}, Lorg/solovyev/android/checkout/BasePurchasesRequest;->request(Lcom/android/vending/billing/IInAppBillingService;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Lorg/solovyev/android/checkout/Request;->handleError(Landroid/os/Bundle;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 50
    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/solovyev/android/checkout/Purchases;->getContinuationTokenFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    .line 51
    invoke-static {p1}, Lorg/solovyev/android/checkout/Purchases;->getListFromBundle(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p1

    .line 52
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    new-instance v0, Lorg/solovyev/android/checkout/Purchases;

    iget-object v1, p0, Lorg/solovyev/android/checkout/BasePurchasesRequest;->mProduct:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Lorg/solovyev/android/checkout/Purchases;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/solovyev/android/checkout/Request;->onSuccess(Ljava/lang/Object;)V

    return-void

    .line 56
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/solovyev/android/checkout/BasePurchasesRequest;->processPurchases(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p0, p1}, Lorg/solovyev/android/checkout/Request;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
