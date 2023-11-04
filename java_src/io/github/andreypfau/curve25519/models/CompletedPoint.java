package io.github.andreypfau.curve25519.models;

import io.github.andreypfau.curve25519.edwards.EdwardsPoint;
import io.github.andreypfau.curve25519.field.FieldElement;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CompletedPoint.kt */
/* loaded from: classes4.dex */
public final class CompletedPoint {
    public static final Companion Companion = new Companion(null);

    /* renamed from: t */
    private final FieldElement f427t;

    /* renamed from: x */
    private final FieldElement f428x;

    /* renamed from: y */
    private final FieldElement f429y;

    /* renamed from: z */
    private final FieldElement f430z;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CompletedPoint) {
            CompletedPoint completedPoint = (CompletedPoint) obj;
            return Intrinsics.areEqual(this.f428x, completedPoint.f428x) && Intrinsics.areEqual(this.f429y, completedPoint.f429y) && Intrinsics.areEqual(this.f430z, completedPoint.f430z) && Intrinsics.areEqual(this.f427t, completedPoint.f427t);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.f428x.hashCode() * 31) + this.f429y.hashCode()) * 31) + this.f430z.hashCode()) * 31) + this.f427t.hashCode();
    }

    public String toString() {
        return "CompletedPoint(x=" + this.f428x + ", y=" + this.f429y + ", z=" + this.f430z + ", t=" + this.f427t + ')';
    }

    public CompletedPoint(FieldElement x, FieldElement y, FieldElement z, FieldElement t) {
        Intrinsics.checkNotNullParameter(x, "x");
        Intrinsics.checkNotNullParameter(y, "y");
        Intrinsics.checkNotNullParameter(z, "z");
        Intrinsics.checkNotNullParameter(t, "t");
        this.f428x = x;
        this.f429y = y;
        this.f430z = z;
        this.f427t = t;
    }

    public final FieldElement getX() {
        return this.f428x;
    }

    public final FieldElement getY() {
        return this.f429y;
    }

    public final FieldElement getZ() {
        return this.f430z;
    }

    public final FieldElement getT() {
        return this.f427t;
    }

    public CompletedPoint() {
        this(new FieldElement(null, 1, null), new FieldElement(null, 1, null), new FieldElement(null, 1, null), new FieldElement(null, 1, null));
    }

    public final CompletedPoint add(EdwardsPoint a, AffineNielsPoint b) {
        Intrinsics.checkNotNullParameter(a, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        return Companion.add(a, b, this);
    }

    /* renamed from: double  reason: not valid java name */
    public final CompletedPoint m1901double(ProjectivePoint pp) {
        Intrinsics.checkNotNullParameter(pp, "pp");
        return Companion.m1902double(pp, this);
    }

    /* compiled from: CompletedPoint.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: double  reason: not valid java name */
        public final CompletedPoint m1902double(ProjectivePoint pp, CompletedPoint output) {
            Intrinsics.checkNotNullParameter(pp, "pp");
            Intrinsics.checkNotNullParameter(output, "output");
            FieldElement.Companion companion = FieldElement.Companion;
            FieldElement square$default = FieldElement.Companion.square$default(companion, pp.getX(), null, 2, null);
            FieldElement square$default2 = FieldElement.Companion.square$default(companion, pp.getY(), null, 2, null);
            FieldElement square2$default = FieldElement.Companion.square2$default(companion, pp.getZ(), null, 2, null);
            FieldElement add$default = FieldElement.Companion.add$default(companion, pp.getX(), pp.getY(), null, 4, null);
            add$default.square(add$default);
            output.getY().add(square$default2, square$default);
            output.getX().sub(add$default, output.getY());
            output.getZ().sub(square$default2, square$default);
            output.getT().sub(square2$default, output.getZ());
            return output;
        }

        public final CompletedPoint add(EdwardsPoint a, AffineNielsPoint b, CompletedPoint output) {
            Intrinsics.checkNotNullParameter(a, "a");
            Intrinsics.checkNotNullParameter(b, "b");
            Intrinsics.checkNotNullParameter(output, "output");
            FieldElement add = new FieldElement(null, 1, null).add(a.getY(), a.getX());
            add.mul(add, b.getYPlusX());
            FieldElement sub = new FieldElement(null, 1, null).sub(a.getY(), a.getX());
            sub.mul(sub, b.getYMinusX());
            FieldElement mul = new FieldElement(null, 1, null).mul(a.getT(), b.getXy2d());
            FieldElement add2 = new FieldElement(null, 1, null).add(a.getZ(), a.getZ());
            output.getX().sub(add, sub);
            output.getY().add(add, sub);
            output.getZ().add(add2, mul);
            output.getT().sub(add2, mul);
            return output;
        }
    }
}
