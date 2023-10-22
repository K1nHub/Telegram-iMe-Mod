package io.github.andreypfau.curve25519.models;

import io.github.andreypfau.curve25519.field.FieldElement;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AffineNielsPoint.kt */
/* loaded from: classes4.dex */
public final class AffineNielsPoint {
    private final FieldElement xy2d;
    private final FieldElement yMinusX;
    private final FieldElement yPlusX;

    static {
        new Companion(null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AffineNielsPoint) {
            AffineNielsPoint affineNielsPoint = (AffineNielsPoint) obj;
            return Intrinsics.areEqual(this.yPlusX, affineNielsPoint.yPlusX) && Intrinsics.areEqual(this.yMinusX, affineNielsPoint.yMinusX) && Intrinsics.areEqual(this.xy2d, affineNielsPoint.xy2d);
        }
        return false;
    }

    public int hashCode() {
        return (((this.yPlusX.hashCode() * 31) + this.yMinusX.hashCode()) * 31) + this.xy2d.hashCode();
    }

    public String toString() {
        return "AffineNielsPoint(yPlusX=" + this.yPlusX + ", yMinusX=" + this.yMinusX + ", xy2d=" + this.xy2d + ')';
    }

    public AffineNielsPoint(FieldElement yPlusX, FieldElement yMinusX, FieldElement xy2d) {
        Intrinsics.checkNotNullParameter(yPlusX, "yPlusX");
        Intrinsics.checkNotNullParameter(yMinusX, "yMinusX");
        Intrinsics.checkNotNullParameter(xy2d, "xy2d");
        this.yPlusX = yPlusX;
        this.yMinusX = yMinusX;
        this.xy2d = xy2d;
    }

    public final FieldElement getYPlusX() {
        return this.yPlusX;
    }

    public final FieldElement getYMinusX() {
        return this.yMinusX;
    }

    public final FieldElement getXy2d() {
        return this.xy2d;
    }

    public AffineNielsPoint() {
        this(new FieldElement(null, 1, null), new FieldElement(null, 1, null), new FieldElement(null, 1, null));
    }

    public static /* synthetic */ AffineNielsPoint setRawData$default(AffineNielsPoint affineNielsPoint, byte[] bArr, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return affineNielsPoint.setRawData(bArr, i);
    }

    public final AffineNielsPoint setRawData(byte[] rawData, int i) {
        Intrinsics.checkNotNullParameter(rawData, "rawData");
        this.yPlusX.setBytes(rawData, i);
        this.yMinusX.setBytes(rawData, i + 32);
        this.xy2d.setBytes(rawData, i + 64);
        return this;
    }

    public final AffineNielsPoint identity() {
        FieldElement.one$default(this.yPlusX, null, 1, null);
        FieldElement.one$default(this.yMinusX, null, 1, null);
        FieldElement.zero$default(this.xy2d, null, 1, null);
        return this;
    }

    public final void conditionalAssign(AffineNielsPoint other, int i) {
        Intrinsics.checkNotNullParameter(other, "other");
        this.yPlusX.conditionalAssign(other.yPlusX, i);
        this.yMinusX.conditionalAssign(other.yMinusX, i);
        this.xy2d.conditionalAssign(other.xy2d, i);
    }

    public final void conditionalNegate(int i) {
        this.yPlusX.conditionalSwap(this.yMinusX, i);
        this.xy2d.conditionalNegate(i);
    }

    /* compiled from: AffineNielsPoint.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
