package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ExtInMsgInfo.kt */
/* loaded from: classes6.dex */
public final class ExtInMsgInfoTlbConstructor extends org.ton.tlb.TlbConstructor<ExtInMsgInfo> {
    public static final ExtInMsgInfoTlbConstructor INSTANCE = new ExtInMsgInfoTlbConstructor();

    private ExtInMsgInfoTlbConstructor() {
        super("ext_in_msg_info$10 src:MsgAddressExt dest:MsgAddressInt import_fee:Coins = CommonMsgInfo;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, ExtInMsgInfo value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        MsgAddressExt.Companion.storeTlb(cellBuilder, (CellBuilder) value.getSrc());
        MsgAddressInt.Companion.storeTlb(cellBuilder, (CellBuilder) value.getDest());
        Coins.Companion.storeTlb(cellBuilder, (CellBuilder) value.getImportFee());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public ExtInMsgInfo loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new ExtInMsgInfo(MsgAddressExt.Companion.loadTlb(cellSlice), MsgAddressInt.Companion.loadTlb(cellSlice), Coins.Companion.loadTlb(cellSlice));
    }
}
