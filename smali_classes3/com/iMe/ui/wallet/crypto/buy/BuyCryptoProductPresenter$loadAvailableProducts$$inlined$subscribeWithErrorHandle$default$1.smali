.class public final Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter$loadAvailableProducts$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->loadAvailableProducts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/util/List<",
        "Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;",
        ">;>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 BuyCryptoProductPresenter.kt\ncom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,111:1\n62#2,3:112\n65#2,6:118\n1045#3:115\n37#4,2:116\n*S KotlinDebug\n*F\n+ 1 BuyCryptoProductPresenter.kt\ncom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter\n*L\n64#1:115\n64#1:116,2\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter$loadAvailableProducts$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter$loadAvailableProducts$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    .line 114
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter$loadAvailableProducts$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->access$getTokenInfo(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;)Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/iMe/mapper/crypto/CryptoQuotesToCryptoBuyItemUiMappingKt;->mapToUI(Ljava/util/List;Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;)Ljava/util/List;

    move-result-object p1

    .line 1045
    new-instance v0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter$loadAvailableProducts$lambda$3$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter$loadAvailableProducts$lambda$3$$inlined$sortedBy$1;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;

    .line 38
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 114
    check-cast p1, [Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;

    .line 118
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter$loadAvailableProducts$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->access$setupUiItems(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;[Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;)V

    goto :goto_0

    .line 120
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter$loadAvailableProducts$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter$loadAvailableProducts$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_1
    :goto_0
    return-void
.end method
