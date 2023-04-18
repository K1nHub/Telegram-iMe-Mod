package org.bouncycastle.pqc.crypto.mceliece;

import org.bouncycastle.pqc.math.linearalgebra.GF2Matrix;
/* loaded from: classes4.dex */
public class McEliecePublicKeyParameters extends McElieceKeyParameters {

    /* renamed from: g */
    private GF2Matrix f1332g;

    /* renamed from: n */
    private int f1333n;

    /* renamed from: t */
    private int f1334t;

    public McEliecePublicKeyParameters(int i, int i2, GF2Matrix gF2Matrix) {
        super(false, null);
        this.f1333n = i;
        this.f1334t = i2;
        this.f1332g = new GF2Matrix(gF2Matrix);
    }

    public GF2Matrix getG() {
        return this.f1332g;
    }

    public int getN() {
        return this.f1333n;
    }

    public int getT() {
        return this.f1334t;
    }
}
