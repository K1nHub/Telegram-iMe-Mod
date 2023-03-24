package com.smedialink.storage.data.repository.recognition;

import android.graphics.Bitmap;
import android.util.Base64;
import com.google.android.exoplayer2.util.MimeTypes;
import com.smedialink.storage.data.network.api.own.GoogleServicesApi;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.request.voicetotext.VoiceToTextRequest;
import com.smedialink.storage.data.utils.extentions.BitmapExtKt;
import com.smedialink.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.smedialink.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.google.RecognizedImageModel;
import com.smedialink.storage.domain.repository.google.GoogleServicesRepository;
import io.reactivex.Observable;
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
        Observable<R> map = this.googleServicesApi.getVoiceText(new VoiceToTextRequest(encodeToString, langCode)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new GoogleServicesRepositoryImpl$getVoiceText$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<String>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new GoogleServicesRepositoryImpl$getVoiceText$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.google.GoogleServicesRepository
    public Observable<Result<String>> getPhotoText(Bitmap photo) {
        Intrinsics.checkNotNullParameter(photo, "photo");
        Pair<MultipartBody.Part, File> convertBitmapToMultipart = convertBitmapToMultipart(photo);
        Observable<R> map = this.googleServicesApi.getPhotoText(convertBitmapToMultipart.component1()).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new GoogleServicesRepositoryImpl$getPhotoText$$inlined$mapSuccess$1(this.firebaseErrorHandler, convertBitmapToMultipart.component2())));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<String>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new GoogleServicesRepositoryImpl$getPhotoText$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.google.GoogleServicesRepository
    public Observable<Result<List<RecognizedImageModel>>> getPhotoObjects(Bitmap photo) {
        Intrinsics.checkNotNullParameter(photo, "photo");
        Pair<MultipartBody.Part, File> convertBitmapToMultipart = convertBitmapToMultipart(photo);
        Observable<R> map = this.googleServicesApi.getPhotoObjects(convertBitmapToMultipart.component1()).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1797xab083842(this.firebaseErrorHandler, convertBitmapToMultipart.component2())));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<List<RecognizedImageModel>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1796x9906889f(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    private final Pair<MultipartBody.Part, File> convertBitmapToMultipart(Bitmap bitmap) {
        File tempFile$default = BitmapExtKt.toTempFile$default(bitmap, this.cachePath, null, 2, null);
        return TuplesKt.m99to(MultipartBody.Part.Companion.createFormData("image", tempFile$default.getName(), RequestBody.Companion.create(tempFile$default, MediaType.Companion.parse(MimeTypes.IMAGE_JPEG))), tempFile$default);
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
