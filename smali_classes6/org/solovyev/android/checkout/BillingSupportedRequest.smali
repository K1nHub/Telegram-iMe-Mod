.class final Lorg/solovyev/android/checkout/BillingSupportedRequest;
.super Lorg/solovyev/android/checkout/Request;
.source "BillingSupportedRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/solovyev/android/checkout/Request<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mExtraParams:Landroid/os/Bundle;

.field private final mProduct:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    .line 47
    sget-object v0, Lorg/solovyev/android/checkout/RequestType;->BILLING_SUPPORTED:Lorg/solovyev/android/checkout/RequestType;

    invoke-direct {p0, v0, p2}, Lorg/solovyev/android/checkout/Request;-><init>(Lorg/solovyev/android/checkout/RequestType;I)V

    if-eqz p3, :cond_0

    const/4 v0, 0x7

    .line 49
    :cond_0
    iput-object p1, p0, Lorg/solovyev/android/checkout/BillingSupportedRequest;->mProduct:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lorg/solovyev/android/checkout/BillingSupportedRequest;->mExtraParams:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method protected getCacheKey()Ljava/lang/String;
    .locals 2

    .line 64
    iget-object v0, p0, Lorg/solovyev/android/checkout/BillingSupportedRequest;->mExtraParams:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_0
    iget v0, p0, Lorg/solovyev/android/checkout/Request;->mApiVersion:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 69
    iget-object v0, p0, Lorg/solovyev/android/checkout/BillingSupportedRequest;->mProduct:Ljava/lang/String;

    return-object v0

    .line 71
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/solovyev/android/checkout/BillingSupportedRequest;->mProduct:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/solovyev/android/checkout/Request;->mApiVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public start(Lcom/android/vending/billing/IInAppBillingService;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/solovyev/android/checkout/BillingSupportedRequest;->mExtraParams:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/solovyev/android/checkout/Request;->mApiVersion:I

    iget-object v2, p0, Lorg/solovyev/android/checkout/BillingSupportedRequest;->mProduct:Ljava/lang/String;

    invoke-interface {p1, v1, p2, v2, v0}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupportedExtraParams(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/solovyev/android/checkout/Request;->mApiVersion:I

    iget-object v1, p0, Lorg/solovyev/android/checkout/BillingSupportedRequest;->mProduct:Ljava/lang/String;

    invoke-interface {p1, v0, p2, v1}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 56
    :goto_0
    invoke-virtual {p0, p1}, Lorg/solovyev/android/checkout/Request;->handleError(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 57
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/solovyev/android/checkout/Request;->onSuccess(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
