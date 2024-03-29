package com.iMe.storage.domain.interactor.google;

import android.graphics.Bitmap;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.google.RecognizedImageModel;
import com.iMe.storage.domain.repository.google.GoogleServicesRepository;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import io.reactivex.Observable;
import java.io.File;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GoogleServicesInteractor.kt */
/* loaded from: classes3.dex */
public final class GoogleServicesInteractor {
    private final GoogleServicesRepository googleServicesRepository;
    private final SchedulersProvider schedulersProvider;

    public GoogleServicesInteractor(GoogleServicesRepository googleServicesRepository, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(googleServicesRepository, "googleServicesRepository");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.googleServicesRepository = googleServicesRepository;
        this.schedulersProvider = schedulersProvider;
    }

    public final Observable<Result<String>> getVoiceText(File file, String langCode) {
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(langCode, "langCode");
        Observable<Result<String>> subscribeOn = this.googleServicesRepository.getVoiceText(file, langCode).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "googleServicesRepository…(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<String>> getPhotoText(Bitmap photo) {
        Intrinsics.checkNotNullParameter(photo, "photo");
        Observable<Result<String>> subscribeOn = this.googleServicesRepository.getPhotoText(photo).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "googleServicesRepository…(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<List<RecognizedImageModel>>> getPhotoObjects(Bitmap photo) {
        Intrinsics.checkNotNullParameter(photo, "photo");
        Observable<Result<List<RecognizedImageModel>>> subscribeOn = this.googleServicesRepository.getPhotoObjects(photo).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "googleServicesRepository…(schedulersProvider.io())");
        return subscribeOn;
    }
}
