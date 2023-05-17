package com.iMe.storage.data.repository.crypto.permission;

import com.iMe.storage.data.locale.prefs.model.CryptoWalletInformationMetadata;
import com.iMe.storage.data.network.api.own.CryptoWalletApi;
import com.iMe.storage.data.network.api.own.PermissionApi;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.crypto.permission.ManageCryptoPermissionRequest;
import com.iMe.storage.data.network.model.request.crypto.wallet.GetAccountInfoRequest;
import com.iMe.storage.data.network.model.request.crypto.wallet.RequestPermissionRequest;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.AccountInfo;
import com.iMe.storage.domain.model.crypto.CryptoWalletInfo;
import com.iMe.storage.domain.model.crypto.permission.PermissionAction;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.repository.crypto.permission.CryptoPermissionRepository;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
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

    @Override // com.iMe.storage.domain.repository.crypto.permission.CryptoPermissionRepository
    public Observable<Result<String>> requestPermission(String userId, PermissionAction action) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(action, "action");
        Observable<R> map = this.permissionApi.requestPermission(new RequestPermissionRequest(userId, action.name())).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1890x7df61441(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<String>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1889x23d42c80(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.permission.CryptoPermissionRepository
    public Observable<Result<AccountInfo>> getAccountInfo(String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Observable<R> map = this.permissionApi.getAccountInfo(new GetAccountInfoRequest(userId)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1884x4a2c931c(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<AccountInfo>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1883xde6d8905(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.permission.CryptoPermissionRepository
    public Observable<Result<CryptoWalletInfo>> getPermissionSettings(boolean z) {
        Observable empty;
        CryptoWalletInformationMetadata walletInfoMetadata = this.cryptoPreferenceHelper.getWalletInfoMetadata();
        if (z || walletInfoMetadata.getWalletInfo() == null) {
            empty = Observable.empty();
        } else {
            empty = Observable.just(Result.Companion.success(walletInfoMetadata.getWalletInfo()));
            Intrinsics.checkNotNullExpressionValue(empty, "just(this)");
        }
        ObservableSource map = this.cryptoWalletApi.getCryptoWalletInfo().map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1886x4c9e810b(this.firebaseErrorHandler, this)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable concat = Observable.concat(empty, map);
        Intrinsics.checkNotNullExpressionValue(concat, "concat(\n                …              }\n        )");
        Observable<Result<CryptoWalletInfo>> onErrorReturn = concat.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1885x2a3958f6(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.permission.CryptoPermissionRepository
    public Observable<Result<Boolean>> managePermissionSettings(TokenCode type, boolean z, List<Long> whitelistUsers) {
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
        Observable<R> map = permissionApi.manageCryptoPermissions(new ManageCryptoPermissionRequest(arrayList, z, name)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1888x4e08b32e(this.firebaseErrorHandler, this, z, whitelistUsers)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1887x56156b33(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
