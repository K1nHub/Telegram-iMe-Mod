package com.iMe.storage.data.repository.recognition;

import com.iMe.storage.data.mapper.google.GoogleServicesMapperKt;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.google.ImageToTextResponse;
import com.iMe.storage.domain.model.Result;
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
            Timber.m6e(e);
        }
        return Result.Companion.success(GoogleServicesMapperKt.toDomain(response.getPayload()));
    }
}
