.class public Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State$OpenSwapScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSwapProtocolsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenSwapScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final forcedNetworkId:Ljava/lang/String;

.field public final item:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;Ljava/lang/String;)V
    .locals 1

    .line 223
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "openSwapScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 225
    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State$OpenSwapScreenCommand;->item:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    .line 226
    iput-object p3, p0, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State$OpenSwapScreenCommand;->forcedNetworkId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;)V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State$OpenSwapScreenCommand;->item:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State$OpenSwapScreenCommand;->forcedNetworkId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;->openSwapScreen(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 217
    check-cast p1, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State$OpenSwapScreenCommand;->apply(Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;)V

    return-void
.end method
