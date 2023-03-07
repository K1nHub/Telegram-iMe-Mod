package com.smedialink.storage.data.repository.recognition;

import android.graphics.Bitmap;
import android.util.Base64;
import com.google.android.exoplayer2.util.MimeTypes;
import com.smedialink.storage.data.mapper.google.GoogleServicesMapperKt;
import com.smedialink.storage.data.network.api.own.GoogleServicesApi;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.request.voicetotext.VoiceToTextRequest;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.google.ImageToObjectsResponse;
import com.smedialink.storage.data.network.model.response.google.ImageToTextResponse;
import com.smedialink.storage.data.network.model.response.google.VoiceToTextResponse;
import com.smedialink.storage.data.utils.extentions.BitmapExtKt;
import com.smedialink.storage.data.utils.extentions.RxExtKt$handleError$1;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.google.RecognizedImageModel;
import com.smedialink.storage.domain.repository.google.GoogleServicesRepository;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import java.io.File;
import java.util.List;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p035io.FilesKt__FileReadWriteKt;
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

    @Override // com.smedialink.storage.domain.repository.google.GoogleServicesRepository
    public Observable<Result<String>> getVoiceText(File voiceFile, String langCode) {
        byte[] readBytes;
        Intrinsics.checkNotNullParameter(voiceFile, "voiceFile");
        Intrinsics.checkNotNullParameter(langCode, "langCode");
        readBytes = FilesKt__FileReadWriteKt.readBytes(voiceFile);
        String encodeToString = Base64.encodeToString(readBytes, 2);
        Intrinsics.checkNotNullExpressionValue(encodeToString, "encodeToString(voiceFile…dBytes(), Base64.NO_WRAP)");
        Observable<ApiBaseResponse<VoiceToTextResponse>> voiceText = this.googleServicesApi.getVoiceText(new VoiceToTextRequest(encodeToString, langCode));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = voiceText.map(new Function() { // from class: com.smedialink.storage.data.repository.recognition.GoogleServicesRepositoryImpl$getVoiceText$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(((VoiceToTextResponse) response.getPayload()).getText());
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<String>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.google.GoogleServicesRepository
    public Observable<Result<String>> getPhotoText(Bitmap photo) {
        Intrinsics.checkNotNullParameter(photo, "photo");
        Pair<MultipartBody.Part, File> convertBitmapToMultipart = convertBitmapToMultipart(photo);
        final File component2 = convertBitmapToMultipart.component2();
        Observable<ApiBaseResponse<ImageToTextResponse>> photoText = this.googleServicesApi.getPhotoText(convertBitmapToMultipart.component1());
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = photoText.map(new Function() { // from class: com.smedialink.storage.data.repository.recognition.GoogleServicesRepositoryImpl$getPhotoText$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                try {
                    component2.delete();
                } catch (Exception e) {
                    Timber.m4e(e);
                }
                return Result.Companion.success(GoogleServicesMapperKt.toDomain((ImageToTextResponse) response.getPayload()));
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<String>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.google.GoogleServicesRepository
    public Observable<Result<List<RecognizedImageModel>>> getPhotoObjects(Bitmap photo) {
        Intrinsics.checkNotNullParameter(photo, "photo");
        Pair<MultipartBody.Part, File> convertBitmapToMultipart = convertBitmapToMultipart(photo);
        final File component2 = convertBitmapToMultipart.component2();
        Observable<ApiBaseResponse<ImageToObjectsResponse>> photoObjects = this.googleServicesApi.getPhotoObjects(convertBitmapToMultipart.component1());
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = photoObjects.map(new Function() { // from class: com.smedialink.storage.data.repository.recognition.GoogleServicesRepositoryImpl$getPhotoObjects$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                try {
                    component2.delete();
                } catch (Exception e) {
                    Timber.m4e(e);
                }
                return Result.Companion.success(GoogleServicesMapperKt.toDomain((ImageToObjectsResponse) response.getPayload()));
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<List<RecognizedImageModel>>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    private final Pair<MultipartBody.Part, File> convertBitmapToMultipart(Bitmap bitmap) {
        File tempFile$default = BitmapExtKt.toTempFile$default(bitmap, this.cachePath, null, 2, null);
        return TuplesKt.m100to(MultipartBody.Part.Companion.createFormData("image", tempFile$default.getName(), RequestBody.Companion.create(tempFile$default, MediaType.Companion.parse(MimeTypes.IMAGE_JPEG))), tempFile$default);
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
