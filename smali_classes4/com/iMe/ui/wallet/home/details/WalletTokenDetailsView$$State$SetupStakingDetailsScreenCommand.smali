.class public Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupStakingDetailsScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletTokenDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupStakingDetailsScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final annualTitleText:Ljava/lang/String;

.field public final annualValueText:Ljava/lang/String;

.field public final balanceText:Ljava/lang/String;

.field public final logoImageUrl:Ljava/lang/String;

.field public final profitText:Ljava/lang/String;

.field public final shouldColorProfitText:Z

.field public final status:Lcom/iMe/model/staking/StakingProgrammeStatus;

.field public final titleText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/iMe/model/staking/StakingProgrammeStatus;)V
    .locals 1

    .line 662
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "setupStakingDetailsScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 664
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupStakingDetailsScreenCommand;->logoImageUrl:Ljava/lang/String;

    .line 665
    iput-object p3, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupStakingDetailsScreenCommand;->titleText:Ljava/lang/String;

    .line 666
    iput-object p4, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupStakingDetailsScreenCommand;->balanceText:Ljava/lang/String;

    .line 667
    iput-object p5, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupStakingDetailsScreenCommand;->annualTitleText:Ljava/lang/String;

    .line 668
    iput-object p6, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupStakingDetailsScreenCommand;->annualValueText:Ljava/lang/String;

    .line 669
    iput-object p7, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupStakingDetailsScreenCommand;->profitText:Ljava/lang/String;

    .line 670
    iput-boolean p8, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupStakingDetailsScreenCommand;->shouldColorProfitText:Z

    .line 671
    iput-object p9, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupStakingDetailsScreenCommand;->status:Lcom/iMe/model/staking/StakingProgrammeStatus;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;)V
    .locals 9

    .line 676
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupStakingDetailsScreenCommand;->logoImageUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupStakingDetailsScreenCommand;->titleText:Ljava/lang/String;

    iget-object v3, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupStakingDetailsScreenCommand;->balanceText:Ljava/lang/String;

    iget-object v4, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupStakingDetailsScreenCommand;->annualTitleText:Ljava/lang/String;

    iget-object v5, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupStakingDetailsScreenCommand;->annualValueText:Ljava/lang/String;

    iget-object v6, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupStakingDetailsScreenCommand;->profitText:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupStakingDetailsScreenCommand;->shouldColorProfitText:Z

    iget-object v8, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupStakingDetailsScreenCommand;->status:Lcom/iMe/model/staking/StakingProgrammeStatus;

    move-object v0, p1

    invoke-interface/range {v0 .. v8}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->setupStakingDetailsScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/iMe/model/staking/StakingProgrammeStatus;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 642
    check-cast p1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupStakingDetailsScreenCommand;->apply(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;)V

    return-void
.end method
