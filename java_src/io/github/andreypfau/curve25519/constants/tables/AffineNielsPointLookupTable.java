package io.github.andreypfau.curve25519.constants.tables;

import io.github.andreypfau.curve25519.models.AffineNielsPoint;
import kotlin.UInt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AffineNielsPointLookupTable.kt */
/* loaded from: classes4.dex */
public final class AffineNielsPointLookupTable {
    private final AffineNielsPoint[] points;

    static {
        new Companion(null);
    }

    public AffineNielsPointLookupTable(AffineNielsPoint[] points) {
        Intrinsics.checkNotNullParameter(points, "points");
        this.points = points;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ AffineNielsPointLookupTable(io.github.andreypfau.curve25519.models.AffineNielsPoint[] r2, int r3, kotlin.jvm.internal.DefaultConstructorMarker r4) {
        /*
            r1 = this;
            r3 = r3 & 1
            if (r3 == 0) goto L16
            r2 = 0
            r3 = 64
            io.github.andreypfau.curve25519.models.AffineNielsPoint[] r4 = new io.github.andreypfau.curve25519.models.AffineNielsPoint[r3]
        L9:
            if (r2 >= r3) goto L15
            io.github.andreypfau.curve25519.models.AffineNielsPoint r0 = new io.github.andreypfau.curve25519.models.AffineNielsPoint
            r0.<init>()
            r4[r2] = r0
            int r2 = r2 + 1
            goto L9
        L15:
            r2 = r4
        L16:
            r1.<init>(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.github.andreypfau.curve25519.constants.tables.AffineNielsPointLookupTable.<init>(io.github.andreypfau.curve25519.models.AffineNielsPoint[], int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    public final AffineNielsPoint get(int i) {
        return this.points[i];
    }

    public static /* synthetic */ AffineNielsPoint lookup$default(AffineNielsPointLookupTable affineNielsPointLookupTable, byte b, AffineNielsPoint affineNielsPoint, int i, Object obj) {
        if ((i & 2) != 0) {
            affineNielsPoint = new AffineNielsPoint();
        }
        return affineNielsPointLookupTable.lookup(b, affineNielsPoint);
    }

    public final AffineNielsPoint lookup(byte b, AffineNielsPoint output) {
        Intrinsics.checkNotNullParameter(output, "output");
        int i = b >>> 7;
        lookupAffineNiels(output, (byte) ((b + i) ^ i));
        output.conditionalNegate((byte) (i & 1));
        return output;
    }

    public final AffineNielsPoint lookupAffineNiels(AffineNielsPoint out, byte b) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.identity();
        for (int i = 1; i < 9; i++) {
            out.conditionalAssign(get(i - 1), UInt.m1972constructorimpl(UInt.m1972constructorimpl(UInt.m1972constructorimpl(((byte) i) ^ b) - 1) >>> 31));
        }
        return out;
    }

    /* compiled from: AffineNielsPointLookupTable.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
