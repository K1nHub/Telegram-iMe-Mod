.class public Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView$$State$OnSuccessEnterPinCodeCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "EnterWalletPinView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnSuccessEnterPinCodeCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;",
        ">;"
    }
.end annotation


# instance fields
.field public final password:Ljava/lang/String;

.field public final pin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView$$State;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 264
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "onSuccessEnterPinCode"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 266
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView$$State$OnSuccessEnterPinCodeCommand;->pin:Ljava/lang/String;

    .line 267
    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView$$State$OnSuccessEnterPinCodeCommand;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;)V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView$$State$OnSuccessEnterPinCodeCommand;->pin:Ljava/lang/String;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView$$State$OnSuccessEnterPinCodeCommand;->password:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;->onSuccessEnterPinCode(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 258
    check-cast p1, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView$$State$OnSuccessEnterPinCodeCommand;->apply(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;)V

    return-void
.end method
