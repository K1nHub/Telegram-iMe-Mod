package com.smedialink.storage.data.repository.recognition;

import com.smedialink.storage.data.mapper.google.GoogleServicesMapperKt;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.google.ImageToTextResponse;
import com.smedialink.storage.domain.model.Result;
import java.io.File;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import timber.log.Timber;
/* compiled from: FirebaseExt.kt */
/* loaded from: classes3.dex */
public final class GoogleServicesRepositoryImpl$getPhotoText$$inlined$mapSuccess$1 extends Lambda implements Function1<ApiBaseResponse<ImageToTextResponse>, Result<? extends String>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;
    final /* synthetic */ File $file$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GoogleServicesRepositoryImpl$getPhotoText$$inlined$mapSuccess$1(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler, File file) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
        this.$file$inlined = file;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<String> invoke(ApiBaseResponse<ImageToTextResponse> response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!response.isSuccess()) {
            return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
        }
        try {
            this.$file$inlined.delete();
        } catch (Exception e) {
            Timber.m4e(e);
        }
        return Result.Companion.success(GoogleServicesMapperKt.toDomain(response.getPayload()));
    }
}
