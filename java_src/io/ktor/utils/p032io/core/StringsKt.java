package io.ktor.utils.p032io.core;

import io.ktor.utils.p032io.charsets.EncodingKt;
import io.ktor.utils.p032io.core.internal.ChunkBuffer;
import io.ktor.utils.p032io.core.internal.EncodeResult;
import io.ktor.utils.p032io.core.internal.UTF8Kt;
import io.ktor.utils.p032io.core.internal.UnsafeKt;
import java.io.EOFException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.Charsets;
/* compiled from: Strings.kt */
/* renamed from: io.ktor.utils.io.core.StringsKt */
/* loaded from: classes4.dex */
public final class StringsKt {
    public static /* synthetic */ byte[] readBytes$default(ByteReadPacket byteReadPacket, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            long remaining = byteReadPacket.getRemaining();
            if (remaining > 2147483647L) {
                throw new IllegalArgumentException("Unable to convert to a ByteArray: packet is too big");
            }
            i = (int) remaining;
        }
        return readBytes(byteReadPacket, i);
    }

    public static final byte[] readBytes(ByteReadPacket byteReadPacket, int i) {
        Intrinsics.checkNotNullParameter(byteReadPacket, "<this>");
        if (i != 0) {
            byte[] bArr = new byte[i];
            InputArraysKt.readFully(byteReadPacket, bArr, 0, i);
            return bArr;
        }
        return UnsafeKt.EmptyByteArray;
    }

    public static final byte[] readBytes(Input input, int i) {
        Intrinsics.checkNotNullParameter(input, "<this>");
        return readBytesOf(input, i, i);
    }

    public static final byte[] readBytes(Input input) {
        Intrinsics.checkNotNullParameter(input, "<this>");
        return readBytesOf$default(input, 0, 0, 3, null);
    }

    public static /* synthetic */ byte[] readBytesOf$default(Input input, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = Integer.MAX_VALUE;
        }
        return readBytesOf(input, i, i2);
    }

    public static final byte[] readBytesOf(Input input, int i, int i2) {
        long coerceAtMost;
        long coerceAtLeast;
        int readAvailable;
        Intrinsics.checkNotNullParameter(input, "<this>");
        if (i == i2 && i == 0) {
            return UnsafeKt.EmptyByteArray;
        }
        int i3 = 0;
        if (i == i2) {
            byte[] bArr = new byte[i];
            InputArraysKt.readFully(input, bArr, 0, i);
            return bArr;
        }
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(i2, EncodingKt.sizeEstimate(input));
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(coerceAtMost, i);
        byte[] bArr2 = new byte[(int) coerceAtLeast];
        while (i3 < i2 && (readAvailable = InputArraysKt.readAvailable(input, bArr2, i3, Math.min(i2, bArr2.length) - i3)) > 0) {
            i3 += readAvailable;
            if (bArr2.length == i3) {
                bArr2 = Arrays.copyOf(bArr2, i3 * 2);
                Intrinsics.checkNotNullExpressionValue(bArr2, "copyOf(this, newSize)");
            }
        }
        if (i3 < i) {
            throw new EOFException("Not enough bytes available to read " + i + " bytes: " + (i - i3) + " more required");
        } else if (i3 == bArr2.length) {
            return bArr2;
        } else {
            byte[] copyOf = Arrays.copyOf(bArr2, i3);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            return copyOf;
        }
    }

    public static /* synthetic */ void writeText$default(Output output, CharSequence charSequence, int i, int i2, Charset charset, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = charSequence.length();
        }
        if ((i3 & 8) != 0) {
            charset = Charsets.UTF_8;
        }
        writeText(output, charSequence, i, i2, charset);
    }

    public static final void writeText(Output output, CharSequence text, int i, int i2, Charset charset) {
        Intrinsics.checkNotNullParameter(output, "<this>");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(charset, "charset");
        if (charset == Charsets.UTF_8) {
            writeTextUtf8(output, text, i, i2);
            return;
        }
        CharsetEncoder newEncoder = charset.newEncoder();
        Intrinsics.checkNotNullExpressionValue(newEncoder, "charset.newEncoder()");
        EncodingKt.encodeToImpl(newEncoder, output, text, i, i2);
    }

    public static final Void prematureEndOfStream(int i) {
        throw new EOFException("Premature end of stream: expected " + i + " bytes");
    }

    private static final void writeTextUtf8(Output output, CharSequence charSequence, int i, int i2) {
        ChunkBuffer prepareWriteHead = UnsafeKt.prepareWriteHead(output, 1, null);
        while (true) {
            try {
                int m1927encodeUTF8lBXzO7A = UTF8Kt.m1927encodeUTF8lBXzO7A(prepareWriteHead.m1917getMemorySK3TCg8(), charSequence, i, i2, prepareWriteHead.getWritePosition(), prepareWriteHead.getLimit());
                int m1921component1Mh2AYeg = EncodeResult.m1921component1Mh2AYeg(m1927encodeUTF8lBXzO7A) & 65535;
                i += m1921component1Mh2AYeg;
                prepareWriteHead.commitWritten(EncodeResult.m1922component2Mh2AYeg(m1927encodeUTF8lBXzO7A) & 65535);
                int i3 = (m1921component1Mh2AYeg != 0 || i >= i2) ? i < i2 ? 1 : 0 : 8;
                if (i3 <= 0) {
                    return;
                }
                prepareWriteHead = UnsafeKt.prepareWriteHead(output, i3, prepareWriteHead);
            } finally {
                output.afterHeadWrite();
            }
        }
    }
}
