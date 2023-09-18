package org.bouncycastle.crypto.params;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;
/* loaded from: classes6.dex */
public class DSAParameters implements CipherParameters {

    /* renamed from: g */
    private BigInteger f1377g;

    /* renamed from: p */
    private BigInteger f1378p;

    /* renamed from: q */
    private BigInteger f1379q;
    private DSAValidationParameters validation;

    public DSAParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, DSAValidationParameters dSAValidationParameters) {
        this.f1377g = bigInteger3;
        this.f1378p = bigInteger;
        this.f1379q = bigInteger2;
        this.validation = dSAValidationParameters;
    }

    public boolean equals(Object obj) {
        if (obj instanceof DSAParameters) {
            DSAParameters dSAParameters = (DSAParameters) obj;
            return dSAParameters.getP().equals(this.f1378p) && dSAParameters.getQ().equals(this.f1379q) && dSAParameters.getG().equals(this.f1377g);
        }
        return false;
    }

    public BigInteger getG() {
        return this.f1377g;
    }

    public BigInteger getP() {
        return this.f1378p;
    }

    public BigInteger getQ() {
        return this.f1379q;
    }

    public DSAValidationParameters getValidationParameters() {
        return this.validation;
    }

    public int hashCode() {
        return (getP().hashCode() ^ getQ().hashCode()) ^ getG().hashCode();
    }
}
