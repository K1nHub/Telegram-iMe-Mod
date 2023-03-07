package com.smedialink.mapper.google;

import com.smedialink.storage.domain.model.google.RecognizedImageModel;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ImageRecognitionMapper.kt */
/* loaded from: classes3.dex */
public final class ImageRecognitionMapperKt {
    public static final String toUi(List<RecognizedImageModel> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        StringBuilder sb = new StringBuilder();
        for (RecognizedImageModel recognizedImageModel : list) {
            sb.append(Intrinsics.stringPlus(toUi(recognizedImageModel), " \n"));
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "stringBuilder.toString()");
        return sb2;
    }

    public static final String toUi(RecognizedImageModel recognizedImageModel) {
        Intrinsics.checkNotNullParameter(recognizedImageModel, "<this>");
        return recognizedImageModel.getRecognizedObject() + ' ' + recognizedImageModel.getConfidence() + " %";
    }
}
