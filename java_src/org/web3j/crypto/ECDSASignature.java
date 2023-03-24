package org.web3j.crypto;

import java.math.BigInteger;
/* loaded from: classes6.dex */
public class ECDSASignature {

    /* renamed from: r */
    public final BigInteger f1835r;

    /* renamed from: s */
    public final BigInteger f1836s;

    public ECDSASignature(BigInteger bigInteger, BigInteger bigInteger2) {
        this.f1835r = bigInteger;
        this.f1836s = bigInteger2;
    }

    public boolean isCanonical() {
        return this.f1836s.compareTo(Sign.HALF_CURVE_ORDER) <= 0;
    }

    public ECDSASignature toCanonicalised() {
        return !isCanonical() ? new ECDSASignature(this.f1835r, Sign.CURVE.getN().subtract(this.f1836s)) : this;
    }
}
