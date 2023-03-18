.class public final Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensBinance(ZLorg/fork/utils/Callbacks$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;",
        ">;>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletSwapProcessPresenter.kt\ncom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,111:1\n603#2,3:112\n606#2,6:119\n1549#3:115\n1620#3,3:116\n*S KotlinDebug\n*F\n+ 1 WalletSwapProcessPresenter.kt\ncom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter\n*L\n605#1:115\n605#1:116,3\n*E\n"
.end annotation


# instance fields
.field final synthetic $action$inlined:Lorg/fork/utils/Callbacks$Callback;

.field final synthetic this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    iput-object p2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1;->$action$inlined:Lorg/fork/utils/Callbacks$Callback;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/Result<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$getSelectableSupportedSwapTokens$p(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->BINANCE_SMART_CHAIN:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1621
    check-cast v3, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;

    .line 114
    invoke-static {v3}, Lcom/smedialink/mapper/wallet/select/SelectableMappingKt;->mapToSelectable(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;)Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl;

    move-result-object v3

    .line 1621
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1;->$action$inlined:Lorg/fork/utils/Callbacks$Callback;

    invoke-interface {p1}, Lorg/fork/utils/Callbacks$Callback;->invoke()V

    goto :goto_1

    .line 121
    :cond_1
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
