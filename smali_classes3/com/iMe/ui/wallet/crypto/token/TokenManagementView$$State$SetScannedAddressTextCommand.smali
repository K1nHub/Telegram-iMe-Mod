.class public Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetScannedAddressTextCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "TokenManagementView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetScannedAddressTextCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;",
        ">;"
    }
.end annotation


# instance fields
.field public final address:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State;Ljava/lang/String;)V
    .locals 1

    .line 391
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "setScannedAddressText"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 393
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetScannedAddressTextCommand;->address:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;)V
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetScannedAddressTextCommand;->address:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;->setScannedAddressText(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 387
    check-cast p1, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetScannedAddressTextCommand;->apply(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;)V

    return-void
.end method
