package com.iMe.storage.data.repository.crypto.nft.avatar;

import com.iMe.storage.data.mapper.crypto.NftMappingKt;
import com.iMe.storage.data.network.api.own.NftAvatarApi;
import com.iMe.storage.data.network.handlers.ErrorHandler;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.nft.avatar.NftAvatarResponse;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.crypto.nft.avatar.NftToken;
import com.iMe.storage.domain.repository.crypto.nft.avatar.NftAvatarRepository;
import io.reactivex.Observable;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NftAvatarRepositoryImpl.kt */
/* loaded from: classes4.dex */
public final class NftAvatarRepositoryImpl implements NftAvatarRepository {
    private final ApiErrorHandler errorHandler;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final NftAvatarApi nftAvatarApi;

    public NftAvatarRepositoryImpl(NftAvatarApi nftAvatarApi, FirebaseFunctionsErrorHandler firebaseErrorHandler, ApiErrorHandler errorHandler) {
        Intrinsics.checkNotNullParameter(nftAvatarApi, "nftAvatarApi");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        this.nftAvatarApi = nftAvatarApi;
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.errorHandler = errorHandler;
    }

    @Override // com.iMe.storage.domain.repository.crypto.nft.avatar.NftAvatarRepository
    public Observable<Result<List<NftToken>>> getNftAvatars(String networkId) {
        List emptyList;
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        if (Intrinsics.areEqual(networkId, NetworkType.POLY)) {
            Observable<ApiBaseResponse<List<NftAvatarResponse>>> ntfAvatars = this.nftAvatarApi.getNtfAvatars();
            final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
            Observable<R> map = ntfAvatars.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<List<? extends NftAvatarResponse>>, Result<? extends List<? extends NftToken>>>() { // from class: com.iMe.storage.data.repository.crypto.nft.avatar.NftAvatarRepositoryImpl$getNftAvatars$$inlined$mapSuccess$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Result<List<? extends NftToken>> invoke(ApiBaseResponse<List<? extends NftAvatarResponse>> response) {
                    int collectionSizeOrDefault;
                    Intrinsics.checkNotNullParameter(response, "response");
                    if (response.isSuccess()) {
                        List<? extends NftAvatarResponse> payload = response.getPayload();
                        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(payload, 10);
                        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                        for (NftAvatarResponse nftAvatarResponse : payload) {
                            arrayList.add(NftMappingKt.mapToDomain(nftAvatarResponse));
                        }
                        return Result.Companion.success(arrayList);
                    }
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
            }));
            Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
            final ApiErrorHandler apiErrorHandler = this.errorHandler;
            Observable<Result<List<NftToken>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends List<? extends NftToken>>>() { // from class: com.iMe.storage.data.repository.crypto.nft.avatar.NftAvatarRepositoryImpl$getNftAvatars$$inlined$handleError$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Result<List<? extends NftToken>> invoke(Throwable it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
                }
            }));
            Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
            return onErrorReturn;
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Observable<Result<List<NftToken>>> just = Observable.just(Result.Companion.success(emptyList));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
