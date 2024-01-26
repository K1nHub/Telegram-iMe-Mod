package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
/* compiled from: TrPhaseComputeVm.kt */
/* loaded from: classes6.dex */
public final class TrPhaseComputeVmTlbConstructor extends org.ton.tlb.TlbConstructor<TrPhaseComputeVm> {
    public static final TrPhaseComputeVmTlbConstructor INSTANCE = new TrPhaseComputeVmTlbConstructor();

    private TrPhaseComputeVmTlbConstructor() {
        super("tr_phase_compute_vm$1 success:Bool msg_state_used:Bool account_activated:Bool gas_fees:Coins  ^[$_ gas_used:(VarUInteger 7) gas_limit:(VarUInteger 7) gas_credit:(Maybe (VarUInteger 3)) mode:int8 exit_code:int32 exit_arg:(Maybe int32) vm_steps:uint32 vm_init_state_hash:bits256 vm_final_state_hash:bits256 ] = TrPhaseComputeVm;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, TrPhaseComputeVm value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeBit(value.getSuccess());
        cellBuilder.storeBit(value.getMsgStateUsed());
        cellBuilder.storeBit(value.getAccountActivated());
        Coins.Companion.storeTlb(cellBuilder, (CellBuilder) value.getGasFees());
        CellRef.Companion.tlbCodec(TrComputePhaseAux.Companion).storeTlb(cellBuilder, value.getR1());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public TrPhaseComputeVm loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new TrPhaseComputeVm(cellSlice.loadBit(), cellSlice.loadBit(), cellSlice.loadBit(), Coins.Companion.loadTlb(cellSlice), (CellRef) CellRef.Companion.tlbCodec(TrComputePhaseAux.Companion).loadTlb(cellSlice));
    }
}
