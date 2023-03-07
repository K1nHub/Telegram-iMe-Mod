.class public Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowStatisticDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletTokenDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowStatisticDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final distributionDiagramModel:Lcom/smedialink/model/statistic/StatisticDiagramModel;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;Lcom/smedialink/model/statistic/StatisticDiagramModel;)V
    .locals 1

    .line 722
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showStatisticDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 724
    iput-object p2, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowStatisticDialogCommand;->distributionDiagramModel:Lcom/smedialink/model/statistic/StatisticDiagramModel;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;)V
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowStatisticDialogCommand;->distributionDiagramModel:Lcom/smedialink/model/statistic/StatisticDiagramModel;

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;->showStatisticDialog(Lcom/smedialink/model/statistic/StatisticDiagramModel;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 718
    check-cast p1, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowStatisticDialogCommand;->apply(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;)V

    return-void
.end method
