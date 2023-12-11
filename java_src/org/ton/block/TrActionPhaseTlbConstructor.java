package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.Maybe;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.constructor.IntTlbConstructor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TrActionPhase.kt */
/* loaded from: classes6.dex */
public final class TrActionPhaseTlbConstructor extends org.ton.tlb.TlbConstructor<TrActionPhase> {
    public static final TrActionPhaseTlbConstructor INSTANCE = new TrActionPhaseTlbConstructor();
    private static final TlbCodec<Maybe<Coins>> maybeCoins;
    private static final TlbCodec<Maybe<Integer>> maybeInt32;

    private TrActionPhaseTlbConstructor() {
        super("tr_phase_action$_ success:Bool valid:Bool no_funds:Bool status_change:AccStatusChange total_fwd_fees:(Maybe Coins) total_action_fees:(Maybe Coins) result_code:int32 result_arg:(Maybe int32) tot_actions:uint16 spec_actions:uint16 skipped_actions:uint16 msgs_created:uint16 action_list_hash:bits256 tot_msg_size:StorageUsedShort = TrActionPhase;", null, 2, null);
    }

    static {
        Maybe.Companion companion = Maybe.Companion;
        maybeCoins = companion.tlbCodec(Coins.Companion);
        maybeInt32 = companion.tlbCodec(IntTlbConstructor.Companion.m5236int(32));
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, TrActionPhase value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeBit(value.getSuccess());
        cellBuilder.storeBit(value.getValid());
        cellBuilder.storeBit(value.getNoFunds());
        AccStatusChange.Companion.storeTlb(cellBuilder, (CellBuilder) value.getStatusChange());
        TlbCodec<Maybe<Coins>> tlbCodec = maybeCoins;
        tlbCodec.storeTlb(cellBuilder, value.getTotalFwdFees());
        tlbCodec.storeTlb(cellBuilder, value.getTotalActionFees());
        cellBuilder.storeInt(value.getResultCode(), 32);
        maybeInt32.storeTlb(cellBuilder, value.getResultArg());
        cellBuilder.storeUInt(value.getTotActions(), 16);
        cellBuilder.storeUInt(value.getSpecActions(), 16);
        cellBuilder.storeUInt(value.getSkippedActions(), 16);
        cellBuilder.storeUInt(value.getMsgsCreated(), 16);
        cellBuilder.storeBits(value.getActionListHash());
        StorageUsedShort.Companion.storeTlb(cellBuilder, (CellBuilder) value.getTotMsgSize());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public TrActionPhase loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        boolean loadBit = cellSlice.loadBit();
        boolean loadBit2 = cellSlice.loadBit();
        boolean loadBit3 = cellSlice.loadBit();
        AccStatusChange loadTlb = AccStatusChange.Companion.loadTlb(cellSlice);
        TlbCodec<Maybe<Coins>> tlbCodec = maybeCoins;
        return new TrActionPhase(loadBit, loadBit2, loadBit3, loadTlb, tlbCodec.loadTlb(cellSlice), tlbCodec.loadTlb(cellSlice), cellSlice.loadInt(32).intValue(), maybeInt32.loadTlb(cellSlice), cellSlice.loadUInt(16).intValue(), cellSlice.loadUInt(16).intValue(), cellSlice.loadUInt(16).intValue(), cellSlice.loadUInt(16).intValue(), cellSlice.loadBits(256), StorageUsedShort.Companion.loadTlb(cellSlice));
    }
}
