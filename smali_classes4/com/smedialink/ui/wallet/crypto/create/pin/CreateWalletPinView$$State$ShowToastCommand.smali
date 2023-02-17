.class public Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$ShowToastCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CreateWalletPinView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowToastCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinView;",
        ">;"
    }
.end annotation


# instance fields
.field public final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinView$$State;Ljava/lang/String;)V
    .locals 1

    .line 201
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showToast"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 203
    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$ShowToastCommand;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinView;)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$ShowToastCommand;->text:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 197
    check-cast p1, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$ShowToastCommand;->apply(Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinView;)V

    return-void
.end method
