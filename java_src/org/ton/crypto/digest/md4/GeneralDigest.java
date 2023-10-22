package org.ton.crypto.digest.md4;

import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
import org.ton.crypto.digest.Digest;
/* compiled from: GeneralDigest.kt */
/* loaded from: classes6.dex */
public abstract class GeneralDigest implements Digest {
    private int byteCount;
    private final byte[] xBuf = new byte[4];
    private int xBuffOff;

    protected abstract void processBlock();

    protected abstract void processLength(long j);

    protected abstract void processWord(byte[] bArr, int i);

    @Override // org.ton.crypto.digest.Digest
    public byte[] build() {
        return Digest.DefaultImpls.build(this);
    }

    @Override // org.ton.crypto.digest.Digest
    public byte[] build(byte[] bArr) {
        return Digest.DefaultImpls.build(this, bArr);
    }

    @Override // org.ton.crypto.digest.Digest
    public void update(byte[] bArr) {
        Digest.DefaultImpls.update(this, bArr);
    }

    public final void update(byte b) {
        byte[] bArr = this.xBuf;
        int i = this.xBuffOff;
        int i2 = i + 1;
        this.xBuffOff = i2;
        bArr[i] = b;
        if (i2 == bArr.length) {
            processWord(bArr, 0);
            this.xBuffOff = 0;
        }
        this.byteCount++;
    }

    @Override // org.ton.crypto.digest.Digest
    public void update(byte[] input, int i, int i2) {
        Intrinsics.checkNotNullParameter(input, "input");
        int i3 = 0;
        if (this.xBuffOff != 0) {
            int i4 = 0;
            while (true) {
                if (i4 >= i2) {
                    i3 = i4;
                    break;
                }
                byte[] bArr = this.xBuf;
                int i5 = this.xBuffOff;
                int i6 = i5 + 1;
                this.xBuffOff = i6;
                int i7 = i4 + 1;
                bArr[i5] = input[i4 + i];
                if (i6 == 4) {
                    processWord(bArr, 0);
                    this.xBuffOff = 0;
                    i3 = i7;
                    break;
                }
                i4 = i7;
            }
        }
        int i8 = ((i2 - i3) & (-4)) + i3;
        while (i3 < i8) {
            processWord(input, i + i3);
            i3 += 4;
        }
        while (i3 < i2) {
            byte[] bArr2 = this.xBuf;
            int i9 = this.xBuffOff;
            this.xBuffOff = i9 + 1;
            bArr2[i9] = input[i3 + i];
            i3++;
        }
        this.byteCount += i2;
    }

    public final void finish() {
        long j = this.byteCount << 3;
        update(Byte.MIN_VALUE);
        while (this.xBuffOff != 0) {
            update((byte) 0);
        }
        processLength(j);
        processBlock();
    }

    @Override // org.ton.crypto.digest.Digest
    public void reset() {
        this.byteCount = 0;
        this.xBuffOff = 0;
        ArraysKt___ArraysJvmKt.fill$default(this.xBuf, (byte) 0, 0, 0, 6, (Object) null);
    }
}
