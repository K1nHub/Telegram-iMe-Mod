.class public final Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "WalletHomeCryptoTokensSettingsPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletHomeCryptoTokensSettingsPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletHomeCryptoTokensSettingsPresenter.kt\ncom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,189:1\n1#2:190\n1559#3:191\n1590#3,4:192\n1194#3,2:196\n1222#3,4:198\n1855#3,2:202\n1208#3,2:204\n1238#3,4:206\n1045#3:210\n1549#3:211\n1620#3,3:212\n1045#3:215\n*S KotlinDebug\n*F\n+ 1 WalletHomeCryptoTokensSettingsPresenter.kt\ncom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter\n*L\n138#1:191\n138#1:192,4\n147#1:196,2\n147#1:198,4\n149#1:202,2\n174#1:204,2\n174#1:206,4\n177#1:210\n180#1:211\n180#1:212,3\n182#1:215\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

.field private currentNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

.field private onlyPositiveTokens:Z

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

.field private final screenType:Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType;

.field private settings:Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;

.field private tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/domain/utils/rx/RxEventBus;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType;)V
    .locals 1

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    .line 20
    iput-object p2, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    .line 21
    iput-object p3, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 22
    iput-object p4, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->screenType:Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType;

    .line 26
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->resolveNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->currentNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 27
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->resolveTokensSettings()Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->settings:Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;

    .line 28
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->resolveTokens()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->tokens:Ljava/util/List;

    .line 29
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->resolveOnlyPositiveTokensFlag()Z

    move-result p1

    iput-boolean p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->onlyPositiveTokens:Z

    return-void
.end method

.method private final resetTokensPrefSettings()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    .line 118
    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->screenType:Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType;

    .line 119
    instance-of v2, v1, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType$Binance;

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->resetBinanceTokensSettings()V

    goto :goto_0

    .line 120
    :cond_0
    instance-of v1, v1, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType$Crypto;

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->currentNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 120
    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->resetTokensSettingsByNetwork(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final resolveNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->screenType:Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType;

    .line 129
    instance-of v1, v0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType$Binance;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    goto :goto_0

    .line 130
    :cond_0
    instance-of v1, v0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType$Crypto;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType$Crypto;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType$Crypto;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final resolveOnlyPositiveTokensFlag()Z
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->screenType:Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType;

    .line 169
    instance-of v1, v0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType$Binance;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getBinanceOnlyPositiveTokens()Z

    move-result v0

    goto :goto_0

    .line 170
    :cond_0
    instance-of v0, v0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType$Crypto;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getOnlyPositiveTokens()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final resolveTokens()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->settings:Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;

    invoke-virtual {v0}, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;->getStates()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    .line 1208
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    .line 1209
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1238
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1239
    check-cast v2, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;

    .line 174
    invoke-virtual {v2}, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->getPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1239
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->screenType:Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType;

    .line 176
    instance-of v2, v0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType$Binance;

    if-eqz v2, :cond_1

    .line 177
    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType$Binance;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType$Binance;->getTokens()Ljava/util/List;

    move-result-object v0

    .line 1045
    new-instance v1, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter$resolveTokens$$inlined$sortedBy$1;

    invoke-direct {v1, v3}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter$resolveTokens$$inlined$sortedBy$1;-><init>(Ljava/util/Map;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 178
    :cond_1
    instance-of v0, v0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType$Crypto;

    if-eqz v0, :cond_3

    .line 179
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->currentNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v0, v2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->getTokensByNetwork(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Ljava/util/List;

    move-result-object v0

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 180
    sget-object v4, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    invoke-virtual {v4, v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v1

    .line 1621
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->currentNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-static {v2, v0, v1}, Lcom/smedialink/mapper/wallet/select/SelectableMappingKt;->mapToSelectable(Ljava/util/List;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Ljava/util/List;

    move-result-object v0

    .line 1045
    new-instance v1, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter$resolveTokens$$inlined$sortedBy$2;

    invoke-direct {v1, v3}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter$resolveTokens$$inlined$sortedBy$2;-><init>(Ljava/util/Map;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_3
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final resolveTokensAndShow()V
    .locals 2

    .line 109
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->tokens:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView;->showTokens(Ljava/util/List;)V

    return-void
.end method

.method private final resolveTokensSettings()Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;
    .locals 9

    .line 134
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->screenType:Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType;

    .line 135
    instance-of v1, v0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType$Binance;

    if-eqz v1, :cond_6

    .line 136
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getBinanceTokensSettings()Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;->getStates()Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 138
    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->screenType:Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType;

    check-cast v1, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType$Binance;

    invoke-virtual {v1}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType$Binance;->getTokens()Ljava/util/List;

    move-result-object v1

    .line 1559
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    .line 1591
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_0

    .line 1592
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v6, Lcom/smedialink/model/wallet/select/SelectableToken;

    .line 139
    new-instance v8, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;

    .line 140
    invoke-virtual {v6}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v6

    .line 139
    invoke-direct {v8, v6, v5, v3}, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;-><init>(Ljava/lang/String;IZ)V

    .line 1592
    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v5, v7

    goto :goto_0

    .line 144
    :cond_1
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;->setStates(Ljava/util/List;)V

    .line 146
    :cond_2
    invoke-virtual {v0}, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;->getStates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v4, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->screenType:Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType;

    check-cast v4, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType$Binance;

    invoke-virtual {v4}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType$Binance;->getTokens()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v1, v4, :cond_7

    .line 147
    invoke-virtual {v0}, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;->getStates()Ljava/util/List;

    move-result-object v1

    .line 1194
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    const/16 v4, 0x10

    invoke-static {v2, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    .line 1195
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1222
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1223
    move-object v5, v2

    check-cast v5, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;

    .line 147
    invoke-virtual {v5}, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->getToken()Ljava/lang/String;

    move-result-object v5

    .line 1223
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 148
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    iget-object v2, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->screenType:Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType;

    check-cast v2, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType$Binance;

    invoke-virtual {v2}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType$Binance;->getTokens()Ljava/util/List;

    move-result-object v2

    .line 1855
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smedialink/model/wallet/select/SelectableToken;

    .line 150
    invoke-virtual {v5}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4

    .line 151
    new-instance v6, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;

    .line 152
    invoke-virtual {v5}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v5

    const v7, 0x7fffffff

    .line 151
    invoke-direct {v6, v5, v7, v3}, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;-><init>(Ljava/lang/String;IZ)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 157
    :cond_4
    invoke-virtual {v5}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 160
    :cond_5
    invoke-virtual {v0, v1}, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;->setStates(Ljava/util/List;)V

    goto :goto_3

    .line 164
    :cond_6
    instance-of v0, v0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType$Crypto;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->currentNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getTokensSettings(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;

    move-result-object v0

    :cond_7
    :goto_3
    return-object v0

    :cond_8
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public static synthetic saveSettings$default(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 39
    :cond_0
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->saveSettings(Z)V

    return-void
.end method


# virtual methods
.method public final getCurrentNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->currentNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    return-object v0
.end method

.method public final getOnlyPositiveTokens()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->onlyPositiveTokens:Z

    return v0
.end method

.method public final getTokenSetting(I)Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/Pair<",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            "Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->tokens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/model/wallet/select/SelectableToken;

    .line 35
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->settings:Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;

    invoke-virtual {v0}, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;->getStates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;

    invoke-virtual {v2}, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;

    .line 36
    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected onFirstViewAttach()V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->resolveTokensAndShow()V

    return-void
.end method

.method public final resetSettings()V
    .locals 3

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->resetTokensPrefSettings()V

    .line 63
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->resolveTokensSettings()Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;

    move-result-object v0

    .line 64
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->resolveOnlyPositiveTokensFlag()Z

    move-result v1

    .line 65
    iget-object v2, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->settings:Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->onlyPositiveTokens:Z

    if-eq v2, v1, :cond_1

    .line 66
    :cond_0
    iput-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->settings:Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;

    .line 67
    iput-boolean v1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->onlyPositiveTokens:Z

    .line 68
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->resolveTokens()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->tokens:Ljava/util/List;

    const/4 v0, 0x1

    .line 69
    invoke-virtual {p0, v0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->saveSettings(Z)V

    :cond_1
    return-void
.end method

.method public final saveSettings(Z)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->settings:Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->resolveTokensSettings()Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->onlyPositiveTokens:Z

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->resolveOnlyPositiveTokensFlag()Z

    move-result v1

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->screenType:Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType;

    .line 45
    instance-of v0, p1, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType$Binance;

    if-eqz v0, :cond_1

    .line 46
    iget-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->settings:Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;

    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->setBinanceTokensSettings(Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;)V

    .line 47
    iget-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    iget-boolean v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->onlyPositiveTokens:Z

    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->setBinanceOnlyPositiveTokens(Z)V

    .line 48
    iget-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    sget-object v0, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$BinanceTokensSettingsChanged;->INSTANCE:Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$BinanceTokensSettingsChanged;

    invoke-virtual {p1, v0}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->publish(Lcom/smedialink/storage/domain/utils/rx/event/RxEvent;)V

    goto :goto_0

    .line 50
    :cond_1
    instance-of p1, p1, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType$Crypto;

    if-eqz p1, :cond_2

    .line 51
    iget-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->settings:Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->currentNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-interface {p1, v0, v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->saveTokensSettings(Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    .line 52
    iget-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    iget-boolean v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->onlyPositiveTokens:Z

    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->setOnlyPositiveTokens(Z)V

    .line 54
    iget-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->currentNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->screenType:Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType;

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType$Crypto;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType$Crypto;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 55
    iget-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    sget-object v0, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$TokensSettingsChanged;->INSTANCE:Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$TokensSettingsChanged;

    invoke-virtual {p1, v0}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->publish(Lcom/smedialink/storage/domain/utils/rx/event/RxEvent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setNetworkType(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 3

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-static {p0, v0, v1, v2}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->saveSettings$default(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;ZILjava/lang/Object;)V

    .line 94
    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->currentNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 95
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->resolveTokensSettings()Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->settings:Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;

    .line 96
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->resolveTokens()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->tokens:Ljava/util/List;

    .line 97
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->resolveTokensAndShow()V

    return-void
.end method

.method public final swapTokensPositions(II)V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->settings:Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;

    invoke-virtual {v0}, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;->getStates()Ljava/util/List;

    move-result-object v0

    .line 79
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;

    .line 80
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;

    .line 81
    invoke-virtual {v1, p2}, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->setPosition(I)V

    .line 82
    invoke-virtual {v2, p1}, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->setPosition(I)V

    .line 83
    invoke-interface {v0, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-interface {v0, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final switchOnlyPositiveTokens()V
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->onlyPositiveTokens:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->onlyPositiveTokens:Z

    return-void
.end method

.method public final switchTokenEnabled(I)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->settings:Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;

    invoke-virtual {v0}, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;->getStates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;

    invoke-virtual {p1}, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->setEnabled(Z)V

    return-void
.end method
