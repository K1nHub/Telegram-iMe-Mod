package org.bouncycastle.pqc.crypto.mceliece;

import org.bouncycastle.pqc.math.linearalgebra.GF2Matrix;
/* loaded from: classes4.dex */
public class McEliecePublicKeyParameters extends McElieceKeyParameters {

    /* renamed from: g */
    private GF2Matrix f1419g;

    /* renamed from: n */
    private int f1420n;

    /* renamed from: t */
    private int f1421t;

    public McEliecePublicKeyParameters(int i, int i2, GF2Matrix gF2Matrix) {
        super(false, null);
        this.f1420n = i;
        this.f1421t = i2;
        this.f1419g = new GF2Matrix(gF2Matrix);
    }

    public GF2Matrix getG() {
        return this.f1419g;
    }

    public int getN() {
        return this.f1420n;
    }

    public int getT() {
        return this.f1421t;
    }
}
