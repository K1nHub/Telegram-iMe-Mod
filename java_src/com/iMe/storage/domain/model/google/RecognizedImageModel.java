package com.iMe.storage.domain.model.google;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: RecognizedImageModel.kt */
/* loaded from: classes4.dex */
public final class RecognizedImageModel {
    private final int confidence;
    private final String recognizedObject;

    public static /* synthetic */ RecognizedImageModel copy$default(RecognizedImageModel recognizedImageModel, String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = recognizedImageModel.recognizedObject;
        }
        if ((i2 & 2) != 0) {
            i = recognizedImageModel.confidence;
        }
        return recognizedImageModel.copy(str, i);
    }

    public final String component1() {
        return this.recognizedObject;
    }

    public final int component2() {
        return this.confidence;
    }

    public final RecognizedImageModel copy(String recognizedObject, int i) {
        Intrinsics.checkNotNullParameter(recognizedObject, "recognizedObject");
        return new RecognizedImageModel(recognizedObject, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RecognizedImageModel) {
            RecognizedImageModel recognizedImageModel = (RecognizedImageModel) obj;
            return Intrinsics.areEqual(this.recognizedObject, recognizedImageModel.recognizedObject) && this.confidence == recognizedImageModel.confidence;
        }
        return false;
    }

    public int hashCode() {
        return (this.recognizedObject.hashCode() * 31) + this.confidence;
    }

    public String toString() {
        return "RecognizedImageModel(recognizedObject=" + this.recognizedObject + ", confidence=" + this.confidence + ')';
    }

    public RecognizedImageModel(String recognizedObject, int i) {
        Intrinsics.checkNotNullParameter(recognizedObject, "recognizedObject");
        this.recognizedObject = recognizedObject;
        this.confidence = i;
    }

    public final String getRecognizedObject() {
        return this.recognizedObject;
    }

    public final int getConfidence() {
        return this.confidence;
    }
}
