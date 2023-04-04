package org.bouncycastle.crypto.params;

import java.math.BigInteger;
/* loaded from: classes4.dex */
public class ECPrivateKeyParameters extends ECKeyParameters {

    /* renamed from: d */
    BigInteger f1308d;

    public ECPrivateKeyParameters(BigInteger bigInteger, ECDomainParameters eCDomainParameters) {
        super(true, eCDomainParameters);
        this.f1308d = bigInteger;
    }

    public BigInteger getD() {
        return this.f1308d;
    }
}
