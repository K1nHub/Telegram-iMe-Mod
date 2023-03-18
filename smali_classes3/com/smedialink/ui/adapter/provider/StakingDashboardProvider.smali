.class public final Lcom/smedialink/ui/adapter/provider/StakingDashboardProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "StakingDashboardProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/smedialink/model/staking/StakingDashboardItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final itemViewType:I

.field private final layoutId:I

.field private onCalculatorClick:Lorg/fork/utils/Callbacks$Callback;

.field private onHistoryClick:Lorg/fork/utils/Callbacks$Callback;


# direct methods
.method public static synthetic $r8$lambda$SDFEE7shoTWfqbOhil7b8DkmCqc()V
    .locals 0

    invoke-static {}, Lcom/smedialink/ui/adapter/provider/StakingDashboardProvider;->onHistoryClick$lambda$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$aR9xNQn1M9mV_Oe552ILCsnhJk0()V
    .locals 0

    invoke-static {}, Lcom/smedialink/ui/adapter/provider/StakingDashboardProvider;->onCalculatorClick$lambda$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 15
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->STAKING_DASHBOARD:I

    iput v0, p0, Lcom/smedialink/ui/adapter/provider/StakingDashboardProvider;->itemViewType:I

    .line 16
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_staking_dashboard:I

    iput v0, p0, Lcom/smedialink/ui/adapter/provider/StakingDashboardProvider;->layoutId:I

    .line 19
    sget-object v0, Lcom/smedialink/ui/adapter/provider/StakingDashboardProvider$$ExternalSyntheticLambda1;->INSTANCE:Lcom/smedialink/ui/adapter/provider/StakingDashboardProvider$$ExternalSyntheticLambda1;

    iput-object v0, p0, Lcom/smedialink/ui/adapter/provider/StakingDashboardProvider;->onCalculatorClick:Lorg/fork/utils/Callbacks$Callback;

    .line 20
    sget-object v0, Lcom/smedialink/ui/adapter/provider/StakingDashboardProvider$$ExternalSyntheticLambda0;->INSTANCE:Lcom/smedialink/ui/adapter/provider/StakingDashboardProvider$$ExternalSyntheticLambda0;

    iput-object v0, p0, Lcom/smedialink/ui/adapter/provider/StakingDashboardProvider;->onHistoryClick:Lorg/fork/utils/Callbacks$Callback;

    return-void
.end method

.method public static final synthetic access$getOnCalculatorClick$p(Lcom/smedialink/ui/adapter/provider/StakingDashboardProvider;)Lorg/fork/utils/Callbacks$Callback;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/smedialink/ui/adapter/provider/StakingDashboardProvider;->onCalculatorClick:Lorg/fork/utils/Callbacks$Callback;

    return-object p0
.end method

.method public static final synthetic access$getOnHistoryClick$p(Lcom/smedialink/ui/adapter/provider/StakingDashboardProvider;)Lorg/fork/utils/Callbacks$Callback;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/smedialink/ui/adapter/provider/StakingDashboardProvider;->onHistoryClick:Lorg/fork/utils/Callbacks$Callback;

    return-object p0
.end method

.method private static final onCalculatorClick$lambda$0()V
    .locals 0

    return-void
.end method

.method private static final onHistoryClick$lambda$1()V
    .locals 0

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/staking/StakingDashboardItem;)V
    .locals 2

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget v0, Lorg/telegram/messenger/R$id;->view_staking_dashboard:I

    new-instance v1, Lcom/smedialink/ui/adapter/provider/StakingDashboardProvider$convert$1;

    invoke-direct {v1, p2, p0}, Lcom/smedialink/ui/adapter/provider/StakingDashboardProvider$convert$1;-><init>(Lcom/smedialink/model/staking/StakingDashboardItem;Lcom/smedialink/ui/adapter/provider/StakingDashboardProvider;)V

    invoke-static {p1, v0, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/staking/StakingDashboardItem;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lcom/smedialink/model/staking/StakingDashboardItem;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget p3, Lorg/telegram/messenger/R$id;->view_staking_dashboard:I

    new-instance v0, Lcom/smedialink/ui/adapter/provider/StakingDashboardProvider$convert$2;

    invoke-direct {v0, p2}, Lcom/smedialink/ui/adapter/provider/StakingDashboardProvider$convert$2;-><init>(Lcom/smedialink/model/staking/StakingDashboardItem;)V

    invoke-static {p1, p3, v0}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/smedialink/model/staking/StakingDashboardItem;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/adapter/provider/StakingDashboardProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/staking/StakingDashboardItem;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/smedialink/model/staking/StakingDashboardItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smedialink/ui/adapter/provider/StakingDashboardProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/staking/StakingDashboardItem;Ljava/util/List;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/smedialink/ui/adapter/provider/StakingDashboardProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/smedialink/ui/adapter/provider/StakingDashboardProvider;->layoutId:I

    return v0
.end method
