.class public Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State$OnSuccessSaveCryptoSettingsCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletPrivacySettingsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnSuccessSaveCryptoSettingsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State;)V
    .locals 1

    .line 154
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "onSuccessSaveCryptoSettings"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView;)V
    .locals 0

    .line 159
    invoke-interface {p1}, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView;->onSuccessSaveCryptoSettings()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 152
    check-cast p1, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State$OnSuccessSaveCryptoSettingsCommand;->apply(Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView;)V

    return-void
.end method
