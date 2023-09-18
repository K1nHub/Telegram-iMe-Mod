package com.iMe.storage.data.repository.crypto.donations;

import com.iMe.storage.data.datasource.transfer.WalletTransferDataSourceFactory;
import com.iMe.storage.data.mapper.crypto.DonationMappingKt;
import com.iMe.storage.data.mapper.wallet.TokenMappingKt;
import com.iMe.storage.data.mapper.wallet.WalletBalanceMappingKt;
import com.iMe.storage.data.mapper.wallet.WalletTransactionMappingKt;
import com.iMe.storage.data.network.api.own.DonationsApi;
import com.iMe.storage.data.network.handlers.ErrorHandler;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.crypto.donations.GetDonationInfoRequest;
import com.iMe.storage.data.network.model.request.crypto.donations.GetDonationTransactionsRequest;
import com.iMe.storage.data.network.model.request.crypto.donations.GetDonationWalletBalanceRequest;
import com.iMe.storage.data.network.model.request.crypto.donations.LinkDonationWalletRequest;
import com.iMe.storage.data.network.model.request.crypto.donations.PrepareDonationTransactionRequest;
import com.iMe.storage.data.network.model.request.crypto.donations.SendDonationTransactionRequest;
import com.iMe.storage.data.network.model.request.crypto.donations.UnlinkDonationWalletRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.donations.DataForDonationTransactionResponse;
import com.iMe.storage.data.network.model.response.crypto.donations.GetDonationWalletInfoResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.RemoteWalletInfoResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.TransactionResponse;
import com.iMe.storage.data.network.model.response.wallet.WalletBalancesResponse;
import com.iMe.storage.data.network.model.response.wallet.WalletTransactionsResponse;
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
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DonationsRepositoryImpl.kt */
/* loaded from: classes4.dex */
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
        Observable<ApiBaseResponse<Object>> linkEtherWallet = this.donationsApi.linkEtherWallet(new LinkDonationWalletRequest(String.valueOf(j), z, address, null, 8, null));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = linkEtherWallet.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<Object>, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.crypto.donations.DonationsRepositoryImpl$enableDonationFor$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Boolean> invoke(ApiBaseResponse<Object> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(Boolean.TRUE);
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.crypto.donations.DonationsRepositoryImpl$enableDonationFor$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Boolean> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.donations.DonationsRepository
    public Observable<Result<Boolean>> disableDonation(long j) {
        Observable<ApiBaseResponse<Object>> unlinkEtherWallet = this.donationsApi.unlinkEtherWallet(new UnlinkDonationWalletRequest(String.valueOf(j), null, 2, null));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = unlinkEtherWallet.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<Object>, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.crypto.donations.DonationsRepositoryImpl$disableDonation$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Boolean> invoke(ApiBaseResponse<Object> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(Boolean.TRUE);
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.crypto.donations.DonationsRepositoryImpl$disableDonation$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Boolean> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.donations.DonationsRepository
    public Observable<Result<String>> getDonationAddress(long j) {
        Observable<ApiBaseResponse<GetDonationWalletInfoResponse>> chatInfo = this.donationsApi.getChatInfo(new GetDonationInfoRequest(String.valueOf(j)));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = chatInfo.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<GetDonationWalletInfoResponse>, Result<? extends String>>() { // from class: com.iMe.storage.data.repository.crypto.donations.DonationsRepositoryImpl$getDonationAddress$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<String> invoke(ApiBaseResponse<GetDonationWalletInfoResponse> response) {
                Object obj;
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                Iterator<T> it = response.getPayload().getWallets().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        obj = null;
                        break;
                    }
                    obj = it.next();
                    if (Intrinsics.areEqual(((RemoteWalletInfoResponse) obj).getPlatform(), BlockchainType.EVM.getBackendName())) {
                        break;
                    }
                }
                RemoteWalletInfoResponse remoteWalletInfoResponse = (RemoteWalletInfoResponse) obj;
                String address = remoteWalletInfoResponse != null ? remoteWalletInfoResponse.getAddress() : null;
                if (address == null) {
                    address = "";
                }
                return Result.Companion.success(address);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<String>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends String>>() { // from class: com.iMe.storage.data.repository.crypto.donations.DonationsRepositoryImpl$getDonationAddress$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<String> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.donations.DonationsRepository
    public Observable<Result<TokenBalance>> getDonationWalletBalance(long j, String networkId) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Observable<ApiBaseResponse<WalletBalancesResponse>> donationWalletBalance = this.donationsApi.getDonationWalletBalance(new GetDonationWalletBalanceRequest(String.valueOf(j), networkId));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = donationWalletBalance.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<WalletBalancesResponse>, Result<? extends TokenBalance>>() { // from class: com.iMe.storage.data.repository.crypto.donations.DonationsRepositoryImpl$getDonationWalletBalance$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<TokenBalance> invoke(ApiBaseResponse<WalletBalancesResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success((TokenBalance) CollectionsKt.first((List<? extends Object>) WalletBalanceMappingKt.mapToDomain(response.getPayload())));
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<TokenBalance>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends TokenBalance>>() { // from class: com.iMe.storage.data.repository.crypto.donations.DonationsRepositoryImpl$getDonationWalletBalance$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<TokenBalance> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.donations.DonationsRepository
    public Observable<Result<List<Transaction>>> getDonationTransactionHistory(long j, String str, int i, String networkId) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Observable<ApiBaseResponse<WalletTransactionsResponse>> donationTransactions = this.donationsApi.getDonationTransactions(new GetDonationTransactionsRequest(str, i, networkId, String.valueOf(j)));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = donationTransactions.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<WalletTransactionsResponse>, Result<? extends List<? extends Transaction>>>() { // from class: com.iMe.storage.data.repository.crypto.donations.DonationsRepositoryImpl$getDonationTransactionHistory$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends Transaction>> invoke(ApiBaseResponse<WalletTransactionsResponse> response) {
                int collectionSizeOrDefault;
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                List<WalletTransactionsResponse.WalletTransactionResponse> transactionsData = response.getPayload().getTransactionsData();
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(transactionsData, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                for (WalletTransactionsResponse.WalletTransactionResponse walletTransactionResponse : transactionsData) {
                    arrayList.add(WalletTransactionMappingKt.mapToDomain(walletTransactionResponse));
                }
                return Result.Companion.success(arrayList);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<List<Transaction>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends List<? extends Transaction>>>() { // from class: com.iMe.storage.data.repository.crypto.donations.DonationsRepositoryImpl$getDonationTransactionHistory$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends Transaction>> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.donations.DonationsRepository
    public Observable<Result<Boolean>> sendDonation(final long j, TransferArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<String>> sign = this.transferDataSourceFactory.getDataSource(BlockchainType.EVM).sign(args);
        final Function1<Result<? extends String>, ObservableSource<? extends Result<? extends Boolean>>> function1 = new Function1<Result<? extends String>, ObservableSource<? extends Result<? extends Boolean>>>() { // from class: com.iMe.storage.data.repository.crypto.donations.DonationsRepositoryImpl$sendDonation$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ ObservableSource<? extends Result<? extends Boolean>> invoke(Result<? extends String> result) {
                return invoke2((Result<String>) result);
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final ObservableSource<? extends Result<Boolean>> invoke2(Result<String> result) {
                DonationsApi donationsApi;
                final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler;
                Intrinsics.checkNotNullParameter(result, "result");
                donationsApi = DonationsRepositoryImpl.this.donationsApi;
                String valueOf = String.valueOf(j);
                String data = result.getData();
                if (data == null) {
                    data = "";
                }
                Observable<ApiBaseResponse<TransactionResponse>> sendDonationTransaction = donationsApi.sendDonationTransaction(new SendDonationTransactionRequest(valueOf, data));
                firebaseFunctionsErrorHandler = DonationsRepositoryImpl.this.firebaseErrorHandler;
                ObservableSource map = sendDonationTransaction.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<TransactionResponse>, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.crypto.donations.DonationsRepositoryImpl$sendDonation$1$invoke$$inlined$mapSuccess$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Result<Boolean> invoke(ApiBaseResponse<TransactionResponse> response) {
                        Intrinsics.checkNotNullParameter(response, "response");
                        if (!response.isSuccess()) {
                            return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                        }
                        return Result.Companion.success(Boolean.TRUE);
                    }
                }));
                Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
                return map;
            }
        };
        Observable<R> flatMap = sign.flatMap(new Function() { // from class: com.iMe.storage.data.repository.crypto.donations.DonationsRepositoryImpl$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource sendDonation$lambda$8;
                sendDonation$lambda$8 = DonationsRepositoryImpl.sendDonation$lambda$8(Function1.this, obj);
                return sendDonation$lambda$8;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "override fun sendDonatio…handleError(errorHandler)");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<Boolean>> onErrorReturn = flatMap.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.crypto.donations.DonationsRepositoryImpl$sendDonation$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Boolean> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
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
        Observable<ApiBaseResponse<DataForDonationTransactionResponse>> dataForDonationTransaction = this.donationsApi.getDataForDonationTransaction(new PrepareDonationTransactionRequest(String.valueOf(j), value, TokenMappingKt.mapToRequest(token)));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = dataForDonationTransaction.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<DataForDonationTransactionResponse>, Result<? extends DonationTransferMetadata>>() { // from class: com.iMe.storage.data.repository.crypto.donations.DonationsRepositoryImpl$getDataForDonation$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<DonationTransferMetadata> invoke(ApiBaseResponse<DataForDonationTransactionResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(DonationMappingKt.mapToDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<DonationTransferMetadata>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends DonationTransferMetadata>>() { // from class: com.iMe.storage.data.repository.crypto.donations.DonationsRepositoryImpl$getDataForDonation$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<DonationTransferMetadata> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
