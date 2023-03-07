.class public final Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "WalletAppearanceSettingsPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsView;",
        ">;"
    }
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

.field private needToUpdateHomeScreen:Z

.field private final rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/domain/utils/rx/RxEventBus;)V
    .locals 1

    const-string v0, "cryptoAccessManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    .line 14
    iput-object p2, p0, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    .line 15
    iput-object p3, p0, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    return-void
.end method

.method private final drawSettingsItems()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/smedialink/model/wallet/settings/InterfaceSettingItem;

    .line 52
    new-instance v1, Lcom/smedialink/model/wallet/settings/InterfaceSettingItem$Banners;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->isBannersVisible()Z

    move-result v2

    invoke-direct {v1, v2}, Lcom/smedialink/model/wallet/settings/InterfaceSettingItem$Banners;-><init>(Z)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 53
    iget-object v1, p0, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->isCurrentBlockchainWalletCreated()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/smedialink/model/wallet/settings/InterfaceSettingItem$Quotations;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->isQuotationsVisible()Z

    move-result v2

    invoke-direct {v1, v2}, Lcom/smedialink/model/wallet/settings/InterfaceSettingItem$Quotations;-><init>(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 51
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsView;

    invoke-interface {v1, v0}, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsView;->setupSettingsItems(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .line 40
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->onDestroy()V

    .line 41
    iget-boolean v0, p0, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;->needToUpdateHomeScreen:Z

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    sget-object v1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$InterfaceSettingsChanged;->INSTANCE:Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$InterfaceSettingsChanged;

    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->publish(Lcom/smedialink/storage/domain/utils/rx/event/RxEvent;)V

    :cond_0
    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;->drawSettingsItems()V

    return-void
.end method

.method public final resolveItemClick(Lcom/smedialink/model/wallet/settings/InterfaceSettingItem;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;->needToUpdateHomeScreen:Z

    .line 26
    instance-of v1, p1, Lcom/smedialink/model/wallet/settings/InterfaceSettingItem$Banners;

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {p1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->isBannersVisible()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->setBannersVisible(Z)V

    goto :goto_0

    .line 27
    :cond_0
    instance-of p1, p1, Lcom/smedialink/model/wallet/settings/InterfaceSettingItem$Quotations;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {p1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->isQuotationsVisible()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->setQuotationsVisible(Z)V

    :cond_1
    :goto_0
    return-void
.end method
