package com.iMe.storage.data.repository.crypto.level;

import com.iMe.storage.data.locale.prefs.model.AccountLevelMetadata;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.level.GetAccountLevelResponse;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.level.AccountLevel;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import java.util.HashMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* renamed from: com.iMe.storage.data.repository.crypto.level.AccountLevelRepositoryImpl$getAccountLevelRemote$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1803xd866155d extends Lambda implements Function1<ApiBaseResponse<GetAccountLevelResponse>, Result<? extends AccountLevel>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;
    final /* synthetic */ long $userId$inlined;
    final /* synthetic */ AccountLevelRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1803xd866155d(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler, AccountLevelRepositoryImpl accountLevelRepositoryImpl, long j) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
        this.this$0 = accountLevelRepositoryImpl;
        this.$userId$inlined = j;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<AccountLevel> invoke(ApiBaseResponse<GetAccountLevelResponse> response) {
        HashMap hashMap;
        TelegramGateway telegramGateway;
        CryptoPreferenceHelper cryptoPreferenceHelper;
        Intrinsics.checkNotNullParameter(response, "response");
        if (!response.isSuccess()) {
            return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
        }
        AccountLevel map = AccountLevel.Companion.map(response.getPayload().getAccountRank());
        Long valueOf = Long.valueOf(this.$userId$inlined);
        hashMap = this.this$0.cachedUserAccountLevel;
        hashMap.put(valueOf, map);
        telegramGateway = this.this$0.telegramGateway;
        if (telegramGateway.getSelectedAccountId() == this.$userId$inlined) {
            cryptoPreferenceHelper = this.this$0.cryptoPreferenceHelper;
            cryptoPreferenceHelper.setAccountLevelMetadata(new AccountLevelMetadata(map, 0));
        }
        return Result.Companion.success(map);
    }
}
