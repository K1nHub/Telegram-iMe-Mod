package com.iMe.storage.domain.repository.crypto;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.CryptoWalletsInfo;
import io.reactivex.Observable;
import java.util.Map;
/* compiled from: CryptoWalletRepository.kt */
/* loaded from: classes4.dex */
public interface CryptoWalletRepository {
    Observable<Result<Boolean>> clearAllTokensData();

    Observable<Result<Boolean>> clearTokensData(BlockchainType blockchainType);

    Observable<Result<CryptoWalletsInfo>> getLinkedCryptoWalletInfo();

    Observable<Result<Boolean>> linkWallets(Map<BlockchainType, String> map);

    Observable<Result<Boolean>> unlinkWallet(BlockchainType blockchainType);
}
