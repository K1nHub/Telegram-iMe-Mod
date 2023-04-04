.class public final Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/adapter/BinancePayRecycleAdapter;
.super Lcom/chad/library/adapter/base/BaseNodeAdapter;
.source "BinancePayRecycleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseNodeAdapter<",
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBinancePayRecycleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BinancePayRecycleAdapter.kt\ncom/iMe/ui/wallet/home/v2/tabs/binancepay/adapter/BinancePayRecycleAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 AnyExt.kt\ncom/iMe/utils/extentions/common/AnyExtKt\n*L\n1#1,81:1\n350#2,7:82\n350#2,7:89\n350#2,7:96\n378#2,7:103\n10#3,2:110\n*S KotlinDebug\n*F\n+ 1 BinancePayRecycleAdapter.kt\ncom/iMe/ui/wallet/home/v2/tabs/binancepay/adapter/BinancePayRecycleAdapter\n*L\n43#1:82,7\n44#1:89,7\n54#1:96,7\n55#1:103,7\n78#1:110,2\n*E\n"
.end annotation


# instance fields
.field private final bannerProvider:Lcom/iMe/ui/adapter/provider/BannerProvider;

.field private final binanceAccountProvider:Lcom/iMe/ui/adapter/provider/BinanceAccountProvider;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/adapter/provider/BannerProvider;Lcom/iMe/ui/adapter/provider/BinanceAccountProvider;Lcom/iMe/ui/adapter/provider/CardButtonProvider;Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;Lcom/iMe/ui/adapter/provider/HeaderProvider;Lcom/iMe/ui/adapter/provider/BinanceTokenBalanceProvider;Lcom/iMe/ui/adapter/provider/TotalBalanceProvider;Lcom/iMe/ui/adapter/provider/GlobalStateProvider;)V
    .locals 4

    const-string v0, "bannerProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binanceAccountProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardButtonProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headerWithNetworkSwitcherProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headerProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binanceTokenBalanceProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "totalBalanceProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "globalStateProvider"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 26
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/adapter/BinancePayRecycleAdapter;->bannerProvider:Lcom/iMe/ui/adapter/provider/BannerProvider;

    .line 19
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/adapter/BinancePayRecycleAdapter;->binanceAccountProvider:Lcom/iMe/ui/adapter/provider/BinanceAccountProvider;

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 29
    sget v2, Lorg/telegram/messenger/R$id;->image_wallet_crypto_eye:I

    const/4 v3, 0x0

    aput v2, v0, v3

    sget v2, Lorg/telegram/messenger/R$id;->image_wallet_crypto_tokens_settings:I

    aput v2, v0, v1

    sget v1, Lorg/telegram/messenger/R$id;->image_wallet_order_tokens:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lorg/telegram/messenger/R$id;->image_copy:I

    const/4 v2, 0x3

    aput v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addChildClickViewIds([I)V

    .line 30
    invoke-static {p1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 31
    invoke-static {p2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 32
    invoke-static {p3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 33
    invoke-static {p4}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 34
    invoke-static {p5}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 35
    invoke-static {p6}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 36
    invoke-static {p7}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 37
    invoke-static {p8}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    return-void
.end method


# virtual methods
.method public final getBannerProvider()Lcom/iMe/ui/adapter/provider/BannerProvider;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/adapter/BinancePayRecycleAdapter;->bannerProvider:Lcom/iMe/ui/adapter/provider/BannerProvider;

    return-object v0
.end method

.method public final getBinanceAccountProvider()Lcom/iMe/ui/adapter/provider/BinanceAccountProvider;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/adapter/BinancePayRecycleAdapter;->binanceAccountProvider:Lcom/iMe/ui/adapter/provider/BinanceAccountProvider;

    return-object v0
.end method

.method protected getItemType(Ljava/util/List;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;I)I"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 70
    instance-of p2, p1, Lcom/iMe/model/wallet/home/BannerItem;

    if-eqz p2, :cond_0

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->BANNERS:I

    goto :goto_0

    .line 71
    :cond_0
    instance-of p2, p1, Lcom/iMe/model/wallet/home/HeaderItem;

    if-eqz p2, :cond_1

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER:I

    goto :goto_0

    .line 72
    :cond_1
    instance-of p2, p1, Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;

    if-eqz p2, :cond_2

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TOKEN_BALANCE:I

    goto :goto_0

    .line 73
    :cond_2
    instance-of p2, p1, Lcom/iMe/model/wallet/home/TotalBalanceItem;

    if-eqz p2, :cond_3

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TOTAL_BALANCE:I

    goto :goto_0

    .line 74
    :cond_3
    instance-of p2, p1, Lcom/iMe/model/wallet/home/CardButtonItem;

    if-eqz p2, :cond_4

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->CARD_BUTTON:I

    goto :goto_0

    .line 75
    :cond_4
    instance-of p2, p1, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;

    if-eqz p2, :cond_5

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_WITH_NETWORK_SWITCHER:I

    goto :goto_0

    .line 76
    :cond_5
    instance-of p2, p1, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;

    if-eqz p2, :cond_6

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->BINANCE_ACCOUNT:I

    goto :goto_0

    .line 77
    :cond_6
    instance-of p1, p1, Lcom/iMe/model/common/GlobalStateItem;

    if-eqz p1, :cond_7

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->GLOBAL_STATE:I

    goto :goto_0

    .line 78
    :cond_7
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TOKEN_BALANCE:I

    :goto_0
    return p1
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/adapter/BinancePayRecycleAdapter;->onViewRecycled(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 65
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/adapter/BinancePayRecycleAdapter;->bannerProvider:Lcom/iMe/ui/adapter/provider/BannerProvider;

    invoke-virtual {v0, p1}, Lcom/iMe/ui/adapter/provider/BannerProvider;->onViewRecycled(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    return-void
.end method

.method public final updateUserInfo(Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;)V
    .locals 5

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 351
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 352
    check-cast v3, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 43
    instance-of v3, v3, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    .line 44
    :goto_1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 351
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 352
    check-cast v3, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 44
    instance-of v3, v3, Lcom/iMe/model/wallet/home/CardButtonItem;

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v4

    :goto_3
    if-eq v1, v4, :cond_4

    .line 46
    invoke-virtual {p0, v1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->baseRemoveAt(I)V

    .line 47
    invoke-virtual {p0, v1, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->baseAddData(ILcom/chad/library/adapter/base/entity/node/BaseNode;)V

    goto :goto_4

    :cond_4
    if-eq v2, v4, :cond_5

    .line 49
    invoke-virtual {p0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_5
    :goto_4
    return-void
.end method
