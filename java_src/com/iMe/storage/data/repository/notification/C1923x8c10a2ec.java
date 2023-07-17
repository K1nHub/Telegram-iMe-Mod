package com.iMe.storage.data.repository.notification;

import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.notification.IssuePushAllowanceTokenResponse;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.storage.PreferenceHelper;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* renamed from: com.iMe.storage.data.repository.notification.PushNotificationRepositoryImpl$issuePushAllowanceToken$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1923x8c10a2ec extends Lambda implements Function1<ApiBaseResponse<IssuePushAllowanceTokenResponse>, Result<? extends String>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;
    final /* synthetic */ PushNotificationRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1923x8c10a2ec(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler, PushNotificationRepositoryImpl pushNotificationRepositoryImpl) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
        this.this$0 = pushNotificationRepositoryImpl;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<String> invoke(ApiBaseResponse<IssuePushAllowanceTokenResponse> response) {
        PreferenceHelper preferenceHelper;
        Intrinsics.checkNotNullParameter(response, "response");
        if (!response.isSuccess()) {
            return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
        }
        String token = response.getPayload().getToken();
        preferenceHelper = this.this$0.preferenceHelper;
        preferenceHelper.setPushAllowanceToken(token);
        return Result.Companion.success(token);
    }
}
