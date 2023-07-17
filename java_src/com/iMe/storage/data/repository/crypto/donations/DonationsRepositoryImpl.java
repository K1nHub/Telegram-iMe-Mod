package com.iMe.storage.data.repository.crypto.donations;

import com.iMe.storage.data.datasource.transfer.WalletTransferDataSourceFactory;
import com.iMe.storage.data.mapper.wallet.TokenMappingKt;
import com.iMe.storage.data.network.api.own.DonationsApi;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.crypto.donations.GetDonationInfoRequest;
import com.iMe.storage.data.network.model.request.crypto.donations.GetDonationTransactionsRequest;
import com.iMe.storage.data.network.model.request.crypto.donations.GetDonationWalletBalanceRequest;
import com.iMe.storage.data.network.model.request.crypto.donations.LinkDonationWalletRequest;
import com.iMe.storage.data.network.model.request.crypto.donations.PrepareDonationTransactionRequest;
import com.iMe.storage.data.network.model.request.crypto.donations.UnlinkDonationWalletRequest;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.donations.DonationTransferMetadata;
import com.iMe.storage.domain.model.crypto.send.TransferArgs;
import com.iMe.storage.domain.model.wallet.token.Token;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.transaction.Transaction;
import com.iMe.storage.domain.repository.crypto.donations.DonationsRepository;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DonationsRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class DonationsRepositoryImpl implements DonationsRepository {
    private final DonationsApi donationsApi;
    private final ApiErrorHandler errorHandler;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final WalletTransferDataSourceFactory transferDataSourceFactory;

    public DonationsRepositoryImpl(DonationsApi donationsApi, WalletTransferDataSourceFactory transferDataSourceFactory, FirebaseFunctionsErrorHandler firebaseErrorHandler, ApiErrorHandler errorHandler) {
        Intrinsics.checkNotNullParameter(donationsApi, "donationsApi");
        Intrinsics.checkNotNullParameter(transferDataSourceFactory, "transferDataSourceFactory");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        this.donationsApi = donationsApi;
        this.transferDataSourceFactory = transferDataSourceFactory;
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.errorHandler = errorHandler;
    }

    @Override // com.iMe.storage.domain.repository.crypto.donations.DonationsRepository
    public Observable<Result<Boolean>> enableDonationFor(long j, String address, boolean z) {
        Intrinsics.checkNotNullParameter(address, "address");
        Observable<R> map = this.donationsApi.linkEtherWallet(new LinkDonationWalletRequest(String.valueOf(j), z, address, null, 8, null)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new DonationsRepositoryImpl$enableDonationFor$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new DonationsRepositoryImpl$enableDonationFor$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.donations.DonationsRepository
    public Observable<Result<Boolean>> disableDonation(long j) {
        Observable<R> map = this.donationsApi.unlinkEtherWallet(new UnlinkDonationWalletRequest(String.valueOf(j), null, 2, null)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new DonationsRepositoryImpl$disableDonation$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new DonationsRepositoryImpl$disableDonation$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.donations.DonationsRepository
    public Observable<Result<Boolean>> isDonationsEnabled(long j) {
        Observable<R> map = this.donationsApi.isDonationsEnable(new GetDonationInfoRequest(String.valueOf(j))).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new DonationsRepositoryImpl$isDonationsEnabled$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1888x2b7073f1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.donations.DonationsRepository
    public Observable<Result<String>> getDonationAddress(long j) {
        Observable<R> map = this.donationsApi.getChatInfo(new GetDonationInfoRequest(String.valueOf(j))).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new DonationsRepositoryImpl$getDonationAddress$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<String>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1883x8512a60f(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.donations.DonationsRepository
    public Observable<Result<TokenBalance>> getDonationWalletBalance(long j, String networkId) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Observable<R> map = this.donationsApi.getDonationWalletBalance(new GetDonationWalletBalanceRequest(String.valueOf(j), networkId)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1887x958a7381(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<TokenBalance>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1886xfecbb540(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.donations.DonationsRepository
    public Observable<Result<List<Transaction>>> getDonationTransactionHistory(long j, String str, int i, String networkId) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Observable<R> map = this.donationsApi.getDonationTransactions(new GetDonationTransactionsRequest(str, i, networkId, String.valueOf(j))).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1885xde86f9b2(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<List<Transaction>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1884xd55ff52f(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.donations.DonationsRepository
    public Observable<Result<Boolean>> sendDonation(long j, TransferArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<String>> sign = this.transferDataSourceFactory.getDataSource(BlockchainType.EVM).sign(args);
        final DonationsRepositoryImpl$sendDonation$1 donationsRepositoryImpl$sendDonation$1 = new DonationsRepositoryImpl$sendDonation$1(this, j);
        Observable<R> flatMap = sign.flatMap(new Function() { // from class: com.iMe.storage.data.repository.crypto.donations.DonationsRepositoryImpl$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource sendDonation$lambda$8;
                sendDonation$lambda$8 = DonationsRepositoryImpl.sendDonation$lambda$8(Function1.this, obj);
                return sendDonation$lambda$8;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "override fun sendDonatio…handleError(errorHandler)");
        Observable<Result<Boolean>> onErrorReturn = flatMap.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new DonationsRepositoryImpl$sendDonation$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource sendDonation$lambda$8(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    @Override // com.iMe.storage.domain.repository.crypto.donations.DonationsRepository
    public Observable<Result<DonationTransferMetadata>> getDataForDonation(long j, String value, Token token) {
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(token, "token");
        Observable<R> map = this.donationsApi.getDataForDonationTransaction(new PrepareDonationTransactionRequest(String.valueOf(j), value, TokenMappingKt.mapToRequest(token))).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new DonationsRepositoryImpl$getDataForDonation$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<DonationTransferMetadata>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1882xb40a93c0(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
