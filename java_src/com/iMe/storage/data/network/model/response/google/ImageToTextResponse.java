package com.iMe.storage.data.network.model.response.google;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: ImageToTextResponse.kt */
/* loaded from: classes3.dex */
public final class ImageToTextResponse {
    private final String detectedLanguage;
    private final String foundText;

    public static /* synthetic */ ImageToTextResponse copy$default(ImageToTextResponse imageToTextResponse, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = imageToTextResponse.foundText;
        }
        if ((i & 2) != 0) {
            str2 = imageToTextResponse.detectedLanguage;
        }
        return imageToTextResponse.copy(str, str2);
    }

    public final String component1() {
        return this.foundText;
    }

    public final String component2() {
        return this.detectedLanguage;
    }

    public final ImageToTextResponse copy(String foundText, String str) {
        Intrinsics.checkNotNullParameter(foundText, "foundText");
        return new ImageToTextResponse(foundText, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ImageToTextResponse) {
            ImageToTextResponse imageToTextResponse = (ImageToTextResponse) obj;
            return Intrinsics.areEqual(this.foundText, imageToTextResponse.foundText) && Intrinsics.areEqual(this.detectedLanguage, imageToTextResponse.detectedLanguage);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.foundText.hashCode() * 31;
        String str = this.detectedLanguage;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "ImageToTextResponse(foundText=" + this.foundText + ", detectedLanguage=" + this.detectedLanguage + ')';
    }

    public ImageToTextResponse(String foundText, String str) {
        Intrinsics.checkNotNullParameter(foundText, "foundText");
        this.foundText = foundText;
        this.detectedLanguage = str;
    }

    public final String getFoundText() {
        return this.foundText;
    }

    public final String getDetectedLanguage() {
        return this.detectedLanguage;
    }
}
