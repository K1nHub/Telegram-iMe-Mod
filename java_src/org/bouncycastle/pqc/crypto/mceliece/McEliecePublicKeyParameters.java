package org.bouncycastle.pqc.crypto.mceliece;

import org.bouncycastle.pqc.math.linearalgebra.GF2Matrix;
/* loaded from: classes6.dex */
public class McEliecePublicKeyParameters extends McElieceKeyParameters {

    /* renamed from: g */
    private GF2Matrix f1423g;

    /* renamed from: n */
    private int f1424n;

    /* renamed from: t */
    private int f1425t;

    public McEliecePublicKeyParameters(int i, int i2, GF2Matrix gF2Matrix) {
        super(false, null);
        this.f1424n = i;
        this.f1425t = i2;
        this.f1423g = new GF2Matrix(gF2Matrix);
    }

    public GF2Matrix getG() {
        return this.f1423g;
    }

    public int getN() {
        return this.f1424n;
    }

    public int getT() {
        return this.f1425t;
    }
}
