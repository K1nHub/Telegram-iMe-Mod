.class public final Lcom/smedialink/ui/wallet/staking/programmes/adapter/StakingProgrammesRecycleAdapter;
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
    value = "SMAP\nStakingProgrammesRecycleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingProgrammesRecycleAdapter.kt\ncom/smedialink/ui/wallet/staking/programmes/adapter/StakingProgrammesRecycleAdapter\n+ 2 AnyExt.kt\ncom/smedialink/utils/extentions/common/AnyExtKt\n*L\n1#1,42:1\n10#2,2:43\n*S KotlinDebug\n*F\n+ 1 StakingProgrammesRecycleAdapter.kt\ncom/smedialink/ui/wallet/staking/programmes/adapter/StakingProgrammesRecycleAdapter\n*L\n37#1:43,2\n*E\n"
.end annotation


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/adapter/provider/GlobalStateProvider;Lcom/smedialink/ui/adapter/provider/HeaderWithRightButtonProvider;Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider;)V
    .locals 3

    const-string v0, "globalStateProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headerWithRightButtonProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingProgrammeProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 21
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-array v0, v1, [I

    .line 24
    sget v1, Lorg/telegram/messenger/R$id;->image_header_right_button:I

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addChildClickViewIds([I)V

    .line 25
    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 26
    invoke-static {p2}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 27
    invoke-static {p3}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    return-void
.end method


# virtual methods
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

    .line 33
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 34
    instance-of p2, p1, Lcom/smedialink/model/common/GlobalStateItem;

    if-eqz p2, :cond_0

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->GLOBAL_STATE:I

    goto :goto_0

    .line 35
    :cond_0
    instance-of p2, p1, Lcom/smedialink/model/wallet/home/HeaderItemWithRightButton;

    if-eqz p2, :cond_1

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->HEADER_WITH_RIGHT_BUTTON:I

    goto :goto_0

    .line 36
    :cond_1
    instance-of p1, p1, Lcom/smedialink/model/staking/StakingProgrammeItem;

    if-eqz p1, :cond_2

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->STAKING_PROGRAMME:I

    goto :goto_0

    .line 37
    :cond_2
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->STAKING_PROGRAMME:I

    :goto_0
    return p1
.end method
