package okio;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
/* compiled from: -Platform.kt */
/* renamed from: okio.-Platform  reason: invalid class name */
/* loaded from: classes6.dex */
public final class Platform {
    public static final String toUtf8String(byte[] toUtf8String) {
        Intrinsics.checkNotNullParameter(toUtf8String, "$this$toUtf8String");
        return new String(toUtf8String, Charsets.UTF_8);
    }

    public static final byte[] asUtf8ToByteArray(String asUtf8ToByteArray) {
        Intrinsics.checkNotNullParameter(asUtf8ToByteArray, "$this$asUtf8ToByteArray");
        byte[] bytes = asUtf8ToByteArray.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
        return bytes;
    }
}
