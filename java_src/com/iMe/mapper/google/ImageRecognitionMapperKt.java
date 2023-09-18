package com.iMe.mapper.google;

import com.iMe.storage.domain.model.google.RecognizedImageModel;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ImageRecognitionMapper.kt */
/* loaded from: classes4.dex */
public final class ImageRecognitionMapperKt {
    public static final String toUi(List<RecognizedImageModel> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        StringBuilder sb = new StringBuilder();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            sb.append(toUi((RecognizedImageModel) it.next()) + " \n");
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
