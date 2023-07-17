.class public Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$OpenBackupScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "BlockchainsManagementView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenBackupScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;",
        ">;"
    }
.end annotation


# instance fields
.field public final wallet:Lcom/iMe/storage/domain/model/crypto/Wallet;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;Lcom/iMe/storage/domain/model/crypto/Wallet;)V
    .locals 1

    .line 263
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openBackupScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 265
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$OpenBackupScreenCommand;->wallet:Lcom/iMe/storage/domain/model/crypto/Wallet;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$OpenBackupScreenCommand;->wallet:Lcom/iMe/storage/domain/model/crypto/Wallet;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;->openBackupScreen(Lcom/iMe/storage/domain/model/crypto/Wallet;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 259
    check-cast p1, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$OpenBackupScreenCommand;->apply(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;)V

    return-void
.end method
