package com.iMe.storage.domain.interactor.crypto.donations;

import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.donations.DonationTransferMetadata;
import com.iMe.storage.domain.model.crypto.send.TransferArgs;
import com.iMe.storage.domain.model.wallet.token.Token;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.transaction.Transaction;
import com.iMe.storage.domain.repository.crypto.donations.DonationsRepository;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import io.reactivex.Observable;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DonationsInteractor.kt */
/* loaded from: classes3.dex */
public final class DonationsInteractor {
    private final DonationsRepository donationsRepository;
    private final SchedulersProvider schedulersProvider;

    public DonationsInteractor(DonationsRepository donationsRepository, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(donationsRepository, "donationsRepository");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.donationsRepository = donationsRepository;
        this.schedulersProvider = schedulersProvider;
    }

    public final Observable<Result<Boolean>> enableDonationFor(long j, String address, boolean z) {
        Intrinsics.checkNotNullParameter(address, "address");
        Observable<Result<Boolean>> subscribeOn = this.donationsRepository.enableDonationFor(j, address, z).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "donationsRepository\n    …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Boolean>> disableDonation(long j) {
        Observable<Result<Boolean>> subscribeOn = this.donationsRepository.disableDonation(j).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "donationsRepository\n    …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<String>> getDonationAddress(long j) {
        Observable<Result<String>> subscribeOn = this.donationsRepository.getDonationAddress(j).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "donationsRepository\n    …(schedulersProvider.io())");
        return subscribeOn;
    }

    public static /* synthetic */ Observable getDonationWalletBalance$default(DonationsInteractor donationsInteractor, long j, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = NetworksHelper.INSTANCE.getDefault().getId();
        }
        return donationsInteractor.getDonationWalletBalance(j, str);
    }

    public final Observable<Result<TokenBalance>> getDonationWalletBalance(long j, String networkId) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Observable<Result<TokenBalance>> startWith = this.donationsRepository.getDonationWalletBalance(j, networkId).subscribeOn(this.schedulersProvider.mo1014io()).startWith((Observable<Result<TokenBalance>>) Result.Companion.loading$default(Result.Companion, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(startWith, "donationsRepository\n    …artWith(Result.loading())");
        return startWith;
    }

    public static /* synthetic */ Observable getDonationTransactionHistory$default(DonationsInteractor donationsInteractor, long j, String str, int i, String str2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str = null;
        }
        String str3 = str;
        if ((i2 & 4) != 0) {
            i = 30;
        }
        int i3 = i;
        if ((i2 & 8) != 0) {
            str2 = NetworksHelper.INSTANCE.getDefault().getId();
        }
        return donationsInteractor.getDonationTransactionHistory(j, str3, i3, str2);
    }

    public final Observable<Result<List<Transaction>>> getDonationTransactionHistory(long j, String str, int i, String networkId) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Observable<Result<List<Transaction>>> startWith = this.donationsRepository.getDonationTransactionHistory(j, str, i, networkId).subscribeOn(this.schedulersProvider.mo1014io()).startWith((Observable<Result<List<Transaction>>>) Result.Companion.loading$default(Result.Companion, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(startWith, "donationsRepository\n    …artWith(Result.loading())");
        return startWith;
    }

    public final Observable<Result<Boolean>> sendDonation(long j, TransferArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<Boolean>> subscribeOn = this.donationsRepository.sendDonation(j, args).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "donationsRepository\n    …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<DonationTransferMetadata>> getDataForDonation(long j, String value, Token token) {
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(token, "token");
        Observable<Result<DonationTransferMetadata>> subscribeOn = this.donationsRepository.getDataForDonation(j, value, token).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "donationsRepository\n    …(schedulersProvider.io())");
        return subscribeOn;
    }
}
