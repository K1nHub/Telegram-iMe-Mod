package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.CurrencyCollection;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* compiled from: ShardFeeCreated.kt */
/* loaded from: classes6.dex */
final class ShardFeeCreatedTlbConstructor extends org.ton.tlb.TlbConstructor<ShardFeeCreated> {
    public static final ShardFeeCreatedTlbConstructor INSTANCE = new ShardFeeCreatedTlbConstructor();

    private ShardFeeCreatedTlbConstructor() {
        super("_ fees:CurrencyCollection create:CurrencyCollection = ShardFeeCreated;\n", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, ShardFeeCreated value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        CurrencyCollection.Companion companion = CurrencyCollection.Companion;
        companion.storeTlb(cellBuilder, (CellBuilder) value.getFees());
        companion.storeTlb(cellBuilder, (CellBuilder) value.getCreate());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public ShardFeeCreated loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        CurrencyCollection.Companion companion = CurrencyCollection.Companion;
        return new ShardFeeCreated(companion.loadTlb(cellSlice), companion.loadTlb(cellSlice));
    }
}
