.class public Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$GoToBackUpTutorialCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CreateWalletPinView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GoToBackUpTutorialCommand"
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

    .line 170
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "goToBackUpTutorial"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 172
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$GoToBackUpTutorialCommand;->password:Ljava/lang/String;

    .line 173
    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$GoToBackUpTutorialCommand;->pin:Ljava/lang/String;

    .line 174
    iput-object p4, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$GoToBackUpTutorialCommand;->wallet:Lcom/iMe/storage/domain/model/crypto/Wallet;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;)V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$GoToBackUpTutorialCommand;->password:Ljava/lang/String;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$GoToBackUpTutorialCommand;->pin:Ljava/lang/String;

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$GoToBackUpTutorialCommand;->wallet:Lcom/iMe/storage/domain/model/crypto/Wallet;

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;->goToBackUpTutorial(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Wallet;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 162
    check-cast p1, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$GoToBackUpTutorialCommand;->apply(Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;)V

    return-void
.end method