package com.iMe.storage.data.repository.crypto.permission;

import com.iMe.storage.data.locale.prefs.model.CryptoWalletInformationMetadata;
import com.iMe.storage.data.mapper.crypto.CryptoWalletMappingKt;
import com.iMe.storage.data.mapper.crypto.WalletInformationMappingKt;
import com.iMe.storage.data.network.api.own.CryptoWalletApi;
import com.iMe.storage.data.network.api.own.PermissionApi;
import com.iMe.storage.data.network.handlers.ErrorHandler;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.crypto.permission.ManageCryptoPermissionRequest;
import com.iMe.storage.data.network.model.request.crypto.wallet.GetAccountInfoRequest;
import com.iMe.storage.data.network.model.request.crypto.wallet.RequestPermissionRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.AccountInfoResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.CryptoWalletsInfoResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.RequestPermissionsResponse;
import com.iMe.storage.data.utils.extentions.DateExtKt;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.AccountInfo;
import com.iMe.storage.domain.model.crypto.CryptoWalletsInfo;
import com.iMe.storage.domain.model.crypto.permission.PermissionAction;
import com.iMe.storage.domain.repository.crypto.permission.CryptoPermissionRepository;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoPermissionRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class CryptoPermissionRepositoryImpl implements CryptoPermissionRepository {
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final CryptoWalletApi cryptoWalletApi;
    private final ApiErrorHandler errorHandler;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final PermissionApi permissionApi;

    public CryptoPermissionRepositoryImpl(PermissionApi permissionApi, CryptoWalletApi cryptoWalletApi, CryptoPreferenceHelper cryptoPreferenceHelper, FirebaseFunctionsErrorHandler firebaseErrorHandler, ApiErrorHandler errorHandler) {
        Intrinsics.checkNotNullParameter(permissionApi, "permissionApi");
        Intrinsics.checkNotNullParameter(cryptoWalletApi, "cryptoWalletApi");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        this.permissionApi = permissionApi;
        this.cryptoWalletApi = cryptoWalletApi;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.errorHandler = errorHandler;
    }

    @Override // com.iMe.storage.domain.repository.crypto.permission.CryptoPermissionRepository
    public Observable<Result<String>> requestPermission(String userId, PermissionAction action) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(action, "action");
        Observable<ApiBaseResponse<RequestPermissionsResponse>> requestPermission = this.permissionApi.requestPermission(new RequestPermissionRequest(userId, action.name()));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = requestPermission.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<RequestPermissionsResponse>, Result<? extends String>>() { // from class: com.iMe.storage.data.repository.crypto.permission.CryptoPermissionRepositoryImpl$requestPermission$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<String> invoke(ApiBaseResponse<RequestPermissionsResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(response.getPayload().getRequestPermissionId());
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<String>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends String>>() { // from class: com.iMe.storage.data.repository.crypto.permission.CryptoPermissionRepositoryImpl$requestPermission$$inlined$handleError$1
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

    @Override // com.iMe.storage.domain.repository.crypto.permission.CryptoPermissionRepository
    public Observable<Result<AccountInfo>> getAccountInfo(String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Observable<ApiBaseResponse<AccountInfoResponse>> accountInfo = this.permissionApi.getAccountInfo(new GetAccountInfoRequest(userId));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = accountInfo.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<AccountInfoResponse>, Result<? extends AccountInfo>>() { // from class: com.iMe.storage.data.repository.crypto.permission.CryptoPermissionRepositoryImpl$getAccountInfo$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<AccountInfo> invoke(ApiBaseResponse<AccountInfoResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(CryptoWalletMappingKt.mapToDomain(response.getPayload()));
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<AccountInfo>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends AccountInfo>>() { // from class: com.iMe.storage.data.repository.crypto.permission.CryptoPermissionRepositoryImpl$getAccountInfo$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<AccountInfo> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.permission.CryptoPermissionRepository
    public Observable<Result<CryptoWalletsInfo>> getPermissionSettings(boolean z) {
        Observable empty;
        CryptoWalletInformationMetadata walletInfoMetadata = this.cryptoPreferenceHelper.getWalletInfoMetadata();
        if (z || walletInfoMetadata.getWalletInfo() == null) {
            empty = Observable.empty();
        } else {
            empty = Observable.just(Result.Companion.success(walletInfoMetadata.getWalletInfo()));
            Intrinsics.checkNotNullExpressionValue(empty, "just(this)");
        }
        Observable<ApiBaseResponse<CryptoWalletsInfoResponse>> cryptoWalletInfo = this.cryptoWalletApi.getCryptoWalletInfo();
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        ObservableSource map = cryptoWalletInfo.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<CryptoWalletsInfoResponse>, Result<? extends CryptoWalletsInfo>>() { // from class: com.iMe.storage.data.repository.crypto.permission.CryptoPermissionRepositoryImpl$getPermissionSettings$$inlined$mapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CryptoWalletsInfo> invoke(ApiBaseResponse<CryptoWalletsInfoResponse> response) {
                CryptoPreferenceHelper cryptoPreferenceHelper;
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                CryptoWalletsInfo mapToDomain = WalletInformationMappingKt.mapToDomain(response.getPayload());
                cryptoPreferenceHelper = this.cryptoPreferenceHelper;
                cryptoPreferenceHelper.setWalletInfoMetadata(new CryptoWalletInformationMetadata(DateExtKt.now(), mapToDomain));
                return Result.Companion.success(mapToDomain);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable concat = Observable.concat(empty, map);
        Intrinsics.checkNotNullExpressionValue(concat, "concat(\n            if (…              }\n        )");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<CryptoWalletsInfo>> onErrorReturn = concat.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends CryptoWalletsInfo>>() { // from class: com.iMe.storage.data.repository.crypto.permission.CryptoPermissionRepositoryImpl$getPermissionSettings$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CryptoWalletsInfo> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.permission.CryptoPermissionRepository
    public Observable<Result<Boolean>> managePermissionSettings(final boolean z, final List<Long> whitelistUsers) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(whitelistUsers, "whitelistUsers");
        PermissionApi permissionApi = this.permissionApi;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(whitelistUsers, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (Number number : whitelistUsers) {
            arrayList.add(String.valueOf(number.longValue()));
        }
        Observable<ApiBaseResponse<Object>> manageCryptoPermissions = permissionApi.manageCryptoPermissions(new ManageCryptoPermissionRequest(arrayList, z));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = manageCryptoPermissions.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<Object>, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.crypto.permission.CryptoPermissionRepositoryImpl$managePermissionSettings$$inlined$mapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Boolean> invoke(ApiBaseResponse<Object> response) {
                CryptoPreferenceHelper cryptoPreferenceHelper;
                CryptoPreferenceHelper cryptoPreferenceHelper2;
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                cryptoPreferenceHelper = this.cryptoPreferenceHelper;
                CryptoWalletsInfo walletInfo = cryptoPreferenceHelper.getWalletInfoMetadata().getWalletInfo();
                CryptoWalletsInfo copy$default = walletInfo != null ? CryptoWalletsInfo.copy$default(walletInfo, null, z, whitelistUsers, 1, null) : null;
                cryptoPreferenceHelper2 = this.cryptoPreferenceHelper;
                cryptoPreferenceHelper2.setWalletInfoMetadata(new CryptoWalletInformationMetadata(DateExtKt.now(), copy$default));
                return Result.Companion.success(Boolean.TRUE);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.crypto.permission.CryptoPermissionRepositoryImpl$managePermissionSettings$$inlined$handleError$1
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
}
