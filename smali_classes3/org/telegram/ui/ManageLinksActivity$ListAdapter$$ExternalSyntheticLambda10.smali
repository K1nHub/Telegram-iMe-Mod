.class public final synthetic Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/fork/utils/Callbacks$Callback1;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda10;->f$0:Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda10;->f$0:Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    check-cast p1, Lcom/smedialink/model/staking/StakingDetailsItem;

    invoke-virtual {v0, p1}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->onStakingSelected(Lcom/smedialink/model/staking/StakingDetailsItem;)V

    return-void
.end method
