package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.Maybe;
import org.ton.block.VarUInteger;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.constructor.IntTlbConstructor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TrPhaseComputeVm.kt */
/* loaded from: classes6.dex */
public final class TrComputePhaseAuxTlbConstructor extends org.ton.tlb.TlbConstructor<TrComputePhaseAux> {
    public static final TrComputePhaseAuxTlbConstructor INSTANCE = new TrComputePhaseAuxTlbConstructor();
    private static final TlbCodec<Maybe<Integer>> MaybeInt32;
    private static final TlbCodec<Maybe<VarUInteger>> MaybeVarUInteger3;
    private static final TlbCodec<VarUInteger> VarUInteger7;

    private TrComputePhaseAuxTlbConstructor() {
        super("$_ gas_used:(VarUInteger 7) gas_limit:(VarUInteger 7) gas_credit:(Maybe (VarUInteger 3)) mode:int8 exit_code:int32 exit_arg:(Maybe int32) vm_steps:uint32 vm_init_state_hash:bits256 vm_final_state_hash:bits256", null, 2, null);
    }

    static {
        VarUInteger.Companion companion = VarUInteger.Companion;
        VarUInteger7 = companion.tlbCodec(7);
        Maybe.Companion companion2 = Maybe.Companion;
        MaybeVarUInteger3 = companion2.tlbCodec(companion.tlbCodec(3));
        MaybeInt32 = companion2.tlbCodec(IntTlbConstructor.Companion.m5254int(32));
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public TrComputePhaseAux loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        TlbCodec<VarUInteger> tlbCodec = VarUInteger7;
        return new TrComputePhaseAux(tlbCodec.loadTlb(cellSlice), tlbCodec.loadTlb(cellSlice), MaybeVarUInteger3.loadTlb(cellSlice), cellSlice.loadInt(8).intValue(), cellSlice.loadInt(32).intValue(), MaybeInt32.loadTlb(cellSlice), cellSlice.mo5220loadUInt32pVg5ArA(), cellSlice.loadBits(256), cellSlice.loadBits(256), null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, TrComputePhaseAux value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        TlbCodec<VarUInteger> tlbCodec = VarUInteger7;
        tlbCodec.storeTlb(cellBuilder, value.getGasUsed());
        tlbCodec.storeTlb(cellBuilder, value.getGasLimit());
        MaybeVarUInteger3.storeTlb(cellBuilder, value.getGasCredit());
        cellBuilder.storeInt(value.getMode(), 8);
        cellBuilder.storeInt(value.getExitCode(), 32);
        MaybeInt32.storeTlb(cellBuilder, value.getExitArg());
        cellBuilder.mo5210storeUInt32WZ4Q5Ns(value.m5203getVmStepspVg5ArA());
        cellBuilder.storeBits(value.getVmInitStateHash());
        cellBuilder.storeBits(value.getVmFinalStateHash());
    }
}
