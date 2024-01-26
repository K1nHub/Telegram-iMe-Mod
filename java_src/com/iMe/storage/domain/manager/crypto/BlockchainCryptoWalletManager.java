package com.iMe.storage.domain.manager.crypto;

import com.iMe.storage.data.utils.extentions.CryptoExtKt;
import com.iMe.storage.data.utils.extentions.DateExtKt;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import io.reactivex.Observable;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BlockchainCryptoWalletManager.kt */
/* loaded from: classes3.dex */
public abstract class BlockchainCryptoWalletManager {
    private final BlockchainType blockchainType;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;

    public abstract Observable<Result<Wallet>> createWallet();

    public abstract Observable<Result<Wallet>> importWallet(String str, String str2, String str3);

    public abstract Observable<Result<Boolean>> isValidAddress(String str);

    public abstract Observable<Result<Boolean>> isValidMnemonic(String str);

    public abstract Observable<Result<Wallet>> unlockWallet(String str, String str2, String str3, String str4);

    public BlockchainCryptoWalletManager(CryptoPreferenceHelper cryptoPreferenceHelper, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.blockchainType = blockchainType;
    }

    public void deleteWallet(String guid) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        CryptoPreferenceHelper cryptoPreferenceHelper = this.cryptoPreferenceHelper;
        cryptoPreferenceHelper.getWalletPublicAddresses().remove(this.blockchainType);
        cryptoPreferenceHelper.getWalletSeeds().remove(this.blockchainType);
        cryptoPreferenceHelper.getWalletCreationDates().remove(this.blockchainType);
        if (cryptoPreferenceHelper.getWalletSeeds().getData().isEmpty()) {
            cryptoPreferenceHelper.setWalletsGuid(new ArrayList());
            cryptoPreferenceHelper.setWalletPassword("");
            cryptoPreferenceHelper.setLastLoggedInGuid("");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void rewriteWalletToNewGuid(String guid, String oldGuid, String mnemonic, String password, String address) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(oldGuid, "oldGuid");
        Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(address, "address");
        deleteWallet(oldGuid);
        saveWalletToPrefs(guid, address, mnemonic, password, true);
    }

    public static /* synthetic */ void saveWalletToPrefs$default(BlockchainCryptoWalletManager blockchainCryptoWalletManager, String str, String str2, String str3, String str4, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: saveWalletToPrefs");
        }
        if ((i & 16) != 0) {
            z = false;
        }
        blockchainCryptoWalletManager.saveWalletToPrefs(str, str2, str3, str4, z);
    }

    protected final void saveWalletToPrefs(String guid, String address, String mnemonic, String password, boolean z) {
        List<String> mutableListOf;
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
        Intrinsics.checkNotNullParameter(password, "password");
        CryptoPreferenceHelper cryptoPreferenceHelper = this.cryptoPreferenceHelper;
        if ((cryptoPreferenceHelper.getLastLoggedInGuid().length() == 0) || z) {
            cryptoPreferenceHelper.setLastLoggedInGuid(guid);
            mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(guid);
            cryptoPreferenceHelper.setWalletsGuid(mutableListOf);
        }
        cryptoPreferenceHelper.getWalletCreationDates().put(this.blockchainType, String.valueOf(DateExtKt.now()));
        cryptoPreferenceHelper.getWalletPublicAddresses().put(this.blockchainType, address);
        cryptoPreferenceHelper.getWalletSeeds().put(this.blockchainType, CryptoExtKt.aesEncrypt(mnemonic, password));
    }
}
