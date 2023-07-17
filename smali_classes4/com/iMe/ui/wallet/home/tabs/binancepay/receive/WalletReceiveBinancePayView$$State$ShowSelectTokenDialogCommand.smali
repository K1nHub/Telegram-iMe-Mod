.class public Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView$$State$ShowSelectTokenDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletReceiveBinancePayView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowSelectTokenDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView;",
        ">;"
    }
.end annotation


# instance fields
.field public final action:Lcom/iMe/fork/utils/Callbacks$Callback1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            ">;"
        }
    .end annotation
.end field

.field public final networkId:Ljava/lang/String;

.field public final onlyPositiveBalance:Z

.field public final selectTokensScreenType:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView$$State;Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType;Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            ">;)V"
        }
    .end annotation

    .line 208
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "showSelectTokenDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 210
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView$$State$ShowSelectTokenDialogCommand;->selectTokensScreenType:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType;

    .line 211
    iput-object p3, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView$$State$ShowSelectTokenDialogCommand;->networkId:Ljava/lang/String;

    .line 212
    iput-boolean p4, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView$$State$ShowSelectTokenDialogCommand;->onlyPositiveBalance:Z

    .line 213
    iput-object p5, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView$$State$ShowSelectTokenDialogCommand;->action:Lcom/iMe/fork/utils/Callbacks$Callback1;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView;)V
    .locals 4

    .line 218
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView$$State$ShowSelectTokenDialogCommand;->selectTokensScreenType:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType;

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView$$State$ShowSelectTokenDialogCommand;->networkId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView$$State$ShowSelectTokenDialogCommand;->onlyPositiveBalance:Z

    iget-object v3, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView$$State$ShowSelectTokenDialogCommand;->action:Lcom/iMe/fork/utils/Callbacks$Callback1;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView;->showSelectTokenDialog(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType;Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 197
    check-cast p1, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView$$State$ShowSelectTokenDialogCommand;->apply(Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView;)V

    return-void
.end method
