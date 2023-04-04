package org.web3j.crypto;

import java.math.BigInteger;
/* loaded from: classes6.dex */
public class ECDSASignature {

    /* renamed from: r */
    public final BigInteger f1838r;

    /* renamed from: s */
    public final BigInteger f1839s;

    public ECDSASignature(BigInteger bigInteger, BigInteger bigInteger2) {
        this.f1838r = bigInteger;
        this.f1839s = bigInteger2;
    }

    public boolean isCanonical() {
        return this.f1839s.compareTo(Sign.HALF_CURVE_ORDER) <= 0;
    }

    public ECDSASignature toCanonicalised() {
        return !isCanonical() ? new ECDSASignature(this.f1838r, Sign.CURVE.getN().subtract(this.f1839s)) : this;
    }
}
