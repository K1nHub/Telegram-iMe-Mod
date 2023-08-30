package org.bouncycastle.crypto.params;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;
/* loaded from: classes4.dex */
public class DSAParameters implements CipherParameters {

    /* renamed from: g */
    private BigInteger f1386g;

    /* renamed from: p */
    private BigInteger f1387p;

    /* renamed from: q */
    private BigInteger f1388q;
    private DSAValidationParameters validation;

    public DSAParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, DSAValidationParameters dSAValidationParameters) {
        this.f1386g = bigInteger3;
        this.f1387p = bigInteger;
        this.f1388q = bigInteger2;
        this.validation = dSAValidationParameters;
    }

    public boolean equals(Object obj) {
        if (obj instanceof DSAParameters) {
            DSAParameters dSAParameters = (DSAParameters) obj;
            return dSAParameters.getP().equals(this.f1387p) && dSAParameters.getQ().equals(this.f1388q) && dSAParameters.getG().equals(this.f1386g);
        }
        return false;
    }

    public BigInteger getG() {
        return this.f1386g;
    }

    public BigInteger getP() {
        return this.f1387p;
    }

    public BigInteger getQ() {
        return this.f1388q;
    }

    public DSAValidationParameters getValidationParameters() {
        return this.validation;
    }

    public int hashCode() {
        return (getP().hashCode() ^ getQ().hashCode()) ^ getG().hashCode();
    }
}
