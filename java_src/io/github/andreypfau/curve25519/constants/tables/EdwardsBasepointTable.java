package io.github.andreypfau.curve25519.constants.tables;

import io.github.andreypfau.curve25519.edwards.EdwardsPoint;
import io.github.andreypfau.curve25519.models.AffineNielsPoint;
import io.github.andreypfau.curve25519.models.CompletedPoint;
import io.github.andreypfau.curve25519.scalar.Scalar;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
/* compiled from: EdwardsBasepointTable.kt */
/* loaded from: classes4.dex */
public final class EdwardsBasepointTable {
    public static final Companion Companion = new Companion(null);
    private final AffineNielsPointLookupTable[] data;

    public EdwardsBasepointTable() {
        this(null, 1, null);
    }

    public EdwardsBasepointTable(AffineNielsPointLookupTable[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.data = data;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ EdwardsBasepointTable(io.github.andreypfau.curve25519.constants.tables.AffineNielsPointLookupTable[] r4, int r5, kotlin.jvm.internal.DefaultConstructorMarker r6) {
        /*
            r3 = this;
            r6 = 1
            r5 = r5 & r6
            if (r5 == 0) goto L17
            r4 = 0
            r5 = 32
            io.github.andreypfau.curve25519.constants.tables.AffineNielsPointLookupTable[] r0 = new io.github.andreypfau.curve25519.constants.tables.AffineNielsPointLookupTable[r5]
        L9:
            if (r4 >= r5) goto L16
            io.github.andreypfau.curve25519.constants.tables.AffineNielsPointLookupTable r1 = new io.github.andreypfau.curve25519.constants.tables.AffineNielsPointLookupTable
            r2 = 0
            r1.<init>(r2, r6, r2)
            r0[r4] = r1
            int r4 = r4 + 1
            goto L9
        L16:
            r4 = r0
        L17:
            r3.<init>(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.github.andreypfau.curve25519.constants.tables.EdwardsBasepointTable.<init>(io.github.andreypfau.curve25519.constants.tables.AffineNielsPointLookupTable[], int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    public final AffineNielsPointLookupTable get(int i) {
        return this.data[i];
    }

    public final EdwardsPoint mul(EdwardsPoint out, Scalar scalar) {
        IntRange until;
        IntProgression step;
        IntRange until2;
        IntProgression step2;
        Intrinsics.checkNotNullParameter(out, "out");
        Intrinsics.checkNotNullParameter(scalar, "scalar");
        byte[] radix16$default = Scalar.toRadix16$default(scalar, null, 1, null);
        out.identity();
        CompletedPoint completedPoint = new CompletedPoint();
        until = RangesKt___RangesKt.until(1, 64);
        step = RangesKt___RangesKt.step(until, 2);
        int first = step.getFirst();
        int last = step.getLast();
        int step3 = step.getStep();
        if ((step3 > 0 && first <= last) || (step3 < 0 && last <= first)) {
            while (true) {
                completedPoint.add(out, AffineNielsPointLookupTable.lookup$default(get(first / 2), radix16$default[first], null, 2, null));
                out.set(completedPoint);
                if (first == last) {
                    break;
                }
                first += step3;
            }
        }
        out.multByPow2(out, 4);
        until2 = RangesKt___RangesKt.until(0, 64);
        step2 = RangesKt___RangesKt.step(until2, 2);
        int first2 = step2.getFirst();
        int last2 = step2.getLast();
        int step4 = step2.getStep();
        if ((step4 > 0 && first2 <= last2) || (step4 < 0 && last2 <= first2)) {
            while (true) {
                completedPoint.add(out, AffineNielsPointLookupTable.lookup$default(get(first2 / 2), radix16$default[first2], null, 2, null));
                out.set(completedPoint);
                if (first2 == last2) {
                    break;
                }
                first2 += step4;
            }
        }
        return out;
    }

    /* compiled from: EdwardsBasepointTable.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final EdwardsBasepointTable unpack(byte[][] packed) {
            Intrinsics.checkNotNullParameter(packed, "packed");
            EdwardsBasepointTable edwardsBasepointTable = new EdwardsBasepointTable(null, 1, null);
            for (int i = 0; i < 32; i++) {
                for (int i2 = 0; i2 < 8; i2++) {
                    AffineNielsPoint.setRawData$default(edwardsBasepointTable.get(i).get(i2), packed[(i * 8) + i2], 0, 2, null);
                }
            }
            return edwardsBasepointTable;
        }
    }
}
