package okhttp3.logging;

import java.io.EOFException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import okio.Buffer;
/* compiled from: utf8.kt */
/* loaded from: classes4.dex */
public final class Utf8Kt {
    public static final boolean isProbablyUtf8(Buffer isProbablyUtf8) {
        long coerceAtMost;
        Intrinsics.checkParameterIsNotNull(isProbablyUtf8, "$this$isProbablyUtf8");
        try {
            Buffer buffer = new Buffer();
            coerceAtMost = RangesKt___RangesKt.coerceAtMost(isProbablyUtf8.size(), 64L);
            isProbablyUtf8.copyTo(buffer, 0L, coerceAtMost);
            for (int i = 0; i < 16; i++) {
                if (buffer.exhausted()) {
                    return true;
                }
                int readUtf8CodePoint = buffer.readUtf8CodePoint();
                if (Character.isISOControl(readUtf8CodePoint) && !Character.isWhitespace(readUtf8CodePoint)) {
                    return false;
                }
            }
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }
}
