.class final Lcom/smedialink/ui/wallet/staking/StakingFragment$initPageTabs$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "StakingFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/staking/StakingFragment;->initPageTabs()Ljava/util/List;
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
.field final synthetic $tab:Lcom/smedialink/storage/domain/model/staking/StakingTabType;

.field final synthetic this$0:Lcom/smedialink/ui/wallet/staking/StakingFragment;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/staking/StakingFragment;Lcom/smedialink/storage/domain/model/staking/StakingTabType;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/StakingFragment$initPageTabs$1$1;->this$0:Lcom/smedialink/ui/wallet/staking/StakingFragment;

    iput-object p2, p0, Lcom/smedialink/ui/wallet/staking/StakingFragment$initPageTabs$1$1;->$tab:Lcom/smedialink/storage/domain/model/staking/StakingTabType;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/View;
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/StakingFragment$initPageTabs$1$1;->this$0:Lcom/smedialink/ui/wallet/staking/StakingFragment;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/staking/StakingFragment;->access$getNavigationRouter(Lcom/smedialink/ui/wallet/staking/StakingFragment;)Lcom/smedialink/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    check-cast v0, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/StakingFragment$initPageTabs$1$1;->$tab:Lcom/smedialink/storage/domain/model/staking/StakingTabType;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/staking/StakingTabType;->getFragmentId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;->getViewByFragmentId(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/staking/StakingFragment$initPageTabs$1$1;->invoke()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
