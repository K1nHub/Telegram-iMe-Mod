package com.smedialink.storage.domain.repository.crypto;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.model.crypto.CryptoWalletInfo;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import io.reactivex.Observable;
/* compiled from: CryptoWalletRepository.kt */
/* loaded from: classes3.dex */
public interface CryptoWalletRepository {
    Observable<Result<Boolean>> clearTokensData(BlockchainType blockchainType);

    Observable<Result<CryptoWalletInfo>> getLinkedCryptoWalletInfo();

    Observable<Result<Boolean>> linkWallet(String str, NetworkType networkType, String str2);

    Observable<Result<Boolean>> unlinkWallet(NetworkType networkType);
}
