.class abstract Lorg/solovyev/android/checkout/Billing$Requests$BaseAllPurchasesListener;
.super Ljava/lang/Object;
.source "Billing.java"

# interfaces
.implements Lorg/solovyev/android/checkout/CancellableRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/solovyev/android/checkout/Billing$Requests;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseAllPurchasesListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/solovyev/android/checkout/CancellableRequestListener<",
        "Lorg/solovyev/android/checkout/Purchases;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListener:Lorg/solovyev/android/checkout/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/solovyev/android/checkout/RequestListener<",
            "Lorg/solovyev/android/checkout/Purchases;",
            ">;"
        }
    .end annotation
.end field

.field private final mPurchases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/solovyev/android/checkout/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field private mRequest:Lorg/solovyev/android/checkout/BasePurchasesRequest;

.field final synthetic this$1:Lorg/solovyev/android/checkout/Billing$Requests;


# direct methods
.method constructor <init>(Lorg/solovyev/android/checkout/Billing$Requests;Lorg/solovyev/android/checkout/BasePurchasesRequest;Lorg/solovyev/android/checkout/RequestListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/solovyev/android/checkout/BasePurchasesRequest;",
            "Lorg/solovyev/android/checkout/RequestListener<",
            "Lorg/solovyev/android/checkout/Purchases;",
            ">;)V"
        }
    .end annotation

    .line 1205
    iput-object p1, p0, Lorg/solovyev/android/checkout/Billing$Requests$BaseAllPurchasesListener;->this$1:Lorg/solovyev/android/checkout/Billing$Requests;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1200
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/solovyev/android/checkout/Billing$Requests$BaseAllPurchasesListener;->mPurchases:Ljava/util/List;

    .line 1206
    iput-object p2, p0, Lorg/solovyev/android/checkout/Billing$Requests$BaseAllPurchasesListener;->mRequest:Lorg/solovyev/android/checkout/BasePurchasesRequest;

    .line 1207
    iput-object p3, p0, Lorg/solovyev/android/checkout/Billing$Requests$BaseAllPurchasesListener;->mListener:Lorg/solovyev/android/checkout/RequestListener;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1233
    iget-object v0, p0, Lorg/solovyev/android/checkout/Billing$Requests$BaseAllPurchasesListener;->mListener:Lorg/solovyev/android/checkout/RequestListener;

    invoke-static {v0}, Lorg/solovyev/android/checkout/Billing;->cancel(Lorg/solovyev/android/checkout/RequestListener;)V

    return-void
.end method

.method protected abstract makeContinuationRequest(Lorg/solovyev/android/checkout/BasePurchasesRequest;Ljava/lang/String;)Lorg/solovyev/android/checkout/BasePurchasesRequest;
.end method

.method public onError(ILjava/lang/Exception;)V
    .locals 1

    .line 1228
    iget-object v0, p0, Lorg/solovyev/android/checkout/Billing$Requests$BaseAllPurchasesListener;->mListener:Lorg/solovyev/android/checkout/RequestListener;

    invoke-interface {v0, p1, p2}, Lorg/solovyev/android/checkout/RequestListener;->onError(ILjava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1197
    check-cast p1, Lorg/solovyev/android/checkout/Purchases;

    invoke-virtual {p0, p1}, Lorg/solovyev/android/checkout/Billing$Requests$BaseAllPurchasesListener;->onSuccess(Lorg/solovyev/android/checkout/Purchases;)V

    return-void
.end method

.method public onSuccess(Lorg/solovyev/android/checkout/Purchases;)V
    .locals 4

    .line 1212
    iget-object v0, p0, Lorg/solovyev/android/checkout/Billing$Requests$BaseAllPurchasesListener;->mPurchases:Ljava/util/List;

    iget-object v1, p1, Lorg/solovyev/android/checkout/Purchases;->list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1214
    iget-object v0, p1, Lorg/solovyev/android/checkout/Purchases;->continuationToken:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1216
    iget-object v0, p0, Lorg/solovyev/android/checkout/Billing$Requests$BaseAllPurchasesListener;->mListener:Lorg/solovyev/android/checkout/RequestListener;

    new-instance v1, Lorg/solovyev/android/checkout/Purchases;

    iget-object p1, p1, Lorg/solovyev/android/checkout/Purchases;->product:Ljava/lang/String;

    iget-object v2, p0, Lorg/solovyev/android/checkout/Billing$Requests$BaseAllPurchasesListener;->mPurchases:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lorg/solovyev/android/checkout/Purchases;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/solovyev/android/checkout/RequestListener;->onSuccess(Ljava/lang/Object;)V

    return-void

    .line 1219
    :cond_0
    iget-object p1, p0, Lorg/solovyev/android/checkout/Billing$Requests$BaseAllPurchasesListener;->mRequest:Lorg/solovyev/android/checkout/BasePurchasesRequest;

    invoke-virtual {p0, p1, v0}, Lorg/solovyev/android/checkout/Billing$Requests$BaseAllPurchasesListener;->makeContinuationRequest(Lorg/solovyev/android/checkout/BasePurchasesRequest;Ljava/lang/String;)Lorg/solovyev/android/checkout/BasePurchasesRequest;

    move-result-object p1

    iput-object p1, p0, Lorg/solovyev/android/checkout/Billing$Requests$BaseAllPurchasesListener;->mRequest:Lorg/solovyev/android/checkout/BasePurchasesRequest;

    .line 1220
    iget-object v0, p0, Lorg/solovyev/android/checkout/Billing$Requests$BaseAllPurchasesListener;->this$1:Lorg/solovyev/android/checkout/Billing$Requests;

    iget-object v1, v0, Lorg/solovyev/android/checkout/Billing$Requests;->this$0:Lorg/solovyev/android/checkout/Billing;

    invoke-static {v0}, Lorg/solovyev/android/checkout/Billing$Requests;->access$1700(Lorg/solovyev/android/checkout/Billing$Requests;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lorg/solovyev/android/checkout/Billing;->access$1800(Lorg/solovyev/android/checkout/Billing;Lorg/solovyev/android/checkout/Request;Ljava/lang/Object;)I

    return-void
.end method
