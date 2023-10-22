package com.iMe.storage.data.repository.crypto.nft.avatar;

import com.iMe.storage.data.mapper.crypto.NftMappingKt;
import com.iMe.storage.data.network.api.own.NftApi;
import com.iMe.storage.data.network.handlers.ErrorHandler;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.crypto.nft.OwnNftItemsRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.nft.NftItemResponse;
import com.iMe.storage.data.network.model.response.crypto.nft.NftItemsResponse;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.nft.NftToken;
import com.iMe.storage.domain.repository.crypto.nft.avatar.NftRepository;
import io.reactivex.Observable;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NftRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class NftRepositoryImpl implements NftRepository {
    private final ApiErrorHandler errorHandler;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final NftApi nftApi;

    public NftRepositoryImpl(NftApi nftApi, FirebaseFunctionsErrorHandler firebaseErrorHandler, ApiErrorHandler errorHandler) {
        Intrinsics.checkNotNullParameter(nftApi, "nftApi");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        this.nftApi = nftApi;
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.errorHandler = errorHandler;
    }

    @Override // com.iMe.storage.domain.repository.crypto.nft.avatar.NftRepository
    public Observable<Result<List<NftToken>>> getOwnNftItems(String str, String str2, String str3) {
        Observable<ApiBaseResponse<NftItemsResponse>> ownNftItems = this.nftApi.getOwnNftItems(new OwnNftItemsRequest(str, str2, str3, 0, 8, null));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = ownNftItems.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<NftItemsResponse>, Result<? extends List<? extends NftToken>>>() { // from class: com.iMe.storage.data.repository.crypto.nft.avatar.NftRepositoryImpl$getOwnNftItems$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends NftToken>> invoke(ApiBaseResponse<NftItemsResponse> response) {
                int collectionSizeOrDefault;
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                List<NftItemResponse> tokens = response.getPayload().getTokens();
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(tokens, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                for (NftItemResponse nftItemResponse : tokens) {
                    arrayList.add(NftMappingKt.mapToDomain(nftItemResponse));
                }
                return Result.Companion.success(arrayList);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<List<NftToken>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends List<? extends NftToken>>>() { // from class: com.iMe.storage.data.repository.crypto.nft.avatar.NftRepositoryImpl$getOwnNftItems$$inlined$handleError$1
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
}
