.class public Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView$$State$ShowFeeCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CryptoBoxSuspensionView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowFeeCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView;",
        ">;"
    }
.end annotation


# instance fields
.field public final feeType:Lcom/iMe/model/wallet/crypto/send/fee/FeeType;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView$$State;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;)V
    .locals 1

    .line 223
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "showFee"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 225
    iput-object p2, p0, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView$$State$ShowFeeCommand;->feeType:Lcom/iMe/model/wallet/crypto/send/fee/FeeType;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView;)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView$$State$ShowFeeCommand;->feeType:Lcom/iMe/model/wallet/crypto/send/fee/FeeType;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView;->showFee(Lcom/iMe/model/wallet/crypto/send/fee/FeeType;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 219
    check-cast p1, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView$$State$ShowFeeCommand;->apply(Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView;)V

    return-void
.end method
