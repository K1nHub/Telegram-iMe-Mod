.class public interface abstract Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsView;
.super Ljava/lang/Object;
.source "WalletAccountSettingsView.kt"

# interfaces
.implements Lcom/iMe/ui/base/mvp/base/BaseView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract openBlockchainsScreen()V
.end method

.method public abstract openCustomTokensScreen()V
.end method

.method public abstract openPinCodeSettingsScreen()V
.end method

.method public abstract openPrivacySettingsScreen()V
.end method

.method public abstract openWalletConnectScreen()V
.end method

.method public abstract renderSettingsItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method
