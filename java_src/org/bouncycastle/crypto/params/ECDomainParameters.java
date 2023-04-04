package org.bouncycastle.crypto.params;

import java.math.BigInteger;
import java.util.Objects;
import org.bouncycastle.math.p044ec.ECAlgorithms;
import org.bouncycastle.math.p044ec.ECConstants;
import org.bouncycastle.math.p044ec.ECCurve;
import org.bouncycastle.math.p044ec.ECPoint;
/* loaded from: classes4.dex */
public class ECDomainParameters implements ECConstants {

    /* renamed from: G */
    private ECPoint f1305G;
    private ECCurve curve;

    /* renamed from: h */
    private BigInteger f1306h;

    /* renamed from: n */
    private BigInteger f1307n;

    public ECDomainParameters(ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger, BigInteger bigInteger2) {
        this(eCCurve, eCPoint, bigInteger, bigInteger2, null);
    }

    public ECDomainParameters(ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        Objects.requireNonNull(eCCurve, "curve");
        Objects.requireNonNull(bigInteger, "n");
        this.curve = eCCurve;
        this.f1305G = validate(eCCurve, eCPoint);
        this.f1307n = bigInteger;
        this.f1306h = bigInteger2;
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
            return this.curve.equals(eCDomainParameters.curve) && this.f1305G.equals(eCDomainParameters.f1305G) && this.f1307n.equals(eCDomainParameters.f1307n) && this.f1306h.equals(eCDomainParameters.f1306h);
        }
        return false;
    }

    public ECCurve getCurve() {
        return this.curve;
    }

    public ECPoint getG() {
        return this.f1305G;
    }

    public BigInteger getN() {
        return this.f1307n;
    }

    public int hashCode() {
        return (((((this.curve.hashCode() * 37) ^ this.f1305G.hashCode()) * 37) ^ this.f1307n.hashCode()) * 37) ^ this.f1306h.hashCode();
    }
}
