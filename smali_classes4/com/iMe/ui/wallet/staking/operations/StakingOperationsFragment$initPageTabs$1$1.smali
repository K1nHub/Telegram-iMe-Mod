.class final Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment$initPageTabs$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "StakingOperationsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->initPageTabs()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $group:Lcom/iMe/model/wallet/details/StakingOperationsGroup;

.field final synthetic this$0:Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;Lcom/iMe/model/wallet/details/StakingOperationsGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment$initPageTabs$1$1;->this$0:Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;

    iput-object p2, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment$initPageTabs$1$1;->$group:Lcom/iMe/model/wallet/details/StakingOperationsGroup;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/View;
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment$initPageTabs$1$1;->this$0:Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->access$getNavigationRouter(Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;)Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.iMe.navigation.common.router.base.BaseNavigationRouter<com.iMe.ui.base.mvp.MvpFragment>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/iMe/navigation/common/router/base/BaseNavigationRouter;

    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment$initPageTabs$1$1;->$group:Lcom/iMe/model/wallet/details/StakingOperationsGroup;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/details/StakingOperationsGroup;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iMe/navigation/common/router/base/BaseNavigationRouter;->getViewByFragmentId(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 197
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment$initPageTabs$1$1;->invoke()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
