package org.bouncycastle.pqc.crypto.mceliece;

import org.bouncycastle.pqc.math.linearalgebra.GF2Matrix;
/* loaded from: classes4.dex */
public class McEliecePublicKeyParameters extends McElieceKeyParameters {

    /* renamed from: g */
    private GF2Matrix f1504g;

    /* renamed from: n */
    private int f1505n;

    /* renamed from: t */
    private int f1506t;

    public McEliecePublicKeyParameters(int i, int i2, GF2Matrix gF2Matrix) {
        super(false, null);
        this.f1505n = i;
        this.f1506t = i2;
        this.f1504g = new GF2Matrix(gF2Matrix);
    }

    public GF2Matrix getG() {
        return this.f1504g;
    }

    public int getN() {
        return this.f1505n;
    }

    public int getT() {
        return this.f1506t;
    }
}
