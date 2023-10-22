package org.ton.hashmap;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbNegatedConstructor;
import org.ton.tlb.TlbNegatedResult;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Unary.kt */
/* loaded from: classes6.dex */
public final class UnaryZeroTlbConstructor extends TlbNegatedConstructor<UnaryZero> {
    public static final UnaryZeroTlbConstructor INSTANCE = new UnaryZeroTlbConstructor();
    private static final TlbNegatedResult<UnaryZero> result = new TlbNegatedResult<>(0, UnaryZero.INSTANCE);

    @Override // org.ton.tlb.TlbNegatedStorer
    public int storeNegatedTlb(CellBuilder cellBuilder, UnaryZero value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        return 0;
    }

    private UnaryZeroTlbConstructor() {
        super("unary_zero$0 = Unary ~0;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbNegatedLoader
    public TlbNegatedResult<UnaryZero> loadNegatedTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return result;
    }
}
