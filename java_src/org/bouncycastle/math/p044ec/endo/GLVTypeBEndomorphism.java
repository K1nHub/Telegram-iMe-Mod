package org.bouncycastle.math.p044ec.endo;

import java.math.BigInteger;
import org.bouncycastle.math.p044ec.ECConstants;
import org.bouncycastle.math.p044ec.ECCurve;
import org.bouncycastle.math.p044ec.ECPointMap;
import org.bouncycastle.math.p044ec.ScaleXPointMap;
/* renamed from: org.bouncycastle.math.ec.endo.GLVTypeBEndomorphism */
/* loaded from: classes4.dex */
public class GLVTypeBEndomorphism implements GLVEndomorphism {
    protected final GLVTypeBParameters parameters;
    protected final ECPointMap pointMap;

    public GLVTypeBEndomorphism(ECCurve eCCurve, GLVTypeBParameters gLVTypeBParameters) {
        this.parameters = gLVTypeBParameters;
        this.pointMap = new ScaleXPointMap(eCCurve.fromBigInteger(gLVTypeBParameters.getBeta()));
    }

    protected BigInteger calculateB(BigInteger bigInteger, BigInteger bigInteger2, int i) {
        boolean z = bigInteger2.signum() < 0;
        BigInteger multiply = bigInteger.multiply(bigInteger2.abs());
        boolean testBit = multiply.testBit(i - 1);
        BigInteger shiftRight = multiply.shiftRight(i);
        if (testBit) {
            shiftRight = shiftRight.add(ECConstants.ONE);
        }
        return z ? shiftRight.negate() : shiftRight;
    }

    @Override // org.bouncycastle.math.p044ec.endo.GLVEndomorphism
    public BigInteger[] decomposeScalar(BigInteger bigInteger) {
        int bits = this.parameters.getBits();
        BigInteger calculateB = calculateB(bigInteger, this.parameters.getG1(), bits);
        BigInteger calculateB2 = calculateB(bigInteger, this.parameters.getG2(), bits);
        GLVTypeBParameters gLVTypeBParameters = this.parameters;
        return new BigInteger[]{bigInteger.subtract(calculateB.multiply(gLVTypeBParameters.getV1A()).add(calculateB2.multiply(gLVTypeBParameters.getV2A()))), calculateB.multiply(gLVTypeBParameters.getV1B()).add(calculateB2.multiply(gLVTypeBParameters.getV2B())).negate()};
    }

    @Override // org.bouncycastle.math.p044ec.endo.ECEndomorphism
    public ECPointMap getPointMap() {
        return this.pointMap;
    }

    @Override // org.bouncycastle.math.p044ec.endo.ECEndomorphism
    public boolean hasEfficientPointMap() {
        return true;
    }
}
