.class public interface abstract Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView;
.super Ljava/lang/Object;
.source "WalletAccountSettingsView.kt"

# interfaces
.implements Lcom/smedialink/ui/base/mvp/base/BaseView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract openBlockchainsScreen()V
.end method

.method public abstract openPinCodeSettingsScreen()V
.end method

.method public abstract openPrivacySettingsScreen()V
.end method

.method public abstract openWalletConnectScreen()V
.end method

.method public abstract setupSettingsItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method
