package com.iMe.storage.data.repository.recognition;

import android.graphics.Bitmap;
import android.util.Base64;
import com.google.android.exoplayer2.util.MimeTypes;
import com.iMe.storage.data.mapper.google.GoogleServicesMapperKt;
import com.iMe.storage.data.network.api.own.GoogleServicesApi;
import com.iMe.storage.data.network.handlers.ErrorHandler;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.voicetotext.VoiceToTextRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.google.ImageToObjectsResponse;
import com.iMe.storage.data.network.model.response.google.ImageToTextResponse;
import com.iMe.storage.data.network.model.response.google.VoiceToTextResponse;
import com.iMe.storage.data.utils.extentions.BitmapExtKt;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.google.RecognizedImageModel;
import com.iMe.storage.domain.repository.google.GoogleServicesRepository;
import io.reactivex.Observable;
import java.io.File;
import java.util.List;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p034io.FilesKt__FileReadWriteKt;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import timber.log.Timber;
/* compiled from: GoogleServicesRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class GoogleServicesRepositoryImpl implements GoogleServicesRepository {
    private final File cachePath;
    private final ApiErrorHandler errorHandler;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final GoogleServicesApi googleServicesApi;

    static {
        new Companion(null);
    }

    public GoogleServicesRepositoryImpl(File cachePath, GoogleServicesApi googleServicesApi, FirebaseFunctionsErrorHandler firebaseErrorHandler, ApiErrorHandler errorHandler) {
        Intrinsics.checkNotNullParameter(cachePath, "cachePath");
        Intrinsics.checkNotNullParameter(googleServicesApi, "googleServicesApi");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        this.cachePath = cachePath;
        this.googleServicesApi = googleServicesApi;
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.errorHandler = errorHandler;
    }

    @Override // com.iMe.storage.domain.repository.google.GoogleServicesRepository
    public Observable<Result<String>> getVoiceText(File voiceFile, String langCode) {
        byte[] readBytes;
        Intrinsics.checkNotNullParameter(voiceFile, "voiceFile");
        Intrinsics.checkNotNullParameter(langCode, "langCode");
        readBytes = FilesKt__FileReadWriteKt.readBytes(voiceFile);
        String encodeToString = Base64.encodeToString(readBytes, 2);
        Intrinsics.checkNotNullExpressionValue(encodeToString, "encodeToString(voiceFile…dBytes(), Base64.NO_WRAP)");
        Observable<ApiBaseResponse<VoiceToTextResponse>> voiceText = this.googleServicesApi.getVoiceText(new VoiceToTextRequest(encodeToString, langCode));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = voiceText.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<VoiceToTextResponse>, Result<? extends String>>() { // from class: com.iMe.storage.data.repository.recognition.GoogleServicesRepositoryImpl$getVoiceText$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<String> invoke(ApiBaseResponse<VoiceToTextResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(response.getPayload().getText());
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<String>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends String>>() { // from class: com.iMe.storage.data.repository.recognition.GoogleServicesRepositoryImpl$getVoiceText$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<String> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.google.GoogleServicesRepository
    public Observable<Result<String>> getPhotoText(Bitmap photo) {
        Intrinsics.checkNotNullParameter(photo, "photo");
        Pair<MultipartBody.Part, File> convertBitmapToMultipart = convertBitmapToMultipart(photo);
        final File component2 = convertBitmapToMultipart.component2();
        Observable<ApiBaseResponse<ImageToTextResponse>> photoText = this.googleServicesApi.getPhotoText(convertBitmapToMultipart.component1());
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = photoText.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<ImageToTextResponse>, Result<? extends String>>() { // from class: com.iMe.storage.data.repository.recognition.GoogleServicesRepositoryImpl$getPhotoText$$inlined$mapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<String> invoke(ApiBaseResponse<ImageToTextResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                try {
                    component2.delete();
                } catch (Exception e) {
                    Timber.m6e(e);
                }
                return Result.Companion.success(GoogleServicesMapperKt.toDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<String>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends String>>() { // from class: com.iMe.storage.data.repository.recognition.GoogleServicesRepositoryImpl$getPhotoText$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<String> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.google.GoogleServicesRepository
    public Observable<Result<List<RecognizedImageModel>>> getPhotoObjects(Bitmap photo) {
        Intrinsics.checkNotNullParameter(photo, "photo");
        Pair<MultipartBody.Part, File> convertBitmapToMultipart = convertBitmapToMultipart(photo);
        final File component2 = convertBitmapToMultipart.component2();
        Observable<ApiBaseResponse<ImageToObjectsResponse>> photoObjects = this.googleServicesApi.getPhotoObjects(convertBitmapToMultipart.component1());
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = photoObjects.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<ImageToObjectsResponse>, Result<? extends List<? extends RecognizedImageModel>>>() { // from class: com.iMe.storage.data.repository.recognition.GoogleServicesRepositoryImpl$getPhotoObjects$$inlined$mapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends RecognizedImageModel>> invoke(ApiBaseResponse<ImageToObjectsResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                try {
                    component2.delete();
                } catch (Exception e) {
                    Timber.m6e(e);
                }
                return Result.Companion.success(GoogleServicesMapperKt.toDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<List<RecognizedImageModel>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends List<? extends RecognizedImageModel>>>() { // from class: com.iMe.storage.data.repository.recognition.GoogleServicesRepositoryImpl$getPhotoObjects$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends RecognizedImageModel>> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    private final Pair<MultipartBody.Part, File> convertBitmapToMultipart(Bitmap bitmap) {
        File tempFile$default = BitmapExtKt.toTempFile$default(bitmap, this.cachePath, null, 2, null);
        return TuplesKt.m144to(MultipartBody.Part.Companion.createFormData("image", tempFile$default.getName(), RequestBody.Companion.create(tempFile$default, MediaType.Companion.parse(MimeTypes.IMAGE_JPEG))), tempFile$default);
    }

    /* compiled from: GoogleServicesRepositoryImpl.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
