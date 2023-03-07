package com.smedialink.storage.data.network.model.request.voicetotext;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: VoiceToTextRequest.kt */
/* loaded from: classes3.dex */
public final class VoiceToTextRequest {
    private final String content;
    private final String lang;

    public static /* synthetic */ VoiceToTextRequest copy$default(VoiceToTextRequest voiceToTextRequest, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = voiceToTextRequest.content;
        }
        if ((i & 2) != 0) {
            str2 = voiceToTextRequest.lang;
        }
        return voiceToTextRequest.copy(str, str2);
    }

    public final String component1() {
        return this.content;
    }

    public final String component2() {
        return this.lang;
    }

    public final VoiceToTextRequest copy(String content, String lang) {
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(lang, "lang");
        return new VoiceToTextRequest(content, lang);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VoiceToTextRequest) {
            VoiceToTextRequest voiceToTextRequest = (VoiceToTextRequest) obj;
            return Intrinsics.areEqual(this.content, voiceToTextRequest.content) && Intrinsics.areEqual(this.lang, voiceToTextRequest.lang);
        }
        return false;
    }

    public int hashCode() {
        return (this.content.hashCode() * 31) + this.lang.hashCode();
    }

    public String toString() {
        return "VoiceToTextRequest(content=" + this.content + ", lang=" + this.lang + ')';
    }

    public VoiceToTextRequest(String content, String lang) {
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(lang, "lang");
        this.content = content;
        this.lang = lang;
    }

    public final String getContent() {
        return this.content;
    }

    public final String getLang() {
        return this.lang;
    }
}
