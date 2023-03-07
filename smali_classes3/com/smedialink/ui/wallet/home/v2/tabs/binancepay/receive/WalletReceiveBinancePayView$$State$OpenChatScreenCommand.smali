.class public Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView$$State$OpenChatScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletReceiveBinancePayView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenChatScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView;",
        ">;"
    }
.end annotation


# instance fields
.field public final userId:J


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView$$State;J)V
    .locals 1

    .line 221
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "openChatScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 223
    iput-wide p2, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView$$State$OpenChatScreenCommand;->userId:J

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView;)V
    .locals 2

    .line 228
    iget-wide v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView$$State$OpenChatScreenCommand;->userId:J

    invoke-interface {p1, v0, v1}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView;->openChatScreen(J)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 217
    check-cast p1, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView$$State$OpenChatScreenCommand;->apply(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView;)V

    return-void
.end method
