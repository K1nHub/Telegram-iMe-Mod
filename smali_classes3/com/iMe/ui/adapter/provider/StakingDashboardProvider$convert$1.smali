.class final Lcom/iMe/ui/adapter/provider/StakingDashboardProvider$convert$1;
.super Lkotlin/jvm/internal/Lambda;
.source "StakingDashboardProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/StakingDashboardProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/staking/StakingDashboardItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/ui/custom/StakingDashboardView;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $item:Lcom/iMe/model/staking/StakingDashboardItem;

.field final synthetic this$0:Lcom/iMe/ui/adapter/provider/StakingDashboardProvider;


# direct methods
.method constructor <init>(Lcom/iMe/model/staking/StakingDashboardItem;Lcom/iMe/ui/adapter/provider/StakingDashboardProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/StakingDashboardProvider$convert$1;->$item:Lcom/iMe/model/staking/StakingDashboardItem;

    iput-object p2, p0, Lcom/iMe/ui/adapter/provider/StakingDashboardProvider$convert$1;->this$0:Lcom/iMe/ui/adapter/provider/StakingDashboardProvider;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p1, Lcom/iMe/ui/custom/StakingDashboardView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/StakingDashboardProvider$convert$1;->invoke(Lcom/iMe/ui/custom/StakingDashboardView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/iMe/ui/custom/StakingDashboardView;)V
    .locals 2

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/StakingDashboardProvider$convert$1;->$item:Lcom/iMe/model/staking/StakingDashboardItem;

    invoke-virtual {p1, v0}, Lcom/iMe/ui/custom/StakingDashboardView;->setupItem(Lcom/iMe/model/staking/StakingDashboardItem;)V

    .line 39
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/StakingDashboardProvider$convert$1;->this$0:Lcom/iMe/ui/adapter/provider/StakingDashboardProvider;

    invoke-static {v0}, Lcom/iMe/ui/adapter/provider/StakingDashboardProvider;->access$getOnCalculatorClick$p(Lcom/iMe/ui/adapter/provider/StakingDashboardProvider;)Lcom/iMe/fork/utils/Callbacks$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/adapter/provider/StakingDashboardProvider$convert$1;->this$0:Lcom/iMe/ui/adapter/provider/StakingDashboardProvider;

    invoke-static {v1}, Lcom/iMe/ui/adapter/provider/StakingDashboardProvider;->access$getOnHistoryClick$p(Lcom/iMe/ui/adapter/provider/StakingDashboardProvider;)Lcom/iMe/fork/utils/Callbacks$Callback;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/iMe/ui/custom/StakingDashboardView;->setupListeners(Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method
