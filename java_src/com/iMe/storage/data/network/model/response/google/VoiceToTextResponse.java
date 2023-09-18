package com.iMe.storage.data.network.model.response.google;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: VoiceToTextResponse.kt */
/* loaded from: classes4.dex */
public final class VoiceToTextResponse {
    private final String text;

    public static /* synthetic */ VoiceToTextResponse copy$default(VoiceToTextResponse voiceToTextResponse, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = voiceToTextResponse.text;
        }
        return voiceToTextResponse.copy(str);
    }

    public final String component1() {
        return this.text;
    }

    public final VoiceToTextResponse copy(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        return new VoiceToTextResponse(text);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof VoiceToTextResponse) && Intrinsics.areEqual(this.text, ((VoiceToTextResponse) obj).text);
    }

    public int hashCode() {
        return this.text.hashCode();
    }

    public String toString() {
        return "VoiceToTextResponse(text=" + this.text + ')';
    }

    public VoiceToTextResponse(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        this.text = text;
    }

    public final String getText() {
        return this.text;
    }
}
