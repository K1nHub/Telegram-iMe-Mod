.class final Lcom/iMe/ui/wallet/staking/StakingFragment$pageTabs$2;
.super Lkotlin/jvm/internal/Lambda;
.source "StakingFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/staking/StakingFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/model/staking/StakingNavigationTab;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/staking/StakingFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/staking/StakingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/StakingFragment$pageTabs$2;->this$0:Lcom/iMe/ui/wallet/staking/StakingFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment$pageTabs$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/staking/StakingNavigationTab;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/StakingFragment$pageTabs$2;->this$0:Lcom/iMe/ui/wallet/staking/StakingFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->access$initPageTabs(Lcom/iMe/ui/wallet/staking/StakingFragment;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method