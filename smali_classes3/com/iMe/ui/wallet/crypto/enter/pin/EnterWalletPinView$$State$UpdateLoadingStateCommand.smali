.class public Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView$$State$UpdateLoadingStateCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "EnterWalletPinView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateLoadingStateCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;",
        ">;"
    }
.end annotation


# instance fields
.field public final isFingerprint:Z

.field public final isLoading:Z


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView$$State;ZZ)V
    .locals 1

    .line 246
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "updateLoadingState"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 248
    iput-boolean p2, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView$$State$UpdateLoadingStateCommand;->isLoading:Z

    .line 249
    iput-boolean p3, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView$$State$UpdateLoadingStateCommand;->isFingerprint:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;)V
    .locals 2

    .line 254
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView$$State$UpdateLoadingStateCommand;->isLoading:Z

    iget-boolean v1, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView$$State$UpdateLoadingStateCommand;->isFingerprint:Z

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;->updateLoadingState(ZZ)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 240
    check-cast p1, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView$$State$UpdateLoadingStateCommand;->apply(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;)V

    return-void
.end method
