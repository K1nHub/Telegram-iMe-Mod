package org.bouncycastle.pqc.crypto.mceliece;

import org.bouncycastle.pqc.math.linearalgebra.GF2Matrix;
/* loaded from: classes4.dex */
public class McEliecePublicKeyParameters extends McElieceKeyParameters {

    /* renamed from: g */
    private GF2Matrix f1397g;

    /* renamed from: n */
    private int f1398n;

    /* renamed from: t */
    private int f1399t;

    public McEliecePublicKeyParameters(int i, int i2, GF2Matrix gF2Matrix) {
        super(false, null);
        this.f1398n = i;
        this.f1399t = i2;
        this.f1397g = new GF2Matrix(gF2Matrix);
    }

    public GF2Matrix getG() {
        return this.f1397g;
    }

    public int getN() {
        return this.f1398n;
    }

    public int getT() {
        return this.f1399t;
    }
}
