package com.iMe.storage.domain.manager.crypto;

import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Wallet;
import java.util.List;
/* compiled from: CryptoAccessManager.kt */
/* loaded from: classes4.dex */
public interface CryptoAccessManager {
    void deleteAllWallets();

    void deleteWallet(BlockchainType blockchainType);

    List<Wallet> getAllWallets();

    Wallet.BTC getBTCWallet();

    List<BlockchainType> getCreatedWalletsBlockchains();

    Wallet.EVM getEVMWallet();

    BlockchainType getFirstBip39PhraseBasedBlockchainType();

    String getLastLoggedInAddress(BlockchainType blockchainType);

    String getLastLoggedInGuid();

    List<BlockchainType> getLoggedInWalletsBlockchains();

    Wallet.TRON getTRONWallet();

    List<BlockchainType> getUnactivatedBip39PhraseBasedBlockchainTypes();

    Wallet getWallet(BlockchainType blockchainType);

    String getWalletPassword();

    boolean isAnyBip39PhraseBasedWalletCreated();

    boolean isAnyWalletCreated();

    boolean isAuthorized(BlockchainType blockchainType);

    boolean isCurrentBlockchainAuthorized();

    boolean isCurrentBlockchainWalletCreated();

    boolean isWalletCreated(BlockchainType blockchainType);

    void logoutAllWallets();

    void setWallet(Wallet wallet2, String str);
}
