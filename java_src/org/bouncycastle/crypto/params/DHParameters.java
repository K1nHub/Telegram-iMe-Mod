package org.bouncycastle.crypto.params;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;
/* loaded from: classes4.dex */
public class DHParameters implements CipherParameters {

    /* renamed from: g */
    private BigInteger f1288g;

    /* renamed from: p */
    private BigInteger f1289p;

    /* renamed from: q */
    private BigInteger f1290q;

    public DHParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int i, int i2, BigInteger bigInteger4, DHValidationParameters dHValidationParameters) {
        if (i2 != 0) {
            if (i2 > bigInteger.bitLength()) {
                throw new IllegalArgumentException("when l value specified, it must satisfy 2^(l-1) <= p");
            }
            if (i2 < i) {
                throw new IllegalArgumentException("when l value specified, it may not be less than m value");
            }
        }
        if (i > bigInteger.bitLength()) {
            throw new IllegalArgumentException("unsafe p value so small specific l required");
        }
        this.f1288g = bigInteger2;
        this.f1289p = bigInteger;
        this.f1290q = bigInteger3;
    }

    public boolean equals(Object obj) {
        if (obj instanceof DHParameters) {
            DHParameters dHParameters = (DHParameters) obj;
            if (getQ() != null) {
                if (!getQ().equals(dHParameters.getQ())) {
                    return false;
                }
            } else if (dHParameters.getQ() != null) {
                return false;
            }
            return dHParameters.getP().equals(this.f1289p) && dHParameters.getG().equals(this.f1288g);
        }
        return false;
    }

    public BigInteger getG() {
        return this.f1288g;
    }

    public BigInteger getP() {
        return this.f1289p;
    }

    public BigInteger getQ() {
        return this.f1290q;
    }

    public int hashCode() {
        return (getP().hashCode() ^ getG().hashCode()) ^ (getQ() != null ? getQ().hashCode() : 0);
    }
}
