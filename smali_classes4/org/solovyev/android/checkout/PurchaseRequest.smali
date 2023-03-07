.class final Lorg/solovyev/android/checkout/PurchaseRequest;
.super Lorg/solovyev/android/checkout/Request;
.source "PurchaseRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/solovyev/android/checkout/Request<",
        "Landroid/app/PendingIntent;",
        ">;"
    }
.end annotation


# instance fields
.field private final mExtraParams:Landroid/os/Bundle;

.field private final mPayload:Ljava/lang/String;

.field private final mProduct:Ljava/lang/String;

.field private final mSku:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 50
    sget-object v0, Lorg/solovyev/android/checkout/RequestType;->PURCHASE:Lorg/solovyev/android/checkout/RequestType;

    if-eqz p4, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    invoke-direct {p0, v0, v1}, Lorg/solovyev/android/checkout/Request;-><init>(Lorg/solovyev/android/checkout/RequestType;I)V

    .line 51
    iput-object p1, p0, Lorg/solovyev/android/checkout/PurchaseRequest;->mProduct:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lorg/solovyev/android/checkout/PurchaseRequest;->mSku:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lorg/solovyev/android/checkout/PurchaseRequest;->mPayload:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lorg/solovyev/android/checkout/PurchaseRequest;->mExtraParams:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method protected getCacheKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method start(Lcom/android/vending/billing/IInAppBillingService;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/solovyev/android/checkout/RequestException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/solovyev/android/checkout/PurchaseRequest;->mPayload:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    move-object v6, v0

    .line 60
    iget-object v7, p0, Lorg/solovyev/android/checkout/PurchaseRequest;->mExtraParams:Landroid/os/Bundle;

    iget v2, p0, Lorg/solovyev/android/checkout/Request;->mApiVersion:I

    iget-object v4, p0, Lorg/solovyev/android/checkout/PurchaseRequest;->mSku:Ljava/lang/String;

    iget-object v5, p0, Lorg/solovyev/android/checkout/PurchaseRequest;->mProduct:Ljava/lang/String;

    move-object v1, p1

    move-object v3, p2

    if-eqz v7, :cond_1

    invoke-interface/range {v1 .. v7}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntentExtraParams(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-interface/range {v1 .. v6}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 61
    :goto_0
    invoke-virtual {p0, p1}, Lorg/solovyev/android/checkout/Request;->handleError(Landroid/os/Bundle;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    :cond_2
    const-string p2, "BUY_INTENT"

    .line 64
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    .line 66
    invoke-virtual {p0, p1}, Lorg/solovyev/android/checkout/Request;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
