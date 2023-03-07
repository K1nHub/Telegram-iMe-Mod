package org.apache.commons.codec.binary;

import java.util.Arrays;
/* loaded from: classes4.dex */
public abstract class BaseNCodec {
    private final int chunkSeparatorLength;
    private final int encodedBlockSize;
    protected final int lineLength;
    protected final byte pad;
    private final int unencodedBlockSize;

    abstract void decode(byte[] bArr, int i, int i2, Context context);

    abstract void encode(byte[] bArr, int i, int i2, Context context);

    protected int getDefaultBufferSize() {
        return 8192;
    }

    protected abstract boolean isInAlphabet(byte b);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class Context {
        byte[] buffer;
        int currentLinePos;
        boolean eof;
        int ibitWorkArea;
        long lbitWorkArea;
        int modulus;
        int pos;
        int readPos;

        Context() {
        }

        public String toString() {
            return String.format("%s[buffer=%s, currentLinePos=%s, eof=%s, ibitWorkArea=%s, lbitWorkArea=%s, modulus=%s, pos=%s, readPos=%s]", Context.class.getSimpleName(), Arrays.toString(this.buffer), Integer.valueOf(this.currentLinePos), Boolean.valueOf(this.eof), Integer.valueOf(this.ibitWorkArea), Long.valueOf(this.lbitWorkArea), Integer.valueOf(this.modulus), Integer.valueOf(this.pos), Integer.valueOf(this.readPos));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseNCodec(int i, int i2, int i3, int i4) {
        this(i, i2, i3, i4, (byte) 61);
    }

    protected BaseNCodec(int i, int i2, int i3, int i4, byte b) {
        this.unencodedBlockSize = i;
        this.encodedBlockSize = i2;
        this.lineLength = i3 > 0 && i4 > 0 ? (i3 / i2) * i2 : 0;
        this.chunkSeparatorLength = i4;
        this.pad = b;
    }

    int available(Context context) {
        if (context.buffer != null) {
            return context.pos - context.readPos;
        }
        return 0;
    }

    private static byte[] resizeBuffer(Context context, int i) {
        int length = context.buffer.length * 2;
        if (compareUnsigned(length, i) < 0) {
            length = i;
        }
        if (compareUnsigned(length, 2147483639) > 0) {
            length = createPositiveCapacity(i);
        }
        byte[] bArr = new byte[length];
        byte[] bArr2 = context.buffer;
        System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
        context.buffer = bArr;
        return bArr;
    }

    private static int compareUnsigned(int i, int i2) {
        return Integer.compare(i - 2147483648, i2 - 2147483648);
    }

    private static int createPositiveCapacity(int i) {
        if (i >= 0) {
            if (i > 2147483639) {
                return i;
            }
            return 2147483639;
        }
        throw new OutOfMemoryError("Unable to allocate array size: " + (i & 4294967295L));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] ensureBufferSize(int i, Context context) {
        byte[] bArr = context.buffer;
        if (bArr == null) {
            context.buffer = new byte[getDefaultBufferSize()];
            context.pos = 0;
            context.readPos = 0;
        } else {
            int i2 = context.pos;
            if ((i2 + i) - bArr.length > 0) {
                return resizeBuffer(context, i2 + i);
            }
        }
        return context.buffer;
    }

    int readResults(byte[] bArr, int i, int i2, Context context) {
        if (context.buffer == null) {
            return context.eof ? -1 : 0;
        }
        int min = Math.min(available(context), i2);
        System.arraycopy(context.buffer, context.readPos, bArr, i, min);
        int i3 = context.readPos + min;
        context.readPos = i3;
        if (i3 >= context.pos) {
            context.buffer = null;
        }
        return min;
    }

    public byte[] decode(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return bArr;
        }
        Context context = new Context();
        decode(bArr, 0, bArr.length, context);
        decode(bArr, 0, -1, context);
        int i = context.pos;
        byte[] bArr2 = new byte[i];
        readResults(bArr2, 0, i, context);
        return bArr2;
    }

    public byte[] encode(byte[] bArr) {
        return (bArr == null || bArr.length == 0) ? bArr : encode(bArr, 0, bArr.length);
    }

    public byte[] encode(byte[] bArr, int i, int i2) {
        if (bArr == null || bArr.length == 0) {
            return bArr;
        }
        Context context = new Context();
        encode(bArr, i, i2, context);
        encode(bArr, i, -1, context);
        int i3 = context.pos - context.readPos;
        byte[] bArr2 = new byte[i3];
        readResults(bArr2, 0, i3, context);
        return bArr2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean containsAlphabetOrPad(byte[] bArr) {
        if (bArr == null) {
            return false;
        }
        for (byte b : bArr) {
            if (this.pad == b || isInAlphabet(b)) {
                return true;
            }
        }
        return false;
    }

    public long getEncodedLength(byte[] bArr) {
        int length = bArr.length;
        int i = this.unencodedBlockSize;
        long j = (((length + i) - 1) / i) * this.encodedBlockSize;
        int i2 = this.lineLength;
        return i2 > 0 ? j + ((((i2 + j) - 1) / i2) * this.chunkSeparatorLength) : j;
    }
}
