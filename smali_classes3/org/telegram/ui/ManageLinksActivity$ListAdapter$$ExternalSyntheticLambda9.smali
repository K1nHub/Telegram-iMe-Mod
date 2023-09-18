.class public final synthetic Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iMe/fork/utils/Callbacks$Callback;


# instance fields
.field public final synthetic f$0:Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda9;->f$0:Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    return-void
.end method


# virtual methods
.method public final invoke()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda9;->f$0:Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->onDepositClick()V

    return-void
.end method
