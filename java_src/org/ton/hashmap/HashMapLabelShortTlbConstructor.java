package org.ton.hashmap;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.BitString;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbNegatedConstructor;
import org.ton.tlb.TlbNegatedResult;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HmlShort.kt */
/* loaded from: classes6.dex */
public final class HashMapLabelShortTlbConstructor extends TlbNegatedConstructor<HmlShort> {
    public static final HashMapLabelShortTlbConstructor INSTANCE = new HashMapLabelShortTlbConstructor();

    private HashMapLabelShortTlbConstructor() {
        super("hml_short$0 {m:#} {n:#} len:(Unary ~n) s:(n * Bit) = HmLabel ~n m;", BitString.Companion.m42of(Arrays.copyOf(new boolean[]{false}, 1)));
    }

    @Override // org.ton.tlb.TlbNegatedStorer
    public int storeNegatedTlb(CellBuilder cellBuilder, HmlShort value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        int storeNegatedTlb = Unary.Companion.storeNegatedTlb(cellBuilder, (CellBuilder) value.getLen());
        cellBuilder.storeBits(value.getS());
        return storeNegatedTlb;
    }

    @Override // org.ton.tlb.TlbNegatedLoader
    public TlbNegatedResult<HmlShort> loadNegatedTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        TlbNegatedResult<Unary> loadNegatedTlb = Unary.Companion.loadNegatedTlb(cellSlice);
        int component1 = loadNegatedTlb.component1();
        return new TlbNegatedResult<>(component1, new HmlShort(loadNegatedTlb.component2(), cellSlice.loadBits(component1)));
    }
}
