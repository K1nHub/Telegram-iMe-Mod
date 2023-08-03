package com.iMe.storage.data.repository.crypto.airdrop;

import com.iMe.storage.data.locale.prefs.model.WalletAirdropMetadata;
import com.iMe.storage.data.mapper.crypto.AirdropMappingKt;
import com.iMe.storage.data.network.api.own.AirdropApi;
import com.iMe.storage.data.network.handlers.ErrorHandler;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.crypto.airdrop.CheckAirdropPromotionStartRequest;
import com.iMe.storage.data.network.model.request.crypto.airdrop.GetTokensByAirdropPromotionRequest;
import com.iMe.storage.data.network.model.request.crypto.airdrop.RegisterInAirdropPromotionRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.airdrop.CheckAirdropPromotionStartResponse;
import com.iMe.storage.data.network.model.response.crypto.airdrop.RegisterInAirdropPromotionResponse;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.airdrop.AirdropDisplayStatus;
import com.iMe.storage.domain.model.crypto.airdrop.AirdropInfo;
import com.iMe.storage.domain.model.crypto.airdrop.AirdropStatus;
import com.iMe.storage.domain.model.crypto.airdrop.AirdropVersion;
import com.iMe.storage.domain.repository.crypto.airdrop.AirdropRepository;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import io.reactivex.Observable;
import kotlin.jvm.functions.Function1;
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

    @Override // com.iMe.storage.domain.repository.crypto.airdrop.AirdropRepository
    public Observable<Result<String>> registerInAirdrop(AirdropVersion version) {
        Intrinsics.checkNotNullParameter(version, "version");
        Observable<ApiBaseResponse<RegisterInAirdropPromotionResponse>> register = this.airdropApi.register(new RegisterInAirdropPromotionRequest(version.getValue()));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = register.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<RegisterInAirdropPromotionResponse>, Result<? extends String>>() { // from class: com.iMe.storage.data.repository.crypto.airdrop.AirdropRepositoryImpl$registerInAirdrop$$inlined$mapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<String> invoke(ApiBaseResponse<RegisterInAirdropPromotionResponse> response) {
                CryptoPreferenceHelper cryptoPreferenceHelper;
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    cryptoPreferenceHelper = this.cryptoPreferenceHelper;
                    cryptoPreferenceHelper.setAirdropMetadata(new WalletAirdropMetadata(true, 0, response.getPayload().getRequestId(), AirdropStatus.UNKNOWN, AirdropDisplayStatus.UNKNOWN));
                    return Result.Companion.success(response.getPayload().getRequestId());
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<String>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends String>>() { // from class: com.iMe.storage.data.repository.crypto.airdrop.AirdropRepositoryImpl$registerInAirdrop$$inlined$handleError$1
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

    @Override // com.iMe.storage.domain.repository.crypto.airdrop.AirdropRepository
    public Observable<Result<AirdropInfo>> checkAirdropStart(String requestId, AirdropVersion version) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(version, "version");
        Observable<ApiBaseResponse<CheckAirdropPromotionStartResponse>> checkStart = this.airdropApi.checkStart(new CheckAirdropPromotionStartRequest(version.getValue(), requestId));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = checkStart.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<CheckAirdropPromotionStartResponse>, Result<? extends AirdropInfo>>() { // from class: com.iMe.storage.data.repository.crypto.airdrop.AirdropRepositoryImpl$checkAirdropStart$$inlined$mapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<AirdropInfo> invoke(ApiBaseResponse<CheckAirdropPromotionStartResponse> response) {
                CryptoPreferenceHelper cryptoPreferenceHelper;
                CryptoPreferenceHelper cryptoPreferenceHelper2;
                CryptoPreferenceHelper cryptoPreferenceHelper3;
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    cryptoPreferenceHelper = this.cryptoPreferenceHelper;
                    AirdropInfo mapToDomain = AirdropMappingKt.mapToDomain(response.getPayload(), cryptoPreferenceHelper.getAirdropMetadata().getAirdropRequestId());
                    if (mapToDomain instanceof AirdropInfo.Ready) {
                        cryptoPreferenceHelper2 = this.cryptoPreferenceHelper;
                        cryptoPreferenceHelper3 = this.cryptoPreferenceHelper;
                        WalletAirdropMetadata airdropMetadata = cryptoPreferenceHelper3.getAirdropMetadata();
                        AirdropInfo.Ready ready = (AirdropInfo.Ready) mapToDomain;
                        cryptoPreferenceHelper2.setAirdropMetadata(WalletAirdropMetadata.copy$default(airdropMetadata, false, ready.getTokenValue(), ready.getRequestId(), AirdropStatus.READY, null, 17, null));
                    }
                    return Result.Companion.success(mapToDomain);
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<AirdropInfo>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends AirdropInfo>>() { // from class: com.iMe.storage.data.repository.crypto.airdrop.AirdropRepositoryImpl$checkAirdropStart$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<AirdropInfo> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.airdrop.AirdropRepository
    public Observable<Result<Boolean>> getTokensByAirdrop(String requestId, AirdropVersion version) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(version, "version");
        Observable<ApiBaseResponse<Object>> tokens = this.airdropApi.getTokens(new GetTokensByAirdropPromotionRequest(version.getValue(), requestId));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = tokens.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<Object>, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.crypto.airdrop.AirdropRepositoryImpl$getTokensByAirdrop$$inlined$mapSuccess$1
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
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.crypto.airdrop.AirdropRepositoryImpl$getTokensByAirdrop$$inlined$handleError$1
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
