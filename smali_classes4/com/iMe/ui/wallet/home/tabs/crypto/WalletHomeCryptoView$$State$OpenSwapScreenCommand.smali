.class public Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$OpenSwapScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletHomeCryptoView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenSwapScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;",
        ">;"
    }
.end annotation


# instance fields
.field public final tokenDetailed:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 1

    .line 514
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "openSwapScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 516
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$OpenSwapScreenCommand;->tokenDetailed:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;)V
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$OpenSwapScreenCommand;->tokenDetailed:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->openSwapScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 510
    check-cast p1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$OpenSwapScreenCommand;->apply(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;)V

    return-void
.end method
