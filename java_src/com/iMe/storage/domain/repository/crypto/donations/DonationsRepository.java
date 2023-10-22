package com.iMe.storage.domain.repository.crypto.donations;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.donations.DonationTransferMetadata;
import com.iMe.storage.domain.model.crypto.send.TransferArgs;
import com.iMe.storage.domain.model.wallet.token.Token;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.transaction.Transaction;
import io.reactivex.Observable;
import java.util.List;
/* compiled from: DonationsRepository.kt */
/* loaded from: classes3.dex */
public interface DonationsRepository {
    Observable<Result<Boolean>> disableDonation(long j);

    Observable<Result<Boolean>> enableDonationFor(long j, String str, boolean z);

    Observable<Result<DonationTransferMetadata>> getDataForDonation(long j, String str, Token token);

    Observable<Result<String>> getDonationAddress(long j);

    Observable<Result<List<Transaction>>> getDonationTransactionHistory(long j, String str, int i, String str2);

    Observable<Result<TokenBalance>> getDonationWalletBalance(long j, String str);

    Observable<Result<Boolean>> sendDonation(long j, TransferArgs transferArgs);
}
