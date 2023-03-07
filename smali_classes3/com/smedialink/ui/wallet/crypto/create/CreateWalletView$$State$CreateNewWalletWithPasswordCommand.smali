.class public Lcom/smedialink/ui/wallet/crypto/create/CreateWalletView$$State$CreateNewWalletWithPasswordCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CreateWalletView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/create/CreateWalletView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CreateNewWalletWithPasswordCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/crypto/create/CreateWalletView;",
        ">;"
    }
.end annotation


# instance fields
.field public final password:Ljava/lang/String;

.field public final words:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletView$$State;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 238
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "createNewWalletWithPassword"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 240
    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletView$$State$CreateNewWalletWithPasswordCommand;->words:Ljava/util/List;

    .line 241
    iput-object p3, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletView$$State$CreateNewWalletWithPasswordCommand;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletView;)V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletView$$State$CreateNewWalletWithPasswordCommand;->words:Ljava/util/List;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletView$$State$CreateNewWalletWithPasswordCommand;->password:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletView;->createNewWalletWithPassword(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 232
    check-cast p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletView$$State$CreateNewWalletWithPasswordCommand;->apply(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletView;)V

    return-void
.end method
