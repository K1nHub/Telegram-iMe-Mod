package com.smedialink.storage.data.repository.crypto.nft.avatar;

import com.smedialink.storage.data.network.api.own.NftAvatarApi;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.smedialink.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.nft.avatar.NftToken;
import com.smedialink.storage.domain.repository.crypto.nft.avatar.NftAvatarRepository;
import io.reactivex.Observable;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
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
            try {
                iArr[NetworkType.POLYGON.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
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
        if (WhenMappings.$EnumSwitchMapping$0[networkType.ordinal()] != 1) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            Observable<Result<List<NftToken>>> just = Observable.just(Result.Companion.success(emptyList));
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just;
        }
        Observable<R> map = this.nftAvatarApi.getNtfAvatars().map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new NftAvatarRepositoryImpl$getNftAvatars$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<List<NftToken>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new NftAvatarRepositoryImpl$getNftAvatars$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
