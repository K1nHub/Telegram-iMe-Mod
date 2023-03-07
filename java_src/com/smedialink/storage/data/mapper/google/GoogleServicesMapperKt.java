package com.smedialink.storage.data.mapper.google;

import com.smedialink.storage.data.network.model.response.google.ImageToObjectsResponse;
import com.smedialink.storage.data.network.model.response.google.ImageToTextResponse;
import com.smedialink.storage.domain.model.google.RecognizedImageModel;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;
/* compiled from: GoogleServicesMapper.kt */
/* loaded from: classes3.dex */
public final class GoogleServicesMapperKt {
    public static final String toDomain(ImageToTextResponse imageToTextResponse) {
        Intrinsics.checkNotNullParameter(imageToTextResponse, "<this>");
        return imageToTextResponse.getFoundText();
    }

    public static final List<RecognizedImageModel> toDomain(ImageToObjectsResponse imageToObjectsResponse) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(imageToObjectsResponse, "<this>");
        List<ImageToObjectsResponse.RecognizedImageObject> recognizedObjects = imageToObjectsResponse.getRecognizedObjects();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(recognizedObjects, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (ImageToObjectsResponse.RecognizedImageObject recognizedImageObject : recognizedObjects) {
            arrayList.add(new RecognizedImageModel(recognizedImageObject.getRecognizedObject(), scoreToPercent(recognizedImageObject.getScore())));
        }
        return arrayList;
    }

    private static final int scoreToPercent(double d) {
        int roundToInt;
        roundToInt = MathKt__MathJVMKt.roundToInt(d * 100);
        return roundToInt;
    }
}
