package org.bouncycastle.pqc.crypto.mceliece;

import org.bouncycastle.pqc.math.linearalgebra.GF2Matrix;
import org.bouncycastle.pqc.math.linearalgebra.GF2mField;
import org.bouncycastle.pqc.math.linearalgebra.GoppaCode;
import org.bouncycastle.pqc.math.linearalgebra.Permutation;
import org.bouncycastle.pqc.math.linearalgebra.PolynomialGF2mSmallM;
import org.bouncycastle.pqc.math.linearalgebra.PolynomialRingGF2m;
/* loaded from: classes4.dex */
public class McElieceCCA2PrivateKeyParameters extends McElieceCCA2KeyParameters {
    private GF2mField field;
    private PolynomialGF2mSmallM goppaPoly;

    /* renamed from: h */
    private GF2Matrix f1422h;

    /* renamed from: k */
    private int f1423k;

    /* renamed from: n */
    private int f1424n;

    /* renamed from: p */
    private Permutation f1425p;

    public McElieceCCA2PrivateKeyParameters(int i, int i2, GF2mField gF2mField, PolynomialGF2mSmallM polynomialGF2mSmallM, GF2Matrix gF2Matrix, Permutation permutation, String str) {
        super(true, str);
        this.f1424n = i;
        this.f1423k = i2;
        this.field = gF2mField;
        this.goppaPoly = polynomialGF2mSmallM;
        this.f1422h = gF2Matrix;
        this.f1425p = permutation;
        new PolynomialRingGF2m(gF2mField, polynomialGF2mSmallM).getSquareRootMatrix();
    }

    public McElieceCCA2PrivateKeyParameters(int i, int i2, GF2mField gF2mField, PolynomialGF2mSmallM polynomialGF2mSmallM, Permutation permutation, String str) {
        this(i, i2, gF2mField, polynomialGF2mSmallM, GoppaCode.createCanonicalCheckMatrix(gF2mField, polynomialGF2mSmallM), permutation, str);
    }

    public GF2mField getField() {
        return this.field;
    }

    public PolynomialGF2mSmallM getGoppaPoly() {
        return this.goppaPoly;
    }

    public GF2Matrix getH() {
        return this.f1422h;
    }

    public int getK() {
        return this.f1423k;
    }

    public int getN() {
        return this.f1424n;
    }

    public Permutation getP() {
        return this.f1425p;
    }
}
