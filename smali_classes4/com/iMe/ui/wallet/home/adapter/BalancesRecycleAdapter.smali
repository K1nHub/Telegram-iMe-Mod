.class public final Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;
.super Lcom/chad/library/adapter/base/BaseNodeAdapter;
.source "BalancesRecycleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseNodeAdapter<",
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBalancesRecycleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BalancesRecycleAdapter.kt\ncom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter\n+ 2 AnyExt.kt\ncom/iMe/utils/extentions/common/AnyExtKt\n*L\n1#1,114:1\n10#2,2:115\n*S KotlinDebug\n*F\n+ 1 BalancesRecycleAdapter.kt\ncom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter\n*L\n109#1:115,2\n*E\n"
.end annotation


# instance fields
.field private final bannerProvider:Lcom/iMe/ui/adapter/provider/BannerProvider;

.field private final cryptoAccountProvider:Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;

.field private final globalStateProvider:Lcom/iMe/ui/adapter/provider/GlobalStateProvider;

.field private final headerWithNetworkSwitcherProvider:Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;

.field private final nftTokenProvider:Lcom/iMe/ui/adapter/provider/NftTokenProvider;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/adapter/provider/CreateAccountProvider;Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;Lcom/iMe/ui/adapter/provider/AddTokensProvider;Lcom/iMe/ui/adapter/provider/HeaderProvider;Lcom/iMe/ui/adapter/provider/ServiceProvider;Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;Lcom/iMe/ui/adapter/provider/TotalBalanceProvider;Lcom/iMe/ui/adapter/provider/NftCollectionProvider;Lcom/iMe/ui/adapter/provider/GlobalStateProvider;Lcom/iMe/ui/adapter/provider/BannerProvider;Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;Lcom/iMe/ui/adapter/provider/NftTokenProvider;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    move-object/from16 v4, p12

    move-object/from16 v5, p13

    const-string v6, "createAccountProvider"

    move-object/from16 v7, p1

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v6, "selectableHeaderProvider"

    move-object/from16 v8, p2

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v6, "selectTokenProvider"

    move-object/from16 v9, p3

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "headerProvider"

    move-object/from16 v10, p4

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v6, "serviceProvider"

    move-object/from16 v11, p5

    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v6, "tokenBalanceProvider"

    move-object/from16 v12, p6

    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v6, "totalBalanceProvider"

    move-object/from16 v13, p7

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "nftCollectionProvider"

    move-object/from16 v14, p8

    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "globalStateProvider"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "bannerProvider"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "cryptoAccountProvider"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "headerWithNetworkSwitcherProvider"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "nftTokenProvider"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v15, 0x1

    .line 52
    invoke-direct {v0, v6, v15, v6}, Lcom/chad/library/adapter/base/BaseNodeAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 47
    iput-object v1, v0, Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;->globalStateProvider:Lcom/iMe/ui/adapter/provider/GlobalStateProvider;

    .line 48
    iput-object v2, v0, Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;->bannerProvider:Lcom/iMe/ui/adapter/provider/BannerProvider;

    .line 49
    iput-object v3, v0, Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;->cryptoAccountProvider:Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;

    .line 50
    iput-object v4, v0, Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;->headerWithNetworkSwitcherProvider:Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;

    .line 51
    iput-object v5, v0, Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;->nftTokenProvider:Lcom/iMe/ui/adapter/provider/NftTokenProvider;

    const/4 v6, 0x5

    new-array v6, v6, [I

    .line 56
    sget v16, Lorg/telegram/messenger/R$id;->image_wallet_crypto_eye:I

    const/16 v17, 0x0

    aput v16, v6, v17

    sget v16, Lorg/telegram/messenger/R$id;->image_wallet_crypto_tokens_settings:I

    aput v16, v6, v15

    .line 57
    sget v15, Lorg/telegram/messenger/R$id;->image_wallet_order_tokens:I

    const/16 v16, 0x2

    aput v15, v6, v16

    sget v15, Lorg/telegram/messenger/R$id;->network_type_view:I

    const/16 v16, 0x3

    aput v15, v6, v16

    .line 58
    sget v15, Lorg/telegram/messenger/R$id;->image_copy:I

    const/16 v16, 0x4

    aput v15, v6, v16

    .line 55
    invoke-virtual {v0, v6}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addChildClickViewIds([I)V

    .line 60
    invoke-static/range {p10 .. p10}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asNode(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseNodeProvider;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addFullSpanNodeProvider(Lcom/chad/library/adapter/base/provider/BaseNodeProvider;)V

    .line 61
    invoke-static/range {p11 .. p11}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asNode(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseNodeProvider;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addFullSpanNodeProvider(Lcom/chad/library/adapter/base/provider/BaseNodeProvider;)V

    .line 62
    invoke-static/range {p1 .. p1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asNode(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseNodeProvider;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addFullSpanNodeProvider(Lcom/chad/library/adapter/base/provider/BaseNodeProvider;)V

    .line 63
    invoke-static/range {p12 .. p12}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asNode(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseNodeProvider;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addFullSpanNodeProvider(Lcom/chad/library/adapter/base/provider/BaseNodeProvider;)V

    .line 64
    invoke-static/range {p2 .. p2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asNode(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseNodeProvider;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addFullSpanNodeProvider(Lcom/chad/library/adapter/base/provider/BaseNodeProvider;)V

    .line 65
    invoke-static/range {p3 .. p3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asNode(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseNodeProvider;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addFullSpanNodeProvider(Lcom/chad/library/adapter/base/provider/BaseNodeProvider;)V

    .line 66
    invoke-static/range {p4 .. p4}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asNode(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseNodeProvider;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addFullSpanNodeProvider(Lcom/chad/library/adapter/base/provider/BaseNodeProvider;)V

    .line 67
    invoke-static/range {p5 .. p5}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asNode(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseNodeProvider;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addFullSpanNodeProvider(Lcom/chad/library/adapter/base/provider/BaseNodeProvider;)V

    .line 68
    invoke-static/range {p6 .. p6}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asNode(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseNodeProvider;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addFullSpanNodeProvider(Lcom/chad/library/adapter/base/provider/BaseNodeProvider;)V

    .line 69
    invoke-static/range {p7 .. p7}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asNode(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseNodeProvider;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addFullSpanNodeProvider(Lcom/chad/library/adapter/base/provider/BaseNodeProvider;)V

    .line 70
    invoke-static/range {p8 .. p8}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asNode(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseNodeProvider;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addFullSpanNodeProvider(Lcom/chad/library/adapter/base/provider/BaseNodeProvider;)V

    .line 71
    invoke-static/range {p13 .. p13}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 72
    invoke-static/range {p9 .. p9}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asNode(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseNodeProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addFullSpanNodeProvider(Lcom/chad/library/adapter/base/provider/BaseNodeProvider;)V

    return-void
.end method


# virtual methods
.method public final getBannerProvider()Lcom/iMe/ui/adapter/provider/BannerProvider;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;->bannerProvider:Lcom/iMe/ui/adapter/provider/BannerProvider;

    return-object v0
.end method

.method public final getCryptoAccountProvider()Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;->cryptoAccountProvider:Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;

    return-object v0
.end method

.method public final getGlobalStateProvider()Lcom/iMe/ui/adapter/provider/GlobalStateProvider;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;->globalStateProvider:Lcom/iMe/ui/adapter/provider/GlobalStateProvider;

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

    .line 95
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 96
    instance-of p2, p1, Lcom/iMe/model/wallet/home/BannerItem;

    if-eqz p2, :cond_0

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->BANNERS:I

    goto :goto_0

    .line 97
    :cond_0
    instance-of p2, p1, Lcom/iMe/model/wallet/home/HeaderItem;

    if-eqz p2, :cond_1

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

    goto :goto_0

    .line 98
    :cond_1
    instance-of p2, p1, Lcom/iMe/model/wallet/home/AccountItem$Token;

    if-eqz p2, :cond_2

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TOKEN_BALANCE:I

    goto :goto_0

    .line 99
    :cond_2
    instance-of p2, p1, Lcom/iMe/model/wallet/home/ServicesBasicItem;

    if-eqz p2, :cond_3

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->SERVICES_BASIC:I

    goto :goto_0

    .line 100
    :cond_3
    instance-of p2, p1, Lcom/iMe/model/wallet/home/TotalBalanceItem;

    if-eqz p2, :cond_4

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TOTAL_BALANCE:I

    goto :goto_0

    .line 101
    :cond_4
    instance-of p2, p1, Lcom/iMe/model/wallet/home/AccountItem$Create;

    if-eqz p2, :cond_5

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->CREATE_ACCOUNT:I

    goto :goto_0

    .line 102
    :cond_5
    instance-of p2, p1, Lcom/iMe/model/wallet/home/SelectableHeaderItem;

    if-eqz p2, :cond_6

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->SELECTABLE_HEADER:I

    goto :goto_0

    .line 103
    :cond_6
    instance-of p2, p1, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;

    if-eqz p2, :cond_7

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL_WITH_NETWORK:I

    goto :goto_0

    .line 104
    :cond_7
    instance-of p2, p1, Lcom/iMe/model/wallet/home/CryptoAddTokensItem;

    if-eqz p2, :cond_8

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->ADD_TOKENS:I

    goto :goto_0

    .line 105
    :cond_8
    instance-of p2, p1, Lcom/iMe/model/wallet/home/CryptoAccountItem;

    if-eqz p2, :cond_9

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->CRYPTO_ACCOUNT:I

    goto :goto_0

    .line 106
    :cond_9
    instance-of p2, p1, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;

    if-eqz p2, :cond_a

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->NFT_COLLECTION:I

    goto :goto_0

    .line 107
    :cond_a
    instance-of p2, p1, Lcom/iMe/model/wallet/home/nft/NftTokenItem;

    if-eqz p2, :cond_b

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->NFT_AVATAR:I

    goto :goto_0

    .line 108
    :cond_b
    instance-of p1, p1, Lcom/iMe/model/common/GlobalStateItem;

    if-eqz p1, :cond_c

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->GLOBAL_STATE:I

    goto :goto_0

    .line 109
    :cond_c
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TOKEN_BALANCE:I

    :goto_0
    return p1
.end method

.method public final getNftTokenProvider()Lcom/iMe/ui/adapter/provider/NftTokenProvider;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;->nftTokenProvider:Lcom/iMe/ui/adapter/provider/NftTokenProvider;

    return-object v0
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;->onViewRecycled(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 91
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;->bannerProvider:Lcom/iMe/ui/adapter/provider/BannerProvider;

    invoke-virtual {v0, p1}, Lcom/iMe/ui/adapter/provider/BannerProvider;->onViewRecycled(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    return-void
.end method

.method public final resetOnNetworkViewLayoutAction()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;->headerWithNetworkSwitcherProvider:Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;->setOnNetworkViewLayoutAction(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public final setOnNetworkViewLayoutAction(Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;->headerWithNetworkSwitcherProvider:Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;

    invoke-virtual {v0, p1}, Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;->setOnNetworkViewLayoutAction(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method
