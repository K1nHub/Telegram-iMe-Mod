package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.Maybe;
import org.ton.block.Message;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.hashmap.HashMapE;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
/* compiled from: Transaction.kt */
/* loaded from: classes6.dex */
final class TransactionAuxTlbConstructor extends org.ton.tlb.TlbConstructor<TransactionAux> {
    public static final TransactionAuxTlbConstructor INSTANCE = new TransactionAuxTlbConstructor();
    private static final TlbCodec<Maybe<CellRef<Message<Cell>>>> maybeMessage;
    private static final TlbCodec<HashMapE<CellRef<Message<Cell>>>> outMsgs;

    private TransactionAuxTlbConstructor() {
        super("$_ in_msg:(Maybe ^(Message Any)) out_msgs:(HashmapE 15 ^(Message Any)) ", null, 2, null);
    }

    static {
        Maybe.Companion companion = Maybe.Companion;
        CellRef.Companion companion2 = CellRef.Companion;
        Message.Companion companion3 = Message.Companion;
        maybeMessage = companion.tlbCodec(companion2.tlbCodec(companion3.getAny()));
        outMsgs = HashMapE.Companion.tlbCodec(15, companion2.tlbCodec(companion3.getAny()));
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, TransactionAux value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        maybeMessage.storeTlb(cellBuilder, value.inMsg());
        outMsgs.storeTlb(cellBuilder, value.outMsgs());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public TransactionAux loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new TransactionAux(maybeMessage.loadTlb(cellSlice), outMsgs.loadTlb(cellSlice));
    }
}
