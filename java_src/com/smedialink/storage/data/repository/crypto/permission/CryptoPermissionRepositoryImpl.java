package com.smedialink.storage.data.repository.crypto.permission;

import com.smedialink.storage.data.locale.prefs.model.CryptoWalletInformationMetadata;
import com.smedialink.storage.data.mapper.crypto.CryptoWalletMappingKt;
import com.smedialink.storage.data.mapper.crypto.WalletInformationMappingKt;
import com.smedialink.storage.data.network.api.own.CryptoWalletApi;
import com.smedialink.storage.data.network.api.own.PermissionApi;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.request.crypto.permission.ManageCryptoPermissionRequest;
import com.smedialink.storage.data.network.model.request.crypto.wallet.GetAccountInfoRequest;
import com.smedialink.storage.data.network.model.request.crypto.wallet.RequestPermissionRequest;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.crypto.wallet.AccountInfoResponse;
import com.smedialink.storage.data.network.model.response.crypto.wallet.CryptoWalletInfoResponse;
import com.smedialink.storage.data.network.model.response.crypto.wallet.RequestPermissionsResponse;
import com.smedialink.storage.data.utils.extentions.DateExtKt;
import com.smedialink.storage.data.utils.extentions.RxExtKt$handleError$1;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.AccountInfo;
import com.smedialink.storage.domain.model.crypto.CryptoWalletInfo;
import com.smedialink.storage.domain.model.crypto.permission.PermissionAction;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.repository.crypto.permission.CryptoPermissionRepository;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
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

    @Override // com.smedialink.storage.domain.repository.crypto.permission.CryptoPermissionRepository
    public Observable<Result<String>> requestPermission(String userId, PermissionAction action) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(action, "action");
        Observable<ApiBaseResponse<RequestPermissionsResponse>> requestPermission = this.permissionApi.requestPermission(new RequestPermissionRequest(userId, action.name()));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = requestPermission.map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.permission.CryptoPermissionRepositoryImpl$requestPermission$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(((RequestPermissionsResponse) response.getPayload()).getRequestPermissionId());
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<String>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.permission.CryptoPermissionRepository
    public Observable<Result<AccountInfo>> getAccountInfo(String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Observable<ApiBaseResponse<AccountInfoResponse>> accountInfo = this.permissionApi.getAccountInfo(new GetAccountInfoRequest(userId));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = accountInfo.map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.permission.CryptoPermissionRepositoryImpl$getAccountInfo$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(CryptoWalletMappingKt.mapToDomain((AccountInfoResponse) response.getPayload()));
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<AccountInfo>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.permission.CryptoPermissionRepository
    public Observable<Result<CryptoWalletInfo>> getPermissionSettings(boolean z) {
        Observable empty;
        CryptoWalletInformationMetadata walletInfoMetadata = this.cryptoPreferenceHelper.getWalletInfoMetadata();
        if (z || walletInfoMetadata.getWalletInfo() == null) {
            empty = Observable.empty();
        } else {
            empty = Observable.just(Result.Companion.success(walletInfoMetadata.getWalletInfo()));
            Intrinsics.checkNotNullExpressionValue(empty, "just(this)");
        }
        Observable<ApiBaseResponse<CryptoWalletInfoResponse>> cryptoWalletInfo = this.cryptoWalletApi.getCryptoWalletInfo();
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        ObservableSource map = cryptoWalletInfo.map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.permission.CryptoPermissionRepositoryImpl$getPermissionSettings$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                CryptoPreferenceHelper cryptoPreferenceHelper;
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                CryptoWalletInfo mapToDomain = WalletInformationMappingKt.mapToDomain((CryptoWalletInfoResponse) response.getPayload());
                cryptoPreferenceHelper = this.cryptoPreferenceHelper;
                cryptoPreferenceHelper.setWalletInfoMetadata(new CryptoWalletInformationMetadata(DateExtKt.now(), mapToDomain));
                return Result.Companion.success(mapToDomain);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable concat = Observable.concat(empty, map);
        Intrinsics.checkNotNullExpressionValue(concat, "concat(\n                …              }\n        )");
        Observable<Result<CryptoWalletInfo>> onErrorReturn = concat.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.permission.CryptoPermissionRepository
    public Observable<Result<Boolean>> managePermissionSettings(TokenCode type, final boolean z, final List<Long> whitelistUsers) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(whitelistUsers, "whitelistUsers");
        PermissionApi permissionApi = this.permissionApi;
        String name = type.getName();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(whitelistUsers, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (Number number : whitelistUsers) {
            arrayList.add(String.valueOf(number.longValue()));
        }
        Observable<ApiBaseResponse<Object>> manageCryptoPermissions = permissionApi.manageCryptoPermissions(new ManageCryptoPermissionRequest(arrayList, z, name));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = manageCryptoPermissions.map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.permission.CryptoPermissionRepositoryImpl$managePermissionSettings$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                CryptoPreferenceHelper cryptoPreferenceHelper;
                CryptoPreferenceHelper cryptoPreferenceHelper2;
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                cryptoPreferenceHelper = this.cryptoPreferenceHelper;
                CryptoWalletInfo walletInfo = cryptoPreferenceHelper.getWalletInfoMetadata().getWalletInfo();
                CryptoWalletInfo copy$default = walletInfo != null ? CryptoWalletInfo.copy$default(walletInfo, null, null, z, whitelistUsers, 3, null) : null;
                cryptoPreferenceHelper2 = this.cryptoPreferenceHelper;
                cryptoPreferenceHelper2.setWalletInfoMetadata(new CryptoWalletInformationMetadata(DateExtKt.now(), copy$default));
                return Result.Companion.success(Boolean.TRUE);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
