.class public final Lcom/smedialink/ui/shop/PurchaseHelper;
.super Ljava/lang/Object;
.source "PurchaseHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/shop/PurchaseHelper$Companion;,
        Lcom/smedialink/ui/shop/PurchaseHelper$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPurchaseHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PurchaseHelper.kt\ncom/smedialink/ui/shop/PurchaseHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,197:1\n1#2:198\n1#2:211\n286#3,2:199\n1601#3,9:201\n1849#3:210\n1850#3:212\n1610#3:213\n1849#3,2:214\n*S KotlinDebug\n*F\n+ 1 PurchaseHelper.kt\ncom/smedialink/ui/shop/PurchaseHelper\n*L\n159#1:211\n139#1:199,2\n159#1:201,9\n159#1:210\n159#1:212\n159#1:213\n122#1:214,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/smedialink/ui/shop/PurchaseHelper$Companion;

.field private static INSTANCE:Lcom/smedialink/ui/shop/PurchaseHelper;


# instance fields
.field private final aigramBotsManager:Lcom/smedialink/bots/usecase/AiBotsManager;

.field private final cachedPurchases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/bots/domain/model/ShopProduct;",
            ">;"
        }
    .end annotation
.end field

.field private final disposable:Lio/reactivex/disposables/CompositeDisposable;

.field private isPurchaseFlowActive:Z

.field private isPurchaseHelperActive:Z

.field private uiCheckout:Lorg/solovyev/android/checkout/UiCheckout;


# direct methods
.method public static synthetic $r8$lambda$-_GaqnAQKGwtvQKq1oPA7CxHGV4(Lcom/smedialink/ui/shop/PurchaseHelper;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/shop/PurchaseHelper;->purchase$lambda-8(Lcom/smedialink/ui/shop/PurchaseHelper;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4UR3A0TyNMQQpT5ZOjLsre6d56g(Lcom/smedialink/ui/shop/PurchaseHelper;Lorg/solovyev/android/checkout/Purchase;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/shop/PurchaseHelper;->purchase$lambda-6(Lcom/smedialink/ui/shop/PurchaseHelper;Lorg/solovyev/android/checkout/Purchase;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IAbpyGsHITytkI2e9_RVyUjJZso(Lcom/smedialink/ui/shop/PurchaseHelper;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/shop/PurchaseHelper;->preloadPurchasesInfo$lambda-1(Lcom/smedialink/ui/shop/PurchaseHelper;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NBn42CikNl3MseQGp18WpsApCq0(Lcom/smedialink/ui/shop/PurchaseHelper;Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/shop/PurchaseHelper;->purchase$lambda-7(Lcom/smedialink/ui/shop/PurchaseHelper;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NbzV8NmXdNMFiCQGWjLE1kiRFUg(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/shop/PurchaseHelper;->preloadPurchasesInfo$lambda-2(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z2qxKNhMUobYnzNZkAa9RzOMLks()V
    .locals 0

    invoke-static {}, Lcom/smedialink/ui/shop/PurchaseHelper;->storeProductsInfo$lambda-17()V

    return-void
.end method

.method public static synthetic $r8$lambda$j-wafEn3Gy01klgD4x9O25pwNak(Ljava/lang/String;Lcom/smedialink/ui/shop/PurchaseHelper;Lorg/solovyev/android/checkout/Inventory$Products;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/ui/shop/PurchaseHelper;->loadSkuDetails$lambda-10(Ljava/lang/String;Lcom/smedialink/ui/shop/PurchaseHelper;Lorg/solovyev/android/checkout/Inventory$Products;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lp9DTBEd7cvBEA3ZSBBDuwxTiII(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/shop/PurchaseHelper;->storeProductsInfo$lambda-18(Ljava/lang/Throwable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/ui/shop/PurchaseHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/shop/PurchaseHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/ui/shop/PurchaseHelper;->Companion:Lcom/smedialink/ui/shop/PurchaseHelper$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/smedialink/bots/usecase/AiBotsManager;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/shop/PurchaseHelper;->aigramBotsManager:Lcom/smedialink/bots/usecase/AiBotsManager;

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/shop/PurchaseHelper;->cachedPurchases:Ljava/util/List;

    .line 21
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/shop/PurchaseHelper;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/smedialink/bots/usecase/AiBotsManager;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/smedialink/ui/shop/PurchaseHelper;-><init>(Lcom/smedialink/bots/usecase/AiBotsManager;)V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/smedialink/ui/shop/PurchaseHelper;
    .locals 1

    .line 17
    sget-object v0, Lcom/smedialink/ui/shop/PurchaseHelper;->INSTANCE:Lcom/smedialink/ui/shop/PurchaseHelper;

    return-object v0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/smedialink/ui/shop/PurchaseHelper;)V
    .locals 0

    .line 17
    sput-object p0, Lcom/smedialink/ui/shop/PurchaseHelper;->INSTANCE:Lcom/smedialink/ui/shop/PurchaseHelper;

    return-void
.end method

.method private final getReceipt(Ljava/lang/String;Ljava/util/List;)Lcom/smedialink/bots/domain/model/ShopProduct$Receipt;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/solovyev/android/checkout/Purchase;",
            ">;)",
            "Lcom/smedialink/bots/domain/model/ShopProduct$Receipt;"
        }
    .end annotation

    .line 286
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/solovyev/android/checkout/Purchase;

    .line 139
    iget-object v2, v2, Lorg/solovyev/android/checkout/Purchase;->sku:Ljava/lang/String;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Lorg/solovyev/android/checkout/Purchase;

    if-nez v0, :cond_2

    goto :goto_1

    .line 141
    :cond_2
    new-instance v1, Lcom/smedialink/bots/domain/model/ShopProduct$Receipt;

    .line 142
    iget-object v3, v0, Lorg/solovyev/android/checkout/Purchase;->orderId:Ljava/lang/String;

    const-string p1, "it.orderId"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object v4, v0, Lorg/solovyev/android/checkout/Purchase;->packageName:Ljava/lang/String;

    const-string p1, "it.packageName"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-object v5, v0, Lorg/solovyev/android/checkout/Purchase;->sku:Ljava/lang/String;

    const-string p1, "it.sku"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-wide v6, v0, Lorg/solovyev/android/checkout/Purchase;->time:J

    .line 146
    iget-object p1, v0, Lorg/solovyev/android/checkout/Purchase;->state:Lorg/solovyev/android/checkout/Purchase$State;

    iget v8, p1, Lorg/solovyev/android/checkout/Purchase$State;->id:I

    .line 147
    iget-object v9, v0, Lorg/solovyev/android/checkout/Purchase;->token:Ljava/lang/String;

    const-string p1, "it.token"

    invoke-static {v9, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    .line 141
    invoke-direct/range {v2 .. v9}, Lcom/smedialink/bots/domain/model/ShopProduct$Receipt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method private final loadSkuDetails(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 112
    iget-boolean v0, p0, Lcom/smedialink/ui/shop/PurchaseHelper;->isPurchaseHelperActive:Z

    if-nez v0, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-static {}, Lorg/solovyev/android/checkout/Inventory$Request;->create()Lorg/solovyev/android/checkout/Inventory$Request;

    move-result-object v0

    const-string v1, "create()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Lorg/solovyev/android/checkout/Inventory$Request;->loadAllPurchases()Lorg/solovyev/android/checkout/Inventory$Request;

    .line 118
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/solovyev/android/checkout/Inventory$Request;->loadSkus(Ljava/lang/String;Ljava/util/List;)Lorg/solovyev/android/checkout/Inventory$Request;

    .line 119
    iget-object p1, p0, Lcom/smedialink/ui/shop/PurchaseHelper;->uiCheckout:Lorg/solovyev/android/checkout/UiCheckout;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/smedialink/ui/shop/PurchaseHelper$$ExternalSyntheticLambda7;

    invoke-direct {v1, p2, p0}, Lcom/smedialink/ui/shop/PurchaseHelper$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;Lcom/smedialink/ui/shop/PurchaseHelper;)V

    invoke-virtual {p1, v0, v1}, Lorg/solovyev/android/checkout/Checkout;->loadInventory(Lorg/solovyev/android/checkout/Inventory$Request;Lorg/solovyev/android/checkout/Inventory$Callback;)Lorg/solovyev/android/checkout/Inventory;

    :goto_0
    return-void
.end method

.method static synthetic loadSkuDetails$default(Lcom/smedialink/ui/shop/PurchaseHelper;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, "inapp"

    .line 111
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/smedialink/ui/shop/PurchaseHelper;->loadSkuDetails(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private static final loadSkuDetails$lambda-10(Ljava/lang/String;Lcom/smedialink/ui/shop/PurchaseHelper;Lorg/solovyev/android/checkout/Inventory$Products;)V
    .locals 8

    const-string v0, "$productType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "products"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 121
    invoke-virtual {p2, p0}, Lorg/solovyev/android/checkout/Inventory$Products;->get(Ljava/lang/String;)Lorg/solovyev/android/checkout/Inventory$Product;

    move-result-object p0

    const-string p2, "products[productType]"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lorg/solovyev/android/checkout/Inventory$Product;->getSkus()Ljava/util/List;

    move-result-object p2

    const-string v1, "inAppProduct.skus"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1849
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/solovyev/android/checkout/Sku;

    .line 123
    new-instance v2, Lcom/smedialink/bots/domain/model/ShopProduct;

    .line 124
    iget-object v3, v1, Lorg/solovyev/android/checkout/Sku;->id:Lorg/solovyev/android/checkout/Sku$Id;

    iget-object v3, v3, Lorg/solovyev/android/checkout/Sku$Id;->code:Ljava/lang/String;

    const-string v4, "it.id.code"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v5, v1, Lorg/solovyev/android/checkout/Sku;->price:Ljava/lang/String;

    const-string v6, "it.price"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, v1}, Lorg/solovyev/android/checkout/Inventory$Product;->isPurchased(Lorg/solovyev/android/checkout/Sku;)Z

    move-result v6

    .line 127
    iget-object v1, v1, Lorg/solovyev/android/checkout/Sku;->id:Lorg/solovyev/android/checkout/Sku$Id;

    iget-object v1, v1, Lorg/solovyev/android/checkout/Sku$Id;->code:Ljava/lang/String;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/solovyev/android/checkout/Inventory$Product;->getPurchases()Ljava/util/List;

    move-result-object v4

    const-string v7, "inAppProduct.purchases"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v1, v4}, Lcom/smedialink/ui/shop/PurchaseHelper;->getReceipt(Ljava/lang/String;Ljava/util/List;)Lcom/smedialink/bots/domain/model/ShopProduct$Receipt;

    move-result-object v1

    .line 123
    invoke-direct {v2, v3, v5, v6, v1}, Lcom/smedialink/bots/domain/model/ShopProduct;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/smedialink/bots/domain/model/ShopProduct$Receipt;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_0
    iget-object p0, p1, Lcom/smedialink/ui/shop/PurchaseHelper;->cachedPurchases:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 132
    iget-object p0, p1, Lcom/smedialink/ui/shop/PurchaseHelper;->cachedPurchases:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 133
    invoke-direct {p1}, Lcom/smedialink/ui/shop/PurchaseHelper;->storeProductsInfo()V

    return-void
.end method

.method private static final preloadPurchasesInfo$lambda-1(Lcom/smedialink/ui/shop/PurchaseHelper;Ljava/util/List;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 60
    invoke-static {p0, p1, v1, v0, v1}, Lcom/smedialink/ui/shop/PurchaseHelper;->loadSkuDetails$default(Lcom/smedialink/ui/shop/PurchaseHelper;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static final preloadPurchasesInfo$lambda-2(Ljava/lang/Throwable;)V
    .locals 0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private static final purchase$lambda-6(Lcom/smedialink/ui/shop/PurchaseHelper;Lorg/solovyev/android/checkout/Purchase;)V
    .locals 14

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/smedialink/ui/shop/PurchaseHelper;->cachedPurchases:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/smedialink/bots/domain/model/ShopProduct;

    .line 86
    invoke-virtual {v2}, Lcom/smedialink/bots/domain/model/ShopProduct;->getSku()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lorg/solovyev/android/checkout/Purchase;->sku:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 85
    :goto_0
    check-cast v1, Lcom/smedialink/bots/domain/model/ShopProduct;

    if-eqz v1, :cond_2

    .line 89
    iget-object v0, p0, Lcom/smedialink/ui/shop/PurchaseHelper;->cachedPurchases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/smedialink/ui/shop/PurchaseHelper;->cachedPurchases:Ljava/util/List;

    .line 91
    new-instance v2, Lcom/smedialink/bots/domain/model/ShopProduct;

    .line 92
    invoke-virtual {v1}, Lcom/smedialink/bots/domain/model/ShopProduct;->getPrice()Ljava/lang/String;

    move-result-object v3

    .line 93
    invoke-virtual {v1}, Lcom/smedialink/bots/domain/model/ShopProduct;->getPrice()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    .line 95
    new-instance v13, Lcom/smedialink/bots/domain/model/ShopProduct$Receipt;

    .line 96
    iget-object v6, p1, Lorg/solovyev/android/checkout/Purchase;->orderId:Ljava/lang/String;

    const-string v5, "purchase.orderId"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v7, p1, Lorg/solovyev/android/checkout/Purchase;->packageName:Ljava/lang/String;

    const-string v5, "purchase.packageName"

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v8, p1, Lorg/solovyev/android/checkout/Purchase;->sku:Ljava/lang/String;

    const-string v5, "purchase.sku"

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-wide v9, p1, Lorg/solovyev/android/checkout/Purchase;->time:J

    .line 100
    iget-object v5, p1, Lorg/solovyev/android/checkout/Purchase;->state:Lorg/solovyev/android/checkout/Purchase$State;

    iget v11, v5, Lorg/solovyev/android/checkout/Purchase$State;->id:I

    .line 101
    iget-object v12, p1, Lorg/solovyev/android/checkout/Purchase;->token:Ljava/lang/String;

    const-string p1, "purchase.token"

    invoke-static {v12, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v13

    .line 95
    invoke-direct/range {v5 .. v12}, Lcom/smedialink/bots/domain/model/ShopProduct$Receipt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    .line 91
    invoke-direct {v2, v3, v1, v4, v13}, Lcom/smedialink/bots/domain/model/ShopProduct;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/smedialink/bots/domain/model/ShopProduct$Receipt;)V

    .line 90
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-direct {p0}, Lcom/smedialink/ui/shop/PurchaseHelper;->storeProductsInfo()V

    return-void

    .line 87
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot find product"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final purchase$lambda-7(Lcom/smedialink/ui/shop/PurchaseHelper;Lio/reactivex/disposables/Disposable;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 107
    iput-boolean p1, p0, Lcom/smedialink/ui/shop/PurchaseHelper;->isPurchaseFlowActive:Z

    return-void
.end method

.method private static final purchase$lambda-8(Lcom/smedialink/ui/shop/PurchaseHelper;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/smedialink/ui/shop/PurchaseHelper;->isPurchaseFlowActive:Z

    return-void
.end method

.method private final storeProductsInfo()V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/smedialink/ui/shop/PurchaseHelper;->aigramBotsManager:Lcom/smedialink/bots/usecase/AiBotsManager;

    invoke-virtual {p0}, Lcom/smedialink/ui/shop/PurchaseHelper;->getProducts()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smedialink/bots/usecase/AiBotsManager;->storeActualPurchases(Ljava/util/List;)Lio/reactivex/Completable;

    move-result-object v0

    .line 173
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 174
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    sget-object v1, Lcom/smedialink/ui/shop/PurchaseHelper$$ExternalSyntheticLambda1;->INSTANCE:Lcom/smedialink/ui/shop/PurchaseHelper$$ExternalSyntheticLambda1;

    sget-object v2, Lcom/smedialink/ui/shop/PurchaseHelper$$ExternalSyntheticLambda6;->INSTANCE:Lcom/smedialink/ui/shop/PurchaseHelper$$ExternalSyntheticLambda6;

    .line 175
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/smedialink/ui/shop/PurchaseHelper;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final storeProductsInfo$lambda-17()V
    .locals 2

    const-string v0, "PurchaseHelper"

    const-string v1, "Purchases info updated"

    .line 176
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static final storeProductsInfo$lambda-18(Ljava/lang/Throwable;)V
    .locals 0

    .line 178
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public final getProducts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/domain/model/ShopProduct;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/smedialink/ui/shop/PurchaseHelper;->cachedPurchases:Ljava/util/List;

    return-object v0
.end method

.method public final initWith(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/smedialink/ui/shop/PurchaseHelper;->uiCheckout:Lorg/solovyev/android/checkout/UiCheckout;

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.smedialink.ui.shop.configuration.BillingProvider"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/smedialink/ui/shop/configuration/BillingProvider;

    invoke-interface {v0}, Lcom/smedialink/ui/shop/configuration/BillingProvider;->provideBilling()Lorg/solovyev/android/checkout/Billing;

    move-result-object v0

    .line 44
    invoke-static {p1, v0}, Lorg/solovyev/android/checkout/Checkout;->forActivity(Landroid/app/Activity;Lorg/solovyev/android/checkout/Billing;)Lorg/solovyev/android/checkout/ActivityCheckout;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/shop/PurchaseHelper;->uiCheckout:Lorg/solovyev/android/checkout/UiCheckout;

    :cond_0
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/smedialink/ui/shop/PurchaseHelper;->uiCheckout:Lorg/solovyev/android/checkout/UiCheckout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/solovyev/android/checkout/UiCheckout;->onActivityResult(IILandroid/content/Intent;)Z

    :goto_0
    return-void
.end method

.method public final preloadPurchasesInfo()V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/smedialink/ui/shop/PurchaseHelper;->aigramBotsManager:Lcom/smedialink/bots/usecase/AiBotsManager;

    invoke-virtual {v0}, Lcom/smedialink/bots/usecase/AiBotsManager;->getAvailableSkus()Lio/reactivex/Single;

    move-result-object v0

    .line 57
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 58
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 59
    new-instance v1, Lcom/smedialink/ui/shop/PurchaseHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/shop/PurchaseHelper$$ExternalSyntheticLambda3;-><init>(Lcom/smedialink/ui/shop/PurchaseHelper;)V

    sget-object v2, Lcom/smedialink/ui/shop/PurchaseHelper$$ExternalSyntheticLambda5;->INSTANCE:Lcom/smedialink/ui/shop/PurchaseHelper$$ExternalSyntheticLambda5;

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/smedialink/ui/shop/PurchaseHelper;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final purchase(Ljava/lang/String;)Lio/reactivex/Single;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lorg/solovyev/android/checkout/Purchase;",
            ">;"
        }
    .end annotation

    const-string v0, "skuId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-boolean v0, p0, Lcom/smedialink/ui/shop/PurchaseHelper;->isPurchaseFlowActive:Z

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/smedialink/ui/shop/PurchaseHelper;->uiCheckout:Lorg/solovyev/android/checkout/UiCheckout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/solovyev/android/checkout/UiCheckout;->destroyPurchaseFlow()V

    .line 75
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 76
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "sku can\'t be empty"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "error(Exception(\"sku can\'t be empty\"))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 78
    :cond_3
    new-instance v0, Lcom/smedialink/ui/shop/PurchaseHelper$Callback;

    invoke-direct {v0}, Lcom/smedialink/ui/shop/PurchaseHelper$Callback;-><init>()V

    .line 79
    iget-object v1, p0, Lcom/smedialink/ui/shop/PurchaseHelper;->uiCheckout:Lorg/solovyev/android/checkout/UiCheckout;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    const-string v3, "inapp"

    .line 80
    invoke-virtual {v1, v3, p1, v2, v0}, Lorg/solovyev/android/checkout/UiCheckout;->startPurchaseFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/solovyev/android/checkout/RequestListener;)V

    .line 84
    :goto_2
    invoke-virtual {v0}, Lcom/smedialink/ui/shop/PurchaseHelper$Callback;->getSingle()Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/smedialink/ui/shop/PurchaseHelper$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/shop/PurchaseHelper$$ExternalSyntheticLambda4;-><init>(Lcom/smedialink/ui/shop/PurchaseHelper;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object p1

    .line 107
    new-instance v0, Lcom/smedialink/ui/shop/PurchaseHelper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/shop/PurchaseHelper$$ExternalSyntheticLambda2;-><init>(Lcom/smedialink/ui/shop/PurchaseHelper;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object p1

    .line 108
    new-instance v0, Lcom/smedialink/ui/shop/PurchaseHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/shop/PurchaseHelper$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/shop/PurchaseHelper;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "callback.single.doOnSucc\u2026chaseFlowActive = false }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final start()V
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/smedialink/ui/shop/PurchaseHelper;->isPurchaseHelperActive:Z

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/smedialink/ui/shop/PurchaseHelper;->uiCheckout:Lorg/solovyev/android/checkout/UiCheckout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/solovyev/android/checkout/Checkout;->start()V

    :goto_0
    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/smedialink/ui/shop/PurchaseHelper;->isPurchaseHelperActive:Z

    :cond_1
    return-void
.end method

.method public final stop()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/smedialink/ui/shop/PurchaseHelper;->uiCheckout:Lorg/solovyev/android/checkout/UiCheckout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/solovyev/android/checkout/UiCheckout;->stop()V

    .line 154
    :goto_0
    iget-object v0, p0, Lcom/smedialink/ui/shop/PurchaseHelper;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lcom/smedialink/ui/shop/PurchaseHelper;->isPurchaseHelperActive:Z

    return-void
.end method
