package com.smedialink.storage.data.manager.crypto;

import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.manager.crypto.CryptoWalletsManager;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
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

    @Override // com.smedialink.storage.domain.manager.crypto.CryptoAccessManager
    public void onUserChanged() {
        this.wallets.clear();
        this.walletPassword = "";
    }

    @Override // com.smedialink.storage.domain.manager.crypto.CryptoAccessManager
    public String getWalletPassword() {
        return this.walletPassword;
    }

    @Override // com.smedialink.storage.domain.manager.crypto.CryptoAccessManager
    public Wallet getWallet(BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        return this.wallets.get(blockchainType);
    }

    @Override // com.smedialink.storage.domain.manager.crypto.CryptoAccessManager
    public Wallet.EVM getEVMWallet() {
        Wallet wallet = this.wallets.get(BlockchainType.EVM);
        if (wallet instanceof Wallet.EVM) {
            return (Wallet.EVM) wallet;
        }
        return null;
    }

    @Override // com.smedialink.storage.domain.manager.crypto.CryptoAccessManager
    public List<Wallet> getAllWallets() {
        List<Wallet> list;
        list = CollectionsKt___CollectionsKt.toList(this.wallets.values());
        return list;
    }

    @Override // com.smedialink.storage.domain.manager.crypto.CryptoAccessManager
    public void setWallet(Wallet wallet, String password) {
        Intrinsics.checkNotNullParameter(wallet, "wallet");
        Intrinsics.checkNotNullParameter(password, "password");
        this.wallets.put(wallet.getBlockchainType(), wallet);
        this.walletPassword = password;
    }

    @Override // com.smedialink.storage.domain.manager.crypto.CryptoAccessManager
    public void deleteWallet(BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        this.walletManager.deleteWallet(getLastLoggedInGuid(), blockchainType);
        logoutWallet(blockchainType);
    }

    @Override // com.smedialink.storage.domain.manager.crypto.CryptoAccessManager
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

    @Override // com.smedialink.storage.domain.manager.crypto.CryptoAccessManager
    public void logoutAllWallets() {
        for (BlockchainType blockchainType : BlockchainType.values()) {
            logoutWallet(blockchainType);
        }
    }

    @Override // com.smedialink.storage.domain.manager.crypto.CryptoAccessManager
    public String getLastLoggedInGuid() {
        return this.cryptoPreferenceHelper.getLastLoggedInGuid();
    }

    @Override // com.smedialink.storage.domain.manager.crypto.CryptoAccessManager
    public String getLastLoggedInAddress(BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        String dataByBlockchain = this.cryptoPreferenceHelper.getWalletPublicAddresses().getDataByBlockchain(blockchainType);
        return dataByBlockchain == null ? "" : dataByBlockchain;
    }

    @Override // com.smedialink.storage.domain.manager.crypto.CryptoAccessManager
    public boolean isAuthorized(BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        if (!this.wallets.isEmpty()) {
            if (getLastLoggedInGuid().length() > 0) {
                Wallet wallet = this.wallets.get(blockchainType);
                if (Intrinsics.areEqual(wallet == null ? null : wallet.getGuid(), getLastLoggedInGuid())) {
                    if (this.walletPassword.length() > 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // com.smedialink.storage.domain.manager.crypto.CryptoAccessManager
    public boolean isWalletCreated(BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        if (getLastLoggedInGuid().length() > 0) {
            if (getLastLoggedInAddress(blockchainType).length() > 0) {
                return true;
            }
        }
        return false;
    }

    @Override // com.smedialink.storage.domain.manager.crypto.CryptoAccessManager
    public boolean isCurrentBlockchainWalletCreated() {
        return isWalletCreated(this.cryptoPreferenceHelper.getCurrentBlockchainType());
    }

    @Override // com.smedialink.storage.domain.manager.crypto.CryptoAccessManager
    public boolean isAnyWalletCreated() {
        return getLastLoggedInGuid().length() > 0;
    }

    @Override // com.smedialink.storage.domain.manager.crypto.CryptoAccessManager
    public List<BlockchainType> getCreatedWalletsBlockchains() {
        List<BlockchainType> list;
        list = CollectionsKt___CollectionsKt.toList(this.wallets.keySet());
        return list;
    }
}
