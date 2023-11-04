package org.ton.block;

import kotlin.TuplesKt;
import kotlin.jvm.internal.Reflection;
import org.ton.block.FutureSplitMerge;
import org.ton.tlb.TlbCombinator;
/* compiled from: FutureSplitMerge.kt */
/* loaded from: classes6.dex */
final class FutureSplitMergeTlbCombinator extends TlbCombinator<FutureSplitMerge> {
    public static final FutureSplitMergeTlbCombinator INSTANCE = new FutureSplitMergeTlbCombinator();

    private FutureSplitMergeTlbCombinator() {
        super(Reflection.getOrCreateKotlinClass(FutureSplitMerge.class), TuplesKt.m146to(Reflection.getOrCreateKotlinClass(FutureSplitMerge.FsmNone.class), FutureSplitMerge.FsmNone.INSTANCE), TuplesKt.m146to(Reflection.getOrCreateKotlinClass(FutureSplitMerge.FsmSplit.class), FutureSplitMerge.FsmSplit.Companion), TuplesKt.m146to(Reflection.getOrCreateKotlinClass(FutureSplitMerge.FsmMerge.class), FutureSplitMerge.FsmMerge.Companion));
    }
}
