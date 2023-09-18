.class final Lcom/iMe/ui/shop/PurchaseHelper$purchase$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PurchaseHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/shop/PurchaseHelper;->purchase(Ljava/lang/String;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/solovyev/android/checkout/Purchase;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/shop/PurchaseHelper;


# direct methods
.method constructor <init>(Lcom/iMe/ui/shop/PurchaseHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/shop/PurchaseHelper$purchase$2;->this$0:Lcom/iMe/ui/shop/PurchaseHelper;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 89
    check-cast p1, Lorg/solovyev/android/checkout/Purchase;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/shop/PurchaseHelper$purchase$2;->invoke(Lorg/solovyev/android/checkout/Purchase;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/solovyev/android/checkout/Purchase;)V
    .locals 14

    .line 90
    iget-object v0, p0, Lcom/iMe/ui/shop/PurchaseHelper$purchase$2;->this$0:Lcom/iMe/ui/shop/PurchaseHelper;

    invoke-static {v0}, Lcom/iMe/ui/shop/PurchaseHelper;->access$getCachedPurchases$p(Lcom/iMe/ui/shop/PurchaseHelper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/iMe/bots/domain/model/ShopProduct;

    .line 91
    invoke-virtual {v2}, Lcom/iMe/bots/domain/model/ShopProduct;->getSku()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lorg/solovyev/android/checkout/Purchase;->sku:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 90
    :goto_0
    check-cast v1, Lcom/iMe/bots/domain/model/ShopProduct;

    if-eqz v1, :cond_2

    .line 94
    iget-object v0, p0, Lcom/iMe/ui/shop/PurchaseHelper$purchase$2;->this$0:Lcom/iMe/ui/shop/PurchaseHelper;

    invoke-static {v0}, Lcom/iMe/ui/shop/PurchaseHelper;->access$getCachedPurchases$p(Lcom/iMe/ui/shop/PurchaseHelper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/iMe/ui/shop/PurchaseHelper$purchase$2;->this$0:Lcom/iMe/ui/shop/PurchaseHelper;

    invoke-static {v0}, Lcom/iMe/ui/shop/PurchaseHelper;->access$getCachedPurchases$p(Lcom/iMe/ui/shop/PurchaseHelper;)Ljava/util/List;

    move-result-object v0

    .line 96
    new-instance v2, Lcom/iMe/bots/domain/model/ShopProduct;

    .line 97
    invoke-virtual {v1}, Lcom/iMe/bots/domain/model/ShopProduct;->getPrice()Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-virtual {v1}, Lcom/iMe/bots/domain/model/ShopProduct;->getPrice()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    .line 100
    new-instance v13, Lcom/iMe/bots/domain/model/ShopProduct$Receipt;

    .line 101
    iget-object v6, p1, Lorg/solovyev/android/checkout/Purchase;->orderId:Ljava/lang/String;

    const-string v5, "purchase.orderId"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v7, p1, Lorg/solovyev/android/checkout/Purchase;->packageName:Ljava/lang/String;

    const-string v5, "purchase.packageName"

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v8, p1, Lorg/solovyev/android/checkout/Purchase;->sku:Ljava/lang/String;

    const-string v5, "purchase.sku"

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-wide v9, p1, Lorg/solovyev/android/checkout/Purchase;->time:J

    .line 105
    iget-object v5, p1, Lorg/solovyev/android/checkout/Purchase;->state:Lorg/solovyev/android/checkout/Purchase$State;

    iget v11, v5, Lorg/solovyev/android/checkout/Purchase$State;->id:I

    .line 106
    iget-object v12, p1, Lorg/solovyev/android/checkout/Purchase;->token:Ljava/lang/String;

    const-string p1, "purchase.token"

    invoke-static {v12, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v13

    .line 100
    invoke-direct/range {v5 .. v12}, Lcom/iMe/bots/domain/model/ShopProduct$Receipt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    .line 96
    invoke-direct {v2, v3, v1, v4, v13}, Lcom/iMe/bots/domain/model/ShopProduct;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/iMe/bots/domain/model/ShopProduct$Receipt;)V

    .line 95
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object p1, p0, Lcom/iMe/ui/shop/PurchaseHelper$purchase$2;->this$0:Lcom/iMe/ui/shop/PurchaseHelper;

    invoke-static {p1}, Lcom/iMe/ui/shop/PurchaseHelper;->access$storeProductsInfo(Lcom/iMe/ui/shop/PurchaseHelper;)V

    return-void

    .line 92
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot find product"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
