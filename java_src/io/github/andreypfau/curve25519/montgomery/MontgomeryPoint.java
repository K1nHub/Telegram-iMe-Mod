package io.github.andreypfau.curve25519.montgomery;

import io.github.andreypfau.curve25519.edwards.EdwardsPoint;
import io.github.andreypfau.curve25519.field.FieldElement;
import io.github.andreypfau.curve25519.montgomery.MontgomeryProjectivePoint;
import io.github.andreypfau.curve25519.scalar.Scalar;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: MontgomeryPoint.kt */
/* loaded from: classes4.dex */
public final class MontgomeryPoint {
    public static final Companion Companion = new Companion(null);
    private final byte[] data;

    public MontgomeryPoint(byte[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.data = data;
    }

    public /* synthetic */ MontgomeryPoint(byte[] bArr, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new byte[32] : bArr);
    }

    public final byte[] getData() {
        return this.data;
    }

    public final MontgomeryPoint mul(MontgomeryPoint point, Scalar scalar) {
        Intrinsics.checkNotNullParameter(point, "point");
        Intrinsics.checkNotNullParameter(scalar, "scalar");
        return Companion.mul(point, scalar, this);
    }

    /* compiled from: MontgomeryPoint.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ MontgomeryPoint from$default(Companion companion, EdwardsPoint edwardsPoint, MontgomeryPoint montgomeryPoint, int i, Object obj) {
            if ((i & 2) != 0) {
                montgomeryPoint = new MontgomeryPoint(null, 1, null);
            }
            return companion.from(edwardsPoint, montgomeryPoint);
        }

        public final MontgomeryPoint from(EdwardsPoint ep, MontgomeryPoint output) {
            Intrinsics.checkNotNullParameter(ep, "ep");
            Intrinsics.checkNotNullParameter(output, "output");
            FieldElement.Companion companion = FieldElement.Companion;
            FieldElement add$default = FieldElement.Companion.add$default(companion, ep.getZ(), ep.getY(), null, 4, null);
            FieldElement sub$default = FieldElement.Companion.sub$default(companion, ep.getZ(), ep.getY(), null, 4, null);
            sub$default.invert(sub$default);
            add$default.mul(add$default, sub$default);
            add$default.toBytes(output.getData());
            return output;
        }

        public final MontgomeryPoint from(MontgomeryProjectivePoint pp, MontgomeryPoint output) {
            Intrinsics.checkNotNullParameter(pp, "pp");
            Intrinsics.checkNotNullParameter(output, "output");
            FieldElement.Companion companion = FieldElement.Companion;
            FieldElement.Companion.mul$default(companion, pp.getU(), FieldElement.Companion.invert$default(companion, pp.getW(), null, 2, null), null, 4, null).toBytes(output.getData());
            return output;
        }

        public final MontgomeryPoint mul(MontgomeryPoint point, Scalar scalar, MontgomeryPoint output) {
            Intrinsics.checkNotNullParameter(point, "point");
            Intrinsics.checkNotNullParameter(scalar, "scalar");
            Intrinsics.checkNotNullParameter(output, "output");
            FieldElement.Companion companion = FieldElement.Companion;
            FieldElement fromBytes$default = FieldElement.Companion.fromBytes$default(companion, point.getData(), 0, null, 6, null);
            MontgomeryProjectivePoint identity$default = MontgomeryProjectivePoint.Companion.identity$default(MontgomeryProjectivePoint.Companion, null, 1, null);
            MontgomeryProjectivePoint montgomeryProjectivePoint = new MontgomeryProjectivePoint(FieldElement.Companion.fromBytes$default(companion, point.getData(), 0, null, 6, null), companion.one());
            byte[] bits = scalar.bits();
            for (int i = 254; -1 < i; i--) {
                identity$default.conditionalSwap(montgomeryProjectivePoint, bits[i + 1] ^ bits[i]);
                MontgomeryProjectivePoint.Companion.montgomeryDifferentialAddAndDouble(identity$default, montgomeryProjectivePoint, fromBytes$default);
            }
            identity$default.conditionalSwap(montgomeryProjectivePoint, bits[0]);
            return from(identity$default, output);
        }
    }

    static {
        FieldElement.Companion companion = FieldElement.Companion;
        companion.one();
        companion.minusOne();
    }
}
