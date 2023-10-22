package org.ton.block;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.BitString;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* compiled from: Maybe.kt */
/* loaded from: classes6.dex */
final class NothingConstructor extends org.ton.tlb.TlbConstructor<Nothing<Object>> {
    public static final NothingConstructor INSTANCE = new NothingConstructor();
    private static final Nothing<Object> nothing = new Nothing<>();

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, Nothing<Object> value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
    }

    private NothingConstructor() {
        super("nothing$0 {X:Type} = Maybe X;", BitString.Companion.m42of(Arrays.copyOf(new boolean[]{false}, 1)));
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public Nothing<Object> loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return nothing;
    }
}
