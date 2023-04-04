package org.bouncycastle.pqc.crypto.mceliece;

import org.bouncycastle.pqc.math.linearalgebra.GF2Matrix;
/* loaded from: classes4.dex */
public class McElieceCCA2PublicKeyParameters extends McElieceCCA2KeyParameters {
    private GF2Matrix matrixG;

    /* renamed from: n */
    private int f1402n;

    /* renamed from: t */
    private int f1403t;

    public McElieceCCA2PublicKeyParameters(int i, int i2, GF2Matrix gF2Matrix, String str) {
        super(false, str);
        this.f1402n = i;
        this.f1403t = i2;
        this.matrixG = new GF2Matrix(gF2Matrix);
    }

    public GF2Matrix getG() {
        return this.matrixG;
    }

    public int getN() {
        return this.f1402n;
    }

    public int getT() {
        return this.f1403t;
    }
}
