package com.iMe.storage.data.repository.crypto.cryptobox;

import com.iMe.storage.data.datasource.cryptobox.CryptoBoxDataSource;
import com.iMe.storage.data.mapper.cryptobox.CryptoBoxActionMappingKt;
import com.iMe.storage.data.mapper.cryptobox.CryptoBoxCreationRulesMappingKt;
import com.iMe.storage.data.mapper.cryptobox.CryptoBoxInfoMappingKt;
import com.iMe.storage.data.mapper.cryptobox.CryptoBoxParticipationDataMappingKt;
import com.iMe.storage.data.mapper.cryptobox.CryptoBoxParticipationResultMappingKt;
import com.iMe.storage.data.mapper.cryptobox.CryptoBoxTokenApprovalMappingKt;
import com.iMe.storage.data.mapper.cryptobox.CryptoBoxTransactionActionMappingKt;
import com.iMe.storage.data.network.api.own.CryptoBoxApi;
import com.iMe.storage.data.network.handlers.ErrorHandler;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.crypto.cryptobox.CommonCryptoBoxIdRequest;
import com.iMe.storage.data.network.model.request.crypto.cryptobox.CryptoBoxCreationPrepareRequest;
import com.iMe.storage.data.network.model.request.crypto.cryptobox.CryptoBoxCreationRulesRequest;
import com.iMe.storage.data.network.model.request.crypto.cryptobox.CryptoBoxSuspensionPrepareRequest;
import com.iMe.storage.data.network.model.request.crypto.cryptobox.CryptoBoxTokenApprovalInfoRequest;
import com.iMe.storage.data.network.model.request.crypto.cryptobox.CryptoBoxTokenApprovalPrepareRequest;
import com.iMe.storage.data.network.model.request.crypto.cryptobox.CryptoBoxesListRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.cryptobox.CryptoBoxActionResponse;
import com.iMe.storage.data.network.model.response.crypto.cryptobox.CryptoBoxActionsResponse;
import com.iMe.storage.data.network.model.response.crypto.cryptobox.CryptoBoxCreationRulesResponse;
import com.iMe.storage.data.network.model.response.crypto.cryptobox.CryptoBoxInfoResponse;
import com.iMe.storage.data.network.model.response.crypto.cryptobox.CryptoBoxParticipationDataResponse;
import com.iMe.storage.data.network.model.response.crypto.cryptobox.CryptoBoxParticipationResultResponse;
import com.iMe.storage.data.network.model.response.crypto.cryptobox.CryptoBoxResponse;
import com.iMe.storage.data.network.model.response.crypto.cryptobox.CryptoBoxTokenApprovalResponse;
import com.iMe.storage.data.network.model.response.crypto.cryptobox.CryptoBoxTransactionActionResponse;
import com.iMe.storage.data.network.model.response.crypto.cryptobox.CryptoBoxesListResponse;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxAction;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxCreationRules;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxInfo;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxOrderType;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxParticipationData;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxParticipationResult;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTokenApprovalInfo;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTransactionAction;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTransactionArgs;
import com.iMe.storage.domain.repository.crypto.cryptobox.CryptoBoxRepository;
import io.reactivex.Observable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxRepositoryImpl.kt */
/* loaded from: classes4.dex */
public final class CryptoBoxRepositoryImpl implements CryptoBoxRepository {
    private final CryptoBoxApi cryptoBoxApi;
    private final CryptoBoxDataSource cryptoBoxDataSource;
    private final ApiErrorHandler errorHandler;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;

    public CryptoBoxRepositoryImpl(CryptoBoxApi cryptoBoxApi, CryptoBoxDataSource cryptoBoxDataSource, ApiErrorHandler errorHandler, FirebaseFunctionsErrorHandler firebaseErrorHandler) {
        Intrinsics.checkNotNullParameter(cryptoBoxApi, "cryptoBoxApi");
        Intrinsics.checkNotNullParameter(cryptoBoxDataSource, "cryptoBoxDataSource");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        this.cryptoBoxApi = cryptoBoxApi;
        this.cryptoBoxDataSource = cryptoBoxDataSource;
        this.errorHandler = errorHandler;
        this.firebaseErrorHandler = firebaseErrorHandler;
    }

    @Override // com.iMe.storage.domain.repository.crypto.cryptobox.CryptoBoxRepository
    public Observable<Result<CryptoBoxCreationRules>> getCreationRules(String networkId) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Observable<ApiBaseResponse<CryptoBoxCreationRulesResponse>> creationRules = this.cryptoBoxApi.getCreationRules(new CryptoBoxCreationRulesRequest(networkId));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = creationRules.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<CryptoBoxCreationRulesResponse>, Result<? extends CryptoBoxCreationRules>>() { // from class: com.iMe.storage.data.repository.crypto.cryptobox.CryptoBoxRepositoryImpl$getCreationRules$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CryptoBoxCreationRules> invoke(ApiBaseResponse<CryptoBoxCreationRulesResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(CryptoBoxCreationRulesMappingKt.mapToDomain(response.getPayload()));
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<CryptoBoxCreationRules>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends CryptoBoxCreationRules>>() { // from class: com.iMe.storage.data.repository.crypto.cryptobox.CryptoBoxRepositoryImpl$getCreationRules$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CryptoBoxCreationRules> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.cryptobox.CryptoBoxRepository
    public Observable<Result<CryptoBoxTransactionAction>> getCreationPrepareData(String networkId, String tokenAddress, BigDecimal amount, int i) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Intrinsics.checkNotNullParameter(tokenAddress, "tokenAddress");
        Intrinsics.checkNotNullParameter(amount, "amount");
        Observable<ApiBaseResponse<CryptoBoxTransactionActionResponse>> creationPrepareData = this.cryptoBoxApi.getCreationPrepareData(new CryptoBoxCreationPrepareRequest(networkId, tokenAddress, amount, i));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = creationPrepareData.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<CryptoBoxTransactionActionResponse>, Result<? extends CryptoBoxTransactionAction>>() { // from class: com.iMe.storage.data.repository.crypto.cryptobox.CryptoBoxRepositoryImpl$getCreationPrepareData$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CryptoBoxTransactionAction> invoke(ApiBaseResponse<CryptoBoxTransactionActionResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(CryptoBoxTransactionActionMappingKt.mapToDomain(response.getPayload()));
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<CryptoBoxTransactionAction>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends CryptoBoxTransactionAction>>() { // from class: com.iMe.storage.data.repository.crypto.cryptobox.CryptoBoxRepositoryImpl$getCreationPrepareData$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CryptoBoxTransactionAction> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.cryptobox.CryptoBoxRepository
    public Observable<Result<String>> sendCreationExecute(long j, String description, CryptoBoxTransactionArgs args) {
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<String>> sendCreationExecute = this.cryptoBoxDataSource.sendCreationExecute(j, description, args);
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<String>> onErrorReturn = sendCreationExecute.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends String>>() { // from class: com.iMe.storage.data.repository.crypto.cryptobox.CryptoBoxRepositoryImpl$sendCreationExecute$$inlined$handleError$1
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

    @Override // com.iMe.storage.domain.repository.crypto.cryptobox.CryptoBoxRepository
    public Observable<Result<CryptoBoxTokenApprovalInfo>> getApprovalInfo(String networkId, String tokenAddress) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Intrinsics.checkNotNullParameter(tokenAddress, "tokenAddress");
        Observable<ApiBaseResponse<CryptoBoxTokenApprovalResponse>> approvalStatus = this.cryptoBoxApi.getApprovalStatus(new CryptoBoxTokenApprovalInfoRequest(networkId, tokenAddress));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = approvalStatus.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<CryptoBoxTokenApprovalResponse>, Result<? extends CryptoBoxTokenApprovalInfo>>() { // from class: com.iMe.storage.data.repository.crypto.cryptobox.CryptoBoxRepositoryImpl$getApprovalInfo$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CryptoBoxTokenApprovalInfo> invoke(ApiBaseResponse<CryptoBoxTokenApprovalResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(CryptoBoxTokenApprovalMappingKt.mapToDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<CryptoBoxTokenApprovalInfo>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends CryptoBoxTokenApprovalInfo>>() { // from class: com.iMe.storage.data.repository.crypto.cryptobox.CryptoBoxRepositoryImpl$getApprovalInfo$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CryptoBoxTokenApprovalInfo> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.cryptobox.CryptoBoxRepository
    public Observable<Result<CryptoBoxTransactionAction>> getApprovalPrepareData(String networkId, String tokenAddress) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Intrinsics.checkNotNullParameter(tokenAddress, "tokenAddress");
        Observable<ApiBaseResponse<CryptoBoxTransactionActionResponse>> approvalPrepareData = this.cryptoBoxApi.getApprovalPrepareData(new CryptoBoxTokenApprovalPrepareRequest(networkId, tokenAddress));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = approvalPrepareData.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<CryptoBoxTransactionActionResponse>, Result<? extends CryptoBoxTransactionAction>>() { // from class: com.iMe.storage.data.repository.crypto.cryptobox.CryptoBoxRepositoryImpl$getApprovalPrepareData$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CryptoBoxTransactionAction> invoke(ApiBaseResponse<CryptoBoxTransactionActionResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(CryptoBoxTransactionActionMappingKt.mapToDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<CryptoBoxTransactionAction>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends CryptoBoxTransactionAction>>() { // from class: com.iMe.storage.data.repository.crypto.cryptobox.CryptoBoxRepositoryImpl$getApprovalPrepareData$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CryptoBoxTransactionAction> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.cryptobox.CryptoBoxRepository
    public Observable<Result<String>> sendApprovalExecute(CryptoBoxTransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<String>> sendApprovalExecute = this.cryptoBoxDataSource.sendApprovalExecute(args);
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<String>> onErrorReturn = sendApprovalExecute.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends String>>() { // from class: com.iMe.storage.data.repository.crypto.cryptobox.CryptoBoxRepositoryImpl$sendApprovalExecute$$inlined$handleError$1
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

    @Override // com.iMe.storage.domain.repository.crypto.cryptobox.CryptoBoxRepository
    public Observable<Result<List<CryptoBoxInfo>>> getCryptoBoxesList(Long l, String networkId, CryptoBoxOrderType orderStrategy) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Intrinsics.checkNotNullParameter(orderStrategy, "orderStrategy");
        CryptoBoxApi cryptoBoxApi = this.cryptoBoxApi;
        String l2 = l != null ? l.toString() : null;
        String lowerCase = orderStrategy.name().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        Observable<ApiBaseResponse<CryptoBoxesListResponse>> cryptoBoxesList = cryptoBoxApi.getCryptoBoxesList(new CryptoBoxesListRequest(l2, networkId, null, null, null, lowerCase, 28, null));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = cryptoBoxesList.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<CryptoBoxesListResponse>, Result<? extends List<? extends CryptoBoxInfo>>>() { // from class: com.iMe.storage.data.repository.crypto.cryptobox.CryptoBoxRepositoryImpl$getCryptoBoxesList$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends CryptoBoxInfo>> invoke(ApiBaseResponse<CryptoBoxesListResponse> response) {
                int collectionSizeOrDefault;
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                List<CryptoBoxInfoResponse> cryptoboxes = response.getPayload().getCryptoboxes();
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(cryptoboxes, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                for (CryptoBoxInfoResponse cryptoBoxInfoResponse : cryptoboxes) {
                    arrayList.add(CryptoBoxInfoMappingKt.mapToDomain(cryptoBoxInfoResponse));
                }
                return Result.Companion.success(arrayList);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<List<CryptoBoxInfo>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends List<? extends CryptoBoxInfo>>>() { // from class: com.iMe.storage.data.repository.crypto.cryptobox.CryptoBoxRepositoryImpl$getCryptoBoxesList$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends CryptoBoxInfo>> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.cryptobox.CryptoBoxRepository
    public Observable<Result<CryptoBoxInfo>> getCryptoBoxInfo(String boxId) {
        Intrinsics.checkNotNullParameter(boxId, "boxId");
        Observable<ApiBaseResponse<CryptoBoxResponse>> cryptoBoxInfo = this.cryptoBoxApi.getCryptoBoxInfo(new CommonCryptoBoxIdRequest(boxId));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = cryptoBoxInfo.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<CryptoBoxResponse>, Result<? extends CryptoBoxInfo>>() { // from class: com.iMe.storage.data.repository.crypto.cryptobox.CryptoBoxRepositoryImpl$getCryptoBoxInfo$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CryptoBoxInfo> invoke(ApiBaseResponse<CryptoBoxResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(CryptoBoxInfoMappingKt.mapToDomain(response.getPayload().getCryptobox()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<CryptoBoxInfo>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends CryptoBoxInfo>>() { // from class: com.iMe.storage.data.repository.crypto.cryptobox.CryptoBoxRepositoryImpl$getCryptoBoxInfo$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CryptoBoxInfo> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.cryptobox.CryptoBoxRepository
    public Observable<Result<List<CryptoBoxAction>>> getCryptoBoxActions(String boxId) {
        Intrinsics.checkNotNullParameter(boxId, "boxId");
        Observable<ApiBaseResponse<CryptoBoxActionsResponse>> cryptoBoxActions = this.cryptoBoxApi.getCryptoBoxActions(new CommonCryptoBoxIdRequest(boxId));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = cryptoBoxActions.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<CryptoBoxActionsResponse>, Result<? extends List<? extends CryptoBoxAction>>>() { // from class: com.iMe.storage.data.repository.crypto.cryptobox.CryptoBoxRepositoryImpl$getCryptoBoxActions$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends CryptoBoxAction>> invoke(ApiBaseResponse<CryptoBoxActionsResponse> response) {
                int collectionSizeOrDefault;
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                List<CryptoBoxActionResponse> actions = response.getPayload().getActions();
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(actions, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                for (CryptoBoxActionResponse cryptoBoxActionResponse : actions) {
                    arrayList.add(CryptoBoxActionMappingKt.mapToDomain(cryptoBoxActionResponse));
                }
                return Result.Companion.success(arrayList);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<List<CryptoBoxAction>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends List<? extends CryptoBoxAction>>>() { // from class: com.iMe.storage.data.repository.crypto.cryptobox.CryptoBoxRepositoryImpl$getCryptoBoxActions$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends CryptoBoxAction>> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.cryptobox.CryptoBoxRepository
    public Observable<Result<CryptoBoxTransactionAction>> getSuspensionPrepareData(String boxId) {
        Intrinsics.checkNotNullParameter(boxId, "boxId");
        Observable<ApiBaseResponse<CryptoBoxTransactionActionResponse>> suspensionPrepareData = this.cryptoBoxApi.getSuspensionPrepareData(new CryptoBoxSuspensionPrepareRequest(boxId));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = suspensionPrepareData.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<CryptoBoxTransactionActionResponse>, Result<? extends CryptoBoxTransactionAction>>() { // from class: com.iMe.storage.data.repository.crypto.cryptobox.CryptoBoxRepositoryImpl$getSuspensionPrepareData$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CryptoBoxTransactionAction> invoke(ApiBaseResponse<CryptoBoxTransactionActionResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(CryptoBoxTransactionActionMappingKt.mapToDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<CryptoBoxTransactionAction>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends CryptoBoxTransactionAction>>() { // from class: com.iMe.storage.data.repository.crypto.cryptobox.CryptoBoxRepositoryImpl$getSuspensionPrepareData$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CryptoBoxTransactionAction> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.cryptobox.CryptoBoxRepository
    public Observable<Result<String>> sendSuspensionExecute(CryptoBoxTransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<String>> sendSuspensionExecute = this.cryptoBoxDataSource.sendSuspensionExecute(args);
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<String>> onErrorReturn = sendSuspensionExecute.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends String>>() { // from class: com.iMe.storage.data.repository.crypto.cryptobox.CryptoBoxRepositoryImpl$sendSuspensionExecute$$inlined$handleError$1
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

    @Override // com.iMe.storage.domain.repository.crypto.cryptobox.CryptoBoxRepository
    public Observable<Result<Boolean>> sendMessageRefresh(String boxId) {
        Intrinsics.checkNotNullParameter(boxId, "boxId");
        Observable<ApiBaseResponse<Object>> sendMessageRefresh = this.cryptoBoxApi.sendMessageRefresh(new CommonCryptoBoxIdRequest(boxId));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = sendMessageRefresh.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<Object>, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.crypto.cryptobox.CryptoBoxRepositoryImpl$sendMessageRefresh$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Boolean> invoke(ApiBaseResponse<Object> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(Boolean.TRUE);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.crypto.cryptobox.CryptoBoxRepositoryImpl$sendMessageRefresh$$inlined$handleError$1
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

    @Override // com.iMe.storage.domain.repository.crypto.cryptobox.CryptoBoxRepository
    public Observable<Result<CryptoBoxParticipationData>> getParticipationData(String boxId) {
        Intrinsics.checkNotNullParameter(boxId, "boxId");
        Observable<ApiBaseResponse<CryptoBoxParticipationDataResponse>> participationData = this.cryptoBoxApi.getParticipationData(new CommonCryptoBoxIdRequest(boxId));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = participationData.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<CryptoBoxParticipationDataResponse>, Result<? extends CryptoBoxParticipationData>>() { // from class: com.iMe.storage.data.repository.crypto.cryptobox.CryptoBoxRepositoryImpl$getParticipationData$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CryptoBoxParticipationData> invoke(ApiBaseResponse<CryptoBoxParticipationDataResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(CryptoBoxParticipationDataMappingKt.mapToDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<CryptoBoxParticipationData>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends CryptoBoxParticipationData>>() { // from class: com.iMe.storage.data.repository.crypto.cryptobox.CryptoBoxRepositoryImpl$getParticipationData$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CryptoBoxParticipationData> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.cryptobox.CryptoBoxRepository
    public Observable<Result<CryptoBoxParticipationResult>> participate(String boxId) {
        Intrinsics.checkNotNullParameter(boxId, "boxId");
        Observable<ApiBaseResponse<CryptoBoxParticipationResultResponse>> participate = this.cryptoBoxApi.participate(new CommonCryptoBoxIdRequest(boxId));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = participate.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<CryptoBoxParticipationResultResponse>, Result<? extends CryptoBoxParticipationResult>>() { // from class: com.iMe.storage.data.repository.crypto.cryptobox.CryptoBoxRepositoryImpl$participate$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CryptoBoxParticipationResult> invoke(ApiBaseResponse<CryptoBoxParticipationResultResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(CryptoBoxParticipationResultMappingKt.mapToDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<CryptoBoxParticipationResult>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends CryptoBoxParticipationResult>>() { // from class: com.iMe.storage.data.repository.crypto.cryptobox.CryptoBoxRepositoryImpl$participate$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CryptoBoxParticipationResult> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
