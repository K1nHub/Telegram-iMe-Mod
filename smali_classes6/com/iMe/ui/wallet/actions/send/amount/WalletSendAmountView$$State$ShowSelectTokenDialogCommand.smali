.class public Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowSelectTokenDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSendAmountView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowSelectTokenDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;",
        ">;"
    }
.end annotation


# instance fields
.field public final action:Lcom/iMe/fork/utils/Callbacks$Callback2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/fork/utils/Callbacks$Callback2<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            "Lcom/iMe/storage/domain/model/wallet/token/FiatValue;",
            ">;"
        }
    .end annotation
.end field

.field public final networkId:Ljava/lang/String;

.field public final onlyPositiveBalance:Z

.field public final selectTokensScreenType:Lcom/iMe/model/wallet/select/SelectTokenScreenType;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State;Lcom/iMe/model/wallet/select/SelectTokenScreenType;Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/wallet/select/SelectTokenScreenType;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/iMe/fork/utils/Callbacks$Callback2<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            "Lcom/iMe/storage/domain/model/wallet/token/FiatValue;",
            ">;)V"
        }
    .end annotation

    .line 424
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "showSelectTokenDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 426
    iput-object p2, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowSelectTokenDialogCommand;->selectTokensScreenType:Lcom/iMe/model/wallet/select/SelectTokenScreenType;

    .line 427
    iput-object p3, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowSelectTokenDialogCommand;->networkId:Ljava/lang/String;

    .line 428
    iput-boolean p4, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowSelectTokenDialogCommand;->onlyPositiveBalance:Z

    .line 429
    iput-object p5, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowSelectTokenDialogCommand;->action:Lcom/iMe/fork/utils/Callbacks$Callback2;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;)V
    .locals 4

    .line 434
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowSelectTokenDialogCommand;->selectTokensScreenType:Lcom/iMe/model/wallet/select/SelectTokenScreenType;

    iget-object v1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowSelectTokenDialogCommand;->networkId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowSelectTokenDialogCommand;->onlyPositiveBalance:Z

    iget-object v3, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowSelectTokenDialogCommand;->action:Lcom/iMe/fork/utils/Callbacks$Callback2;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;->showSelectTokenDialog(Lcom/iMe/model/wallet/select/SelectTokenScreenType;Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback2;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 413
    check-cast p1, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowSelectTokenDialogCommand;->apply(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;)V

    return-void
.end method
