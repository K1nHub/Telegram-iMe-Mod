package com.smedialink.storage.data.repository.crypto.donations;

import com.smedialink.storage.data.datasource.transfer.WalletTransferDataSourceFactory;
import com.smedialink.storage.data.mapper.crypto.DonationMappingKt;
import com.smedialink.storage.data.mapper.wallet.WalletBalanceMappingKt;
import com.smedialink.storage.data.mapper.wallet.WalletTransactionMappingKt;
import com.smedialink.storage.data.network.api.own.DonationsApi;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.request.crypto.donations.GetDataForDonationTransactionRequest;
import com.smedialink.storage.data.network.model.request.crypto.donations.GetDonationInfoRequest;
import com.smedialink.storage.data.network.model.request.crypto.donations.GetDonationTransactionsRequest;
import com.smedialink.storage.data.network.model.request.crypto.donations.GetDonationWalletBalanceRequest;
import com.smedialink.storage.data.network.model.request.crypto.donations.LinkDonationWalletRequest;
import com.smedialink.storage.data.network.model.request.crypto.donations.SendDonationTransactionRequest;
import com.smedialink.storage.data.network.model.request.crypto.donations.UnlinkDonationWalletRequest;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.crypto.donations.DataForDonationTransactionResponse;
import com.smedialink.storage.data.network.model.response.crypto.donations.GetChatInfoResponse;
import com.smedialink.storage.data.network.model.response.crypto.donations.IsDonationsEnableResponse;
import com.smedialink.storage.data.network.model.response.crypto.wallet.TransactionResponse;
import com.smedialink.storage.data.network.model.response.wallet.WalletBalancesResponse;
import com.smedialink.storage.data.network.model.response.wallet.WalletTransactionsResponse;
import com.smedialink.storage.data.utils.extentions.RxExtKt$handleError$1;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.donations.DonationTransferMetadata;
import com.smedialink.storage.domain.model.crypto.send.TransferArgs;
import com.smedialink.storage.domain.model.wallet.token.TokenBalance;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import com.smedialink.storage.domain.model.wallet.transaction.Transaction;
import com.smedialink.storage.domain.repository.crypto.donations.DonationsRepository;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
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

    @Override // com.smedialink.storage.domain.repository.crypto.donations.DonationsRepository
    public Observable<Result<Boolean>> enableDonationFor(long j, String address, boolean z) {
        Intrinsics.checkNotNullParameter(address, "address");
        Observable<ApiBaseResponse<Object>> linkEtherWallet = this.donationsApi.linkEtherWallet(new LinkDonationWalletRequest(String.valueOf(j), z, address));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = linkEtherWallet.map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.donations.DonationsRepositoryImpl$enableDonationFor$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(Boolean.TRUE);
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.donations.DonationsRepository
    public Observable<Result<Boolean>> disableDonation(long j) {
        Observable<ApiBaseResponse<Object>> unlinkEtherWallet = this.donationsApi.unlinkEtherWallet(new UnlinkDonationWalletRequest(String.valueOf(j)));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = unlinkEtherWallet.map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.donations.DonationsRepositoryImpl$disableDonation$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(Boolean.TRUE);
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.donations.DonationsRepository
    public Observable<Result<Boolean>> isDonationsEnabled(long j) {
        Observable<ApiBaseResponse<IsDonationsEnableResponse>> isDonationsEnable = this.donationsApi.isDonationsEnable(new GetDonationInfoRequest(String.valueOf(j)));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = isDonationsEnable.map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.donations.DonationsRepositoryImpl$isDonationsEnabled$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(Boolean.valueOf(((IsDonationsEnableResponse) response.getPayload()).isDonationEnabled()));
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.donations.DonationsRepository
    public Observable<Result<String>> getDonationAddress(long j) {
        Observable<ApiBaseResponse<GetChatInfoResponse>> chatInfo = this.donationsApi.getChatInfo(new GetDonationInfoRequest(String.valueOf(j)));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = chatInfo.map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.donations.DonationsRepositoryImpl$getDonationAddress$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(((GetChatInfoResponse) response.getPayload()).getDonationEtherWalletAddress());
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<String>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.donations.DonationsRepository
    public Observable<Result<TokenBalance>> getDonationWalletBalance(long j, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Observable<ApiBaseResponse<WalletBalancesResponse>> donationWalletBalance = this.donationsApi.getDonationWalletBalance(new GetDonationWalletBalanceRequest(String.valueOf(j), networkType.name()));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = donationWalletBalance.map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.donations.DonationsRepositoryImpl$getDonationWalletBalance$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                List sortedWith;
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                List<TokenBalance> mapToDomain = WalletBalanceMappingKt.mapToDomain((WalletBalancesResponse) response.getPayload());
                ArrayList arrayList = new ArrayList();
                for (T t : mapToDomain) {
                    if (((TokenBalance) t).getCode() != TokenCode.UNKNOWN) {
                        arrayList.add(t);
                    }
                }
                sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.smedialink.storage.data.repository.crypto.donations.DonationsRepositoryImpl$getDonationWalletBalance$lambda-6$$inlined$sortedBy$1
                    @Override // java.util.Comparator
                    public final int compare(T t2, T t3) {
                        int compareValues;
                        TokenInfo.Companion companion = TokenInfo.Companion;
                        compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(companion.map(((TokenBalance) t2).getCode()).getSortPosition()), Integer.valueOf(companion.map(((TokenBalance) t3).getCode()).getSortPosition()));
                        return compareValues;
                    }
                });
                return Result.Companion.success((TokenBalance) CollectionsKt.first((List<? extends Object>) sortedWith));
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<TokenBalance>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.donations.DonationsRepository
    public Observable<Result<List<Transaction>>> getDonationTransactionHistory(long j, String str, int i, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Observable<ApiBaseResponse<WalletTransactionsResponse>> donationTransactions = this.donationsApi.getDonationTransactions(new GetDonationTransactionsRequest(str, i, networkType.name(), String.valueOf(j)));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = donationTransactions.map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.donations.DonationsRepositoryImpl$getDonationTransactionHistory$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                int collectionSizeOrDefault;
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                List<WalletTransactionsResponse.WalletTransactionResponse> transactionsData = ((WalletTransactionsResponse) response.getPayload()).getTransactionsData();
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(transactionsData, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                for (WalletTransactionsResponse.WalletTransactionResponse walletTransactionResponse : transactionsData) {
                    arrayList.add(WalletTransactionMappingKt.mapToDomain(walletTransactionResponse));
                }
                return Result.Companion.success(arrayList);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<List<Transaction>>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.donations.DonationsRepository
    public Observable<Result<Boolean>> sendDonation(final long j, TransferArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<R> flatMap = this.transferDataSourceFactory.getDataSource(TokenCode.LIME).sign(args).flatMap(new Function() { // from class: com.smedialink.storage.data.repository.crypto.donations.DonationsRepositoryImpl$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource m1362sendDonation$lambda10;
                m1362sendDonation$lambda10 = DonationsRepositoryImpl.m1362sendDonation$lambda10(DonationsRepositoryImpl.this, j, (Result) obj);
                return m1362sendDonation$lambda10;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "transferDataSourceFactor…e }\n                    }");
        Observable<Result<Boolean>> onErrorReturn = flatMap.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sendDonation$lambda-10  reason: not valid java name */
    public static final ObservableSource m1362sendDonation$lambda10(DonationsRepositoryImpl this$0, long j, Result result) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(result, "result");
        DonationsApi donationsApi = this$0.donationsApi;
        String valueOf = String.valueOf(j);
        String str = (String) result.getData();
        if (str == null) {
            str = "";
        }
        Observable<ApiBaseResponse<TransactionResponse>> sendDonationTransaction = donationsApi.sendDonationTransaction(new SendDonationTransactionRequest(valueOf, str));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this$0.firebaseErrorHandler;
        ObservableSource map = sendDonationTransaction.map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.donations.DonationsRepositoryImpl$sendDonation$lambda-10$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(Boolean.TRUE);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        return map;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.donations.DonationsRepository
    public Observable<Result<DonationTransferMetadata>> getDataForDonation(long j, String value, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Observable<ApiBaseResponse<DataForDonationTransactionResponse>> dataForDonationTransaction = this.donationsApi.getDataForDonationTransaction(new GetDataForDonationTransactionRequest(value, String.valueOf(j), networkType.name()));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = dataForDonationTransaction.map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.donations.DonationsRepositoryImpl$getDataForDonation$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(DonationMappingKt.mapToDomain((DataForDonationTransactionResponse) response.getPayload()));
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<DonationTransferMetadata>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
