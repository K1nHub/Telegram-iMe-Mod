package com.iMe.storage.data.manager.crypto;

import com.iMe.storage.domain.manager.crypto.BlockchainCryptoWalletManager;
import com.iMe.storage.domain.manager.crypto.CryptoWalletsManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Wallet;
import io.reactivex.Observable;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoWalletsManagerImpl.kt */
/* loaded from: classes4.dex */
public final class CryptoWalletsManagerImpl implements CryptoWalletsManager {
    private final BlockchainCryptoWalletManager btcBlockchainCryptoWalletManagerImpl;
    private final BlockchainCryptoWalletManager evmBlockchainCryptoWalletManager;
    private final BlockchainCryptoWalletManager tonBlockchainCryptoWalletManager;
    private final BlockchainCryptoWalletManager tronBlockchainCryptoWalletManager;

    /* compiled from: CryptoWalletsManagerImpl.kt */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BlockchainType.values().length];
            try {
                iArr[BlockchainType.EVM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BlockchainType.TON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BlockchainType.TRON.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[BlockchainType.BITCOIN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public CryptoWalletsManagerImpl(BlockchainCryptoWalletManager evmBlockchainCryptoWalletManager, BlockchainCryptoWalletManager tonBlockchainCryptoWalletManager, BlockchainCryptoWalletManager tronBlockchainCryptoWalletManager, BlockchainCryptoWalletManager btcBlockchainCryptoWalletManagerImpl) {
        Intrinsics.checkNotNullParameter(evmBlockchainCryptoWalletManager, "evmBlockchainCryptoWalletManager");
        Intrinsics.checkNotNullParameter(tonBlockchainCryptoWalletManager, "tonBlockchainCryptoWalletManager");
        Intrinsics.checkNotNullParameter(tronBlockchainCryptoWalletManager, "tronBlockchainCryptoWalletManager");
        Intrinsics.checkNotNullParameter(btcBlockchainCryptoWalletManagerImpl, "btcBlockchainCryptoWalletManagerImpl");
        this.evmBlockchainCryptoWalletManager = evmBlockchainCryptoWalletManager;
        this.tonBlockchainCryptoWalletManager = tonBlockchainCryptoWalletManager;
        this.tronBlockchainCryptoWalletManager = tronBlockchainCryptoWalletManager;
        this.btcBlockchainCryptoWalletManagerImpl = btcBlockchainCryptoWalletManagerImpl;
    }

    @Override // com.iMe.storage.domain.manager.crypto.CryptoWalletsManager
    public Observable<Result<Wallet>> createWallet(BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        return getWalletManager(blockchainType).createWallet();
    }

    @Override // com.iMe.storage.domain.manager.crypto.CryptoWalletsManager
    public Observable<Result<Wallet>> importWallet(String guid, String mnemonic, String password, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        return getWalletManager(blockchainType).importWallet(guid, mnemonic, password);
    }

    @Override // com.iMe.storage.domain.manager.crypto.CryptoWalletsManager
    public Observable<Result<Wallet>> unlockWallet(String guid, String oldGuid, String mnemonic, String password, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(oldGuid, "oldGuid");
        Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        return getWalletManager(blockchainType).unlockWallet(guid, oldGuid, mnemonic, password);
    }

    @Override // com.iMe.storage.domain.manager.crypto.CryptoWalletsManager
    public void deleteWallet(String guid, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        getWalletManager(blockchainType).deleteWallet(guid);
    }

    @Override // com.iMe.storage.domain.manager.crypto.CryptoWalletsManager
    public Observable<Result<String>> generateAddressByMnemonic(String mnemonic, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        return getWalletManager(blockchainType).generateAddressByMnemonic(mnemonic);
    }

    @Override // com.iMe.storage.domain.manager.crypto.CryptoWalletsManager
    public Observable<Result<Boolean>> isValidAddress(String address, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        return getWalletManager(blockchainType).isValidAddress(address);
    }

    private final BlockchainCryptoWalletManager getWalletManager(BlockchainType blockchainType) {
        int i = WhenMappings.$EnumSwitchMapping$0[blockchainType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return this.btcBlockchainCryptoWalletManagerImpl;
                    }
                    throw new NoWhenBranchMatchedException();
                }
                return this.tronBlockchainCryptoWalletManager;
            }
            return this.tonBlockchainCryptoWalletManager;
        }
        return this.evmBlockchainCryptoWalletManager;
    }
}
