.class final Lorg/solovyev/android/checkout/GetPurchasesRequest;
.super Lorg/solovyev/android/checkout/BasePurchasesRequest;
.source "GetPurchasesRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/solovyev/android/checkout/GetPurchasesRequest$VerificationListener;
    }
.end annotation


# instance fields
.field private final mVerifier:Lorg/solovyev/android/checkout/PurchaseVerifier;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/solovyev/android/checkout/PurchaseVerifier;)V
    .locals 2

    .line 43
    sget-object v0, Lorg/solovyev/android/checkout/RequestType;->GET_PURCHASES:Lorg/solovyev/android/checkout/RequestType;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/solovyev/android/checkout/BasePurchasesRequest;-><init>(Lorg/solovyev/android/checkout/RequestType;ILjava/lang/String;Ljava/lang/String;)V

    .line 44
    iput-object p3, p0, Lorg/solovyev/android/checkout/GetPurchasesRequest;->mVerifier:Lorg/solovyev/android/checkout/PurchaseVerifier;

    return-void
.end method

.method constructor <init>(Lorg/solovyev/android/checkout/GetPurchasesRequest;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lorg/solovyev/android/checkout/BasePurchasesRequest;-><init>(Lorg/solovyev/android/checkout/BasePurchasesRequest;Ljava/lang/String;)V

    .line 49
    iget-object p1, p1, Lorg/solovyev/android/checkout/GetPurchasesRequest;->mVerifier:Lorg/solovyev/android/checkout/PurchaseVerifier;

    iput-object p1, p0, Lorg/solovyev/android/checkout/GetPurchasesRequest;->mVerifier:Lorg/solovyev/android/checkout/PurchaseVerifier;

    return-void
.end method


# virtual methods
.method protected processPurchases(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
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

    .line 54
    new-instance v0, Lorg/solovyev/android/checkout/GetPurchasesRequest$VerificationListener;

    iget-object v1, p0, Lorg/solovyev/android/checkout/BasePurchasesRequest;->mProduct:Ljava/lang/String;

    invoke-direct {v0, p0, v1, p2}, Lorg/solovyev/android/checkout/GetPurchasesRequest$VerificationListener;-><init>(Lorg/solovyev/android/checkout/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object p2, p0, Lorg/solovyev/android/checkout/GetPurchasesRequest;->mVerifier:Lorg/solovyev/android/checkout/PurchaseVerifier;

    invoke-interface {p2, p1, v0}, Lorg/solovyev/android/checkout/PurchaseVerifier;->verify(Ljava/util/List;Lorg/solovyev/android/checkout/RequestListener;)V

    .line 56
    invoke-static {v0}, Lorg/solovyev/android/checkout/GetPurchasesRequest$VerificationListener;->access$000(Lorg/solovyev/android/checkout/GetPurchasesRequest$VerificationListener;)Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x2711

    .line 57
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v1, "Either onSuccess or onError methods must be called by PurchaseVerifier"

    invoke-direct {p2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lorg/solovyev/android/checkout/GetPurchasesRequest$VerificationListener;->onError(ILjava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method protected request(Lcom/android/vending/billing/IInAppBillingService;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    iget v0, p0, Lorg/solovyev/android/checkout/Request;->mApiVersion:I

    iget-object v1, p0, Lorg/solovyev/android/checkout/BasePurchasesRequest;->mProduct:Ljava/lang/String;

    iget-object v2, p0, Lorg/solovyev/android/checkout/BasePurchasesRequest;->mContinuationToken:Ljava/lang/String;

    invoke-interface {p1, v0, p2, v1, v2}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
