package org.ton.block;

import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.hashmap.HashMapE;
import org.ton.hashmap.HashmapAugE;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.constructor.UIntTlbConstructorKt;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: OutMsgQueueInfo.kt */
/* loaded from: classes6.dex */
public final class OutMsgQueueInfoTlbConstructor extends org.ton.tlb.TlbConstructor<OutMsgQueueInfo> {
    private static final TlbCodec<HashMapE<IhrPendingSince>> ihrPending;
    private static final TlbCodec<HashMapE<ProcessedUpto>> procInfo;
    public static final OutMsgQueueInfoTlbConstructor INSTANCE = new OutMsgQueueInfoTlbConstructor();
    private static final TlbCodec<HashmapAugE<EnqueuedMsg, ULong>> outQueue = HashmapAugE.Companion.tlbCodec(352, EnqueuedMsg.Companion, UIntTlbConstructorKt.tlbConstructor(ULong.Companion));

    private OutMsgQueueInfoTlbConstructor() {
        super("_ out_queue:OutMsgQueue proc_info:ProcessedInfo ihr_pending:IhrPendingInfo = OutMsgQueueInfo;", null, 2, null);
    }

    static {
        HashMapE.Companion companion = HashMapE.Companion;
        procInfo = companion.tlbCodec(96, ProcessedUpto.Companion);
        ihrPending = companion.tlbCodec(320, IhrPendingSince.Companion);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, OutMsgQueueInfo value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        outQueue.storeTlb(cellBuilder, value.getOutQueue());
        procInfo.storeTlb(cellBuilder, value.getProcInfo());
        ihrPending.storeTlb(cellBuilder, value.getIhrPending());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public OutMsgQueueInfo loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new OutMsgQueueInfo(outQueue.loadTlb(cellSlice), procInfo.loadTlb(cellSlice), ihrPending.loadTlb(cellSlice));
    }
}
