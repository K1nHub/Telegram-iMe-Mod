.class public Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State$ShowWalletAddressScanCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletHomeCryptoView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowWalletAddressScanCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;",
        ">;"
    }
.end annotation


# instance fields
.field public final address:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State;Ljava/lang/String;)V
    .locals 1

    .line 410
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showWalletAddressScan"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 412
    iput-object p2, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State$ShowWalletAddressScanCommand;->address:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;)V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State$ShowWalletAddressScanCommand;->address:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;->showWalletAddressScan(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 406
    check-cast p1, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State$ShowWalletAddressScanCommand;->apply(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;)V

    return-void
.end method
