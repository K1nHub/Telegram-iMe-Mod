package org.bouncycastle.pqc.crypto.mceliece;

import org.bouncycastle.pqc.math.linearalgebra.GF2Matrix;
/* loaded from: classes4.dex */
public class McEliecePublicKeyParameters extends McElieceKeyParameters {

    /* renamed from: g */
    private GF2Matrix f1403g;

    /* renamed from: n */
    private int f1404n;

    /* renamed from: t */
    private int f1405t;

    public McEliecePublicKeyParameters(int i, int i2, GF2Matrix gF2Matrix) {
        super(false, null);
        this.f1404n = i;
        this.f1405t = i2;
        this.f1403g = new GF2Matrix(gF2Matrix);
    }

    public GF2Matrix getG() {
        return this.f1403g;
    }

    public int getN() {
        return this.f1404n;
    }

    public int getT() {
        return this.f1405t;
    }
}
