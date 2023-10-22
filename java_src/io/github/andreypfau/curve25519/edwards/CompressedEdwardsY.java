package io.github.andreypfau.curve25519.edwards;

import io.github.andreypfau.curve25519.field.FieldElement;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CompressedEdwardsY.kt */
/* loaded from: classes4.dex */
public final class CompressedEdwardsY {
    public static final Companion Companion = new Companion(null);
    private final byte[] data;

    public CompressedEdwardsY(byte[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.data = data;
    }

    public final byte[] getData() {
        return this.data;
    }

    public CompressedEdwardsY() {
        this(new byte[32]);
    }

    /* compiled from: CompressedEdwardsY.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ CompressedEdwardsY from$default(Companion companion, EdwardsPoint edwardsPoint, CompressedEdwardsY compressedEdwardsY, int i, Object obj) {
            if ((i & 2) != 0) {
                compressedEdwardsY = new CompressedEdwardsY();
            }
            return companion.from(edwardsPoint, compressedEdwardsY);
        }

        public final CompressedEdwardsY from(EdwardsPoint ep, CompressedEdwardsY output) {
            Intrinsics.checkNotNullParameter(ep, "ep");
            Intrinsics.checkNotNullParameter(output, "output");
            FieldElement fieldElement = new FieldElement(null, 1, null);
            FieldElement fieldElement2 = new FieldElement(null, 1, null);
            FieldElement fieldElement3 = new FieldElement(null, 1, null);
            fieldElement3.invert(ep.getZ());
            fieldElement.mul(ep.getX(), fieldElement3);
            fieldElement2.mul(ep.getY(), fieldElement3);
            fieldElement2.toBytes(output.getData());
            output.getData()[31] = (byte) (((byte) (fieldElement.isNegative() << 7)) ^ output.getData()[31]);
            return output;
        }
    }
}
