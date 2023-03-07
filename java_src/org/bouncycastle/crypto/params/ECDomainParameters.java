package org.bouncycastle.crypto.params;

import java.math.BigInteger;
import java.util.Objects;
import org.bouncycastle.math.p043ec.ECAlgorithms;
import org.bouncycastle.math.p043ec.ECConstants;
import org.bouncycastle.math.p043ec.ECCurve;
import org.bouncycastle.math.p043ec.ECPoint;
/* loaded from: classes4.dex */
public class ECDomainParameters implements ECConstants {

    /* renamed from: G */
    private ECPoint f1294G;
    private ECCurve curve;

    /* renamed from: h */
    private BigInteger f1295h;

    /* renamed from: n */
    private BigInteger f1296n;

    public ECDomainParameters(ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger, BigInteger bigInteger2) {
        this(eCCurve, eCPoint, bigInteger, bigInteger2, null);
    }

    public ECDomainParameters(ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        Objects.requireNonNull(eCCurve, "curve");
        Objects.requireNonNull(bigInteger, "n");
        this.curve = eCCurve;
        this.f1294G = validate(eCCurve, eCPoint);
        this.f1296n = bigInteger;
        this.f1295h = bigInteger2;
    }

    static ECPoint validate(ECCurve eCCurve, ECPoint eCPoint) {
        if (eCPoint != null) {
            if (eCPoint.isInfinity()) {
                throw new IllegalArgumentException("point at infinity");
            }
            ECPoint normalize = eCPoint.normalize();
            if (normalize.isValid()) {
                return ECAlgorithms.importPoint(eCCurve, normalize);
            }
            throw new IllegalArgumentException("point not on curve");
        }
        throw new IllegalArgumentException("point has null value");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ECDomainParameters) {
            ECDomainParameters eCDomainParameters = (ECDomainParameters) obj;
            return this.curve.equals(eCDomainParameters.curve) && this.f1294G.equals(eCDomainParameters.f1294G) && this.f1296n.equals(eCDomainParameters.f1296n) && this.f1295h.equals(eCDomainParameters.f1295h);
        }
        return false;
    }

    public ECCurve getCurve() {
        return this.curve;
    }

    public ECPoint getG() {
        return this.f1294G;
    }

    public BigInteger getN() {
        return this.f1296n;
    }

    public int hashCode() {
        return (((((this.curve.hashCode() * 37) ^ this.f1294G.hashCode()) * 37) ^ this.f1296n.hashCode()) * 37) ^ this.f1295h.hashCode();
    }
}
