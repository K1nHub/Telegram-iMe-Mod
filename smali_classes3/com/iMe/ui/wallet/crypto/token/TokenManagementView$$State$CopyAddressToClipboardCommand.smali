.class public Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$CopyAddressToClipboardCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "TokenManagementView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CopyAddressToClipboardCommand"
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

    .line 316
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "copyAddressToClipboard"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 318
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$CopyAddressToClipboardCommand;->address:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$CopyAddressToClipboardCommand;->address:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;->copyAddressToClipboard(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 312
    check-cast p1, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$CopyAddressToClipboardCommand;->apply(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;)V

    return-void
.end method
