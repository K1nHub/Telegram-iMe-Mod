package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: KeyMaxLt.kt */
/* loaded from: classes6.dex */
public final class KeyMaxLtTlbConstructor extends org.ton.tlb.TlbConstructor<KeyMaxLt> {
    public static final KeyMaxLtTlbConstructor INSTANCE = new KeyMaxLtTlbConstructor();

    private KeyMaxLtTlbConstructor() {
        super("_ key:Bool max_end_lt:uint64 = KeyMaxLt;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, KeyMaxLt value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeBit(value.getKey());
        cellBuilder.mo5057storeUInt64VKZWuLQ(value.m4965getMaxEndLtsVKNKU());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public KeyMaxLt loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new KeyMaxLt(cellSlice.loadBit(), cellSlice.mo5067loadUInt64sVKNKU(), null);
    }
}
