package com.smedialink.storage.data.locale.prefs.migration;

import com.smedialink.storage.data.locale.prefs.model.WalletCryptoTokensSettingsMetadata;
import com.smedialink.storage.data.locale.prefs.model.WalletCryptoTokensSettingsTokenState;
import com.smedialink.storage.data.utils.extentions.DateExtKt;
import com.smedialink.storage.domain.model.PreferenceBlockchainMappedData;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.storage.BasePreferenceHelper;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.scope.Scope;
import timber.log.Timber;
/* compiled from: PreferencesMigrationManager.kt */
/* loaded from: classes3.dex */
public final class PreferencesMigrationManager$Crypto implements KoinComponent {
    public static final PreferencesMigrationManager$Crypto INSTANCE = new PreferencesMigrationManager$Crypto();

    private PreferencesMigrationManager$Crypto() {
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    public static final void migrateCryptoPrefs(long j) {
        try {
            INSTANCE.migrateToCurrentVersion(j);
        } catch (Exception e) {
            Timber.m4e(e);
        }
    }

    private final void migrateToCurrentVersion(long j) {
        Scope rootScope;
        List<? extends TokenCode> listOf;
        List<? extends TokenCode> listOf2;
        List<? extends TokenCode> listOf3;
        List<? extends TokenCode> listOf4;
        List<? extends TokenCode> listOf5;
        List<? extends TokenCode> listOf6;
        List<? extends TokenCode> listOf7;
        if (this instanceof KoinScopeComponent) {
            rootScope = ((KoinScopeComponent) this).getScope();
        } else {
            rootScope = getKoin().getScopeRegistry().getRootScope();
        }
        CryptoPreferenceHelper cryptoPreferenceHelper = (CryptoPreferenceHelper) rootScope.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null);
        cryptoPreferenceHelper.setTempOneActionUserId(String.valueOf(j));
        int prefsVersion = cryptoPreferenceHelper.getPrefsVersion() + 1;
        if (prefsVersion <= 8) {
            while (true) {
                int i = prefsVersion + 1;
                switch (prefsVersion) {
                    case 1:
                        PreferencesMigrationManager$Crypto preferencesMigrationManager$Crypto = INSTANCE;
                        listOf = CollectionsKt__CollectionsJVMKt.listOf(TokenCode.UFI);
                        preferencesMigrationManager$Crypto.addSupportForNewTokens(cryptoPreferenceHelper, cryptoPreferenceHelper, listOf);
                        break;
                    case 2:
                        PreferencesMigrationManager$Crypto preferencesMigrationManager$Crypto2 = INSTANCE;
                        listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new TokenCode[]{TokenCode.DEGO, TokenCode.PRE, TokenCode.EQX, TokenCode.LSS, TokenCode.GAINS, TokenCode.UNN, TokenCode.DEXT, TokenCode.TOMOE, TokenCode.FLURRY, TokenCode.FRM, TokenCode.DOP});
                        preferencesMigrationManager$Crypto2.addSupportForNewTokens(cryptoPreferenceHelper, cryptoPreferenceHelper, listOf2);
                        break;
                    case 3:
                        PreferencesMigrationManager$Crypto preferencesMigrationManager$Crypto3 = INSTANCE;
                        listOf3 = CollectionsKt__CollectionsKt.listOf((Object[]) new TokenCode[]{TokenCode.GFX, TokenCode.D11, TokenCode.DVD, TokenCode.METIS, TokenCode.CTSI, TokenCode.SAITO, TokenCode.ZCX, TokenCode.CEEK, TokenCode.XEND, TokenCode.SHR, TokenCode.BOSON, TokenCode.KONO, TokenCode.KFT, TokenCode.OM, TokenCode.ROYA, TokenCode.CVR, TokenCode.SKILL, TokenCode.YAY, TokenCode.KABY, TokenCode.USDO, TokenCode.FUSE});
                        preferencesMigrationManager$Crypto3.addSupportForNewTokens(cryptoPreferenceHelper, cryptoPreferenceHelper, listOf3);
                        break;
                    case 4:
                        PreferencesMigrationManager$Crypto preferencesMigrationManager$Crypto4 = INSTANCE;
                        listOf4 = CollectionsKt__CollectionsKt.listOf((Object[]) new TokenCode[]{TokenCode.TON, TokenCode.SHIB});
                        preferencesMigrationManager$Crypto4.addSupportForNewTokens(cryptoPreferenceHelper, cryptoPreferenceHelper, listOf4);
                        break;
                    case 5:
                        cryptoPreferenceHelper.resetTokensSettings();
                        break;
                    case 6:
                        String oldWalletPublicAddress = cryptoPreferenceHelper.getOldWalletPublicAddress();
                        String oldWalletSeed = cryptoPreferenceHelper.getOldWalletSeed();
                        cryptoPreferenceHelper.resetOldWalletData();
                        PreferenceBlockchainMappedData<String> walletPublicAddresses = cryptoPreferenceHelper.getWalletPublicAddresses();
                        BlockchainType blockchainType = BlockchainType.EVM;
                        walletPublicAddresses.put(blockchainType, oldWalletPublicAddress);
                        cryptoPreferenceHelper.getWalletSeeds().put(blockchainType, oldWalletSeed);
                        cryptoPreferenceHelper.getWalletCreationDates().put(blockchainType, String.valueOf(DateExtKt.now()));
                        PreferencesMigrationManager$Crypto preferencesMigrationManager$Crypto5 = INSTANCE;
                        listOf5 = CollectionsKt__CollectionsKt.listOf((Object[]) new TokenCode[]{TokenCode.INF, TokenCode.KOM});
                        preferencesMigrationManager$Crypto5.addSupportForNewTokens(cryptoPreferenceHelper, cryptoPreferenceHelper, listOf5);
                        break;
                    case 7:
                        PreferencesMigrationManager$Crypto preferencesMigrationManager$Crypto6 = INSTANCE;
                        listOf6 = CollectionsKt__CollectionsJVMKt.listOf(TokenCode.FTM);
                        preferencesMigrationManager$Crypto6.addSupportForNewTokens(cryptoPreferenceHelper, cryptoPreferenceHelper, listOf6);
                        break;
                    case 8:
                        PreferencesMigrationManager$Crypto preferencesMigrationManager$Crypto7 = INSTANCE;
                        listOf7 = CollectionsKt__CollectionsKt.listOf((Object[]) new TokenCode[]{TokenCode.PPM, TokenCode.SIN});
                        preferencesMigrationManager$Crypto7.addSupportForNewTokens(cryptoPreferenceHelper, cryptoPreferenceHelper, listOf7);
                        break;
                }
                cryptoPreferenceHelper.setPrefsVersion(prefsVersion);
                if (i <= 8) {
                    prefsVersion = i;
                }
            }
        }
        cryptoPreferenceHelper.setTempOneActionUserId("");
    }

    private final void addSupportForNewTokens(CryptoPreferenceHelper cryptoPreferenceHelper, BasePreferenceHelper basePreferenceHelper, List<? extends TokenCode> list) {
        List<NetworkType> availableNetworks = NetworkType.Companion.getAvailableNetworks();
        ArrayList<NetworkType> arrayList = new ArrayList();
        for (Object obj : availableNetworks) {
            if (basePreferenceHelper.isKeyContains(BasePreferenceHelper.DefaultImpls.withTgAccount$default(cryptoPreferenceHelper, cryptoPreferenceHelper.withPrefix(((NetworkType) obj).name(), "tokens_settings"), null, 2, null))) {
                arrayList.add(obj);
            }
        }
        for (NetworkType networkType : arrayList) {
            WalletCryptoTokensSettingsMetadata tokensSettings = cryptoPreferenceHelper.getTokensSettings(networkType);
            if (!Intrinsics.areEqual(tokensSettings, WalletCryptoTokensSettingsMetadata.Companion.getDefaultTokensSettings(networkType))) {
                Iterator<T> it = tokensSettings.getStates().iterator();
                if (!it.hasNext()) {
                    throw new NoSuchElementException();
                }
                int position = ((WalletCryptoTokensSettingsTokenState) it.next()).getPosition();
                while (it.hasNext()) {
                    int position2 = ((WalletCryptoTokensSettingsTokenState) it.next()).getPosition();
                    if (position < position2) {
                        position = position2;
                    }
                }
                for (TokenCode tokenCode : list) {
                    if (TokenCode.Companion.getTokensByNetwork(networkType).contains(tokenCode)) {
                        tokensSettings.getStates().add(new WalletCryptoTokensSettingsTokenState(tokenCode.getName(), position, true));
                        position++;
                    }
                }
                cryptoPreferenceHelper.saveTokensSettings(tokensSettings, networkType);
            }
        }
    }
}
