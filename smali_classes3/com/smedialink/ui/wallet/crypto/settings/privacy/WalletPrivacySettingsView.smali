.class public interface abstract Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView;
.super Ljava/lang/Object;
.source "WalletPrivacySettingsView.kt"

# interfaces
.implements Lcom/smedialink/ui/base/mvp/base/BaseView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract onSuccessLoadPrivacySettings(Ljava/util/List;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;II)V"
        }
    .end annotation

    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract onSuccessSaveCryptoSettings()V
.end method

.method public abstract showConfirmDialog(Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;)V
.end method
