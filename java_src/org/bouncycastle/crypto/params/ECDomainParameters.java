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
    private ECPoint f1299G;
    private ECCurve curve;

    /* renamed from: h */
    private BigInteger f1300h;

    /* renamed from: n */
    private BigInteger f1301n;

    public ECDomainParameters(ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger, BigInteger bigInteger2) {
        this(eCCurve, eCPoint, bigInteger, bigInteger2, null);
    }

    public ECDomainParameters(ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        Objects.requireNonNull(eCCurve, "curve");
        Objects.requireNonNull(bigInteger, "n");
        this.curve = eCCurve;
        this.f1299G = validate(eCCurve, eCPoint);
        this.f1301n = bigInteger;
        this.f1300h = bigInteger2;
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
            return this.curve.equals(eCDomainParameters.curve) && this.f1299G.equals(eCDomainParameters.f1299G) && this.f1301n.equals(eCDomainParameters.f1301n) && this.f1300h.equals(eCDomainParameters.f1300h);
        }
        return false;
    }

    public ECCurve getCurve() {
        return this.curve;
    }

    public ECPoint getG() {
        return this.f1299G;
    }

    public BigInteger getN() {
        return this.f1301n;
    }

    public int hashCode() {
        return (((((this.curve.hashCode() * 37) ^ this.f1299G.hashCode()) * 37) ^ this.f1301n.hashCode()) * 37) ^ this.f1300h.hashCode();
    }
}
