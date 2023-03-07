package com.smedialink.storage.domain.manager.crypto;

import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.model.crypto.Wallet;
import java.util.List;
/* compiled from: CryptoAccessManager.kt */
/* loaded from: classes3.dex */
public interface CryptoAccessManager {
    void deleteAllWallets();

    void deleteWallet(BlockchainType blockchainType);

    List<Wallet> getAllWallets();

    List<BlockchainType> getCreatedWalletsBlockchains();

    Wallet.EVM getEVMWallet();

    String getLastLoggedInAddress(BlockchainType blockchainType);

    String getLastLoggedInGuid();

    Wallet getWallet(BlockchainType blockchainType);

    String getWalletPassword();

    boolean isAnyWalletCreated();

    boolean isAuthorized(BlockchainType blockchainType);

    boolean isCurrentBlockchainWalletCreated();

    boolean isWalletCreated(BlockchainType blockchainType);

    void logoutAllWallets();

    void onUserChanged();

    void setWallet(Wallet wallet, String str);
}
