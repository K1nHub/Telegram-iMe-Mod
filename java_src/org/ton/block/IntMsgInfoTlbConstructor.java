package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.Coins;
import org.ton.block.MsgAddressInt;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: IntMsgInfo.kt */
/* loaded from: classes6.dex */
public final class IntMsgInfoTlbConstructor extends org.ton.tlb.TlbConstructor<IntMsgInfo> {
    public static final IntMsgInfoTlbConstructor INSTANCE = new IntMsgInfoTlbConstructor();

    private IntMsgInfoTlbConstructor() {
        super("int_msg_info$0 ihr_disabled:Bool bounce:Bool bounced:Bool src:MsgAddressInt dest:MsgAddressInt value:CurrencyCollection ihr_fee:Coins fwd_fee:Coins created_lt:uint64 created_at:uint32 = CommonMsgInfo;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, IntMsgInfo value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeBit(value.getIhrDisabled());
        cellBuilder.storeBit(value.getBounce());
        cellBuilder.storeBit(value.getBounced());
        MsgAddressInt.Companion companion = MsgAddressInt.Companion;
        companion.storeTlb(cellBuilder, (CellBuilder) value.getSrc());
        companion.storeTlb(cellBuilder, (CellBuilder) value.getDest());
        CurrencyCollection.Companion.storeTlb(cellBuilder, (CellBuilder) value.getValue());
        Coins.Companion companion2 = Coins.Companion;
        companion2.storeTlb(cellBuilder, (CellBuilder) value.getIhr_fee());
        companion2.storeTlb(cellBuilder, (CellBuilder) value.getFwd_fee());
        cellBuilder.storeUInt(value.getCreated_lt(), 64);
        cellBuilder.storeUInt(value.getCreated_at(), 32);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public IntMsgInfo loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        boolean loadBit = cellSlice.loadBit();
        boolean loadBit2 = cellSlice.loadBit();
        boolean loadBit3 = cellSlice.loadBit();
        MsgAddressInt.Companion companion = MsgAddressInt.Companion;
        MsgAddressInt loadTlb = companion.loadTlb(cellSlice);
        CurrencyCollection loadTlb2 = CurrencyCollection.Companion.loadTlb(cellSlice);
        Coins.Companion companion2 = Coins.Companion;
        return new IntMsgInfo(loadBit, loadBit2, loadBit3, companion.loadTlb(cellSlice), loadTlb, loadTlb2, companion2.loadTlb(cellSlice), companion2.loadTlb(cellSlice), cellSlice.loadUInt(64).longValue(), cellSlice.loadUInt(32).intValue());
    }
}
