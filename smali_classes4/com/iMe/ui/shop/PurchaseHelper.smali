.class public final Lcom/iMe/ui/shop/PurchaseHelper;
.super Ljava/lang/Object;
.source "PurchaseHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/shop/PurchaseHelper$Callback;,
        Lcom/iMe/ui/shop/PurchaseHelper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPurchaseHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PurchaseHelper.kt\ncom/iMe/ui/shop/PurchaseHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,204:1\n1#2:205\n1#2:218\n288#3,2:206\n1603#3,9:208\n1855#3:217\n1856#3:219\n1612#3:220\n1855#3,2:221\n*S KotlinDebug\n*F\n+ 1 PurchaseHelper.kt\ncom/iMe/ui/shop/PurchaseHelper\n*L\n166#1:218\n146#1:206,2\n166#1:208,9\n166#1:217\n166#1:219\n166#1:220\n127#1:221,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/ui/shop/PurchaseHelper$Companion;

.field private static INSTANCE:Lcom/iMe/ui/shop/PurchaseHelper;


# instance fields
.field private final aigramBotsManager:Lcom/iMe/bots/usecase/AiBotsManager;

.field private final cachedPurchases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/bots/domain/model/ShopProduct;",
            ">;"
        }
    .end annotation
.end field

.field private final disposable:Lio/reactivex/disposables/CompositeDisposable;

.field private isPurchaseFlowActive:Z

.field private isPurchaseHelperActive:Z

.field private uiCheckout:Lorg/solovyev/android/checkout/UiCheckout;


# direct methods
.method public static synthetic $r8$lambda$5x4E7CX3BNfhSSsVRUBK4wcril0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/shop/PurchaseHelper;->storeProductsInfo$lambda$16(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JIpR-9gE-NuzJULXvEdcmeiIUMc()V
    .locals 0

    invoke-static {}, Lcom/iMe/ui/shop/PurchaseHelper;->storeProductsInfo$lambda$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$Nl6TVXguzP2uMsuKR5r4sIstwoc(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/shop/PurchaseHelper;->purchase$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QmSbnjVhbanbRDa5IKU1On-eXcY(Lcom/iMe/ui/shop/PurchaseHelper;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/shop/PurchaseHelper;->purchase$lambda$6(Lcom/iMe/ui/shop/PurchaseHelper;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YnuSXGZa12SYgpQSmmnDqM5LNKc(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/shop/PurchaseHelper;->preloadPurchasesInfo$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YqNFfDLq5rtbGjdGdNZs-CyeoHk(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/shop/PurchaseHelper;->preloadPurchasesInfo$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iFFFkUzPLN2Q_R8ZzuHBMLkYOEU(Ljava/lang/String;Lcom/iMe/ui/shop/PurchaseHelper;Lorg/solovyev/android/checkout/Inventory$Products;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/shop/PurchaseHelper;->loadSkuDetails$lambda$8(Ljava/lang/String;Lcom/iMe/ui/shop/PurchaseHelper;Lorg/solovyev/android/checkout/Inventory$Products;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m9gH2i8OAyY4ptpyshbiTCz4hPc(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/shop/PurchaseHelper;->purchase$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/ui/shop/PurchaseHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/shop/PurchaseHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/shop/PurchaseHelper;->Companion:Lcom/iMe/ui/shop/PurchaseHelper$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/iMe/bots/usecase/AiBotsManager;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/shop/PurchaseHelper;->aigramBotsManager:Lcom/iMe/bots/usecase/AiBotsManager;

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/shop/PurchaseHelper;->cachedPurchases:Ljava/util/List;

    .line 26
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/shop/PurchaseHelper;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iMe/bots/usecase/AiBotsManager;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iMe/ui/shop/PurchaseHelper;-><init>(Lcom/iMe/bots/usecase/AiBotsManager;)V

    return-void
.end method

.method public static final synthetic access$getCachedPurchases$p(Lcom/iMe/ui/shop/PurchaseHelper;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/iMe/ui/shop/PurchaseHelper;->cachedPurchases:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/iMe/ui/shop/PurchaseHelper;
    .locals 1

    .line 22
    sget-object v0, Lcom/iMe/ui/shop/PurchaseHelper;->INSTANCE:Lcom/iMe/ui/shop/PurchaseHelper;

    return-object v0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/iMe/ui/shop/PurchaseHelper;)V
    .locals 0

    .line 22
    sput-object p0, Lcom/iMe/ui/shop/PurchaseHelper;->INSTANCE:Lcom/iMe/ui/shop/PurchaseHelper;

    return-void
.end method

.method public static final synthetic access$setPurchaseFlowActive$p(Lcom/iMe/ui/shop/PurchaseHelper;Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/iMe/ui/shop/PurchaseHelper;->isPurchaseFlowActive:Z

    return-void
.end method

.method public static final synthetic access$storeProductsInfo(Lcom/iMe/ui/shop/PurchaseHelper;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/iMe/ui/shop/PurchaseHelper;->storeProductsInfo()V

    return-void
.end method

.method private final getReceipt(Ljava/lang/String;Ljava/util/List;)Lcom/iMe/bots/domain/model/ShopProduct$Receipt;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/solovyev/android/checkout/Purchase;",
            ">;)",
            "Lcom/iMe/bots/domain/model/ShopProduct$Receipt;"
        }
    .end annotation

    .line 288
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

    .line 146
    iget-object v2, v2, Lorg/solovyev/android/checkout/Purchase;->sku:Ljava/lang/String;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Lorg/solovyev/android/checkout/Purchase;

    if-eqz v0, :cond_2

    .line 148
    new-instance v1, Lcom/iMe/bots/domain/model/ShopProduct$Receipt;

    .line 149
    iget-object v3, v0, Lorg/solovyev/android/checkout/Purchase;->orderId:Ljava/lang/String;

    const-string p1, "it.orderId"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v4, v0, Lorg/solovyev/android/checkout/Purchase;->packageName:Ljava/lang/String;

    const-string p1, "it.packageName"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-object v5, v0, Lorg/solovyev/android/checkout/Purchase;->sku:Ljava/lang/String;

    const-string p1, "it.sku"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget-wide v6, v0, Lorg/solovyev/android/checkout/Purchase;->time:J

    .line 153
    iget-object p1, v0, Lorg/solovyev/android/checkout/Purchase;->state:Lorg/solovyev/android/checkout/Purchase$State;

    iget v8, p1, Lorg/solovyev/android/checkout/Purchase$State;->id:I

    .line 154
    iget-object v9, v0, Lorg/solovyev/android/checkout/Purchase;->token:Ljava/lang/String;

    const-string p1, "it.token"

    invoke-static {v9, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    .line 148
    invoke-direct/range {v2 .. v9}, Lcom/iMe/bots/domain/model/ShopProduct$Receipt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    :cond_2
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

    .line 117
    iget-boolean v0, p0, Lcom/iMe/ui/shop/PurchaseHelper;->isPurchaseHelperActive:Z

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    invoke-static {}, Lorg/solovyev/android/checkout/Inventory$Request;->create()Lorg/solovyev/android/checkout/Inventory$Request;

    move-result-object v0

    const-string v1, "create()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Lorg/solovyev/android/checkout/Inventory$Request;->loadAllPurchases()Lorg/solovyev/android/checkout/Inventory$Request;

    .line 123
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/solovyev/android/checkout/Inventory$Request;->loadSkus(Ljava/lang/String;Ljava/util/List;)Lorg/solovyev/android/checkout/Inventory$Request;

    .line 124
    iget-object p1, p0, Lcom/iMe/ui/shop/PurchaseHelper;->uiCheckout:Lorg/solovyev/android/checkout/UiCheckout;

    if-eqz p1, :cond_1

    new-instance v1, Lcom/iMe/ui/shop/PurchaseHelper$$ExternalSyntheticLambda7;

    invoke-direct {v1, p2, p0}, Lcom/iMe/ui/shop/PurchaseHelper$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;Lcom/iMe/ui/shop/PurchaseHelper;)V

    invoke-virtual {p1, v0, v1}, Lorg/solovyev/android/checkout/Checkout;->loadInventory(Lorg/solovyev/android/checkout/Inventory$Request;Lorg/solovyev/android/checkout/Inventory$Callback;)Lorg/solovyev/android/checkout/Inventory;

    :cond_1
    return-void
.end method

.method static synthetic loadSkuDetails$default(Lcom/iMe/ui/shop/PurchaseHelper;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, "inapp"

    .line 116
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/shop/PurchaseHelper;->loadSkuDetails(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private static final loadSkuDetails$lambda$8(Ljava/lang/String;Lcom/iMe/ui/shop/PurchaseHelper;Lorg/solovyev/android/checkout/Inventory$Products;)V
    .locals 8

    const-string v0, "$productType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "products"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 126
    invoke-virtual {p2, p0}, Lorg/solovyev/android/checkout/Inventory$Products;->get(Ljava/lang/String;)Lorg/solovyev/android/checkout/Inventory$Product;

    move-result-object p0

    const-string p2, "products[productType]"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lorg/solovyev/android/checkout/Inventory$Product;->getSkus()Ljava/util/List;

    move-result-object p2

    const-string v1, "inAppProduct.skus"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1855
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/solovyev/android/checkout/Sku;

    .line 129
    new-instance v2, Lcom/iMe/bots/domain/model/ShopProduct;

    .line 130
    iget-object v3, v1, Lorg/solovyev/android/checkout/Sku;->id:Lorg/solovyev/android/checkout/Sku$Id;

    iget-object v3, v3, Lorg/solovyev/android/checkout/Sku$Id;->code:Ljava/lang/String;

    const-string v4, "it.id.code"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v5, v1, Lorg/solovyev/android/checkout/Sku;->price:Ljava/lang/String;

    const-string v6, "it.price"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0, v1}, Lorg/solovyev/android/checkout/Inventory$Product;->isPurchased(Lorg/solovyev/android/checkout/Sku;)Z

    move-result v6

    .line 133
    iget-object v1, v1, Lorg/solovyev/android/checkout/Sku;->id:Lorg/solovyev/android/checkout/Sku$Id;

    iget-object v1, v1, Lorg/solovyev/android/checkout/Sku$Id;->code:Ljava/lang/String;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/solovyev/android/checkout/Inventory$Product;->getPurchases()Ljava/util/List;

    move-result-object v4

    const-string v7, "inAppProduct.purchases"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v1, v4}, Lcom/iMe/ui/shop/PurchaseHelper;->getReceipt(Ljava/lang/String;Ljava/util/List;)Lcom/iMe/bots/domain/model/ShopProduct$Receipt;

    move-result-object v1

    .line 129
    invoke-direct {v2, v3, v5, v6, v1}, Lcom/iMe/bots/domain/model/ShopProduct;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/iMe/bots/domain/model/ShopProduct$Receipt;)V

    .line 128
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :cond_0
    iget-object p0, p1, Lcom/iMe/ui/shop/PurchaseHelper;->cachedPurchases:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 139
    iget-object p0, p1, Lcom/iMe/ui/shop/PurchaseHelper;->cachedPurchases:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    invoke-direct {p1}, Lcom/iMe/ui/shop/PurchaseHelper;->storeProductsInfo()V

    return-void
.end method

.method private static final preloadPurchasesInfo$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final preloadPurchasesInfo$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final purchase$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final purchase$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final purchase$lambda$6(Lcom/iMe/ui/shop/PurchaseHelper;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/iMe/ui/shop/PurchaseHelper;->isPurchaseFlowActive:Z

    return-void
.end method

.method private final storeProductsInfo()V
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/iMe/ui/shop/PurchaseHelper;->aigramBotsManager:Lcom/iMe/bots/usecase/AiBotsManager;

    invoke-virtual {p0}, Lcom/iMe/ui/shop/PurchaseHelper;->getProducts()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/bots/usecase/AiBotsManager;->storeActualPurchases(Ljava/util/List;)Lio/reactivex/Completable;

    move-result-object v0

    .line 180
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 181
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    sget-object v1, Lcom/iMe/ui/shop/PurchaseHelper$$ExternalSyntheticLambda1;->INSTANCE:Lcom/iMe/ui/shop/PurchaseHelper$$ExternalSyntheticLambda1;

    .line 182
    sget-object v2, Lcom/iMe/ui/shop/PurchaseHelper$storeProductsInfo$2;->INSTANCE:Lcom/iMe/ui/shop/PurchaseHelper$storeProductsInfo$2;

    .line 184
    new-instance v3, Lcom/iMe/ui/shop/PurchaseHelper$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lcom/iMe/ui/shop/PurchaseHelper$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 182
    invoke-virtual {v0, v1, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/iMe/ui/shop/PurchaseHelper;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final storeProductsInfo$lambda$15()V
    .locals 2

    const-string v0, "PurchaseHelper"

    const-string v1, "Purchases info updated"

    .line 183
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static final storeProductsInfo$lambda$16(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getProducts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/bots/domain/model/ShopProduct;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/iMe/ui/shop/PurchaseHelper;->cachedPurchases:Ljava/util/List;

    return-object v0
.end method

.method public final initWith(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/iMe/ui/shop/PurchaseHelper;->uiCheckout:Lorg/solovyev/android/checkout/UiCheckout;

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.iMe.ui.shop.configuration.BillingProvider"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/iMe/ui/shop/configuration/BillingProvider;

    invoke-interface {v0}, Lcom/iMe/ui/shop/configuration/BillingProvider;->provideBilling()Lorg/solovyev/android/checkout/Billing;

    move-result-object v0

    .line 49
    invoke-static {p1, v0}, Lorg/solovyev/android/checkout/Checkout;->forActivity(Landroid/app/Activity;Lorg/solovyev/android/checkout/Billing;)Lorg/solovyev/android/checkout/ActivityCheckout;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/shop/PurchaseHelper;->uiCheckout:Lorg/solovyev/android/checkout/UiCheckout;

    :cond_0
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/iMe/ui/shop/PurchaseHelper;->uiCheckout:Lorg/solovyev/android/checkout/UiCheckout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lorg/solovyev/android/checkout/UiCheckout;->onActivityResult(IILandroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public final preloadPurchasesInfo()V
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/iMe/ui/shop/PurchaseHelper;->aigramBotsManager:Lcom/iMe/bots/usecase/AiBotsManager;

    invoke-virtual {v0}, Lcom/iMe/bots/usecase/AiBotsManager;->getAvailableSkus()Lio/reactivex/Single;

    move-result-object v0

    .line 62
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 63
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/iMe/ui/shop/PurchaseHelper$preloadPurchasesInfo$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/shop/PurchaseHelper$preloadPurchasesInfo$1;-><init>(Lcom/iMe/ui/shop/PurchaseHelper;)V

    new-instance v2, Lcom/iMe/ui/shop/PurchaseHelper$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lcom/iMe/ui/shop/PurchaseHelper$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Lcom/iMe/ui/shop/PurchaseHelper$preloadPurchasesInfo$2;->INSTANCE:Lcom/iMe/ui/shop/PurchaseHelper$preloadPurchasesInfo$2;

    .line 66
    new-instance v3, Lcom/iMe/ui/shop/PurchaseHelper$$ExternalSyntheticLambda4;

    invoke-direct {v3, v1}, Lcom/iMe/ui/shop/PurchaseHelper$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 64
    invoke-virtual {v0, v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/iMe/ui/shop/PurchaseHelper;->disposable:Lio/reactivex/disposables/CompositeDisposable;

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

    .line 77
    iget-boolean v0, p0, Lcom/iMe/ui/shop/PurchaseHelper;->isPurchaseFlowActive:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/iMe/ui/shop/PurchaseHelper;->uiCheckout:Lorg/solovyev/android/checkout/UiCheckout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/solovyev/android/checkout/UiCheckout;->destroyPurchaseFlow()V

    .line 80
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 81
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "sku can\'t be empty"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "error(Exception(\"sku can\'t be empty\"))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 83
    :cond_2
    new-instance v0, Lcom/iMe/ui/shop/PurchaseHelper$Callback;

    invoke-direct {v0}, Lcom/iMe/ui/shop/PurchaseHelper$Callback;-><init>()V

    .line 84
    iget-object v1, p0, Lcom/iMe/ui/shop/PurchaseHelper;->uiCheckout:Lorg/solovyev/android/checkout/UiCheckout;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    const-string v3, "inapp"

    .line 85
    invoke-virtual {v1, v3, p1, v2, v0}, Lorg/solovyev/android/checkout/UiCheckout;->startPurchaseFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/solovyev/android/checkout/RequestListener;)V

    .line 89
    :cond_3
    invoke-virtual {v0}, Lcom/iMe/ui/shop/PurchaseHelper$Callback;->getSingle()Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/iMe/ui/shop/PurchaseHelper$purchase$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/shop/PurchaseHelper$purchase$2;-><init>(Lcom/iMe/ui/shop/PurchaseHelper;)V

    new-instance v1, Lcom/iMe/ui/shop/PurchaseHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/iMe/ui/shop/PurchaseHelper$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object p1

    .line 112
    new-instance v0, Lcom/iMe/ui/shop/PurchaseHelper$purchase$3;

    invoke-direct {v0, p0}, Lcom/iMe/ui/shop/PurchaseHelper$purchase$3;-><init>(Lcom/iMe/ui/shop/PurchaseHelper;)V

    new-instance v1, Lcom/iMe/ui/shop/PurchaseHelper$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcom/iMe/ui/shop/PurchaseHelper$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object p1

    .line 113
    new-instance v0, Lcom/iMe/ui/shop/PurchaseHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/iMe/ui/shop/PurchaseHelper$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/shop/PurchaseHelper;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "fun purchase(skuId: Stri\u2026lowActive = false }\n    }"

    .line 112
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final start()V
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/iMe/ui/shop/PurchaseHelper;->isPurchaseHelperActive:Z

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/iMe/ui/shop/PurchaseHelper;->uiCheckout:Lorg/solovyev/android/checkout/UiCheckout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/solovyev/android/checkout/Checkout;->start()V

    :cond_0
    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/iMe/ui/shop/PurchaseHelper;->isPurchaseHelperActive:Z

    :cond_1
    return-void
.end method

.method public final stop()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/iMe/ui/shop/PurchaseHelper;->uiCheckout:Lorg/solovyev/android/checkout/UiCheckout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/solovyev/android/checkout/UiCheckout;->stop()V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/shop/PurchaseHelper;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Lcom/iMe/ui/shop/PurchaseHelper;->isPurchaseHelperActive:Z

    return-void
.end method
