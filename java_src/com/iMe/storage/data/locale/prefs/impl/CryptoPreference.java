package com.iMe.storage.data.locale.prefs.impl;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.iMe.storage.data.locale.prefs.model.AccountLevelMetadata;
import com.iMe.storage.data.locale.prefs.model.CryptoWalletInformationMetadata;
import com.iMe.storage.data.locale.prefs.model.WalletAirdropMetadata;
import com.iMe.storage.data.locale.prefs.model.WalletCryptoTokensSettingsMetadata;
import com.iMe.storage.data.locale.prefs.model.WalletCryptoTokensSettingsTokenState;
import com.iMe.storage.data.locale.prefs.model.auth.AuthTokensMetadata;
import com.iMe.storage.data.locale.prefs.model.binancepay.BinanceAuthTokensMetadata;
import com.iMe.storage.data.locale.prefs.model.binancepay.BinanceUserInfoMetadata;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.model.PreferenceBlockchainMappedData;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.wallet.staking.StakingOrderType;
import com.iMe.storage.domain.model.wallet.token.TokenOrderType;
import com.iMe.storage.domain.storage.BasePreferenceHelper;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoPreference.kt */
/* loaded from: classes3.dex */
public final class CryptoPreference extends BasePreference implements CryptoPreferenceHelper {
    private final Gson gson;
    private String tempOneActionGuid;
    private final PreferenceBlockchainMappedData<String> walletCreationDates;
    private final PreferenceBlockchainMappedData<String> walletPublicAddresses;
    private final PreferenceBlockchainMappedData<String> walletSeeds;

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public /* synthetic */ BlockchainType getCurrentBlockchainType() {
        BlockchainType blockchainType;
        blockchainType = getNetworkType().getBlockchainType();
        return blockchainType;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CryptoPreference(Context context, TelegramGateway telegramGateway, Gson gson) {
        super("ime_crypto_prefs", telegramGateway, context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        Intrinsics.checkNotNullParameter(gson, "gson");
        this.gson = gson;
        this.tempOneActionGuid = "";
        this.walletPublicAddresses = new PreferenceBlockchainMappedData<>(gson, getMPref(), new CryptoPreference$walletPublicAddresses$1(this));
        this.walletSeeds = new PreferenceBlockchainMappedData<>(gson, getMPref(), new CryptoPreference$walletSeeds$1(this));
        this.walletCreationDates = new PreferenceBlockchainMappedData<>(gson, getMPref(), new CryptoPreference$walletCreationDates$1(this));
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public int getPrefsVersion() {
        return getMPref().getInt(BasePreferenceHelper.CC.withTgAccount$default(this, "crypto_prefs_version", null, 2, null), 0);
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public void setPrefsVersion(int i) {
        getMPref().edit().putInt(BasePreferenceHelper.CC.withTgAccount$default(this, "crypto_prefs_version", null, 2, null), i).apply();
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public String getLastLoggedInGuid() {
        String string = getMPref().getString(BasePreferenceHelper.CC.withTgAccount$default(this, "last_guid", null, 2, null), "");
        return string == null ? "" : string;
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public void setLastLoggedInGuid(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        getMPref().edit().putString(BasePreferenceHelper.CC.withTgAccount$default(this, "last_guid", null, 2, null), value).apply();
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public void setWalletsGuid(List<String> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        getMPref().edit().putString(BasePreferenceHelper.CC.withTgAccount$default(this, "wallets_guid", null, 2, null), this.gson.toJson(value)).apply();
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public PreferenceBlockchainMappedData<String> getWalletPublicAddresses() {
        return this.walletPublicAddresses;
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public PreferenceBlockchainMappedData<String> getWalletSeeds() {
        return this.walletSeeds;
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public PreferenceBlockchainMappedData<String> getWalletCreationDates() {
        return this.walletCreationDates;
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public String getWalletPassword() {
        String string = getMPref().getString(CryptoPreferenceHelper.CC.withGuid$default(this, "wallet_password", null, 2, null), "");
        return string == null ? "" : string;
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public void setWalletPassword(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        getMPref().edit().putString(CryptoPreferenceHelper.CC.withGuid$default(this, "wallet_password", null, 2, null), value).apply();
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public CryptoWalletInformationMetadata getWalletInfoMetadata() {
        Gson gson = this.gson;
        String string = getMPref().getString("wallet_information_metadata", "{}");
        if (string == null) {
            string = "";
        }
        return (CryptoWalletInformationMetadata) gson.fromJson(string, new TypeToken<CryptoWalletInformationMetadata>() { // from class: com.iMe.storage.data.locale.prefs.impl.CryptoPreference$special$$inlined$fromJsonTokenType$2
        }.getType());
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public void setWalletInfoMetadata(CryptoWalletInformationMetadata value) {
        Intrinsics.checkNotNullParameter(value, "value");
        getMPref().edit().putString("wallet_information_metadata", this.gson.toJson(value)).apply();
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public boolean getCryptoHiddenBalance() {
        return getMPref().getBoolean(CryptoPreferenceHelper.CC.withGuid$default(this, "hidden_balance", null, 2, null), false);
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public void setCryptoHiddenBalance(boolean z) {
        getMPref().edit().putBoolean(CryptoPreferenceHelper.CC.withGuid$default(this, "hidden_balance", null, 2, null), z).apply();
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public AccountLevelMetadata getAccountLevelMetadata() {
        Gson gson = this.gson;
        String string = getMPref().getString("account_level", "{}");
        if (string == null) {
            string = "";
        }
        return (AccountLevelMetadata) gson.fromJson(string, new TypeToken<AccountLevelMetadata>() { // from class: com.iMe.storage.data.locale.prefs.impl.CryptoPreference$special$$inlined$fromJsonTokenType$3
        }.getType());
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public void setAccountLevelMetadata(AccountLevelMetadata value) {
        Intrinsics.checkNotNullParameter(value, "value");
        getMPref().edit().putString("account_level", this.gson.toJson(value)).apply();
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public NetworkType getNetworkType() {
        NetworkType.Companion companion = NetworkType.Companion;
        SharedPreferences mPref = getMPref();
        String withTgAccount$default = BasePreferenceHelper.CC.withTgAccount$default(this, "network_type", null, 2, null);
        NetworkType networkType = NetworkType.BINANCE_SMART_CHAIN;
        String string = mPref.getString(withTgAccount$default, networkType.name());
        if (string == null) {
            string = networkType.name();
        }
        Intrinsics.checkNotNullExpressionValue(string, "mPref.getString(withTgAc….BINANCE_SMART_CHAIN.name");
        return companion.map(string);
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public void setNetworkType(NetworkType value) {
        Intrinsics.checkNotNullParameter(value, "value");
        getMPref().edit().putString(BasePreferenceHelper.CC.withTgAccount$default(this, "network_type", null, 2, null), value.name()).apply();
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public boolean getOnlyPositiveTokens() {
        return getMPref().getBoolean(BasePreferenceHelper.CC.withTgAccount$default(this, "tokens_only_positive", null, 2, null), false);
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public void setOnlyPositiveTokens(boolean z) {
        getMPref().edit().putBoolean(BasePreferenceHelper.CC.withTgAccount$default(this, "tokens_only_positive", null, 2, null), z).apply();
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public TokenOrderType getTokensOrderType() {
        TokenOrderType.Companion companion = TokenOrderType.Companion;
        String string = getMPref().getString(BasePreferenceHelper.CC.withTgAccount$default(this, "tokens_order_type", null, 2, null), TokenOrderType.DEFAULT.name());
        if (string == null) {
            string = "";
        }
        return companion.map(string);
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public void setTokensOrderType(TokenOrderType value) {
        Intrinsics.checkNotNullParameter(value, "value");
        getMPref().edit().putString(BasePreferenceHelper.CC.withTgAccount$default(this, "tokens_order_type", null, 2, null), value.name()).apply();
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public StakingOrderType getStakingProgrammesOrderType() {
        StakingOrderType.Companion companion = StakingOrderType.Companion;
        String string = getMPref().getString(BasePreferenceHelper.CC.withTgAccount$default(this, "stakings_order_type", null, 2, null), StakingOrderType.DEFAULT.name());
        if (string == null) {
            string = "";
        }
        return companion.map(string);
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public void setStakingProgrammesOrderType(StakingOrderType value) {
        Intrinsics.checkNotNullParameter(value, "value");
        getMPref().edit().putString(BasePreferenceHelper.CC.withTgAccount$default(this, "stakings_order_type", null, 2, null), value.name()).apply();
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public WalletAirdropMetadata getAirdropMetadata() {
        Gson gson = this.gson;
        String string = getMPref().getString(BasePreferenceHelper.CC.withTgAccount$default(this, CryptoPreferenceHelper.Keys.getKEY_AIRDROP_METADATA(), null, 2, null), this.gson.toJson(WalletAirdropMetadata.Companion.getDefault()));
        if (string == null) {
            string = "";
        }
        return (WalletAirdropMetadata) gson.fromJson(string, new TypeToken<WalletAirdropMetadata>() { // from class: com.iMe.storage.data.locale.prefs.impl.CryptoPreference$special$$inlined$fromJsonTokenType$4
        }.getType());
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public void setAirdropMetadata(WalletAirdropMetadata value) {
        Intrinsics.checkNotNullParameter(value, "value");
        getMPref().edit().putString(BasePreferenceHelper.CC.withTgAccount$default(this, CryptoPreferenceHelper.Keys.getKEY_AIRDROP_METADATA(), null, 2, null), this.gson.toJson(value)).apply();
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public AuthTokensMetadata getAuthSession() {
        Gson gson = this.gson;
        String string = getMPref().getString(BasePreferenceHelper.CC.withTgAccount$default(this, "auth_session", null, 2, null), "{}");
        if (string == null) {
            string = "";
        }
        return (AuthTokensMetadata) gson.fromJson(string, new TypeToken<AuthTokensMetadata>() { // from class: com.iMe.storage.data.locale.prefs.impl.CryptoPreference$special$$inlined$fromJsonTokenType$5
        }.getType());
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public void setAuthSession(AuthTokensMetadata value) {
        Intrinsics.checkNotNullParameter(value, "value");
        getMPref().edit().putString(BasePreferenceHelper.CC.withTgAccount$default(this, "auth_session", null, 2, null), this.gson.toJson(value)).apply();
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public BinanceAuthTokensMetadata getBinanceAuthSession() {
        Gson gson = this.gson;
        String string = getMPref().getString(BasePreferenceHelper.CC.withTgAccount$default(this, "binance_session", null, 2, null), "{}");
        if (string == null) {
            string = "";
        }
        return (BinanceAuthTokensMetadata) gson.fromJson(string, new TypeToken<BinanceAuthTokensMetadata>() { // from class: com.iMe.storage.data.locale.prefs.impl.CryptoPreference$special$$inlined$fromJsonTokenType$6
        }.getType());
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public void setBinanceAuthSession(BinanceAuthTokensMetadata value) {
        Intrinsics.checkNotNullParameter(value, "value");
        getMPref().edit().putString(BasePreferenceHelper.CC.withTgAccount$default(this, "binance_session", null, 2, null), this.gson.toJson(value)).apply();
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public BinanceUserInfoMetadata getBinanceUserInfo() {
        Gson gson = this.gson;
        String string = getMPref().getString(BasePreferenceHelper.CC.withTgAccount$default(this, "binance_user_info", null, 2, null), "{}");
        if (string == null) {
            string = "";
        }
        return (BinanceUserInfoMetadata) gson.fromJson(string, new TypeToken<BinanceUserInfoMetadata>() { // from class: com.iMe.storage.data.locale.prefs.impl.CryptoPreference$special$$inlined$fromJsonTokenType$7
        }.getType());
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public void setBinanceUserInfo(BinanceUserInfoMetadata value) {
        Intrinsics.checkNotNullParameter(value, "value");
        getMPref().edit().putString(BasePreferenceHelper.CC.withTgAccount$default(this, "binance_user_info", null, 2, null), this.gson.toJson(value)).apply();
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public boolean getBinanceOnlyPositiveTokens() {
        return getMPref().getBoolean(BasePreferenceHelper.CC.withTgAccount$default(this, "binance_tokens_only_positive", null, 2, null), false);
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public void setBinanceOnlyPositiveTokens(boolean z) {
        getMPref().edit().putBoolean(BasePreferenceHelper.CC.withTgAccount$default(this, "binance_tokens_only_positive", null, 2, null), z).apply();
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public WalletCryptoTokensSettingsMetadata getBinanceTokensSettings() {
        Gson gson = this.gson;
        String string = getMPref().getString(BasePreferenceHelper.CC.withTgAccount$default(this, "binance_tokens_settings", null, 2, null), "{}");
        if (string == null) {
            string = "";
        }
        return (WalletCryptoTokensSettingsMetadata) gson.fromJson(string, new TypeToken<WalletCryptoTokensSettingsMetadata>() { // from class: com.iMe.storage.data.locale.prefs.impl.CryptoPreference$special$$inlined$fromJsonTokenType$8
        }.getType());
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public void setBinanceTokensSettings(WalletCryptoTokensSettingsMetadata value) {
        Intrinsics.checkNotNullParameter(value, "value");
        getMPref().edit().putString(BasePreferenceHelper.CC.withTgAccount$default(this, "binance_tokens_settings", null, 2, null), this.gson.toJson(value)).apply();
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public TokenOrderType getBinanceTokensOrderType() {
        TokenOrderType.Companion companion = TokenOrderType.Companion;
        String string = getMPref().getString(BasePreferenceHelper.CC.withTgAccount$default(this, "binance_tokens_order_type", null, 2, null), TokenOrderType.DEFAULT.name());
        if (string == null) {
            string = "";
        }
        return companion.map(string);
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public void setBinanceTokensOrderType(TokenOrderType value) {
        Intrinsics.checkNotNullParameter(value, "value");
        getMPref().edit().putString(BasePreferenceHelper.CC.withTgAccount$default(this, "binance_tokens_order_type", null, 2, null), value.name()).apply();
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public boolean isBannersVisible() {
        return getMPref().getBoolean(BasePreferenceHelper.CC.withTgAccount$default(this, "interface_banners", null, 2, null), true);
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public void setBannersVisible(boolean z) {
        getMPref().edit().putBoolean(BasePreferenceHelper.CC.withTgAccount$default(this, "interface_banners", null, 2, null), z).apply();
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public boolean isQuotationsVisible() {
        return getMPref().getBoolean(BasePreferenceHelper.CC.withTgAccount$default(this, "interface_quotation", null, 2, null), true);
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public void setQuotationsVisible(boolean z) {
        getMPref().edit().putBoolean(BasePreferenceHelper.CC.withTgAccount$default(this, "interface_quotation", null, 2, null), z).apply();
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public String getTonConfigJsonString() {
        String string = getMPref().getString(CryptoPreferenceHelper.CC.withGuid$default(this, "ton_config_json_string", null, 2, null), "");
        return string == null ? "" : string;
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public void setTonConfigJsonString(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        getMPref().edit().putString(CryptoPreferenceHelper.CC.withGuid$default(this, "ton_config_json_string", null, 2, null), value).apply();
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public String getWalletSeedByGuid(String guid, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Gson gson = this.gson;
        String string = getMPref().getString(withGuid("wallet_seed", guid), "[]");
        if (string == null) {
            string = "";
        }
        String str = (String) ((Map) gson.fromJson(string, new TypeToken<Map<String, ? extends String>>() { // from class: com.iMe.storage.data.locale.prefs.impl.CryptoPreference$getWalletSeedByGuid$$inlined$fromJsonTokenType$1
        }.getType())).get(blockchainType.name());
        return str == null ? "" : str;
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public WalletCryptoTokensSettingsMetadata getTokensSettings(NetworkType networkType) {
        WalletCryptoTokensSettingsMetadata defaultTokensSettings;
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        String withTgAccount$default = BasePreferenceHelper.CC.withTgAccount$default(this, withPrefix(networkType.name(), "tokens_settings"), null, 2, null);
        if (getMPref().contains(withTgAccount$default)) {
            Gson gson = this.gson;
            String string = getMPref().getString(withTgAccount$default, "{}");
            if (string == null) {
                string = "";
            }
            defaultTokensSettings = (WalletCryptoTokensSettingsMetadata) gson.fromJson(string, new TypeToken<WalletCryptoTokensSettingsMetadata>() { // from class: com.iMe.storage.data.locale.prefs.impl.CryptoPreference$getTokensSettings$$inlined$fromJsonTokenType$1
            }.getType());
        } else {
            defaultTokensSettings = WalletCryptoTokensSettingsMetadata.Companion.getDefaultTokensSettings(networkType);
        }
        List<WalletCryptoTokensSettingsTokenState> states = defaultTokensSettings.getStates();
        if (states.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(states, new Comparator() { // from class: com.iMe.storage.data.locale.prefs.impl.CryptoPreference$getTokensSettings$lambda$1$$inlined$sortBy$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((WalletCryptoTokensSettingsTokenState) t).getPosition()), Integer.valueOf(((WalletCryptoTokensSettingsTokenState) t2).getPosition()));
                    return compareValues;
                }
            });
        }
        return defaultTokensSettings;
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public void saveTokensSettings(WalletCryptoTokensSettingsMetadata settings, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(settings, "settings");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        getMPref().edit().putString(BasePreferenceHelper.CC.withTgAccount$default(this, withPrefix(networkType.name(), "tokens_settings"), null, 2, null), this.gson.toJson(settings)).apply();
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public void resetAllTokensSettings() {
        SharedPreferences.Editor edit = getMPref().edit();
        edit.remove(BasePreferenceHelper.CC.withTgAccount$default(this, "tokens_only_positive", null, 2, null));
        for (NetworkType networkType : NetworkType.values()) {
            edit.remove(BasePreferenceHelper.CC.withTgAccount$default(this, withPrefix(networkType.name(), "tokens_settings"), null, 2, null));
        }
        edit.apply();
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public void resetTokensSettingsByNetwork(NetworkType networkType) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        SharedPreferences.Editor edit = getMPref().edit();
        edit.remove(BasePreferenceHelper.CC.withTgAccount$default(this, "tokens_only_positive", null, 2, null));
        edit.remove(BasePreferenceHelper.CC.withTgAccount$default(this, withPrefix(networkType.name(), "tokens_settings"), null, 2, null));
        edit.apply();
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public void resetTokensSettingsByBlockchainType(BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        SharedPreferences.Editor edit = getMPref().edit();
        edit.remove(BasePreferenceHelper.CC.withTgAccount$default(this, "tokens_only_positive", null, 2, null));
        for (NetworkType networkType : NetworkType.Companion.getNetworksByBlockchain(blockchainType)) {
            edit.remove(BasePreferenceHelper.CC.withTgAccount$default(this, withPrefix(networkType.name(), "tokens_settings"), null, 2, null));
        }
        edit.apply();
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public void resetBinanceTokensSettings() {
        SharedPreferences.Editor edit = getMPref().edit();
        edit.remove(BasePreferenceHelper.CC.withTgAccount$default(this, "binance_tokens_only_positive", null, 2, null));
        edit.remove(BasePreferenceHelper.CC.withTgAccount$default(this, "binance_tokens_settings", null, 2, null));
        edit.apply();
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public void resetBinanceAccount() {
        SharedPreferences.Editor edit = getMPref().edit();
        edit.remove(BasePreferenceHelper.CC.withTgAccount$default(this, "binance_session", null, 2, null));
        edit.remove(BasePreferenceHelper.CC.withTgAccount$default(this, "binance_user_info", null, 2, null));
        edit.apply();
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public String getOldWalletPublicAddress() {
        String string = getMPref().getString(CryptoPreferenceHelper.CC.withGuid$default(this, "wallet_public_address", null, 2, null), "");
        return string == null ? "" : string;
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public String getOldWalletSeed() {
        String string = getMPref().getString(CryptoPreferenceHelper.CC.withGuid$default(this, "wallet_seed", null, 2, null), "");
        return string == null ? "" : string;
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public void resetOldWalletData() {
        List<String> listOf;
        SharedPreferences.Editor edit = getMPref().edit();
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"wallet_public_address", "wallet_seed"});
        for (String str : listOf) {
            edit.remove(CryptoPreferenceHelper.CC.withGuid$default(this, str, null, 2, null));
        }
        edit.apply();
    }

    @Override // com.iMe.storage.domain.storage.CryptoPreferenceHelper
    public String withGuid(String key, String guid) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(guid, "guid");
        StringBuilder sb = new StringBuilder();
        if (guid.length() == 0) {
            guid = getActualGuid();
        }
        sb.append(guid);
        sb.append('_');
        sb.append(key);
        return sb.toString();
    }

    private final String getActualGuid() {
        String str = this.tempOneActionGuid;
        return str.length() == 0 ? getLastLoggedInGuid() : str;
    }
}
