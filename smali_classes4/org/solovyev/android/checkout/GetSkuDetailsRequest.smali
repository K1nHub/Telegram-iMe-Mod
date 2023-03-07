.class final Lorg/solovyev/android/checkout/GetSkuDetailsRequest;
.super Lorg/solovyev/android/checkout/Request;
.source "GetSkuDetailsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/solovyev/android/checkout/Request<",
        "Lorg/solovyev/android/checkout/Skus;",
        ">;"
    }
.end annotation


# instance fields
.field private final mProduct:Ljava/lang/String;

.field private final mSkus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 51
    sget-object v0, Lorg/solovyev/android/checkout/RequestType;->GET_SKU_DETAILS:Lorg/solovyev/android/checkout/RequestType;

    invoke-direct {p0, v0}, Lorg/solovyev/android/checkout/Request;-><init>(Lorg/solovyev/android/checkout/RequestType;)V

    .line 52
    iput-object p1, p0, Lorg/solovyev/android/checkout/GetSkuDetailsRequest;->mProduct:Ljava/lang/String;

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/solovyev/android/checkout/GetSkuDetailsRequest;->mSkus:Ljava/util/ArrayList;

    .line 54
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method private getSkuDetails(Lcom/android/vending/billing/IInAppBillingService;Ljava/lang/String;Ljava/util/ArrayList;)Lorg/solovyev/android/checkout/Skus;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/vending/billing/IInAppBillingService;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/solovyev/android/checkout/Skus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/solovyev/android/checkout/RequestException;
        }
    .end annotation

    .line 77
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 78
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ITEM_ID_LIST"

    .line 79
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 p3, 0x3

    .line 80
    iget-object v1, p0, Lorg/solovyev/android/checkout/GetSkuDetailsRequest;->mProduct:Ljava/lang/String;

    invoke-interface {p1, p3, p2, v1, v0}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Lorg/solovyev/android/checkout/Request;->handleError(Landroid/os/Bundle;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 82
    iget-object p2, p0, Lorg/solovyev/android/checkout/GetSkuDetailsRequest;->mProduct:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/solovyev/android/checkout/Skus;->fromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lorg/solovyev/android/checkout/Skus;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected getCacheKey()Ljava/lang/String;
    .locals 4

    .line 90
    iget-object v0, p0, Lorg/solovyev/android/checkout/GetSkuDetailsRequest;->mSkus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "_"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/solovyev/android/checkout/GetSkuDetailsRequest;->mProduct:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/solovyev/android/checkout/GetSkuDetailsRequest;->mSkus:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/solovyev/android/checkout/GetSkuDetailsRequest;->mSkus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "["

    .line 94
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :goto_0
    iget-object v3, p0, Lorg/solovyev/android/checkout/GetSkuDetailsRequest;->mSkus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    if-lez v2, :cond_1

    const-string v3, ","

    .line 97
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_1
    iget-object v3, p0, Lorg/solovyev/android/checkout/GetSkuDetailsRequest;->mSkus:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "]"

    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/solovyev/android/checkout/GetSkuDetailsRequest;->mProduct:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method start(Lcom/android/vending/billing/IInAppBillingService;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/solovyev/android/checkout/RequestException;
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 60
    :goto_0
    iget-object v2, p0, Lorg/solovyev/android/checkout/GetSkuDetailsRequest;->mSkus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 61
    iget-object v2, p0, Lorg/solovyev/android/checkout/GetSkuDetailsRequest;->mSkus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, v1, 0x14

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 62
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/solovyev/android/checkout/GetSkuDetailsRequest;->mSkus:Ljava/util/ArrayList;

    invoke-virtual {v5, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 63
    invoke-direct {p0, p1, p2, v4}, Lorg/solovyev/android/checkout/GetSkuDetailsRequest;->getSkuDetails(Lcom/android/vending/billing/IInAppBillingService;Ljava/lang/String;Ljava/util/ArrayList;)Lorg/solovyev/android/checkout/Skus;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, v1, Lorg/solovyev/android/checkout/Skus;->list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v1, v3

    goto :goto_0

    :cond_0
    return-void

    .line 71
    :cond_1
    new-instance p1, Lorg/solovyev/android/checkout/Skus;

    iget-object p2, p0, Lorg/solovyev/android/checkout/GetSkuDetailsRequest;->mProduct:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Lorg/solovyev/android/checkout/Skus;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lorg/solovyev/android/checkout/Request;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
