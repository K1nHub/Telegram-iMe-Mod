.class public Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State$OpenImportWalletScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletHomeCryptoView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenImportWalletScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;",
        ">;"
    }
.end annotation


# instance fields
.field public final password:Ljava/lang/String;

.field public final walletAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 676
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openImportWalletScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 678
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State$OpenImportWalletScreenCommand;->password:Ljava/lang/String;

    .line 679
    iput-object p3, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State$OpenImportWalletScreenCommand;->walletAddress:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;)V
    .locals 2

    .line 684
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State$OpenImportWalletScreenCommand;->password:Ljava/lang/String;

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State$OpenImportWalletScreenCommand;->walletAddress:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;->openImportWalletScreen(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 670
    check-cast p1, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State$OpenImportWalletScreenCommand;->apply(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;)V

    return-void
.end method