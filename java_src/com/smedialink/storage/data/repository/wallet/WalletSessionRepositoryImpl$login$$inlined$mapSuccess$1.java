package com.smedialink.storage.data.repository.wallet;

import com.smedialink.storage.data.mapper.wallet.SessionTokensMappingKt;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.wallet.SessionTokensResponse;
import com.smedialink.storage.domain.manager.auth.AuthManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.wallet.SessionTokens;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* loaded from: classes3.dex */
public final class WalletSessionRepositoryImpl$login$$inlined$mapSuccess$1 extends Lambda implements Function1<ApiBaseResponse<SessionTokensResponse>, Result<? extends SessionTokens>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;
    final /* synthetic */ WalletSessionRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSessionRepositoryImpl$login$$inlined$mapSuccess$1(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler, WalletSessionRepositoryImpl walletSessionRepositoryImpl) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
        this.this$0 = walletSessionRepositoryImpl;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<SessionTokens> invoke(ApiBaseResponse<SessionTokensResponse> response) {
        AuthManager authManager;
        Intrinsics.checkNotNullParameter(response, "response");
        if (!response.isSuccess()) {
            return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
        }
        SessionTokens mapToDomain = SessionTokensMappingKt.mapToDomain(response.getPayload());
        authManager = this.this$0.authManager;
        authManager.setSession(mapToDomain);
        return Result.Companion.success(mapToDomain);
    }
}
