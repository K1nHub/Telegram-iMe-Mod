.class public Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView$$State$RenderButtonLoadingCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CryptoBoxSuspensionView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenderButtonLoadingCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView;",
        ">;"
    }
.end annotation


# instance fields
.field public final isLoading:Z


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView$$State;Z)V
    .locals 1

    .line 208
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "renderButtonLoading"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 210
    iput-boolean p2, p0, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView$$State$RenderButtonLoadingCommand;->isLoading:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView;)V
    .locals 1

    .line 215
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView$$State$RenderButtonLoadingCommand;->isLoading:Z

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView;->renderButtonLoading(Z)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 204
    check-cast p1, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView$$State$RenderButtonLoadingCommand;->apply(Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView;)V

    return-void
.end method
