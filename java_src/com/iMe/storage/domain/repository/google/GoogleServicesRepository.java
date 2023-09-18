package com.iMe.storage.domain.repository.google;

import android.graphics.Bitmap;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.google.RecognizedImageModel;
import io.reactivex.Observable;
import java.io.File;
import java.util.List;
/* compiled from: GoogleServicesRepository.kt */
/* loaded from: classes4.dex */
public interface GoogleServicesRepository {
    Observable<Result<List<RecognizedImageModel>>> getPhotoObjects(Bitmap bitmap);

    Observable<Result<String>> getPhotoText(Bitmap bitmap);

    Observable<Result<String>> getVoiceText(File file, String str);
}
