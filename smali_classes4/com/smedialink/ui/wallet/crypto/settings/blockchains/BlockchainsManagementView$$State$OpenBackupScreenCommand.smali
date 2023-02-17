.class public Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$OpenBackupScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "BlockchainsManagementView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenBackupScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;",
        ">;"
    }
.end annotation


# instance fields
.field public final address:Ljava/lang/String;

.field public final secretWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;Ljava/util/List;Ljava/lang/String;)V
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

    .line 230
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openBackupScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 232
    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$OpenBackupScreenCommand;->secretWords:Ljava/util/List;

    .line 233
    iput-object p3, p0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$OpenBackupScreenCommand;->address:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;)V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$OpenBackupScreenCommand;->secretWords:Ljava/util/List;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$OpenBackupScreenCommand;->address:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;->openBackupScreen(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 224
    check-cast p1, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$OpenBackupScreenCommand;->apply(Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;)V

    return-void
.end method
