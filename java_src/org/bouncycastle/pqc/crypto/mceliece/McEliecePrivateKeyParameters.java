package org.bouncycastle.pqc.crypto.mceliece;

import org.bouncycastle.pqc.math.linearalgebra.GF2Matrix;
import org.bouncycastle.pqc.math.linearalgebra.GF2mField;
import org.bouncycastle.pqc.math.linearalgebra.GoppaCode;
import org.bouncycastle.pqc.math.linearalgebra.Permutation;
import org.bouncycastle.pqc.math.linearalgebra.PolynomialGF2mSmallM;
import org.bouncycastle.pqc.math.linearalgebra.PolynomialRingGF2m;
/* loaded from: classes6.dex */
public class McEliecePrivateKeyParameters extends McElieceKeyParameters {
    private GF2mField field;
    private PolynomialGF2mSmallM goppaPoly;

    /* renamed from: k */
    private int f1419k;

    /* renamed from: n */
    private int f1420n;

    /* renamed from: p1 */
    private Permutation f1421p1;

    /* renamed from: p2 */
    private Permutation f1422p2;
    private GF2Matrix sInv;

    public McEliecePrivateKeyParameters(int i, int i2, GF2mField gF2mField, PolynomialGF2mSmallM polynomialGF2mSmallM, Permutation permutation, Permutation permutation2, GF2Matrix gF2Matrix) {
        super(true, null);
        this.f1419k = i2;
        this.f1420n = i;
        this.field = gF2mField;
        this.goppaPoly = polynomialGF2mSmallM;
        this.sInv = gF2Matrix;
        this.f1421p1 = permutation;
        this.f1422p2 = permutation2;
        GoppaCode.createCanonicalCheckMatrix(gF2mField, polynomialGF2mSmallM);
        new PolynomialRingGF2m(gF2mField, polynomialGF2mSmallM).getSquareRootMatrix();
    }

    public GF2mField getField() {
        return this.field;
    }

    public PolynomialGF2mSmallM getGoppaPoly() {
        return this.goppaPoly;
    }

    public int getK() {
        return this.f1419k;
    }

    public int getN() {
        return this.f1420n;
    }

    public Permutation getP1() {
        return this.f1421p1;
    }

    public Permutation getP2() {
        return this.f1422p2;
    }

    public GF2Matrix getSInv() {
        return this.sInv;
    }
}
