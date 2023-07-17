.class public Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView$$State$ShowCreatedCollectionSuccessDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletReceiveBinancePayView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowCreatedCollectionSuccessDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView;",
        ">;"
    }
.end annotation


# instance fields
.field public final action:Lcom/iMe/fork/utils/Callbacks$Callback;

.field public final buttonText:Ljava/lang/String;

.field public final message:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView$$State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 1

    .line 270
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "showCreatedCollectionSuccessDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 272
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView$$State$ShowCreatedCollectionSuccessDialogCommand;->title:Ljava/lang/String;

    .line 273
    iput-object p3, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView$$State$ShowCreatedCollectionSuccessDialogCommand;->message:Ljava/lang/String;

    .line 274
    iput-object p4, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView$$State$ShowCreatedCollectionSuccessDialogCommand;->buttonText:Ljava/lang/String;

    .line 275
    iput-object p5, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView$$State$ShowCreatedCollectionSuccessDialogCommand;->action:Lcom/iMe/fork/utils/Callbacks$Callback;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView;)V
    .locals 4

    .line 280
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView$$State$ShowCreatedCollectionSuccessDialogCommand;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView$$State$ShowCreatedCollectionSuccessDialogCommand;->message:Ljava/lang/String;

    iget-object v2, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView$$State$ShowCreatedCollectionSuccessDialogCommand;->buttonText:Ljava/lang/String;

    iget-object v3, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView$$State$ShowCreatedCollectionSuccessDialogCommand;->action:Lcom/iMe/fork/utils/Callbacks$Callback;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView;->showCreatedCollectionSuccessDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 259
    check-cast p1, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView$$State$ShowCreatedCollectionSuccessDialogCommand;->apply(Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView;)V

    return-void
.end method
