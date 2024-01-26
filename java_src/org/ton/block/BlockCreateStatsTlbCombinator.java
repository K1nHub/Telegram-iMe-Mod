package org.ton.block;

import kotlin.TuplesKt;
import kotlin.jvm.internal.Reflection;
import org.ton.tlb.TlbCombinator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BlockCreateStats.kt */
/* loaded from: classes6.dex */
public final class BlockCreateStatsTlbCombinator extends TlbCombinator<BlockCreateStats> {
    public static final BlockCreateStatsTlbCombinator INSTANCE = new BlockCreateStatsTlbCombinator();

    private BlockCreateStatsTlbCombinator() {
        super(Reflection.getOrCreateKotlinClass(BlockCreateStats.class), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(BlockCreateStatsRegular.class), BlockCreateStatsRegular.Companion.tlbConstructor()), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(BlockCreateStatsExt.class), BlockCreateStatsExt.Companion.tlbConstructor()));
    }
}
