.class public final Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "WalletAppearanceSettingsPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsView;",
        ">;"
    }
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

.field private shouldUpdateHomeScreen:Z


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/utils/rx/RxEventBus;)V
    .locals 1

    const-string v0, "cryptoAccessManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rxEventBus"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 14
    iput-object p2, p0, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 15
    iput-object p3, p0, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    return-void
.end method

.method private final drawSettingsItems()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iMe/model/wallet/settings/InterfaceSettingItem;

    .line 52
    sget-object v1, Lcom/iMe/model/wallet/settings/InterfaceSettingItem$Networks;->INSTANCE:Lcom/iMe/model/wallet/settings/InterfaceSettingItem$Networks;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 53
    new-instance v1, Lcom/iMe/model/wallet/settings/InterfaceSettingItem$SwitchableOption$Banners;

    iget-object v2, p0, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->isBannersVisible()Z

    move-result v2

    invoke-direct {v1, v2}, Lcom/iMe/model/wallet/settings/InterfaceSettingItem$SwitchableOption$Banners;-><init>(Z)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 54
    iget-object v1, p0, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v1}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isCurrentBlockchainWalletCreated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    new-instance v1, Lcom/iMe/model/wallet/settings/InterfaceSettingItem$SwitchableOption$Quotations;

    iget-object v2, p0, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->isQuotationsVisible()Z

    move-result v2

    invoke-direct {v1, v2}, Lcom/iMe/model/wallet/settings/InterfaceSettingItem$SwitchableOption$Quotations;-><init>(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 51
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 57
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsView;

    invoke-interface {v1, v0}, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsView;->setupSettingsItems(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .line 44
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;->shouldUpdateHomeScreen:Z

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    sget-object v1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$InterfaceSettingsChanged;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$InterfaceSettingsChanged;

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    .line 47
    :cond_0
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->onDestroy()V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;->drawSettingsItems()V

    return-void
.end method

.method public final resolveItemClick(Lcom/iMe/model/wallet/settings/InterfaceSettingItem;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;->shouldUpdateHomeScreen:Z

    .line 23
    instance-of v1, p1, Lcom/iMe/model/wallet/settings/InterfaceSettingItem$Networks;

    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsView;

    invoke-interface {p1}, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsView;->openNetworksSettingsScreen()V

    goto :goto_0

    .line 27
    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/settings/InterfaceSettingItem$SwitchableOption$Banners;

    if-eqz v1, :cond_1

    .line 28
    iget-object p1, p0, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 29
    invoke-interface {p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->isBannersVisible()Z

    move-result v1

    xor-int/2addr v0, v1

    .line 28
    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setBannersVisible(Z)V

    goto :goto_0

    .line 32
    :cond_1
    instance-of p1, p1, Lcom/iMe/model/wallet/settings/InterfaceSettingItem$SwitchableOption$Quotations;

    if-eqz p1, :cond_2

    .line 33
    iget-object p1, p0, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 34
    invoke-interface {p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->isQuotationsVisible()Z

    move-result v1

    xor-int/2addr v0, v1

    .line 33
    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setQuotationsVisible(Z)V

    :cond_2
    :goto_0
    return-void
.end method
