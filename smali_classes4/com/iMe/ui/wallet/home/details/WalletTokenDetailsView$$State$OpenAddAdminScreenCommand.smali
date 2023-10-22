.class public Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenAddAdminScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletTokenDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenAddAdminScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final boxId:Ljava/lang/String;

.field public final chatId:J

.field public final walletBotId:J


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;JJLjava/lang/String;)V
    .locals 1

    .line 902
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "openAddAdminScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 904
    iput-wide p2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenAddAdminScreenCommand;->walletBotId:J

    .line 905
    iput-wide p4, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenAddAdminScreenCommand;->chatId:J

    .line 906
    iput-object p6, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenAddAdminScreenCommand;->boxId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;)V
    .locals 6

    .line 911
    iget-wide v1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenAddAdminScreenCommand;->walletBotId:J

    iget-wide v3, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenAddAdminScreenCommand;->chatId:J

    iget-object v5, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenAddAdminScreenCommand;->boxId:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->openAddAdminScreen(JJLjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 894
    check-cast p1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenAddAdminScreenCommand;->apply(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;)V

    return-void
.end method
