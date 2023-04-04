package com.iMe.storage.data.repository.recognition;

import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.google.VoiceToTextResponse;
import com.iMe.storage.domain.model.Result;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* loaded from: classes3.dex */
public final class GoogleServicesRepositoryImpl$getVoiceText$$inlined$mapSuccess$1 extends Lambda implements Function1<ApiBaseResponse<VoiceToTextResponse>, Result<? extends String>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GoogleServicesRepositoryImpl$getVoiceText$$inlined$mapSuccess$1(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<String> invoke(ApiBaseResponse<VoiceToTextResponse> response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.isSuccess()) {
            return Result.Companion.success(response.getPayload().getText());
        }
        return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
    }
}
