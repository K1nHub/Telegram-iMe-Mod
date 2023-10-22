package org.ton.hashmap;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbNegatedConstructor;
import org.ton.tlb.TlbNegatedResult;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Unary.kt */
/* loaded from: classes6.dex */
public final class UnarySuccessTlbConstructor extends TlbNegatedConstructor<UnarySuccess> {
    public static final UnarySuccessTlbConstructor INSTANCE = new UnarySuccessTlbConstructor();

    private UnarySuccessTlbConstructor() {
        super("unary_succ$1 {n:#} x:(Unary ~n) = Unary ~(n + 1);", null, 2, null);
    }

    @Override // org.ton.tlb.TlbNegatedStorer
    public int storeNegatedTlb(CellBuilder cellBuilder, UnarySuccess value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        return Unary.Companion.storeNegatedTlb(cellBuilder, (CellBuilder) value.getX()) + 1;
    }

    @Override // org.ton.tlb.TlbNegatedLoader
    public TlbNegatedResult<UnarySuccess> loadNegatedTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        TlbNegatedResult<Unary> loadNegatedTlb = Unary.Companion.loadNegatedTlb(cellSlice);
        return new TlbNegatedResult<>(loadNegatedTlb.component1() + 1, new UnarySuccess(loadNegatedTlb.component2()));
    }
}
