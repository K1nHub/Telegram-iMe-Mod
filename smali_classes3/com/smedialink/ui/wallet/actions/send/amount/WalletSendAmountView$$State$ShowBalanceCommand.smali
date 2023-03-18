.class public Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowBalanceCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSendAmountView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowBalanceCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;",
        ">;"
    }
.end annotation


# instance fields
.field public final balance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView$$State;Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;)V
    .locals 1

    .line 500
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "showBalance"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 502
    iput-object p2, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowBalanceCommand;->balance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;)V
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowBalanceCommand;->balance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;->showBalance(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 496
    check-cast p1, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowBalanceCommand;->apply(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;)V

    return-void
.end method
