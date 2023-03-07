.class public Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State$ShowConfirmDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletPrivacySettingsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowConfirmDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final action:Lorg/fork/utils/Callbacks$Callback;

.field public final dialogModel:Lcom/smedialink/model/dialog/DialogModel;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State;Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 1

    .line 169
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showConfirmDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 171
    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State$ShowConfirmDialogCommand;->dialogModel:Lcom/smedialink/model/dialog/DialogModel;

    .line 172
    iput-object p3, p0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State$ShowConfirmDialogCommand;->action:Lorg/fork/utils/Callbacks$Callback;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView;)V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State$ShowConfirmDialogCommand;->dialogModel:Lcom/smedialink/model/dialog/DialogModel;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State$ShowConfirmDialogCommand;->action:Lorg/fork/utils/Callbacks$Callback;

    invoke-interface {p1, v0, v1}, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView;->showConfirmDialog(Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 163
    check-cast p1, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State$ShowConfirmDialogCommand;->apply(Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView;)V

    return-void
.end method
