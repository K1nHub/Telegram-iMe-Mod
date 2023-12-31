package org.bouncycastle.crypto.params;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;
/* loaded from: classes4.dex */
public class DSAParameters implements CipherParameters {

    /* renamed from: g */
    private BigInteger f1458g;

    /* renamed from: p */
    private BigInteger f1459p;

    /* renamed from: q */
    private BigInteger f1460q;
    private DSAValidationParameters validation;

    public DSAParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, DSAValidationParameters dSAValidationParameters) {
        this.f1458g = bigInteger3;
        this.f1459p = bigInteger;
        this.f1460q = bigInteger2;
        this.validation = dSAValidationParameters;
    }

    public boolean equals(Object obj) {
        if (obj instanceof DSAParameters) {
            DSAParameters dSAParameters = (DSAParameters) obj;
            return dSAParameters.getP().equals(this.f1459p) && dSAParameters.getQ().equals(this.f1460q) && dSAParameters.getG().equals(this.f1458g);
        }
        return false;
    }

    public BigInteger getG() {
        return this.f1458g;
    }

    public BigInteger getP() {
        return this.f1459p;
    }

    public BigInteger getQ() {
        return this.f1460q;
    }

    public DSAValidationParameters getValidationParameters() {
        return this.validation;
    }

    public int hashCode() {
        return (getP().hashCode() ^ getQ().hashCode()) ^ getG().hashCode();
    }
}
