package org.ton.block;

import kotlin.TuplesKt;
import kotlin.jvm.internal.Reflection;
import org.ton.tlb.TlbCombinator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TrComputePhase.kt */
/* loaded from: classes6.dex */
public final class TrComputePhaseTlbCombinator extends TlbCombinator<TrComputePhase> {
    public static final TrComputePhaseTlbCombinator INSTANCE = new TrComputePhaseTlbCombinator();

    private TrComputePhaseTlbCombinator() {
        super(Reflection.getOrCreateKotlinClass(TrComputePhase.class), TuplesKt.m146to(Reflection.getOrCreateKotlinClass(TrPhaseComputeSkipped.class), TrPhaseComputeSkipped.Companion), TuplesKt.m146to(Reflection.getOrCreateKotlinClass(TrPhaseComputeVm.class), TrPhaseComputeVm.Companion));
    }
}
