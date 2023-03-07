.class public final Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter$loadBinanceBalances$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->loadBinanceBalances()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletSelectTokenPresenter.kt\ncom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,111:1\n63#2,4:112\n67#2:122\n68#2,9:133\n79#2,10:145\n1192#3,2:116\n1220#3,4:118\n1601#3,9:123\n1849#3:132\n1850#3:143\n1610#3:144\n1#4:142\n*S KotlinDebug\n*F\n+ 1 WalletSelectTokenPresenter.kt\ncom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter\n*L\n66#1:116,2\n66#1:118,4\n67#1:123,9\n67#1:132\n67#1:143\n67#1:144\n67#1:142\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter$loadBinanceBalances$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_6

    .line 114
    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_8

    .line 115
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    const/16 v0, 0xa

    .line 1192
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 1193
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1220
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1221
    move-object v3, v0

    check-cast v3, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    .line 115
    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getAsset()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter$loadBinanceBalances$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->access$getSupportedTokensItemsMap(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    .line 1601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1849
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1609
    check-cast v3, Lcom/smedialink/model/wallet/select/SelectableTokenItem;

    .line 133
    invoke-virtual {v3}, Lcom/smedialink/model/wallet/select/SelectableTokenItem;->getToken()Lcom/smedialink/model/wallet/select/SelectableToken;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    .line 134
    iget-object v5, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter$loadBinanceBalances$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-static {v5}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->access$getOnlyPositiveBalance$p(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    if-eqz v4, :cond_4

    .line 135
    invoke-virtual {v4}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getCombined()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->getTotal()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v5}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 136
    iget-object v5, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter$loadBinanceBalances$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-static {v5}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/smedialink/mapper/wallet/select/SelectableMappingKt;->mapToSelectable(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Lcom/smedialink/model/wallet/select/SelectableTokenBalance;

    move-result-object v4

    invoke-static {v3, v6, v4, v1, v6}, Lcom/smedialink/model/wallet/select/SelectableTokenItem;->copy$default(Lcom/smedialink/model/wallet/select/SelectableTokenItem;Lcom/smedialink/model/wallet/select/SelectableToken;Lcom/smedialink/model/wallet/select/SelectableTokenBalance;ILjava/lang/Object;)Lcom/smedialink/model/wallet/select/SelectableTokenItem;

    move-result-object v6

    goto :goto_3

    :cond_2
    if-nez v4, :cond_3

    move-object v4, v6

    goto :goto_2

    .line 141
    :cond_3
    iget-object v5, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter$loadBinanceBalances$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-static {v5}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/smedialink/mapper/wallet/select/SelectableMappingKt;->mapToSelectable(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Lcom/smedialink/model/wallet/select/SelectableTokenBalance;

    move-result-object v4

    :goto_2
    invoke-static {v3, v6, v4, v1, v6}, Lcom/smedialink/model/wallet/select/SelectableTokenItem;->copy$default(Lcom/smedialink/model/wallet/select/SelectableTokenItem;Lcom/smedialink/model/wallet/select/SelectableToken;Lcom/smedialink/model/wallet/select/SelectableTokenBalance;ILjava/lang/Object;)Lcom/smedialink/model/wallet/select/SelectableTokenItem;

    move-result-object v6

    :cond_4
    :goto_3
    if-eqz v6, :cond_1

    .line 1609
    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 145
    :cond_5
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter$loadBinanceBalances$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenView;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter$loadBinanceBalances$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-static {v1, v0}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->access$withExcludedSelectedToken(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenView;->onTokensLoaded(Ljava/util/List;)V

    goto :goto_4

    .line 148
    :cond_6
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_7

    .line 149
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter$loadBinanceBalances$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenView;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter$loadBinanceBalances$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->access$getSupportedTokensItemsMap(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->access$withExcludedSelectedToken(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenView;->onTokensLoaded(Ljava/util/List;)V

    .line 150
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter$loadBinanceBalances$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenView;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter$loadBinanceBalances$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_4

    .line 152
    :cond_7
    instance-of p1, p1, Lcom/smedialink/storage/domain/model/Result$Loading;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter$loadBinanceBalances$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenView;

    invoke-interface {p1}, Lcom/smedialink/ui/custom/state/GlobalStateView;->onLoadingState()V

    :cond_8
    :goto_4
    return-void
.end method
