package org.bouncycastle.crypto.params;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;
/* loaded from: classes4.dex */
public class DSAParameters implements CipherParameters {

    /* renamed from: g */
    private BigInteger f1302g;

    /* renamed from: p */
    private BigInteger f1303p;

    /* renamed from: q */
    private BigInteger f1304q;
    private DSAValidationParameters validation;

    public DSAParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, DSAValidationParameters dSAValidationParameters) {
        this.f1302g = bigInteger3;
        this.f1303p = bigInteger;
        this.f1304q = bigInteger2;
        this.validation = dSAValidationParameters;
    }

    public boolean equals(Object obj) {
        if (obj instanceof DSAParameters) {
            DSAParameters dSAParameters = (DSAParameters) obj;
            return dSAParameters.getP().equals(this.f1303p) && dSAParameters.getQ().equals(this.f1304q) && dSAParameters.getG().equals(this.f1302g);
        }
        return false;
    }

    public BigInteger getG() {
        return this.f1302g;
    }

    public BigInteger getP() {
        return this.f1303p;
    }

    public BigInteger getQ() {
        return this.f1304q;
    }

    public DSAValidationParameters getValidationParameters() {
        return this.validation;
    }

    public int hashCode() {
        return (getP().hashCode() ^ getQ().hashCode()) ^ getG().hashCode();
    }
}
