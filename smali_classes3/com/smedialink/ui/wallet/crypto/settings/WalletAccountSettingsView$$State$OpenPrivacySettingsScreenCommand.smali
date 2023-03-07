.class public Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView$$State$OpenPrivacySettingsScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletAccountSettingsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenPrivacySettingsScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView$$State;)V
    .locals 1

    .line 216
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openPrivacySettingsScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView;)V
    .locals 0

    .line 221
    invoke-interface {p1}, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView;->openPrivacySettingsScreen()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 214
    check-cast p1, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView$$State$OpenPrivacySettingsScreenCommand;->apply(Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView;)V

    return-void
.end method
