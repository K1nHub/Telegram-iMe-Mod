package org.bouncycastle.pqc.crypto.mceliece;

import org.bouncycastle.pqc.math.linearalgebra.GF2Matrix;
/* loaded from: classes4.dex */
public class McEliecePublicKeyParameters extends McElieceKeyParameters {

    /* renamed from: g */
    private GF2Matrix f1337g;

    /* renamed from: n */
    private int f1338n;

    /* renamed from: t */
    private int f1339t;

    public McEliecePublicKeyParameters(int i, int i2, GF2Matrix gF2Matrix) {
        super(false, null);
        this.f1338n = i;
        this.f1339t = i2;
        this.f1337g = new GF2Matrix(gF2Matrix);
    }

    public GF2Matrix getG() {
        return this.f1337g;
    }

    public int getN() {
        return this.f1338n;
    }

    public int getT() {
        return this.f1339t;
    }
}
