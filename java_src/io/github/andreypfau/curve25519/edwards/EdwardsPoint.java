package io.github.andreypfau.curve25519.edwards;

import io.github.andreypfau.curve25519.constants.ConstantsKt;
import io.github.andreypfau.curve25519.constants.tables.EdwardsBasepointTable;
import io.github.andreypfau.curve25519.exceptioin.InvalidYCoordinateException;
import io.github.andreypfau.curve25519.field.FieldElement;
import io.github.andreypfau.curve25519.models.CompletedPoint;
import io.github.andreypfau.curve25519.models.ProjectivePoint;
import io.github.andreypfau.curve25519.scalar.Scalar;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: EdwardsPoint.kt */
/* loaded from: classes4.dex */
public final class EdwardsPoint {
    public static final Companion Companion;

    /* renamed from: t */
    private final FieldElement f423t;

    /* renamed from: x */
    private final FieldElement f424x;

    /* renamed from: y */
    private final FieldElement f425y;

    /* renamed from: z */
    private final FieldElement f426z;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof EdwardsPoint) {
            EdwardsPoint edwardsPoint = (EdwardsPoint) obj;
            return Intrinsics.areEqual(this.f424x, edwardsPoint.f424x) && Intrinsics.areEqual(this.f425y, edwardsPoint.f425y) && Intrinsics.areEqual(this.f426z, edwardsPoint.f426z) && Intrinsics.areEqual(this.f423t, edwardsPoint.f423t);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.f424x.hashCode() * 31) + this.f425y.hashCode()) * 31) + this.f426z.hashCode()) * 31) + this.f423t.hashCode();
    }

    public String toString() {
        return "EdwardsPoint(x=" + this.f424x + ", y=" + this.f425y + ", z=" + this.f426z + ", t=" + this.f423t + ')';
    }

    public EdwardsPoint(FieldElement x, FieldElement y, FieldElement z, FieldElement t) {
        Intrinsics.checkNotNullParameter(x, "x");
        Intrinsics.checkNotNullParameter(y, "y");
        Intrinsics.checkNotNullParameter(z, "z");
        Intrinsics.checkNotNullParameter(t, "t");
        this.f424x = x;
        this.f425y = y;
        this.f426z = z;
        this.f423t = t;
    }

    public final FieldElement getX() {
        return this.f424x;
    }

    public final FieldElement getY() {
        return this.f425y;
    }

    public final FieldElement getZ() {
        return this.f426z;
    }

    public final FieldElement getT() {
        return this.f423t;
    }

    public EdwardsPoint() {
        this(new FieldElement(null, 1, null), new FieldElement(null, 1, null), new FieldElement(null, 1, null), new FieldElement(null, 1, null));
    }

    public final EdwardsPoint identity() {
        return Companion.identity(this);
    }

    public final EdwardsPoint set(CompletedPoint cp) {
        Intrinsics.checkNotNullParameter(cp, "cp");
        return Companion.from(cp, this);
    }

    public final void multByPow2(EdwardsPoint t, int i) {
        Intrinsics.checkNotNullParameter(t, "t");
        CompletedPoint completedPoint = new CompletedPoint();
        ProjectivePoint projectivePoint = new ProjectivePoint();
        projectivePoint.set(t);
        int i2 = i - 1;
        for (int i3 = 0; i3 < i2; i3++) {
            projectivePoint.set(completedPoint.m1901double(projectivePoint));
        }
        set(completedPoint.m1901double(projectivePoint));
    }

    public final EdwardsPoint mulBasepoint(EdwardsBasepointTable basepoint, Scalar scalar) {
        Intrinsics.checkNotNullParameter(basepoint, "basepoint");
        Intrinsics.checkNotNullParameter(scalar, "scalar");
        return basepoint.mul(this, scalar);
    }

    /* compiled from: EdwardsPoint.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ EdwardsPoint identity$default(Companion companion, EdwardsPoint edwardsPoint, int i, Object obj) {
            if ((i & 1) != 0) {
                edwardsPoint = new EdwardsPoint();
            }
            return companion.identity(edwardsPoint);
        }

        public final EdwardsPoint identity(EdwardsPoint output) {
            Intrinsics.checkNotNullParameter(output, "output");
            FieldElement.zero$default(output.getX(), null, 1, null);
            FieldElement.one$default(output.getY(), null, 1, null);
            FieldElement.one$default(output.getZ(), null, 1, null);
            FieldElement.zero$default(output.getT(), null, 1, null);
            return output;
        }

        public final EdwardsPoint from(CompletedPoint cp, EdwardsPoint output) {
            Intrinsics.checkNotNullParameter(cp, "cp");
            Intrinsics.checkNotNullParameter(output, "output");
            output.getX().mul(cp.getX(), cp.getT());
            output.getY().mul(cp.getY(), cp.getZ());
            output.getZ().mul(cp.getZ(), cp.getT());
            output.getT().mul(cp.getX(), cp.getY());
            return output;
        }

        public static /* synthetic */ EdwardsPoint from$default(Companion companion, CompressedEdwardsY compressedEdwardsY, EdwardsPoint edwardsPoint, int i, Object obj) throws InvalidYCoordinateException {
            if ((i & 2) != 0) {
                edwardsPoint = new EdwardsPoint();
            }
            return companion.from(compressedEdwardsY, edwardsPoint);
        }

        public final EdwardsPoint from(CompressedEdwardsY compressedY, EdwardsPoint output) throws InvalidYCoordinateException {
            Intrinsics.checkNotNullParameter(compressedY, "compressedY");
            Intrinsics.checkNotNullParameter(output, "output");
            FieldElement.Companion companion = FieldElement.Companion;
            FieldElement fromBytes$default = FieldElement.Companion.fromBytes$default(companion, compressedY.getData(), 0, null, 6, null);
            FieldElement one = companion.one();
            FieldElement square$default = FieldElement.Companion.square$default(companion, fromBytes$default, null, 2, null);
            FieldElement sub$default = FieldElement.Companion.sub$default(companion, square$default, one, null, 4, null);
            FieldElement mul$default = FieldElement.Companion.mul$default(companion, square$default, ConstantsKt.getEDWARDS_D(), null, 4, null);
            mul$default.add(mul$default, one);
            Pair sqrtRatioI$default = FieldElement.Companion.sqrtRatioI$default(companion, sub$default, mul$default, null, 4, null);
            FieldElement fieldElement = (FieldElement) sqrtRatioI$default.component1();
            if (!(((Number) sqrtRatioI$default.component2()).intValue() == 1)) {
                throw new IllegalArgumentException("Invalid Y coordinate".toString());
            }
            fieldElement.conditionalNegate(compressedY.getData()[31] >> 7);
            FieldElement.set$default(output.getX(), fieldElement, null, 2, null);
            FieldElement.set$default(output.getY(), fromBytes$default, null, 2, null);
            FieldElement.set$default(output.getZ(), one, null, 2, null);
            output.getT().mul(fieldElement, fromBytes$default);
            return output;
        }

        public static /* synthetic */ EdwardsPoint mul$default(Companion companion, EdwardsBasepointTable edwardsBasepointTable, Scalar scalar, EdwardsPoint edwardsPoint, int i, Object obj) {
            if ((i & 4) != 0) {
                edwardsPoint = new EdwardsPoint();
            }
            return companion.mul(edwardsBasepointTable, scalar, edwardsPoint);
        }

        public final EdwardsPoint mul(EdwardsBasepointTable basepoint, Scalar scalar, EdwardsPoint output) {
            Intrinsics.checkNotNullParameter(basepoint, "basepoint");
            Intrinsics.checkNotNullParameter(scalar, "scalar");
            Intrinsics.checkNotNullParameter(output, "output");
            return basepoint.mul(output, scalar);
        }
    }

    static {
        Companion companion = new Companion(null);
        Companion = companion;
        Companion.identity$default(companion, null, 1, null);
    }
}
