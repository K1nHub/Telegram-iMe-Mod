.class public final Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "WalletAccountSettingsPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView;",
        ">;"
    }
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;)V
    .locals 1

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    return-void
.end method


# virtual methods
.method public final drawSettingsItems()V
    .locals 4

    .line 17
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem;

    .line 19
    sget-object v2, Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem$Blockchains;->INSTANCE:Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem$Blockchains;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 20
    sget-object v2, Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem$Privacy;->INSTANCE:Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem$Privacy;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 21
    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v2

    sget-object v3, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem$WalletConnect;->INSTANCE:Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem$WalletConnect;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    .line 23
    sget-object v3, Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem$PinCode;->INSTANCE:Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem$PinCode;

    aput-object v3, v1, v2

    .line 18
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 24
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 17
    invoke-interface {v0, v1}, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView;->setupSettingsItems(Ljava/util/List;)V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 0

    .line 42
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsPresenter;->drawSettingsItems()V

    return-void
.end method

.method public final resolveItemClick(Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    instance-of v0, p1, Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem$Blockchains;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView;

    invoke-interface {p1}, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView;->openBlockchainsScreen()V

    goto :goto_0

    .line 31
    :cond_0
    instance-of v0, p1, Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem$Privacy;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView;

    invoke-interface {p1}, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView;->openPrivacySettingsScreen()V

    goto :goto_0

    .line 32
    :cond_1
    instance-of v0, p1, Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem$WalletConnect;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView;

    invoke-interface {p1}, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView;->openWalletConnectScreen()V

    goto :goto_0

    .line 33
    :cond_2
    instance-of p1, p1, Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem$PinCode;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView;

    invoke-interface {p1}, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView;->openPinCodeSettingsScreen()V

    :cond_3
    :goto_0
    return-void
.end method
