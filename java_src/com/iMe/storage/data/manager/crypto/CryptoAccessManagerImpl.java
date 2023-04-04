package com.iMe.storage.data.manager.crypto;

import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.manager.crypto.CryptoWalletsManager;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoAccessManagerImpl.kt */
/* loaded from: classes3.dex */
public final class CryptoAccessManagerImpl implements CryptoAccessManager {
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final CryptoWalletsManager walletManager;
    private String walletPassword;
    private Map<BlockchainType, Wallet> wallets;

    public CryptoAccessManagerImpl(CryptoPreferenceHelper cryptoPreferenceHelper, CryptoWalletsManager walletManager) {
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(walletManager, "walletManager");
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.walletManager = walletManager;
        this.wallets = new LinkedHashMap();
        this.walletPassword = "";
    }

    @Override // com.iMe.storage.domain.manager.crypto.CryptoAccessManager
    public void onUserChanged() {
        this.wallets.clear();
        this.walletPassword = "";
    }

    @Override // com.iMe.storage.domain.manager.crypto.CryptoAccessManager
    public String getWalletPassword() {
        return this.walletPassword;
    }

    @Override // com.iMe.storage.domain.manager.crypto.CryptoAccessManager
    public Wallet getWallet(BlockchainType blockchainType) {
        if (blockchainType == null) {
            return null;
        }
        return this.wallets.get(blockchainType);
    }

    @Override // com.iMe.storage.domain.manager.crypto.CryptoAccessManager
    public Wallet.EVM getEVMWallet() {
        Wallet wallet2 = this.wallets.get(BlockchainType.EVM);
        if (wallet2 instanceof Wallet.EVM) {
            return (Wallet.EVM) wallet2;
        }
        return null;
    }

    @Override // com.iMe.storage.domain.manager.crypto.CryptoAccessManager
    public Wallet.TRON getTRONWallet() {
        Wallet wallet2 = this.wallets.get(BlockchainType.TRON);
        if (wallet2 instanceof Wallet.TRON) {
            return (Wallet.TRON) wallet2;
        }
        return null;
    }

    @Override // com.iMe.storage.domain.manager.crypto.CryptoAccessManager
    public List<Wallet> getAllWallets() {
        List<Wallet> list;
        list = CollectionsKt___CollectionsKt.toList(this.wallets.values());
        return list;
    }

    @Override // com.iMe.storage.domain.manager.crypto.CryptoAccessManager
    public BlockchainType getFirstBip39PhraseBasedBlockchainType() {
        Object obj;
        Iterator<T> it = this.wallets.keySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((BlockchainType) obj).isBip39PhraseBased()) {
                break;
            }
        }
        return (BlockchainType) obj;
    }

    @Override // com.iMe.storage.domain.manager.crypto.CryptoAccessManager
    public List<BlockchainType> getUnactivatedBip39PhraseBasedBlockchainTypes() {
        List<BlockchainType> bip39PhraseBasedBlockchains = BlockchainType.Companion.getBip39PhraseBasedBlockchains();
        ArrayList arrayList = new ArrayList();
        for (Object obj : bip39PhraseBasedBlockchains) {
            if (!this.wallets.keySet().contains((BlockchainType) obj)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @Override // com.iMe.storage.domain.manager.crypto.CryptoAccessManager
    public void setWallet(Wallet wallet2, String password) {
        Intrinsics.checkNotNullParameter(wallet2, "wallet");
        Intrinsics.checkNotNullParameter(password, "password");
        this.wallets.put(wallet2.getBlockchainType(), wallet2);
        this.walletPassword = password;
    }

    @Override // com.iMe.storage.domain.manager.crypto.CryptoAccessManager
    public void deleteWallet(BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        this.walletManager.deleteWallet(getLastLoggedInGuid(), blockchainType);
        logoutWallet(blockchainType);
    }

    @Override // com.iMe.storage.domain.manager.crypto.CryptoAccessManager
    public void deleteAllWallets() {
        this.cryptoPreferenceHelper.setNetworkType(NetworkType.BINANCE_SMART_CHAIN);
        for (BlockchainType blockchainType : BlockchainType.values()) {
            deleteWallet(blockchainType);
        }
    }

    public void logoutWallet(BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        this.wallets.remove(blockchainType);
        if (this.wallets.isEmpty()) {
            this.walletPassword = "";
        }
    }

    @Override // com.iMe.storage.domain.manager.crypto.CryptoAccessManager
    public void logoutAllWallets() {
        for (BlockchainType blockchainType : BlockchainType.values()) {
            logoutWallet(blockchainType);
        }
    }

    @Override // com.iMe.storage.domain.manager.crypto.CryptoAccessManager
    public String getLastLoggedInGuid() {
        return this.cryptoPreferenceHelper.getLastLoggedInGuid();
    }

    @Override // com.iMe.storage.domain.manager.crypto.CryptoAccessManager
    public String getLastLoggedInAddress(BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        String dataByBlockchain = this.cryptoPreferenceHelper.getWalletPublicAddresses().getDataByBlockchain(blockchainType);
        return dataByBlockchain == null ? "" : dataByBlockchain;
    }

    @Override // com.iMe.storage.domain.manager.crypto.CryptoAccessManager
    public boolean isAuthorized(BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        if (!this.wallets.isEmpty()) {
            if (getLastLoggedInGuid().length() > 0) {
                Wallet wallet2 = this.wallets.get(blockchainType);
                if (Intrinsics.areEqual(wallet2 != null ? wallet2.getGuid() : null, getLastLoggedInGuid())) {
                    if (this.walletPassword.length() > 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // com.iMe.storage.domain.manager.crypto.CryptoAccessManager
    public boolean isWalletCreated(BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        if (getLastLoggedInGuid().length() > 0) {
            if (getLastLoggedInAddress(blockchainType).length() > 0) {
                return true;
            }
        }
        return false;
    }

    @Override // com.iMe.storage.domain.manager.crypto.CryptoAccessManager
    public boolean isCurrentBlockchainWalletCreated() {
        return isWalletCreated(this.cryptoPreferenceHelper.getCurrentBlockchainType());
    }

    @Override // com.iMe.storage.domain.manager.crypto.CryptoAccessManager
    public boolean isAnyWalletCreated() {
        return getLastLoggedInGuid().length() > 0;
    }

    @Override // com.iMe.storage.domain.manager.crypto.CryptoAccessManager
    public boolean isAnyBip39PhraseBasedWalletCreated() {
        boolean z;
        boolean z2;
        if (isAnyWalletCreated()) {
            List<BlockchainType> bip39PhraseBasedBlockchains = BlockchainType.Companion.getBip39PhraseBasedBlockchains();
            if (!(bip39PhraseBasedBlockchains instanceof Collection) || !bip39PhraseBasedBlockchains.isEmpty()) {
                for (BlockchainType blockchainType : bip39PhraseBasedBlockchains) {
                    if (this.wallets.get(blockchainType) != null) {
                        z = true;
                        continue;
                    } else {
                        z = false;
                        continue;
                    }
                    if (z) {
                        z2 = true;
                        break;
                    }
                }
            }
            z2 = false;
            if (z2) {
                return true;
            }
        }
        return false;
    }

    @Override // com.iMe.storage.domain.manager.crypto.CryptoAccessManager
    public List<BlockchainType> getCreatedWalletsBlockchains() {
        List<BlockchainType> list;
        list = CollectionsKt___CollectionsKt.toList(this.wallets.keySet());
        return list;
    }
}
