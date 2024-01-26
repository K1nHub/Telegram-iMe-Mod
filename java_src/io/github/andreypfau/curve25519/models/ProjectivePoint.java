package io.github.andreypfau.curve25519.models;

import io.github.andreypfau.curve25519.edwards.EdwardsPoint;
import io.github.andreypfau.curve25519.field.FieldElement;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ProjectivePoint.kt */
/* loaded from: classes4.dex */
public final class ProjectivePoint {
    public static final Companion Companion = new Companion(null);

    /* renamed from: x */
    private final FieldElement f431x;

    /* renamed from: y */
    private final FieldElement f432y;

    /* renamed from: z */
    private final FieldElement f433z;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ProjectivePoint) {
            ProjectivePoint projectivePoint = (ProjectivePoint) obj;
            return Intrinsics.areEqual(this.f431x, projectivePoint.f431x) && Intrinsics.areEqual(this.f432y, projectivePoint.f432y) && Intrinsics.areEqual(this.f433z, projectivePoint.f433z);
        }
        return false;
    }

    public int hashCode() {
        return (((this.f431x.hashCode() * 31) + this.f432y.hashCode()) * 31) + this.f433z.hashCode();
    }

    public String toString() {
        return "ProjectivePoint(x=" + this.f431x + ", y=" + this.f432y + ", z=" + this.f433z + ')';
    }

    public ProjectivePoint(FieldElement x, FieldElement y, FieldElement z) {
        Intrinsics.checkNotNullParameter(x, "x");
        Intrinsics.checkNotNullParameter(y, "y");
        Intrinsics.checkNotNullParameter(z, "z");
        this.f431x = x;
        this.f432y = y;
        this.f433z = z;
    }

    public final FieldElement getX() {
        return this.f431x;
    }

    public final FieldElement getY() {
        return this.f432y;
    }

    public final FieldElement getZ() {
        return this.f433z;
    }

    public ProjectivePoint() {
        this(new FieldElement(null, 1, null), new FieldElement(null, 1, null), new FieldElement(null, 1, null));
    }

    public final ProjectivePoint set(CompletedPoint cp) {
        Intrinsics.checkNotNullParameter(cp, "cp");
        Companion.from(cp, this);
        return this;
    }

    public final ProjectivePoint set(EdwardsPoint ep) {
        Intrinsics.checkNotNullParameter(ep, "ep");
        Companion.from(ep, this);
        return this;
    }

    /* compiled from: ProjectivePoint.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ProjectivePoint from(CompletedPoint cp, ProjectivePoint output) {
            Intrinsics.checkNotNullParameter(cp, "cp");
            Intrinsics.checkNotNullParameter(output, "output");
            output.getX().mul(cp.getX(), cp.getT());
            output.getY().mul(cp.getY(), cp.getZ());
            output.getZ().mul(cp.getZ(), cp.getT());
            return output;
        }

        public final ProjectivePoint from(EdwardsPoint ep, ProjectivePoint output) {
            Intrinsics.checkNotNullParameter(ep, "ep");
            Intrinsics.checkNotNullParameter(output, "output");
            FieldElement.set$default(output.getX(), ep.getX(), null, 2, null);
            FieldElement.set$default(output.getY(), ep.getY(), null, 2, null);
            FieldElement.set$default(output.getZ(), ep.getZ(), null, 2, null);
            return output;
        }
    }
}
