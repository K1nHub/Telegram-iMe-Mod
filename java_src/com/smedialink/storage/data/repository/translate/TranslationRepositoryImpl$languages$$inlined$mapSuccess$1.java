package com.smedialink.storage.data.repository.translate;

import com.smedialink.storage.data.mapper.translate.TranslationMappingKt;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.translate.TranslationLanguagesResponse;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.translation.TranslationLanguage;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* loaded from: classes3.dex */
public final class TranslationRepositoryImpl$languages$$inlined$mapSuccess$1 extends Lambda implements Function1<ApiBaseResponse<TranslationLanguagesResponse>, Result<? extends List<TranslationLanguage>>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TranslationRepositoryImpl$languages$$inlined$mapSuccess$1(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<List<TranslationLanguage>> invoke(ApiBaseResponse<TranslationLanguagesResponse> response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!response.isSuccess()) {
            return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
        }
        return Result.Companion.success(TranslationMappingKt.mapToDomain(response.getPayload()));
    }
}
