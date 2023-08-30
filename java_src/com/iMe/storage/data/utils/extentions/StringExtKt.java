package com.iMe.storage.data.utils.extentions;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
/* compiled from: StringExt.kt */
/* loaded from: classes3.dex */
public final class StringExtKt {
    public static final String orZero(String str) {
        return str == null ? SessionDescription.SUPPORTED_SDP_VERSION : str;
    }

    public static final String wrapWithQuotes(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return '\"' + str + '\"';
    }

    public static final String joinBySpace(List<String> list) {
        String joinToString$default;
        Intrinsics.checkNotNullParameter(list, "<this>");
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(list, " ", null, null, 0, null, null, 62, null);
        return joinToString$default;
    }

    public static final List<String> splitBySpace(String str) {
        List<String> split$default;
        Intrinsics.checkNotNullParameter(str, "<this>");
        split$default = StringsKt__StringsKt.split$default((CharSequence) str, new String[]{" "}, false, 0, 6, (Object) null);
        return split$default;
    }
}
