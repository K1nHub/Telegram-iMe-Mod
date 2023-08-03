.class public Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State$GenerateAndOpenPdfCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CreateWalletView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GenerateAndOpenPdfCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;",
        ">;"
    }
.end annotation


# instance fields
.field public final secretWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final walletAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 391
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "generateAndOpenPdf"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 393
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State$GenerateAndOpenPdfCommand;->walletAddress:Ljava/lang/String;

    .line 394
    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State$GenerateAndOpenPdfCommand;->secretWords:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;)V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State$GenerateAndOpenPdfCommand;->walletAddress:Ljava/lang/String;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State$GenerateAndOpenPdfCommand;->secretWords:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;->generateAndOpenPdf(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 385
    check-cast p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State$GenerateAndOpenPdfCommand;->apply(Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;)V

    return-void
.end method
