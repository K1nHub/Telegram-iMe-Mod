.class public final Lcom/iMe/ui/wallet/staking/programmes/adapter/StakingProgrammesRecycleAdapter;
.super Lcom/chad/library/adapter/base/BaseNodeAdapter;
.source "StakingProgrammesRecycleAdapter.kt"

# interfaces
.implements Lcom/chad/library/adapter/base/module/LoadMoreModule;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseNodeAdapter<",
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        ">;",
        "Lcom/chad/library/adapter/base/module/LoadMoreModule;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingProgrammesRecycleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingProgrammesRecycleAdapter.kt\ncom/iMe/ui/wallet/staking/programmes/adapter/StakingProgrammesRecycleAdapter\n+ 2 AnyExt.kt\ncom/iMe/utils/extentions/common/AnyExtKt\n*L\n1#1,47:1\n10#2,2:48\n*S KotlinDebug\n*F\n+ 1 StakingProgrammesRecycleAdapter.kt\ncom/iMe/ui/wallet/staking/programmes/adapter/StakingProgrammesRecycleAdapter\n*L\n42#1:48,2\n*E\n"
.end annotation


# instance fields
.field private final filterProvider:Lcom/iMe/ui/adapter/provider/FilterProvider;

.field private final headerWithRightButtonProvider:Lcom/iMe/ui/adapter/provider/HeaderWithRightButtonProvider;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/adapter/provider/GlobalStateProvider;Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;Lcom/iMe/ui/adapter/provider/FilterProvider;Lcom/iMe/ui/adapter/provider/HeaderWithRightButtonProvider;)V
    .locals 4

    const-string v0, "globalStateProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stakingProgrammeProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headerWithRightButtonProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 24
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    iput-object p3, p0, Lcom/iMe/ui/wallet/staking/programmes/adapter/StakingProgrammesRecycleAdapter;->filterProvider:Lcom/iMe/ui/adapter/provider/FilterProvider;

    .line 23
    iput-object p4, p0, Lcom/iMe/ui/wallet/staking/programmes/adapter/StakingProgrammesRecycleAdapter;->headerWithRightButtonProvider:Lcom/iMe/ui/adapter/provider/HeaderWithRightButtonProvider;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 27
    sget v2, Lorg/telegram/messenger/R$id;->image_header_right_button:I

    const/4 v3, 0x0

    aput v2, v0, v3

    sget v2, Lorg/telegram/messenger/R$id;->image_info:I

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addChildClickViewIds([I)V

    .line 28
    invoke-static {p1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 29
    invoke-static {p4}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 30
    invoke-static {p3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 31
    invoke-static {p2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    return-void
.end method


# virtual methods
.method public final getFilterProvider()Lcom/iMe/ui/adapter/provider/FilterProvider;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/programmes/adapter/StakingProgrammesRecycleAdapter;->filterProvider:Lcom/iMe/ui/adapter/provider/FilterProvider;

    return-object v0
.end method

.method public final getHeaderWithRightButtonProvider()Lcom/iMe/ui/adapter/provider/HeaderWithRightButtonProvider;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/programmes/adapter/StakingProgrammesRecycleAdapter;->headerWithRightButtonProvider:Lcom/iMe/ui/adapter/provider/HeaderWithRightButtonProvider;

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

    .line 37
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 38
    instance-of p2, p1, Lcom/iMe/model/common/GlobalStateItem;

    if-eqz p2, :cond_0

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->GLOBAL_STATE:I

    goto :goto_0

    .line 39
    :cond_0
    instance-of p2, p1, Lcom/iMe/model/wallet/home/HeaderItemWithRightButton;

    if-eqz p2, :cond_1

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_ITEM_WITH_RIGHT_BUTTON:I

    goto :goto_0

    .line 40
    :cond_1
    instance-of p2, p1, Lcom/iMe/model/common/FiltersListItem;

    if-eqz p2, :cond_2

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_LIST:I

    goto :goto_0

    .line 41
    :cond_2
    instance-of p1, p1, Lcom/iMe/model/staking/StakingProgrammeItem;

    if-eqz p1, :cond_3

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->STAKING_PROGRAMME:I

    goto :goto_0

    .line 42
    :cond_3
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->STAKING_PROGRAMME:I

    :goto_0
    return p1
.end method
