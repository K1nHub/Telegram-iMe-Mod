package com.iMe.storage.data.locale.prefs.migration;

import com.iMe.storage.data.utils.extentions.DateExtKt;
import com.iMe.storage.domain.model.PreferenceBlockchainMappedData;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
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
            Timber.m6e(e);
        }
    }

    private final void migrateToCurrentVersion(long j) {
        Scope rootScope;
        if (this instanceof KoinScopeComponent) {
            rootScope = ((KoinScopeComponent) this).getScope();
        } else {
            rootScope = getKoin().getScopeRegistry().getRootScope();
        }
        CryptoPreferenceHelper cryptoPreferenceHelper = (CryptoPreferenceHelper) rootScope.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null);
        cryptoPreferenceHelper.setTempOneActionUserId(String.valueOf(j));
        int prefsVersion = cryptoPreferenceHelper.getPrefsVersion();
        while (true) {
            prefsVersion++;
            if (prefsVersion >= 13) {
                cryptoPreferenceHelper.setTempOneActionUserId("");
                return;
            }
            if (prefsVersion == 6) {
                String oldWalletPublicAddress = cryptoPreferenceHelper.getOldWalletPublicAddress();
                String oldWalletSeed = cryptoPreferenceHelper.getOldWalletSeed();
                cryptoPreferenceHelper.resetOldWalletData();
                PreferenceBlockchainMappedData<String> walletPublicAddresses = cryptoPreferenceHelper.getWalletPublicAddresses();
                BlockchainType blockchainType = BlockchainType.EVM;
                walletPublicAddresses.put(blockchainType, oldWalletPublicAddress);
                cryptoPreferenceHelper.getWalletSeeds().put(blockchainType, oldWalletSeed);
                cryptoPreferenceHelper.getWalletCreationDates().put(blockchainType, String.valueOf(DateExtKt.now()));
            } else if (prefsVersion == 11) {
                cryptoPreferenceHelper.resetAllTokensSettings();
            } else if (prefsVersion == 12) {
                cryptoPreferenceHelper.resetBinanceTokensSettings();
            }
            cryptoPreferenceHelper.setPrefsVersion(prefsVersion);
        }
    }
}
