.class public Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$OpenCreateWalletIntroScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletHomeCryptoView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenCreateWalletIntroScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;",
        ">;"
    }
.end annotation


# instance fields
.field public final linkedWalletAddress:Ljava/lang/String;

.field public final walletCreationType:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)V
    .locals 1

    .line 755
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "openCreateWalletIntroScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 757
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$OpenCreateWalletIntroScreenCommand;->linkedWalletAddress:Ljava/lang/String;

    .line 758
    iput-object p3, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$OpenCreateWalletIntroScreenCommand;->walletCreationType:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;)V
    .locals 2

    .line 763
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$OpenCreateWalletIntroScreenCommand;->linkedWalletAddress:Ljava/lang/String;

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$OpenCreateWalletIntroScreenCommand;->walletCreationType:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;

    invoke-interface {p1, v0, v1}, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;->openCreateWalletIntroScreen(Ljava/lang/String;Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 748
    check-cast p1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$OpenCreateWalletIntroScreenCommand;->apply(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;)V

    return-void
.end method
