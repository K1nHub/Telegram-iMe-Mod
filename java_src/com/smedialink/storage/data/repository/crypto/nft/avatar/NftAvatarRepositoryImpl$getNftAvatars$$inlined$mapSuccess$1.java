package com.smedialink.storage.data.repository.crypto.nft.avatar;

import com.smedialink.storage.data.mapper.crypto.NftMappingKt;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.crypto.nft.avatar.NftAvatarResponse;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.nft.avatar.NftToken;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* loaded from: classes3.dex */
public final class NftAvatarRepositoryImpl$getNftAvatars$$inlined$mapSuccess$1 extends Lambda implements Function1<ApiBaseResponse<List<? extends NftAvatarResponse>>, Result<? extends List<? extends NftToken>>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NftAvatarRepositoryImpl$getNftAvatars$$inlined$mapSuccess$1(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
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
        return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
    }
}
