package com.smedialink.storage.data.repository.crypto.level;

import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.crypto.level.GetAccountLevelVisibilityResponse;
import com.smedialink.storage.domain.gateway.TelegramGateway;
import com.smedialink.storage.domain.model.Result;
import java.util.HashMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* renamed from: com.smedialink.storage.data.repository.crypto.level.AccountLevelRepositoryImpl$changeLevelVisibility$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1748xafaa2290 extends Lambda implements Function1<ApiBaseResponse<GetAccountLevelVisibilityResponse>, Result<? extends Boolean>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;
    final /* synthetic */ AccountLevelRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1748xafaa2290(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler, AccountLevelRepositoryImpl accountLevelRepositoryImpl) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
        this.this$0 = accountLevelRepositoryImpl;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<Boolean> invoke(ApiBaseResponse<GetAccountLevelVisibilityResponse> response) {
        HashMap hashMap;
        TelegramGateway telegramGateway;
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.isSuccess()) {
            hashMap = this.this$0.cachedUserAccountLevelVisibility;
            telegramGateway = this.this$0.telegramGateway;
            hashMap.put(Long.valueOf(telegramGateway.getSelectedAccountId()), Boolean.valueOf(response.getPayload().getRankVisibility()));
            return Result.Companion.success(Boolean.TRUE);
        }
        return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
    }
}
