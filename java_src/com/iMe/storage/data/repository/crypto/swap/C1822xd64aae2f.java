package com.iMe.storage.data.repository.crypto.swap;

import com.iMe.storage.data.mapper.crypto.SwapMappingKt;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.swap.AvailableSwapTokensResponse;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.token.TokenInfo;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* renamed from: com.iMe.storage.data.repository.crypto.swap.SwapRepositoryImpl$getAvailableTokensToSwap$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1822xd64aae2f extends Lambda implements Function1<ApiBaseResponse<AvailableSwapTokensResponse>, Result<? extends List<? extends TokenInfo>>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1822xd64aae2f(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<List<? extends TokenInfo>> invoke(ApiBaseResponse<AvailableSwapTokensResponse> response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!response.isSuccess()) {
            return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
        }
        List<TokenInfo> mapToDomain = SwapMappingKt.mapToDomain(response.getPayload());
        ArrayList arrayList = new ArrayList();
        for (Object obj : mapToDomain) {
            if (!((TokenInfo) obj).isUnknown()) {
                arrayList.add(obj);
            }
        }
        return Result.Companion.success(arrayList);
    }
}
