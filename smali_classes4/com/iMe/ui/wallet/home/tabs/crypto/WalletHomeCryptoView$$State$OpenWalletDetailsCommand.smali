.class public Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$OpenWalletDetailsCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletHomeCryptoView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenWalletDetailsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;",
        ">;"
    }
.end annotation


# instance fields
.field public final tokenDetailsArgs:Lcom/iMe/model/wallet/details/TokenDetailsArgs;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State;Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V
    .locals 1

    .line 555
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "openWalletDetails"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 557
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$OpenWalletDetailsCommand;->tokenDetailsArgs:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;)V
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$OpenWalletDetailsCommand;->tokenDetailsArgs:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->openWalletDetails(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 551
    check-cast p1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$OpenWalletDetailsCommand;->apply(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;)V

    return-void
.end method
