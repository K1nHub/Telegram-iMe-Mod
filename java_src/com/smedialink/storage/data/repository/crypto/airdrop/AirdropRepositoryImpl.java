package com.smedialink.storage.data.repository.crypto.airdrop;

import com.smedialink.storage.data.network.api.own.AirdropApi;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.request.crypto.airdrop.CheckAirdropPromotionStartRequest;
import com.smedialink.storage.data.network.model.request.crypto.airdrop.GetTokensByAirdropPromotionRequest;
import com.smedialink.storage.data.network.model.request.crypto.airdrop.RegisterInAirdropPromotionRequest;
import com.smedialink.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.smedialink.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.airdrop.AirdropInfo;
import com.smedialink.storage.domain.model.crypto.airdrop.AirdropVersion;
import com.smedialink.storage.domain.repository.crypto.airdrop.AirdropRepository;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import io.reactivex.Observable;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AirdropRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class AirdropRepositoryImpl implements AirdropRepository {
    private final AirdropApi airdropApi;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final ApiErrorHandler errorHandler;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;

    public AirdropRepositoryImpl(AirdropApi airdropApi, CryptoPreferenceHelper cryptoPreferenceHelper, FirebaseFunctionsErrorHandler firebaseErrorHandler, ApiErrorHandler errorHandler) {
        Intrinsics.checkNotNullParameter(airdropApi, "airdropApi");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        this.airdropApi = airdropApi;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.errorHandler = errorHandler;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.airdrop.AirdropRepository
    public Observable<Result<String>> registerInAirdrop(AirdropVersion version) {
        Intrinsics.checkNotNullParameter(version, "version");
        Observable<R> map = this.airdropApi.register(new RegisterInAirdropPromotionRequest(version.getValue())).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new AirdropRepositoryImpl$registerInAirdrop$$inlined$mapSuccess$1(this.firebaseErrorHandler, this)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<String>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new AirdropRepositoryImpl$registerInAirdrop$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.airdrop.AirdropRepository
    public Observable<Result<AirdropInfo>> checkAirdropStart(String requestId, AirdropVersion version) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(version, "version");
        Observable<R> map = this.airdropApi.checkStart(new CheckAirdropPromotionStartRequest(version.getValue(), requestId)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new AirdropRepositoryImpl$checkAirdropStart$$inlined$mapSuccess$1(this.firebaseErrorHandler, this)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<AirdropInfo>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new AirdropRepositoryImpl$checkAirdropStart$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.airdrop.AirdropRepository
    public Observable<Result<Boolean>> getTokensByAirdrop(String requestId, AirdropVersion version) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(version, "version");
        Observable<R> map = this.airdropApi.getTokens(new GetTokensByAirdropPromotionRequest(version.getValue(), requestId)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new AirdropRepositoryImpl$getTokensByAirdrop$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new AirdropRepositoryImpl$getTokensByAirdrop$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
