.class public Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView$$State$OnUnexpectedErrorStateCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSelectTokenView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnUnexpectedErrorStateCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView$$State;)V
    .locals 1

    .line 424
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "onUnexpectedErrorState"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView;)V
    .locals 0

    .line 429
    invoke-interface {p1}, Lcom/iMe/ui/custom/state/GlobalStateView;->onUnexpectedErrorState()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 422
    check-cast p1, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView$$State$OnUnexpectedErrorStateCommand;->apply(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView;)V

    return-void
.end method
