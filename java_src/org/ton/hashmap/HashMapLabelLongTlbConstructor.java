package org.ton.hashmap;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.BitString;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbNegatedConstructor;
import org.ton.tlb.TlbNegatedResult;
/* compiled from: HmlLong.kt */
/* loaded from: classes6.dex */
final class HashMapLabelLongTlbConstructor extends TlbNegatedConstructor<HmlLong> {

    /* renamed from: ID */
    private static final BitString f2084ID;

    /* renamed from: m */
    private final int f2085m;

    public HashMapLabelLongTlbConstructor(int i) {
        super("hml_long$10 {m:#} n:(#<= m) s:(n * Bit) = HmLabel ~n m;", f2084ID);
        this.f2085m = i;
    }

    @Override // org.ton.tlb.TlbNegatedStorer
    public int storeNegatedTlb(CellBuilder cellBuilder, HmlLong value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeUIntLeq(value.getN(), this.f2085m);
        cellBuilder.storeBits(value.getS());
        return value.getN();
    }

    @Override // org.ton.tlb.TlbNegatedLoader
    public TlbNegatedResult<HmlLong> loadNegatedTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        int intValue = cellSlice.loadUIntLeq(this.f2085m).intValue();
        return new TlbNegatedResult<>(intValue, new HmlLong(intValue, cellSlice.loadBits(intValue)));
    }

    /* compiled from: HmlLong.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    static {
        new Companion(null);
        f2084ID = BitString.Companion.m42of(Arrays.copyOf(new boolean[]{true, false}, 2));
    }
}
