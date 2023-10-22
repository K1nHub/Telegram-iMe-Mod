package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* compiled from: DepthBalanceInfo.kt */
/* loaded from: classes6.dex */
final class DepthBalanceInfoTlbConstructor extends org.ton.tlb.TlbConstructor<DepthBalanceInfo> {
    public static final DepthBalanceInfoTlbConstructor INSTANCE = new DepthBalanceInfoTlbConstructor();

    private DepthBalanceInfoTlbConstructor() {
        super("depth_balance$_ split_depth:(#<= 30) balance:CurrencyCollection = DepthBalanceInfo;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, DepthBalanceInfo value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeUIntLeq(value.getSplitDepth(), 30);
        CurrencyCollection.Companion.storeTlb(cellBuilder, (CellBuilder) value.getBalance());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public DepthBalanceInfo loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new DepthBalanceInfo(cellSlice.loadUIntLeq(30).intValue(), CurrencyCollection.Companion.loadTlb(cellSlice));
    }
}
