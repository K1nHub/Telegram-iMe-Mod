.class final Lorg/solovyev/android/checkout/Billing$Requests;
.super Ljava/lang/Object;
.source "Billing.java"

# interfaces
.implements Lorg/solovyev/android/checkout/BillingRequests;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/solovyev/android/checkout/Billing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Requests"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/solovyev/android/checkout/Billing$Requests$BaseAllPurchasesListener;,
        Lorg/solovyev/android/checkout/Billing$Requests$GetAllPurchasesListener;
    }
.end annotation


# instance fields
.field private final mOnMainThread:Z

.field private final mTag:Ljava/lang/Object;

.field final synthetic this$0:Lorg/solovyev/android/checkout/Billing;


# direct methods
.method private constructor <init>(Lorg/solovyev/android/checkout/Billing;Ljava/lang/Object;Z)V
    .locals 0

    .line 966
    iput-object p1, p0, Lorg/solovyev/android/checkout/Billing$Requests;->this$0:Lorg/solovyev/android/checkout/Billing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 967
    iput-object p2, p0, Lorg/solovyev/android/checkout/Billing$Requests;->mTag:Ljava/lang/Object;

    .line 968
    iput-boolean p3, p0, Lorg/solovyev/android/checkout/Billing$Requests;->mOnMainThread:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/solovyev/android/checkout/Billing;Ljava/lang/Object;ZLorg/solovyev/android/checkout/Billing$1;)V
    .locals 0

    .line 959
    invoke-direct {p0, p1, p2, p3}, Lorg/solovyev/android/checkout/Billing$Requests;-><init>(Lorg/solovyev/android/checkout/Billing;Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic access$1700(Lorg/solovyev/android/checkout/Billing$Requests;)Ljava/lang/Object;
    .locals 0

    .line 959
    iget-object p0, p0, Lorg/solovyev/android/checkout/Billing$Requests;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method private wrapListener(Lorg/solovyev/android/checkout/RequestListener;)Lorg/solovyev/android/checkout/RequestListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/solovyev/android/checkout/RequestListener<",
            "TR;>;)",
            "Lorg/solovyev/android/checkout/RequestListener<",
            "TR;>;"
        }
    .end annotation

    .line 1001
    iget-boolean v0, p0, Lorg/solovyev/android/checkout/Billing$Requests;->mOnMainThread:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/solovyev/android/checkout/Billing$Requests;->this$0:Lorg/solovyev/android/checkout/Billing;

    invoke-static {v0, p1}, Lorg/solovyev/android/checkout/Billing;->access$1300(Lorg/solovyev/android/checkout/Billing;Lorg/solovyev/android/checkout/RequestListener;)Lorg/solovyev/android/checkout/RequestListener;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public cancelAll()V
    .locals 2

    .line 1118
    iget-object v0, p0, Lorg/solovyev/android/checkout/Billing$Requests;->this$0:Lorg/solovyev/android/checkout/Billing;

    invoke-static {v0}, Lorg/solovyev/android/checkout/Billing;->access$300(Lorg/solovyev/android/checkout/Billing;)Lorg/solovyev/android/checkout/PendingRequests;

    move-result-object v0

    iget-object v1, p0, Lorg/solovyev/android/checkout/Billing$Requests;->mTag:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/solovyev/android/checkout/PendingRequests;->cancelAll(Ljava/lang/Object;)V

    return-void
.end method

.method public getAllPurchases(Ljava/lang/String;Lorg/solovyev/android/checkout/RequestListener;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/solovyev/android/checkout/RequestListener<",
            "Lorg/solovyev/android/checkout/Purchases;",
            ">;)I"
        }
    .end annotation

    .line 1018
    new-instance v0, Lorg/solovyev/android/checkout/GetPurchasesRequest;

    iget-object v1, p0, Lorg/solovyev/android/checkout/Billing$Requests;->this$0:Lorg/solovyev/android/checkout/Billing;

    invoke-static {v1}, Lorg/solovyev/android/checkout/Billing;->access$1500(Lorg/solovyev/android/checkout/Billing;)Lorg/solovyev/android/checkout/Billing$StaticConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/solovyev/android/checkout/Billing$StaticConfiguration;->getPurchaseVerifier()Lorg/solovyev/android/checkout/PurchaseVerifier;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lorg/solovyev/android/checkout/GetPurchasesRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/solovyev/android/checkout/PurchaseVerifier;)V

    .line 1019
    iget-object p1, p0, Lorg/solovyev/android/checkout/Billing$Requests;->this$0:Lorg/solovyev/android/checkout/Billing;

    new-instance v1, Lorg/solovyev/android/checkout/Billing$Requests$GetAllPurchasesListener;

    invoke-direct {v1, p0, v0, p2}, Lorg/solovyev/android/checkout/Billing$Requests$GetAllPurchasesListener;-><init>(Lorg/solovyev/android/checkout/Billing$Requests;Lorg/solovyev/android/checkout/GetPurchasesRequest;Lorg/solovyev/android/checkout/RequestListener;)V

    invoke-direct {p0, v1}, Lorg/solovyev/android/checkout/Billing$Requests;->wrapListener(Lorg/solovyev/android/checkout/RequestListener;)Lorg/solovyev/android/checkout/RequestListener;

    move-result-object p2

    iget-object v1, p0, Lorg/solovyev/android/checkout/Billing$Requests;->mTag:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2, v1}, Lorg/solovyev/android/checkout/Billing;->runWhenConnected(Lorg/solovyev/android/checkout/Request;Lorg/solovyev/android/checkout/RequestListener;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method getDeliveryExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1006
    iget-boolean v0, p0, Lorg/solovyev/android/checkout/Billing$Requests;->mOnMainThread:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/solovyev/android/checkout/Billing$Requests;->this$0:Lorg/solovyev/android/checkout/Billing;

    invoke-static {v0}, Lorg/solovyev/android/checkout/Billing;->access$1400(Lorg/solovyev/android/checkout/Billing;)Lorg/solovyev/android/checkout/CancellableExecutor;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/solovyev/android/checkout/SameThreadExecutor;->INSTANCE:Lorg/solovyev/android/checkout/SameThreadExecutor;

    :goto_0
    return-object v0
.end method

.method public getSkus(Ljava/lang/String;Ljava/util/List;Lorg/solovyev/android/checkout/RequestListener;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/solovyev/android/checkout/RequestListener<",
            "Lorg/solovyev/android/checkout/Skus;",
            ">;)I"
        }
    .end annotation

    .line 1054
    iget-object v0, p0, Lorg/solovyev/android/checkout/Billing$Requests;->this$0:Lorg/solovyev/android/checkout/Billing;

    new-instance v1, Lorg/solovyev/android/checkout/GetSkuDetailsRequest;

    invoke-direct {v1, p1, p2}, Lorg/solovyev/android/checkout/GetSkuDetailsRequest;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {p0, p3}, Lorg/solovyev/android/checkout/Billing$Requests;->wrapListener(Lorg/solovyev/android/checkout/RequestListener;)Lorg/solovyev/android/checkout/RequestListener;

    move-result-object p1

    iget-object p2, p0, Lorg/solovyev/android/checkout/Billing$Requests;->mTag:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, Lorg/solovyev/android/checkout/Billing;->runWhenConnected(Lorg/solovyev/android/checkout/Request;Lorg/solovyev/android/checkout/RequestListener;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public isBillingSupported(Ljava/lang/String;ILorg/solovyev/android/checkout/RequestListener;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lorg/solovyev/android/checkout/RequestListener<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 985
    iget-object v0, p0, Lorg/solovyev/android/checkout/Billing$Requests;->this$0:Lorg/solovyev/android/checkout/Billing;

    new-instance v1, Lorg/solovyev/android/checkout/BillingSupportedRequest;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lorg/solovyev/android/checkout/BillingSupportedRequest;-><init>(Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-direct {p0, p3}, Lorg/solovyev/android/checkout/Billing$Requests;->wrapListener(Lorg/solovyev/android/checkout/RequestListener;)Lorg/solovyev/android/checkout/RequestListener;

    move-result-object p1

    iget-object p2, p0, Lorg/solovyev/android/checkout/Billing$Requests;->mTag:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, Lorg/solovyev/android/checkout/Billing;->runWhenConnected(Lorg/solovyev/android/checkout/Request;Lorg/solovyev/android/checkout/RequestListener;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public isBillingSupported(Ljava/lang/String;Lorg/solovyev/android/checkout/RequestListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/solovyev/android/checkout/RequestListener<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x3

    .line 996
    invoke-virtual {p0, p1, v0, p2}, Lorg/solovyev/android/checkout/Billing$Requests;->isBillingSupported(Ljava/lang/String;ILorg/solovyev/android/checkout/RequestListener;)I

    move-result p1

    return p1
.end method

.method public purchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lorg/solovyev/android/checkout/PurchaseFlow;)I
    .locals 2

    .line 1068
    iget-object v0, p0, Lorg/solovyev/android/checkout/Billing$Requests;->this$0:Lorg/solovyev/android/checkout/Billing;

    new-instance v1, Lorg/solovyev/android/checkout/PurchaseRequest;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/solovyev/android/checkout/PurchaseRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, p5}, Lorg/solovyev/android/checkout/Billing$Requests;->wrapListener(Lorg/solovyev/android/checkout/RequestListener;)Lorg/solovyev/android/checkout/RequestListener;

    move-result-object p1

    iget-object p2, p0, Lorg/solovyev/android/checkout/Billing$Requests;->mTag:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, Lorg/solovyev/android/checkout/Billing;->runWhenConnected(Lorg/solovyev/android/checkout/Request;Lorg/solovyev/android/checkout/RequestListener;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
