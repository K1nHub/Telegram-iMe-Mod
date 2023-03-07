package com.smedialink.storage.data.repository.crypto.nft.avatar;

import com.smedialink.storage.data.mapper.crypto.NftMappingKt;
import com.smedialink.storage.data.network.api.own.NftAvatarApi;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.crypto.nft.avatar.NftAvatarResponse;
import com.smedialink.storage.data.utils.extentions.RxExtKt$handleError$1;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.nft.avatar.NftToken;
import com.smedialink.storage.domain.repository.crypto.nft.avatar.NftAvatarRepository;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NftAvatarRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class NftAvatarRepositoryImpl implements NftAvatarRepository {
    private final ApiErrorHandler errorHandler;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final NftAvatarApi nftAvatarApi;

    /* compiled from: NftAvatarRepositoryImpl.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[NetworkType.values().length];
            iArr[NetworkType.POLYGON.ordinal()] = 1;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public NftAvatarRepositoryImpl(NftAvatarApi nftAvatarApi, FirebaseFunctionsErrorHandler firebaseErrorHandler, ApiErrorHandler errorHandler) {
        Intrinsics.checkNotNullParameter(nftAvatarApi, "nftAvatarApi");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        this.nftAvatarApi = nftAvatarApi;
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.errorHandler = errorHandler;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.nft.avatar.NftAvatarRepository
    public Observable<Result<List<NftToken>>> getNftAvatars(NetworkType networkType) {
        List emptyList;
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        if (WhenMappings.$EnumSwitchMapping$0[networkType.ordinal()] == 1) {
            Observable<ApiBaseResponse<List<NftAvatarResponse>>> ntfAvatars = this.nftAvatarApi.getNtfAvatars();
            final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
            Observable<R> map = ntfAvatars.map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.nft.avatar.NftAvatarRepositoryImpl$getNftAvatars$$inlined$mapSuccess$1
                /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
                @Override // io.reactivex.functions.Function
                public final Result apply(ApiBaseResponse response) {
                    int collectionSizeOrDefault;
                    Intrinsics.checkNotNullParameter(response, "response");
                    if (response.isSuccess()) {
                        Iterable<NftAvatarResponse> iterable = (Iterable) response.getPayload();
                        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
                        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                        for (NftAvatarResponse nftAvatarResponse : iterable) {
                            arrayList.add(NftMappingKt.mapToDomain(nftAvatarResponse));
                        }
                        return Result.Companion.success(arrayList);
                    }
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
            });
            Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
            Observable<Result<List<NftToken>>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
            Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
            return onErrorReturn;
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Observable<Result<List<NftToken>>> just = Observable.just(Result.Companion.success(emptyList));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
