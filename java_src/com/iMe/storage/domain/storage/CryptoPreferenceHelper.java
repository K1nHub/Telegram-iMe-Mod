package com.iMe.storage.domain.storage;

import com.iMe.storage.data.locale.prefs.model.AccountLevelMetadata;
import com.iMe.storage.data.locale.prefs.model.CryptoWalletInformationMetadata;
import com.iMe.storage.data.locale.prefs.model.WalletAirdropMetadata;
import com.iMe.storage.data.locale.prefs.model.WalletCryptoTokensSettingsMetadata;
import com.iMe.storage.data.locale.prefs.model.auth.AuthTokensMetadata;
import com.iMe.storage.data.locale.prefs.model.binancepay.BinanceAuthTokensMetadata;
import com.iMe.storage.data.locale.prefs.model.binancepay.BinanceUserInfoMetadata;
import com.iMe.storage.domain.model.PreferenceBlockchainMappedData;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.crypto.airdrop.AirdropVersion;
import com.iMe.storage.domain.model.wallet.staking.StakingOrderType;
import com.iMe.storage.domain.model.wallet.token.TokenOrderType;
import java.util.List;
/* compiled from: CryptoPreferenceHelper.kt */
/* loaded from: classes3.dex */
public interface CryptoPreferenceHelper extends BasePreferenceHelper {
    public static final Keys Keys = Keys.$$INSTANCE;

    AccountLevelMetadata getAccountLevelMetadata();

    WalletAirdropMetadata getAirdropMetadata();

    AuthTokensMetadata getAuthSession();

    BinanceAuthTokensMetadata getBinanceAuthSession();

    boolean getBinanceOnlyPositiveTokens();

    TokenOrderType getBinanceTokensOrderType();

    WalletCryptoTokensSettingsMetadata getBinanceTokensSettings();

    BinanceUserInfoMetadata getBinanceUserInfo();

    boolean getCryptoHiddenBalance();

    BlockchainType getCurrentBlockchainType();

    String getLastLoggedInGuid();

    NetworkType getNetworkType();

    String getOldWalletPublicAddress();

    String getOldWalletSeed();

    boolean getOnlyPositiveTokens();

    int getPrefsVersion();

    StakingOrderType getStakingProgrammesOrderType();

    TokenOrderType getTokensOrderType();

    WalletCryptoTokensSettingsMetadata getTokensSettings(NetworkType networkType);

    String getTonConfigJsonString();

    PreferenceBlockchainMappedData<String> getWalletCreationDates();

    CryptoWalletInformationMetadata getWalletInfoMetadata();

    String getWalletPassword();

    PreferenceBlockchainMappedData<String> getWalletPublicAddresses();

    String getWalletSeedByGuid(String str, BlockchainType blockchainType);

    PreferenceBlockchainMappedData<String> getWalletSeeds();

    boolean isBannersVisible();

    boolean isQuotationsVisible();

    void resetAllTokensSettings();

    void resetBinanceAccount();

    void resetBinanceTokensSettings();

    void resetOldWalletData();

    void resetTokensSettingsByBlockchainType(BlockchainType blockchainType);

    void resetTokensSettingsByNetwork(NetworkType networkType);

    void saveTokensSettings(WalletCryptoTokensSettingsMetadata walletCryptoTokensSettingsMetadata, NetworkType networkType);

    void setAccountLevelMetadata(AccountLevelMetadata accountLevelMetadata);

    void setAirdropMetadata(WalletAirdropMetadata walletAirdropMetadata);

    void setAuthSession(AuthTokensMetadata authTokensMetadata);

    void setBannersVisible(boolean z);

    void setBinanceAuthSession(BinanceAuthTokensMetadata binanceAuthTokensMetadata);

    void setBinanceOnlyPositiveTokens(boolean z);

    void setBinanceTokensOrderType(TokenOrderType tokenOrderType);

    void setBinanceTokensSettings(WalletCryptoTokensSettingsMetadata walletCryptoTokensSettingsMetadata);

    void setBinanceUserInfo(BinanceUserInfoMetadata binanceUserInfoMetadata);

    void setCryptoHiddenBalance(boolean z);

    void setLastLoggedInGuid(String str);

    void setNetworkType(NetworkType networkType);

    void setOnlyPositiveTokens(boolean z);

    void setPrefsVersion(int i);

    void setQuotationsVisible(boolean z);

    void setStakingProgrammesOrderType(StakingOrderType stakingOrderType);

    void setTokensOrderType(TokenOrderType tokenOrderType);

    void setTonConfigJsonString(String str);

    void setWalletInfoMetadata(CryptoWalletInformationMetadata cryptoWalletInformationMetadata);

    void setWalletPassword(String str);

    void setWalletsGuid(List<String> list);

    String withGuid(String str, String str2);

    /* compiled from: CryptoPreferenceHelper.kt */
    /* renamed from: com.iMe.storage.domain.storage.CryptoPreferenceHelper$-CC  reason: invalid class name */
    /* loaded from: classes3.dex */
    public final /* synthetic */ class CC {
        static {
            Keys keys = CryptoPreferenceHelper.Keys;
        }

        public static /* synthetic */ String withGuid$default(CryptoPreferenceHelper cryptoPreferenceHelper, String str, String str2, int i, Object obj) {
            if (obj == null) {
                if ((i & 2) != 0) {
                    str2 = "";
                }
                return cryptoPreferenceHelper.withGuid(str, str2);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: withGuid");
        }
    }

    /* compiled from: CryptoPreferenceHelper.kt */
    /* loaded from: classes3.dex */
    public static final class Keys {
        static final /* synthetic */ Keys $$INSTANCE = new Keys();
        private static final String KEY_AIRDROP_METADATA = "airdrop_metadata_" + AirdropVersion.VERSION_1.getValue();

        private Keys() {
        }

        public final String getKEY_AIRDROP_METADATA() {
            return KEY_AIRDROP_METADATA;
        }
    }
}