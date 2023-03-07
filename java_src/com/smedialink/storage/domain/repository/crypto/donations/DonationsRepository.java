package com.smedialink.storage.domain.repository.crypto.donations;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.donations.DonationTransferMetadata;
import com.smedialink.storage.domain.model.crypto.send.TransferArgs;
import com.smedialink.storage.domain.model.wallet.token.TokenBalance;
import com.smedialink.storage.domain.model.wallet.transaction.Transaction;
import io.reactivex.Observable;
import java.util.List;
/* compiled from: DonationsRepository.kt */
/* loaded from: classes3.dex */
public interface DonationsRepository {
    Observable<Result<Boolean>> disableDonation(long j);

    Observable<Result<Boolean>> enableDonationFor(long j, String str, boolean z);

    Observable<Result<DonationTransferMetadata>> getDataForDonation(long j, String str, NetworkType networkType);

    Observable<Result<String>> getDonationAddress(long j);

    Observable<Result<List<Transaction>>> getDonationTransactionHistory(long j, String str, int i, NetworkType networkType);

    Observable<Result<TokenBalance>> getDonationWalletBalance(long j, NetworkType networkType);

    Observable<Result<Boolean>> isDonationsEnabled(long j);

    Observable<Result<Boolean>> sendDonation(long j, TransferArgs transferArgs);
}
