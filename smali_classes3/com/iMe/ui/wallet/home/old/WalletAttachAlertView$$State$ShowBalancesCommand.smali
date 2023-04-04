.class public Lcom/iMe/ui/wallet/home/old/WalletAttachAlertView$$State$ShowBalancesCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletAttachAlertView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/old/WalletAttachAlertView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowBalancesCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/old/WalletAttachAlertView;",
        ">;"
    }
.end annotation


# instance fields
.field public final balances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/old/WalletAttachAlertView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;",
            ">;)V"
        }
    .end annotation

    .line 284
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "showBalances"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 286
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertView$$State$ShowBalancesCommand;->balances:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/old/WalletAttachAlertView;)V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertView$$State$ShowBalancesCommand;->balances:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertView;->showBalances(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 280
    check-cast p1, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertView$$State$ShowBalancesCommand;->apply(Lcom/iMe/ui/wallet/home/old/WalletAttachAlertView;)V

    return-void
.end method
