package io.ktor.utils.p032io.charsets;

import io.ktor.utils.p032io.bits.Memory;
import io.ktor.utils.p032io.core.Buffer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.MalformedInputException;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CharsetJVM.kt */
/* renamed from: io.ktor.utils.io.charsets.CharsetJVMKt */
/* loaded from: classes4.dex */
public final class CharsetJVMKt {
    private static final CharBuffer EmptyCharBuffer = CharBuffer.allocate(0);

    public static final byte[] encodeToByteArray(CharsetEncoder charsetEncoder, CharSequence input, int i, int i2) {
        Intrinsics.checkNotNullParameter(charsetEncoder, "<this>");
        Intrinsics.checkNotNullParameter(input, "input");
        if (input instanceof String) {
            if (i == 0 && i2 == input.length()) {
                byte[] bytes = ((String) input).getBytes(charsetEncoder.charset());
                Intrinsics.checkNotNullExpressionValue(bytes, "input as java.lang.String).getBytes(charset())");
                return bytes;
            }
            String substring = ((String) input).substring(i, i2);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            Intrinsics.checkNotNull(substring, "null cannot be cast to non-null type java.lang.String");
            byte[] bytes2 = substring.getBytes(charsetEncoder.charset());
            Intrinsics.checkNotNullExpressionValue(bytes2, "input.substring(fromInde…ring).getBytes(charset())");
            return bytes2;
        }
        return encodeToByteArraySlow(charsetEncoder, input, i, i2);
    }

    private static final byte[] encodeToByteArraySlow(CharsetEncoder charsetEncoder, CharSequence charSequence, int i, int i2) {
        ByteBuffer encode = charsetEncoder.encode(CharBuffer.wrap(charSequence, i, i2));
        byte[] bArr = null;
        if (encode.hasArray() && encode.arrayOffset() == 0) {
            byte[] array = encode.array();
            if (array.length == encode.remaining()) {
                bArr = array;
            }
        }
        if (bArr == null) {
            byte[] bArr2 = new byte[encode.remaining()];
            encode.get(bArr2);
            return bArr2;
        }
        return bArr;
    }

    public static final int encodeImpl(CharsetEncoder charsetEncoder, CharSequence input, int i, int i2, Buffer dst) {
        Intrinsics.checkNotNullParameter(charsetEncoder, "<this>");
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(dst, "dst");
        CharBuffer wrap = CharBuffer.wrap(input, i, i2);
        int remaining = wrap.remaining();
        ByteBuffer m1920getMemorySK3TCg8 = dst.m1920getMemorySK3TCg8();
        int writePosition = dst.getWritePosition();
        int limit = dst.getLimit() - writePosition;
        ByteBuffer m1915slice87lwejk = Memory.m1915slice87lwejk(m1920getMemorySK3TCg8, writePosition, limit);
        CoderResult result = charsetEncoder.encode(wrap, m1915slice87lwejk, false);
        if (result.isMalformed() || result.isUnmappable()) {
            Intrinsics.checkNotNullExpressionValue(result, "result");
            throwExceptionWrapped(result);
        }
        if (!(m1915slice87lwejk.limit() == limit)) {
            throw new IllegalStateException("Buffer's limit change is not allowed".toString());
        }
        dst.commitWritten(m1915slice87lwejk.position());
        return remaining - wrap.remaining();
    }

    private static final void throwExceptionWrapped(CoderResult coderResult) {
        try {
            coderResult.throwException();
        } catch (MalformedInputException e) {
            String message = e.getMessage();
            if (message == null) {
                message = "Failed to decode bytes";
            }
            throw new MalformedInputException(message);
        }
    }

    static {
        Intrinsics.checkNotNull(ByteBuffer.allocate(0));
    }

    public static final boolean encodeComplete(CharsetEncoder charsetEncoder, Buffer dst) {
        Intrinsics.checkNotNullParameter(charsetEncoder, "<this>");
        Intrinsics.checkNotNullParameter(dst, "dst");
        ByteBuffer m1920getMemorySK3TCg8 = dst.m1920getMemorySK3TCg8();
        int writePosition = dst.getWritePosition();
        int limit = dst.getLimit() - writePosition;
        ByteBuffer m1915slice87lwejk = Memory.m1915slice87lwejk(m1920getMemorySK3TCg8, writePosition, limit);
        CoderResult result = charsetEncoder.encode(EmptyCharBuffer, m1915slice87lwejk, true);
        if (result.isMalformed() || result.isUnmappable()) {
            Intrinsics.checkNotNullExpressionValue(result, "result");
            throwExceptionWrapped(result);
        }
        boolean isUnderflow = result.isUnderflow();
        if (!(m1915slice87lwejk.limit() == limit)) {
            throw new IllegalStateException("Buffer's limit change is not allowed".toString());
        }
        dst.commitWritten(m1915slice87lwejk.position());
        return isUnderflow;
    }
}
