package org.ton.hashmap;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.BitString;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbNegatedConstructor;
import org.ton.tlb.TlbNegatedResult;
/* compiled from: HmlSame.kt */
/* loaded from: classes6.dex */
final class HashMapLabelSameTlbConstructor extends TlbNegatedConstructor<HmlSame> {

    /* renamed from: ID */
    private static final BitString f2074ID;

    /* renamed from: m */
    private final int f2075m;

    public HashMapLabelSameTlbConstructor(int i) {
        super("hml_same$11 {m:#} v:Bit n:(#<= m) = HmLabel ~n m;", f2074ID);
        this.f2075m = i;
    }

    @Override // org.ton.tlb.TlbNegatedStorer
    public int storeNegatedTlb(CellBuilder cellBuilder, HmlSame value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeBit(value.getV());
        cellBuilder.storeUIntLeq(value.getN(), this.f2075m);
        return value.getN();
    }

    @Override // org.ton.tlb.TlbNegatedLoader
    public TlbNegatedResult<HmlSame> loadNegatedTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        boolean loadBit = cellSlice.loadBit();
        int intValue = cellSlice.loadUIntLeq(this.f2075m).intValue();
        return new TlbNegatedResult<>(intValue, new HmlSame(loadBit, intValue));
    }

    /* compiled from: HmlSame.kt */
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
        f2074ID = BitString.Companion.m42of(Arrays.copyOf(new boolean[]{true, true}, 2));
    }
}
