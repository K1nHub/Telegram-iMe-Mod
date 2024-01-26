.class public Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenBinanceReceiveScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletTokenDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenBinanceReceiveScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final tokenItem:Lcom/iMe/model/wallet/crypto/TokenItem;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;Lcom/iMe/model/wallet/crypto/TokenItem;)V
    .locals 1

    .line 869
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "openBinanceReceiveScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 871
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenBinanceReceiveScreenCommand;->tokenItem:Lcom/iMe/model/wallet/crypto/TokenItem;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;)V
    .locals 1

    .line 876
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenBinanceReceiveScreenCommand;->tokenItem:Lcom/iMe/model/wallet/crypto/TokenItem;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->openBinanceReceiveScreen(Lcom/iMe/model/wallet/crypto/TokenItem;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 865
    check-cast p1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenBinanceReceiveScreenCommand;->apply(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;)V

    return-void
.end method
