package com.smedialink.storage.data.repository.crypto.airdrop;

import com.smedialink.storage.data.locale.prefs.model.WalletAirdropMetadata;
import com.smedialink.storage.data.mapper.crypto.AirdropMappingKt;
import com.smedialink.storage.data.network.api.own.AirdropApi;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.request.crypto.airdrop.CheckAirdropPromotionStartRequest;
import com.smedialink.storage.data.network.model.request.crypto.airdrop.GetTokensByAirdropPromotionRequest;
import com.smedialink.storage.data.network.model.request.crypto.airdrop.RegisterInAirdropPromotionRequest;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.crypto.airdrop.CheckAirdropPromotionStartResponse;
import com.smedialink.storage.data.network.model.response.crypto.airdrop.RegisterInAirdropPromotionResponse;
import com.smedialink.storage.data.utils.extentions.RxExtKt$handleError$1;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.airdrop.AirdropDisplayStatus;
import com.smedialink.storage.domain.model.crypto.airdrop.AirdropInfo;
import com.smedialink.storage.domain.model.crypto.airdrop.AirdropStatus;
import com.smedialink.storage.domain.model.crypto.airdrop.AirdropVersion;
import com.smedialink.storage.domain.repository.crypto.airdrop.AirdropRepository;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
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
        Observable<ApiBaseResponse<RegisterInAirdropPromotionResponse>> register = this.airdropApi.register(new RegisterInAirdropPromotionRequest(version.getValue()));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = register.map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.airdrop.AirdropRepositoryImpl$registerInAirdrop$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                CryptoPreferenceHelper cryptoPreferenceHelper;
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    cryptoPreferenceHelper = this.cryptoPreferenceHelper;
                    cryptoPreferenceHelper.setAirdropMetadata(new WalletAirdropMetadata(true, 0, ((RegisterInAirdropPromotionResponse) response.getPayload()).getRequestId(), AirdropStatus.UNKNOWN, AirdropDisplayStatus.UNKNOWN));
                    return Result.Companion.success(((RegisterInAirdropPromotionResponse) response.getPayload()).getRequestId());
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<String>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.airdrop.AirdropRepository
    public Observable<Result<AirdropInfo>> checkAirdropStart(String requestId, AirdropVersion version) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(version, "version");
        Observable<ApiBaseResponse<CheckAirdropPromotionStartResponse>> checkStart = this.airdropApi.checkStart(new CheckAirdropPromotionStartRequest(version.getValue(), requestId));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = checkStart.map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.airdrop.AirdropRepositoryImpl$checkAirdropStart$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                CryptoPreferenceHelper cryptoPreferenceHelper;
                CryptoPreferenceHelper cryptoPreferenceHelper2;
                CryptoPreferenceHelper cryptoPreferenceHelper3;
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    cryptoPreferenceHelper = this.cryptoPreferenceHelper;
                    AirdropInfo mapToDomain = AirdropMappingKt.mapToDomain((CheckAirdropPromotionStartResponse) response.getPayload(), cryptoPreferenceHelper.getAirdropMetadata().getAirdropRequestId());
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
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<AirdropInfo>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.airdrop.AirdropRepository
    public Observable<Result<Boolean>> getTokensByAirdrop(String requestId, AirdropVersion version) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(version, "version");
        Observable<ApiBaseResponse<Object>> tokens = this.airdropApi.getTokens(new GetTokensByAirdropPromotionRequest(version.getValue(), requestId));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = tokens.map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.airdrop.AirdropRepositoryImpl$getTokensByAirdrop$$inlined$mapSuccess$1
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
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
