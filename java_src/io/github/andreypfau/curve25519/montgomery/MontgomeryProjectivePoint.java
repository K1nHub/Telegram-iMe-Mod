package io.github.andreypfau.curve25519.montgomery;

import io.github.andreypfau.curve25519.field.FieldElement;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: MontgomeryProjectivePoint.kt */
/* loaded from: classes4.dex */
public final class MontgomeryProjectivePoint {
    public static final Companion Companion = new Companion(null);

    /* renamed from: u */
    private final FieldElement f434u;

    /* renamed from: w */
    private final FieldElement f435w;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MontgomeryProjectivePoint) {
            MontgomeryProjectivePoint montgomeryProjectivePoint = (MontgomeryProjectivePoint) obj;
            return Intrinsics.areEqual(this.f434u, montgomeryProjectivePoint.f434u) && Intrinsics.areEqual(this.f435w, montgomeryProjectivePoint.f435w);
        }
        return false;
    }

    public int hashCode() {
        return (this.f434u.hashCode() * 31) + this.f435w.hashCode();
    }

    public String toString() {
        return "MontgomeryProjectivePoint(u=" + this.f434u + ", w=" + this.f435w + ')';
    }

    public MontgomeryProjectivePoint(FieldElement u, FieldElement w) {
        Intrinsics.checkNotNullParameter(u, "u");
        Intrinsics.checkNotNullParameter(w, "w");
        this.f434u = u;
        this.f435w = w;
    }

    public final FieldElement getU() {
        return this.f434u;
    }

    public final FieldElement getW() {
        return this.f435w;
    }

    public MontgomeryProjectivePoint() {
        this(new FieldElement(null, 1, null), new FieldElement(null, 1, null));
    }

    public final void conditionalSwap(MontgomeryProjectivePoint other, int i) {
        Intrinsics.checkNotNullParameter(other, "other");
        this.f434u.conditionalSwap(other.f434u, i);
        this.f435w.conditionalSwap(other.f435w, i);
    }

    /* compiled from: MontgomeryProjectivePoint.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ MontgomeryProjectivePoint identity$default(Companion companion, MontgomeryProjectivePoint montgomeryProjectivePoint, int i, Object obj) {
            if ((i & 1) != 0) {
                montgomeryProjectivePoint = new MontgomeryProjectivePoint();
            }
            return companion.identity(montgomeryProjectivePoint);
        }

        public final MontgomeryProjectivePoint identity(MontgomeryProjectivePoint output) {
            Intrinsics.checkNotNullParameter(output, "output");
            FieldElement.one$default(output.getU(), null, 1, null);
            FieldElement.zero$default(output.getW(), null, 1, null);
            return output;
        }

        public final void montgomeryDifferentialAddAndDouble(MontgomeryProjectivePoint p, MontgomeryProjectivePoint q, FieldElement affinePmQ) {
            Intrinsics.checkNotNullParameter(p, "p");
            Intrinsics.checkNotNullParameter(q, "q");
            Intrinsics.checkNotNullParameter(affinePmQ, "affinePmQ");
            FieldElement.Companion companion = FieldElement.Companion;
            FieldElement add$default = FieldElement.Companion.add$default(companion, p.getU(), p.getW(), null, 4, null);
            FieldElement sub$default = FieldElement.Companion.sub$default(companion, p.getU(), p.getW(), null, 4, null);
            FieldElement add$default2 = FieldElement.Companion.add$default(companion, q.getU(), q.getW(), null, 4, null);
            FieldElement sub$default2 = FieldElement.Companion.sub$default(companion, q.getU(), q.getW(), null, 4, null);
            FieldElement square$default = FieldElement.Companion.square$default(companion, add$default, null, 2, null);
            FieldElement square$default2 = FieldElement.Companion.square$default(companion, sub$default, null, 2, null);
            FieldElement sub$default3 = FieldElement.Companion.sub$default(companion, square$default, square$default2, null, 4, null);
            FieldElement mul$default = FieldElement.Companion.mul$default(companion, add$default, sub$default2, null, 4, null);
            FieldElement mul$default2 = FieldElement.Companion.mul$default(companion, sub$default, add$default2, null, 4, null);
            q.getU().add(mul$default, mul$default2);
            q.getW().sub(mul$default, mul$default2);
            q.getU().square(q.getU());
            q.getW().square(q.getW());
            p.getW().mul12166(sub$default3);
            p.getU().mul(square$default, square$default2);
            p.getW().add(p.getW(), square$default2);
            p.getW().mul(sub$default3, p.getW());
            q.getW().mul(affinePmQ, q.getW());
        }
    }
}
