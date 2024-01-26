package org.ton.block;

import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.ton.block.Coins;
import org.ton.block.CommonMsgInfoRelaxed;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCombinator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CommonMsgInfoRelaxed.kt */
/* loaded from: classes6.dex */
public final class CommonMsgInfoRelaxedTlbCombinator extends TlbCombinator<CommonMsgInfoRelaxed> {
    public static final CommonMsgInfoRelaxedTlbCombinator INSTANCE = new CommonMsgInfoRelaxedTlbCombinator();

    private CommonMsgInfoRelaxedTlbCombinator() {
        super(Reflection.getOrCreateKotlinClass(CommonMsgInfoRelaxed.class), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(CommonMsgInfoRelaxed.IntMsgInfoRelaxed.class), IntMsgInfoTlbConstructor.INSTANCE), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(CommonMsgInfoRelaxed.ExtOutMsgInfoRelaxed.class), ExtOutMsgInfoTlbConstructor.INSTANCE));
    }

    /* compiled from: CommonMsgInfoRelaxed.kt */
    /* loaded from: classes6.dex */
    private static final class IntMsgInfoTlbConstructor extends org.ton.tlb.TlbConstructor<CommonMsgInfoRelaxed.IntMsgInfoRelaxed> {
        public static final IntMsgInfoTlbConstructor INSTANCE = new IntMsgInfoTlbConstructor();

        private IntMsgInfoTlbConstructor() {
            super("int_msg_info$0 ihr_disabled:Bool bounce:Bool bounced:Bool src:MsgAddress dest:MsgAddressInt value:CurrencyCollection ihr_fee:Coins fwd_fee:Coins created_lt:uint64 created_at:uint32 = CommonMsgInfoRelaxed;", null, 2, null);
        }

        @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, CommonMsgInfoRelaxed.IntMsgInfoRelaxed value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            cellBuilder.storeBit(value.getIhrDisabled());
            cellBuilder.storeBit(value.getBounce());
            cellBuilder.storeBit(value.getBounced());
            MsgAddress.Companion.storeTlb(cellBuilder, (CellBuilder) value.getSrc());
            MsgAddressInt.Companion.storeTlb(cellBuilder, (CellBuilder) value.getDest());
            CurrencyCollection.Companion.storeTlb(cellBuilder, (CellBuilder) value.getValue());
            Coins.Companion companion = Coins.Companion;
            companion.storeTlb(cellBuilder, (CellBuilder) value.getIhrFee());
            companion.storeTlb(cellBuilder, (CellBuilder) value.getFwdFee());
            cellBuilder.mo5378storeUInt64VKZWuLQ(value.m5267getCreatedLtsVKNKU());
            cellBuilder.mo5377storeUInt32WZ4Q5Ns(value.m5266getCreatedAtpVg5ArA());
        }

        @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
        public CommonMsgInfoRelaxed.IntMsgInfoRelaxed loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            boolean loadBit = cellSlice.loadBit();
            boolean loadBit2 = cellSlice.loadBit();
            boolean loadBit3 = cellSlice.loadBit();
            MsgAddress loadTlb = MsgAddress.Companion.loadTlb(cellSlice);
            MsgAddressInt loadTlb2 = MsgAddressInt.Companion.loadTlb(cellSlice);
            CurrencyCollection loadTlb3 = CurrencyCollection.Companion.loadTlb(cellSlice);
            Coins.Companion companion = Coins.Companion;
            return new CommonMsgInfoRelaxed.IntMsgInfoRelaxed(loadBit, loadBit2, loadBit3, loadTlb, loadTlb2, loadTlb3, companion.loadTlb(cellSlice), companion.loadTlb(cellSlice), cellSlice.mo5388loadUInt64sVKNKU(), cellSlice.mo5387loadUInt32pVg5ArA(), null);
        }
    }

    /* compiled from: CommonMsgInfoRelaxed.kt */
    /* loaded from: classes6.dex */
    private static final class ExtOutMsgInfoTlbConstructor extends org.ton.tlb.TlbConstructor<CommonMsgInfoRelaxed.ExtOutMsgInfoRelaxed> {
        public static final ExtOutMsgInfoTlbConstructor INSTANCE = new ExtOutMsgInfoTlbConstructor();

        private ExtOutMsgInfoTlbConstructor() {
            super("ext_out_msg_info$11 src:MsgAddress dest:MsgAddressExt created_lt:uint64 created_at:uint32 = CommonMsgInfoRelaxed;", null, 2, null);
        }

        @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, CommonMsgInfoRelaxed.ExtOutMsgInfoRelaxed value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            MsgAddress.Companion.storeTlb(cellBuilder, (CellBuilder) value.getSrc());
            MsgAddressExt.Companion.storeTlb(cellBuilder, (CellBuilder) value.getDest());
            cellBuilder.mo5378storeUInt64VKZWuLQ(value.m5265getCreatedLtsVKNKU());
            cellBuilder.mo5377storeUInt32WZ4Q5Ns(value.m5264getCreatedAtpVg5ArA());
        }

        @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
        public CommonMsgInfoRelaxed.ExtOutMsgInfoRelaxed loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return new CommonMsgInfoRelaxed.ExtOutMsgInfoRelaxed(MsgAddress.Companion.loadTlb(cellSlice), MsgAddressExt.Companion.loadTlb(cellSlice), cellSlice.mo5388loadUInt64sVKNKU(), cellSlice.mo5387loadUInt32pVg5ArA(), null);
        }
    }
}
