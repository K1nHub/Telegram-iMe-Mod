package org.bouncycastle.crypto.params;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;
/* loaded from: classes4.dex */
public class DSAParameters implements CipherParameters {

    /* renamed from: g */
    private BigInteger f1297g;

    /* renamed from: p */
    private BigInteger f1298p;

    /* renamed from: q */
    private BigInteger f1299q;
    private DSAValidationParameters validation;

    public DSAParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, DSAValidationParameters dSAValidationParameters) {
        this.f1297g = bigInteger3;
        this.f1298p = bigInteger;
        this.f1299q = bigInteger2;
        this.validation = dSAValidationParameters;
    }

    public boolean equals(Object obj) {
        if (obj instanceof DSAParameters) {
            DSAParameters dSAParameters = (DSAParameters) obj;
            return dSAParameters.getP().equals(this.f1298p) && dSAParameters.getQ().equals(this.f1299q) && dSAParameters.getG().equals(this.f1297g);
        }
        return false;
    }

    public BigInteger getG() {
        return this.f1297g;
    }

    public BigInteger getP() {
        return this.f1298p;
    }

    public BigInteger getQ() {
        return this.f1299q;
    }

    public DSAValidationParameters getValidationParameters() {
        return this.validation;
    }

    public int hashCode() {
        return (getP().hashCode() ^ getQ().hashCode()) ^ getG().hashCode();
    }
}
