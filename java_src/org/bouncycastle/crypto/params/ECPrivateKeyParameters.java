package org.bouncycastle.crypto.params;

import java.math.BigInteger;
/* loaded from: classes4.dex */
public class ECPrivateKeyParameters extends ECKeyParameters {

    /* renamed from: d */
    BigInteger f1303d;

    public ECPrivateKeyParameters(BigInteger bigInteger, ECDomainParameters eCDomainParameters) {
        super(true, eCDomainParameters);
        this.f1303d = bigInteger;
    }

    public BigInteger getD() {
        return this.f1303d;
    }
}
