.class public final Lcom/smedialink/ui/wallet/staking/programmes/adapter/diff/StakingProgrammesDiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "StakingProgrammesDiffCallback.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Z
    .locals 1

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    instance-of v0, p1, Lcom/smedialink/model/common/GlobalStateItem;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/smedialink/model/common/GlobalStateItem;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 26
    :cond_0
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/HeaderItemWithRightButton;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/HeaderItemWithRightButton;

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 27
    :cond_1
    instance-of v0, p1, Lcom/smedialink/model/common/FiltersListItem;

    if-eqz v0, :cond_2

    instance-of v0, p2, Lcom/smedialink/model/common/FiltersListItem;

    if-eqz v0, :cond_2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 28
    :cond_2
    instance-of v0, p1, Lcom/smedialink/model/staking/StakingProgrammeItem;

    if-eqz v0, :cond_3

    instance-of v0, p2, Lcom/smedialink/model/staking/StakingProgrammeItem;

    if-eqz v0, :cond_3

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 29
    :cond_3
    instance-of v0, p1, Lcom/smedialink/model/staking/StakingDashboardItem$Loading;

    if-eqz v0, :cond_4

    instance-of v0, p2, Lcom/smedialink/model/staking/StakingDashboardItem$Loading;

    if-eqz v0, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    .line 30
    :cond_4
    instance-of v0, p1, Lcom/smedialink/model/staking/StakingDashboardItem$Data;

    if-eqz v0, :cond_5

    instance-of v0, p2, Lcom/smedialink/model/staking/StakingDashboardItem$Data;

    if-eqz v0, :cond_5

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 11
    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    check-cast p2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/wallet/staking/programmes/adapter/diff/StakingProgrammesDiffCallback;->areContentsTheSame(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Z
    .locals 5

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    instance-of v0, p1, Lcom/smedialink/model/common/GlobalStateItem;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/smedialink/model/common/GlobalStateItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/smedialink/model/common/GlobalStateItem;

    invoke-virtual {p1}, Lcom/smedialink/model/common/GlobalStateItem;->getState()Lcom/smedialink/model/state/GlobalState;

    move-result-object p1

    check-cast p2, Lcom/smedialink/model/common/GlobalStateItem;

    invoke-virtual {p2}, Lcom/smedialink/model/common/GlobalStateItem;->getState()Lcom/smedialink/model/state/GlobalState;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    .line 17
    :cond_0
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/HeaderItemWithRightButton;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/HeaderItemWithRightButton;

    if-eqz v0, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    .line 18
    :cond_1
    instance-of v0, p1, Lcom/smedialink/model/common/FiltersListItem;

    if-eqz v0, :cond_2

    instance-of v0, p2, Lcom/smedialink/model/common/FiltersListItem;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 19
    :cond_2
    instance-of v0, p1, Lcom/smedialink/model/staking/StakingProgrammeItem;

    if-eqz v0, :cond_3

    instance-of v0, p2, Lcom/smedialink/model/staking/StakingProgrammeItem;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/smedialink/model/staking/StakingProgrammeItem;

    invoke-virtual {p1}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getId()J

    move-result-wide v3

    check-cast p2, Lcom/smedialink/model/staking/StakingProgrammeItem;

    invoke-virtual {p2}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getId()J

    move-result-wide p1

    cmp-long p1, v3, p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 20
    :cond_3
    instance-of p1, p1, Lcom/smedialink/model/staking/StakingDashboardItem;

    if-eqz p1, :cond_4

    instance-of p1, p2, Lcom/smedialink/model/staking/StakingDashboardItem;

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    return v1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 11
    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    check-cast p2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/wallet/staking/programmes/adapter/diff/StakingProgrammesDiffCallback;->areItemsTheSame(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Z

    move-result p1

    return p1
.end method

.method public getChangePayload(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Ljava/lang/Object;
    .locals 2

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    instance-of v0, p1, Lcom/smedialink/model/staking/StakingProgrammeItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/smedialink/model/staking/StakingProgrammeItem;

    if-eqz v0, :cond_0

    .line 36
    check-cast p1, Lcom/smedialink/model/staking/StakingProgrammeItem;

    invoke-virtual {p1}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getTokenBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object p1

    check-cast p2, Lcom/smedialink/model/staking/StakingProgrammeItem;

    invoke-virtual {p2}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getTokenBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    move-object v1, p2

    goto :goto_0

    .line 39
    :cond_0
    instance-of v0, p1, Lcom/smedialink/model/staking/StakingDashboardItem;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/smedialink/model/staking/StakingDashboardItem;

    if-eqz v0, :cond_1

    .line 40
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    move-object v1, p2

    check-cast v1, Lcom/smedialink/model/staking/StakingDashboardItem;

    goto :goto_0

    .line 43
    :cond_1
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/HeaderItemWithRightButton;

    if-eqz v0, :cond_2

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/HeaderItemWithRightButton;

    if-eqz v0, :cond_2

    .line 44
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    move-object v1, p2

    check-cast v1, Lcom/smedialink/model/wallet/home/HeaderItemWithRightButton;

    goto :goto_0

    .line 47
    :cond_2
    instance-of v0, p1, Lcom/smedialink/model/common/FiltersListItem;

    if-eqz v0, :cond_3

    instance-of v0, p2, Lcom/smedialink/model/common/FiltersListItem;

    if-eqz v0, :cond_3

    .line 48
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    check-cast p2, Lcom/smedialink/model/common/FiltersListItem;

    invoke-virtual {p2}, Lcom/smedialink/model/common/FiltersListItem;->getFilters()Ljava/util/List;

    move-result-object v1

    :cond_3
    :goto_0
    return-object v1
.end method

.method public bridge synthetic getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    check-cast p2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/wallet/staking/programmes/adapter/diff/StakingProgrammesDiffCallback;->getChangePayload(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
