package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ExtOutMsgInfo.kt */
/* loaded from: classes6.dex */
public final class ExtOutMsgInfoTlbConstructor extends org.ton.tlb.TlbConstructor<ExtOutMsgInfo> {
    public static final ExtOutMsgInfoTlbConstructor INSTANCE = new ExtOutMsgInfoTlbConstructor();

    private ExtOutMsgInfoTlbConstructor() {
        super("ext_out_msg_info$11 src:MsgAddressInt dest:MsgAddressExt created_lt:uint64 created_at:uint32 = CommonMsgInfo;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, ExtOutMsgInfo value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        MsgAddressInt.Companion.storeTlb(cellBuilder, (CellBuilder) value.getSrc());
        MsgAddressExt.Companion.storeTlb(cellBuilder, (CellBuilder) value.getDest());
        cellBuilder.storeUInt(value.m5276getCreatedLtsVKNKU(), 64);
        cellBuilder.storeUInt(value.m5275getCreatedAtpVg5ArA(), 32);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public ExtOutMsgInfo loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new ExtOutMsgInfo(MsgAddressInt.Companion.loadTlb(cellSlice), MsgAddressExt.Companion.loadTlb(cellSlice), cellSlice.mo5388loadUInt64sVKNKU(), cellSlice.mo5387loadUInt32pVg5ArA(), null);
    }
}
