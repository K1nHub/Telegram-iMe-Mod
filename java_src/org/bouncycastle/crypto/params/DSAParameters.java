package org.bouncycastle.crypto.params;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;
/* loaded from: classes4.dex */
public class DSAParameters implements CipherParameters {

    /* renamed from: g */
    private BigInteger f1286g;

    /* renamed from: p */
    private BigInteger f1287p;

    /* renamed from: q */
    private BigInteger f1288q;
    private DSAValidationParameters validation;

    public DSAParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, DSAValidationParameters dSAValidationParameters) {
        this.f1286g = bigInteger3;
        this.f1287p = bigInteger;
        this.f1288q = bigInteger2;
        this.validation = dSAValidationParameters;
    }

    public boolean equals(Object obj) {
        if (obj instanceof DSAParameters) {
            DSAParameters dSAParameters = (DSAParameters) obj;
            return dSAParameters.getP().equals(this.f1287p) && dSAParameters.getQ().equals(this.f1288q) && dSAParameters.getG().equals(this.f1286g);
        }
        return false;
    }

    public BigInteger getG() {
        return this.f1286g;
    }

    public BigInteger getP() {
        return this.f1287p;
    }

    public BigInteger getQ() {
        return this.f1288q;
    }

    public DSAValidationParameters getValidationParameters() {
        return this.validation;
    }

    public int hashCode() {
        return (getP().hashCode() ^ getQ().hashCode()) ^ getG().hashCode();
    }
}
