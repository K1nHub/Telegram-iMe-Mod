.class public Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$OnWalletCreateSuccessCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CreateWalletPinView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnWalletCreateSuccessCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;",
        ">;"
    }
.end annotation


# instance fields
.field public final password:Ljava/lang/String;

.field public final pin:Ljava/lang/String;

.field public final wallet:Lcom/iMe/storage/domain/model/crypto/Wallet;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Wallet;)V
    .locals 1

    .line 185
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "onWalletCreateSuccess"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 187
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$OnWalletCreateSuccessCommand;->password:Ljava/lang/String;

    .line 188
    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$OnWalletCreateSuccessCommand;->pin:Ljava/lang/String;

    .line 189
    iput-object p4, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$OnWalletCreateSuccessCommand;->wallet:Lcom/iMe/storage/domain/model/crypto/Wallet;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;)V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$OnWalletCreateSuccessCommand;->password:Ljava/lang/String;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$OnWalletCreateSuccessCommand;->pin:Ljava/lang/String;

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$OnWalletCreateSuccessCommand;->wallet:Lcom/iMe/storage/domain/model/crypto/Wallet;

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;->onWalletCreateSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Wallet;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 177
    check-cast p1, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$OnWalletCreateSuccessCommand;->apply(Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;)V

    return-void
.end method
