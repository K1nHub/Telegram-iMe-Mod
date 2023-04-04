package com.iMe.storage.domain.repository.wallet;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.crypto.send.CryptoTransferMetadata;
import com.iMe.storage.domain.model.crypto.send.TransferArgs;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.model.wallet.transaction.Transaction;
import io.reactivex.Observable;
import java.util.List;
/* compiled from: WalletRepository.kt */
/* loaded from: classes3.dex */
public interface WalletRepository {
    Observable<Result<Boolean>> activateWallet();

    Observable<Result<CryptoTransferMetadata>> getCryptoTransferMetadata(TokenCode tokenCode, String str, String str2, NetworkType networkType);

    Observable<Result<List<TokenBalance>>> getTokensBalance(List<? extends TokenCode> list, boolean z, NetworkType networkType);

    Observable<Result<List<TokenBalance>>> getWalletBalance(boolean z, NetworkType networkType);

    Observable<Result<List<Transaction>>> getWalletTransactionHistory(boolean z, String str, TokenCode tokenCode, int i, NetworkType networkType);

    Observable<Result<Boolean>> sendTokens(TokenCode tokenCode, TransferArgs transferArgs, BlockchainType blockchainType);
}
