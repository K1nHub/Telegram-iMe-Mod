package org.bouncycastle.math.p043ec;

import java.math.BigInteger;
import org.bouncycastle.math.p043ec.endo.GLVEndomorphism;
/* renamed from: org.bouncycastle.math.ec.GLVMultiplier */
/* loaded from: classes4.dex */
public class GLVMultiplier extends AbstractECMultiplier {
    protected final ECCurve curve;
    protected final GLVEndomorphism glvEndomorphism;

    public GLVMultiplier(ECCurve eCCurve, GLVEndomorphism gLVEndomorphism) {
        if (eCCurve == null || eCCurve.getOrder() == null) {
            throw new IllegalArgumentException("Need curve with known group order");
        }
        this.curve = eCCurve;
        this.glvEndomorphism = gLVEndomorphism;
    }

    @Override // org.bouncycastle.math.p043ec.AbstractECMultiplier
    protected ECPoint multiplyPositive(ECPoint eCPoint, BigInteger bigInteger) {
        if (this.curve.equals(eCPoint.getCurve())) {
            BigInteger[] decomposeScalar = this.glvEndomorphism.decomposeScalar(bigInteger.mod(eCPoint.getCurve().getOrder()));
            BigInteger bigInteger2 = decomposeScalar[0];
            BigInteger bigInteger3 = decomposeScalar[1];
            ECPointMap pointMap = this.glvEndomorphism.getPointMap();
            return this.glvEndomorphism.hasEfficientPointMap() ? ECAlgorithms.implShamirsTrickWNaf(eCPoint, bigInteger2, pointMap, bigInteger3) : ECAlgorithms.implShamirsTrickWNaf(eCPoint, bigInteger2, pointMap.map(eCPoint), bigInteger3);
        }
        throw new IllegalStateException();
    }
}
