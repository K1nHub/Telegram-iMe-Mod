.class public Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView$$State$SetupScreenStateCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSendAmountView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupScreenStateCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;",
        ">;"
    }
.end annotation


# instance fields
.field public final currentScreenState:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView$$State;Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;)V
    .locals 1

    .line 447
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "setupScreenState"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 449
    iput-object p2, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView$$State$SetupScreenStateCommand;->currentScreenState:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;)V
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView$$State$SetupScreenStateCommand;->currentScreenState:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;->setupScreenState(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 443
    check-cast p1, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView$$State$SetupScreenStateCommand;->apply(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;)V

    return-void
.end method
