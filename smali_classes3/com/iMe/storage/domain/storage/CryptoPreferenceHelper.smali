.class public interface abstract Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;
.super Ljava/lang/Object;
.source "CryptoPreferenceHelper.kt"

# interfaces
.implements Lcom/iMe/storage/domain/storage/BasePreferenceHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper$Keys;
    }
.end annotation


# static fields
.field public static final Keys:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper$Keys;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper$Keys;->$$INSTANCE:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper$Keys;

    sput-object v0, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->Keys:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper$Keys;

    return-void
.end method


# virtual methods
.method public abstract getAccountLevelMetadata()Lcom/iMe/storage/data/locale/prefs/model/AccountLevelMetadata;
.end method

.method public abstract getAirdropMetadata()Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;
.end method

.method public abstract getAuthSession()Lcom/iMe/storage/data/locale/prefs/model/auth/AuthTokensMetadata;
.end method

.method public abstract getBinanceAuthSession()Lcom/iMe/storage/data/locale/prefs/model/binancepay/BinanceAuthTokensMetadata;
.end method

.method public abstract getBinanceOnlyPositiveTokens()Z
.end method

.method public abstract getBinanceTokensOrderType()Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;
.end method

.method public abstract getBinanceTokensSettings()Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;
.end method

.method public abstract getBinanceUserInfo()Lcom/iMe/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;
.end method

.method public abstract getCryptoHiddenBalance()Z
.end method

.method public abstract getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;
.end method

.method public abstract getLastLoggedInGuid()Ljava/lang/String;
.end method

.method public abstract getNetworkType()Lcom/iMe/storage/domain/model/crypto/NetworkType;
.end method

.method public abstract getOldWalletPublicAddress()Ljava/lang/String;
.end method

.method public abstract getOldWalletSeed()Ljava/lang/String;
.end method

.method public abstract getOnlyPositiveTokens()Z
.end method

.method public abstract getPrefsVersion()I
.end method

.method public abstract getStakingProgrammesOrderType()Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;
.end method

.method public abstract getTokensOrderType()Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;
.end method

.method public abstract getTokensSettings(Lcom/iMe/storage/domain/model/crypto/NetworkType;)Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;
.end method

.method public abstract getTonConfigJsonString()Ljava/lang/String;
.end method

.method public abstract getWalletCreationDates()Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWalletInfoMetadata()Lcom/iMe/storage/data/locale/prefs/model/CryptoWalletInformationMetadata;
.end method

.method public abstract getWalletPassword()Ljava/lang/String;
.end method

.method public abstract getWalletPublicAddresses()Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWalletSeedByGuid(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Ljava/lang/String;
.end method

.method public abstract getWalletSeeds()Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isBannersVisible()Z
.end method

.method public abstract isQuotationsVisible()Z
.end method

.method public abstract resetAllTokensSettings()V
.end method

.method public abstract resetBinanceAccount()V
.end method

.method public abstract resetBinanceTokensSettings()V
.end method

.method public abstract resetOldWalletData()V
.end method

.method public abstract resetTokensSettingsByBlockchainType(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V
.end method

.method public abstract resetTokensSettingsByNetwork(Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
.end method

.method public abstract saveTokensSettings(Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
.end method

.method public abstract setAccountLevelMetadata(Lcom/iMe/storage/data/locale/prefs/model/AccountLevelMetadata;)V
.end method

.method public abstract setAirdropMetadata(Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;)V
.end method

.method public abstract setAuthSession(Lcom/iMe/storage/data/locale/prefs/model/auth/AuthTokensMetadata;)V
.end method

.method public abstract setBannersVisible(Z)V
.end method

.method public abstract setBinanceAuthSession(Lcom/iMe/storage/data/locale/prefs/model/binancepay/BinanceAuthTokensMetadata;)V
.end method

.method public abstract setBinanceOnlyPositiveTokens(Z)V
.end method

.method public abstract setBinanceTokensOrderType(Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;)V
.end method

.method public abstract setBinanceTokensSettings(Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;)V
.end method

.method public abstract setBinanceUserInfo(Lcom/iMe/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;)V
.end method

.method public abstract setCryptoHiddenBalance(Z)V
.end method

.method public abstract setLastLoggedInGuid(Ljava/lang/String;)V
.end method

.method public abstract setNetworkType(Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
.end method

.method public abstract setOnlyPositiveTokens(Z)V
.end method

.method public abstract setPrefsVersion(I)V
.end method

.method public abstract setQuotationsVisible(Z)V
.end method

.method public abstract setStakingProgrammesOrderType(Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;)V
.end method

.method public abstract setTokensOrderType(Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;)V
.end method

.method public abstract setTonConfigJsonString(Ljava/lang/String;)V
.end method

.method public abstract setWalletInfoMetadata(Lcom/iMe/storage/data/locale/prefs/model/CryptoWalletInformationMetadata;)V
.end method

.method public abstract setWalletPassword(Ljava/lang/String;)V
.end method

.method public abstract setWalletsGuid(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract withGuid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method