package org.bouncycastle.crypto.params;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;
/* loaded from: classes4.dex */
public class DSAParameters implements CipherParameters {

    /* renamed from: g */
    private BigInteger f1291g;

    /* renamed from: p */
    private BigInteger f1292p;

    /* renamed from: q */
    private BigInteger f1293q;
    private DSAValidationParameters validation;

    public DSAParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, DSAValidationParameters dSAValidationParameters) {
        this.f1291g = bigInteger3;
        this.f1292p = bigInteger;
        this.f1293q = bigInteger2;
        this.validation = dSAValidationParameters;
    }

    public boolean equals(Object obj) {
        if (obj instanceof DSAParameters) {
            DSAParameters dSAParameters = (DSAParameters) obj;
            return dSAParameters.getP().equals(this.f1292p) && dSAParameters.getQ().equals(this.f1293q) && dSAParameters.getG().equals(this.f1291g);
        }
        return false;
    }

    public BigInteger getG() {
        return this.f1291g;
    }

    public BigInteger getP() {
        return this.f1292p;
    }

    public BigInteger getQ() {
        return this.f1293q;
    }

    public DSAValidationParameters getValidationParameters() {
        return this.validation;
    }

    public int hashCode() {
        return (getP().hashCode() ^ getQ().hashCode()) ^ getG().hashCode();
    }
}
