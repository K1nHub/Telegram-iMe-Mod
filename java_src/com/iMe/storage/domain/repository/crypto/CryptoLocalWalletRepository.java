package com.iMe.storage.domain.repository.crypto;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Wallet;
import io.reactivex.Observable;
import java.util.List;
/* compiled from: CryptoLocalWalletRepository.kt */
/* loaded from: classes4.dex */
public interface CryptoLocalWalletRepository {
    Observable<Result<Wallet>> createWallet(BlockchainType blockchainType);

    Observable<Result<String>> getPasswordByPinCodeWithValidation(String str, BlockchainType blockchainType);

    Observable<Result<Wallet>> importWallet(String str, String str2, String str3, BlockchainType blockchainType);

    Observable<Result<Boolean>> isValidAddress(String str, BlockchainType blockchainType);

    Observable<Result<Boolean>> isValidPasswordForWallet(String str, BlockchainType blockchainType);

    Observable<Result<Boolean>> isValidSeed(String str, BlockchainType blockchainType);

    Observable<Result<List<Wallet>>> unlockAllWallets(String str, String str2, String str3);
}
