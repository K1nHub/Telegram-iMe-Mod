package kotlin.random;

import java.io.Serializable;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: XorWowRandom.kt */
/* loaded from: classes4.dex */
public final class XorWowRandom extends Random implements Serializable {
    private int addend;

    /* renamed from: v */
    private int f1351v;

    /* renamed from: w */
    private int f1352w;

    /* renamed from: x */
    private int f1353x;

    /* renamed from: y */
    private int f1354y;

    /* renamed from: z */
    private int f1355z;

    static {
        new Companion(null);
    }

    public XorWowRandom(int i, int i2, int i3, int i4, int i5, int i6) {
        this.f1353x = i;
        this.f1354y = i2;
        this.f1355z = i3;
        this.f1352w = i4;
        this.f1351v = i5;
        this.addend = i6;
        int i7 = i | i2 | i3 | i4 | i5;
        if (!(i7 != 0)) {
            throw new IllegalArgumentException("Initial state must have at least one non-zero element.".toString());
        }
        for (int i8 = 0; i8 < 64; i8++) {
            nextInt();
        }
    }

    public XorWowRandom(int i, int i2) {
        this(i, i2, 0, 0, ~i, (i << 10) ^ (i2 >>> 4));
    }

    @Override // kotlin.random.Random
    public int nextInt() {
        int i = this.f1353x;
        int i2 = i ^ (i >>> 2);
        this.f1353x = this.f1354y;
        this.f1354y = this.f1355z;
        this.f1355z = this.f1352w;
        int i3 = this.f1351v;
        this.f1352w = i3;
        int i4 = ((i2 ^ (i2 << 1)) ^ i3) ^ (i3 << 4);
        this.f1351v = i4;
        int i5 = this.addend + 362437;
        this.addend = i5;
        return i4 + i5;
    }

    @Override // kotlin.random.Random
    public int nextBits(int i) {
        return RandomKt.takeUpperBits(nextInt(), i);
    }

    /* compiled from: XorWowRandom.kt */
    /* loaded from: classes4.dex */
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
