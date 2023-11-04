package org.ton.crypto.digest.sha2;

import io.ktor.utils.p032io.bits.Memory;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.ton.crypto.digest.md4.GeneralDigest;
/* compiled from: SHA256Digest.kt */
/* loaded from: classes6.dex */
public final class SHA256Digest extends GeneralDigest {

    /* renamed from: h1 */
    private int f2057h1;

    /* renamed from: h2 */
    private int f2058h2;

    /* renamed from: h3 */
    private int f2059h3;

    /* renamed from: h4 */
    private int f2060h4;

    /* renamed from: h5 */
    private int f2061h5;

    /* renamed from: h6 */
    private int f2062h6;

    /* renamed from: h7 */
    private int f2063h7;

    /* renamed from: h8 */
    private int f2064h8;

    /* renamed from: x */
    private final int[] f2065x = new int[64];
    private int xOff;

    static {
        new Companion(null);
    }

    @Override // org.ton.crypto.digest.Digest
    public String getAlgorithmName() {
        return "SHA-256";
    }

    @Override // org.ton.crypto.digest.Digest
    public int getDigestSize() {
        return 32;
    }

    public SHA256Digest() {
        reset();
    }

    @Override // org.ton.crypto.digest.Digest
    public byte[] build(byte[] output, int i) {
        Intrinsics.checkNotNullParameter(output, "output");
        finish();
        ByteBuffer order = ByteBuffer.wrap(output, 0, output.length).slice().order(ByteOrder.BIG_ENDIAN);
        Intrinsics.checkNotNullExpressionValue(order, "wrap(this, offset, lengt…der(ByteOrder.BIG_ENDIAN)");
        ByteBuffer m1910constructorimpl = Memory.m1910constructorimpl(order);
        m1910constructorimpl.putInt(i, this.f2057h1);
        m1910constructorimpl.putInt(i + 4, this.f2058h2);
        m1910constructorimpl.putInt(i + 8, this.f2059h3);
        m1910constructorimpl.putInt(i + 12, this.f2060h4);
        m1910constructorimpl.putInt(i + 16, this.f2061h5);
        m1910constructorimpl.putInt(i + 20, this.f2062h6);
        m1910constructorimpl.putInt(i + 24, this.f2063h7);
        m1910constructorimpl.putInt(i + 28, this.f2064h8);
        reset();
        return output;
    }

    @Override // org.ton.crypto.digest.md4.GeneralDigest, org.ton.crypto.digest.Digest
    public void reset() {
        super.reset();
        this.f2057h1 = 1779033703;
        this.f2058h2 = -1150833019;
        this.f2059h3 = 1013904242;
        this.f2060h4 = -1521486534;
        this.f2061h5 = 1359893119;
        this.f2062h6 = -1694144372;
        this.f2063h7 = 528734635;
        this.f2064h8 = 1541459225;
        this.xOff = 0;
        ArraysKt___ArraysJvmKt.fill$default(this.f2065x, 0, 0, 0, 6, (Object) null);
    }

    @Override // org.ton.crypto.digest.md4.GeneralDigest
    protected void processWord(byte[] input, int i) {
        Intrinsics.checkNotNullParameter(input, "input");
        int i2 = (input[i + 3] & 255) | (input[i] << 24) | ((input[i + 1] & 255) << 16) | ((input[i + 2] & 255) << 8);
        int[] iArr = this.f2065x;
        int i3 = this.xOff;
        iArr[i3] = i2;
        int i4 = i3 + 1;
        this.xOff = i4;
        if (i4 == 16) {
            processBlock();
        }
    }

    @Override // org.ton.crypto.digest.md4.GeneralDigest
    protected void processLength(long j) {
        if (this.xOff > 14) {
            processBlock();
        }
        int[] iArr = this.f2065x;
        iArr[14] = (int) (j >>> 32);
        iArr[15] = (int) (j & 4294967295L);
    }

    @Override // org.ton.crypto.digest.md4.GeneralDigest
    protected void processBlock() {
        int Sum1;
        int m28Ch;
        int[] iArr;
        int Sum0;
        int Maj;
        int Sum12;
        int m28Ch2;
        int[] iArr2;
        int Sum02;
        int Maj2;
        int Sum13;
        int m28Ch3;
        int[] iArr3;
        int Sum03;
        int Maj3;
        int Sum14;
        int m28Ch4;
        int[] iArr4;
        int Sum04;
        int Maj4;
        int Sum15;
        int m28Ch5;
        int[] iArr5;
        int Sum05;
        int Maj5;
        int Sum16;
        int m28Ch6;
        int[] iArr6;
        int Sum06;
        int Maj6;
        int Sum17;
        int m28Ch7;
        int[] iArr7;
        int Sum07;
        int Maj7;
        int Sum18;
        int m28Ch8;
        int[] iArr8;
        int Sum08;
        int Maj8;
        int Theta1;
        int Theta0;
        for (int i = 16; i < 64; i++) {
            int[] iArr9 = this.f2065x;
            Theta1 = SHA256DigestKt.Theta1(iArr9[i - 2]);
            int[] iArr10 = this.f2065x;
            int i2 = Theta1 + iArr10[i - 7];
            Theta0 = SHA256DigestKt.Theta0(iArr10[i - 15]);
            iArr9[i] = i2 + Theta0 + this.f2065x[i - 16];
        }
        int i3 = this.f2057h1;
        int i4 = this.f2058h2;
        int i5 = this.f2059h3;
        int i6 = this.f2060h4;
        int i7 = this.f2061h5;
        int i8 = this.f2062h6;
        int i9 = this.f2063h7;
        int i10 = this.f2064h8;
        int i11 = 0;
        for (int i12 = 0; i12 < 8; i12++) {
            Sum1 = SHA256DigestKt.Sum1(i7);
            m28Ch = SHA256DigestKt.m28Ch(i7, i8, i9);
            int i13 = Sum1 + m28Ch;
            iArr = SHA256DigestKt.f2066k;
            int i14 = i10 + i13 + iArr[i11] + this.f2065x[i11];
            int i15 = i6 + i14;
            Sum0 = SHA256DigestKt.Sum0(i3);
            Maj = SHA256DigestKt.Maj(i3, i4, i5);
            int i16 = i14 + Sum0 + Maj;
            int i17 = i11 + 1;
            Sum12 = SHA256DigestKt.Sum1(i15);
            m28Ch2 = SHA256DigestKt.m28Ch(i15, i7, i8);
            int i18 = Sum12 + m28Ch2;
            iArr2 = SHA256DigestKt.f2066k;
            int i19 = i9 + i18 + iArr2[i17] + this.f2065x[i17];
            int i20 = i5 + i19;
            Sum02 = SHA256DigestKt.Sum0(i16);
            Maj2 = SHA256DigestKt.Maj(i16, i3, i4);
            int i21 = i19 + Sum02 + Maj2;
            int i22 = i17 + 1;
            Sum13 = SHA256DigestKt.Sum1(i20);
            m28Ch3 = SHA256DigestKt.m28Ch(i20, i15, i7);
            int i23 = Sum13 + m28Ch3;
            iArr3 = SHA256DigestKt.f2066k;
            int i24 = i8 + i23 + iArr3[i22] + this.f2065x[i22];
            int i25 = i4 + i24;
            Sum03 = SHA256DigestKt.Sum0(i21);
            Maj3 = SHA256DigestKt.Maj(i21, i16, i3);
            int i26 = i24 + Sum03 + Maj3;
            int i27 = i22 + 1;
            Sum14 = SHA256DigestKt.Sum1(i25);
            m28Ch4 = SHA256DigestKt.m28Ch(i25, i20, i15);
            int i28 = Sum14 + m28Ch4;
            iArr4 = SHA256DigestKt.f2066k;
            int i29 = i7 + i28 + iArr4[i27] + this.f2065x[i27];
            int i30 = i3 + i29;
            Sum04 = SHA256DigestKt.Sum0(i26);
            Maj4 = SHA256DigestKt.Maj(i26, i21, i16);
            int i31 = i29 + Sum04 + Maj4;
            int i32 = i27 + 1;
            Sum15 = SHA256DigestKt.Sum1(i30);
            m28Ch5 = SHA256DigestKt.m28Ch(i30, i25, i20);
            int i33 = Sum15 + m28Ch5;
            iArr5 = SHA256DigestKt.f2066k;
            int i34 = i15 + i33 + iArr5[i32] + this.f2065x[i32];
            i10 = i16 + i34;
            Sum05 = SHA256DigestKt.Sum0(i31);
            Maj5 = SHA256DigestKt.Maj(i31, i26, i21);
            i6 = i34 + Sum05 + Maj5;
            int i35 = i32 + 1;
            Sum16 = SHA256DigestKt.Sum1(i10);
            m28Ch6 = SHA256DigestKt.m28Ch(i10, i30, i25);
            int i36 = Sum16 + m28Ch6;
            iArr6 = SHA256DigestKt.f2066k;
            int i37 = i20 + i36 + iArr6[i35] + this.f2065x[i35];
            i9 = i21 + i37;
            Sum06 = SHA256DigestKt.Sum0(i6);
            Maj6 = SHA256DigestKt.Maj(i6, i31, i26);
            i5 = i37 + Sum06 + Maj6;
            int i38 = i35 + 1;
            Sum17 = SHA256DigestKt.Sum1(i9);
            m28Ch7 = SHA256DigestKt.m28Ch(i9, i10, i30);
            int i39 = Sum17 + m28Ch7;
            iArr7 = SHA256DigestKt.f2066k;
            int i40 = i25 + i39 + iArr7[i38] + this.f2065x[i38];
            i8 = i26 + i40;
            Sum07 = SHA256DigestKt.Sum0(i5);
            Maj7 = SHA256DigestKt.Maj(i5, i6, i31);
            i4 = i40 + Sum07 + Maj7;
            int i41 = i38 + 1;
            Sum18 = SHA256DigestKt.Sum1(i8);
            m28Ch8 = SHA256DigestKt.m28Ch(i8, i9, i10);
            int i42 = Sum18 + m28Ch8;
            iArr8 = SHA256DigestKt.f2066k;
            int i43 = i30 + i42 + iArr8[i41] + this.f2065x[i41];
            i7 = i31 + i43;
            Sum08 = SHA256DigestKt.Sum0(i4);
            Maj8 = SHA256DigestKt.Maj(i4, i5, i6);
            i3 = i43 + Sum08 + Maj8;
            i11 = i41 + 1;
        }
        this.f2057h1 += i3;
        this.f2058h2 += i4;
        this.f2059h3 += i5;
        this.f2060h4 += i6;
        this.f2061h5 += i7;
        this.f2062h6 += i8;
        this.f2063h7 += i9;
        this.f2064h8 += i10;
        this.xOff = 0;
        ArraysKt___ArraysJvmKt.fill$default(this.f2065x, 0, 0, 0, 6, (Object) null);
    }

    /* compiled from: SHA256Digest.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
