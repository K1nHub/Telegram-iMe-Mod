.class public Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State$ShowExchangesProvidersCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSwapProtocolsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowExchangesProvidersCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    .line 151
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "showExchangesProviders"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 153
    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State$ShowExchangesProvidersCommand;->providers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State$ShowExchangesProvidersCommand;->providers:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;->showExchangesProviders(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 147
    check-cast p1, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State$ShowExchangesProvidersCommand;->apply(Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;)V

    return-void
.end method
