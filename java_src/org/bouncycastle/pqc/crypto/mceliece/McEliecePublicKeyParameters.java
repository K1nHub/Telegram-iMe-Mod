package org.bouncycastle.pqc.crypto.mceliece;

import org.bouncycastle.pqc.math.linearalgebra.GF2Matrix;
/* loaded from: classes4.dex */
public class McEliecePublicKeyParameters extends McElieceKeyParameters {

    /* renamed from: g */
    private GF2Matrix f1402g;

    /* renamed from: n */
    private int f1403n;

    /* renamed from: t */
    private int f1404t;

    public McEliecePublicKeyParameters(int i, int i2, GF2Matrix gF2Matrix) {
        super(false, null);
        this.f1403n = i;
        this.f1404t = i2;
        this.f1402g = new GF2Matrix(gF2Matrix);
    }

    public GF2Matrix getG() {
        return this.f1402g;
    }

    public int getN() {
        return this.f1403n;
    }

    public int getT() {
        return this.f1404t;
    }
}
