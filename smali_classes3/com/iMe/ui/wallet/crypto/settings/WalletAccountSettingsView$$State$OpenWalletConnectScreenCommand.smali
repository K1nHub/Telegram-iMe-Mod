.class public Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsView$$State$OpenWalletConnectScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletAccountSettingsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenWalletConnectScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsView$$State;)V
    .locals 1

    .line 227
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openWalletConnectScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsView;)V
    .locals 0

    .line 232
    invoke-interface {p1}, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsView;->openWalletConnectScreen()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 225
    check-cast p1, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsView$$State$OpenWalletConnectScreenCommand;->apply(Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsView;)V

    return-void
.end method
