package com.iMe.storage.domain.manager.crypto;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Wallet;
import io.reactivex.Observable;
/* compiled from: CryptoWalletsManager.kt */
/* loaded from: classes3.dex */
public interface CryptoWalletsManager {
    Observable<Result<Wallet>> createWallet(String str, String str2, BlockchainType blockchainType);

    void deleteWallet(String str, BlockchainType blockchainType);

    Observable<Result<String>> generateAddressByMnemonic(String str, BlockchainType blockchainType);

    Observable<Result<String>> generateMnemonic(String str, String str2, BlockchainType blockchainType);

    Observable<Result<Wallet>> importWallet(String str, String str2, String str3, BlockchainType blockchainType);

    Observable<Result<Boolean>> isValidAddress(String str, BlockchainType blockchainType);

    Observable<Result<Wallet>> unlockWallet(String str, String str2, String str3, String str4, BlockchainType blockchainType);
}
