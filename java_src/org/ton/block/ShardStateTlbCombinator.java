package org.ton.block;

import kotlin.TuplesKt;
import kotlin.jvm.internal.Reflection;
import org.ton.tlb.TlbCombinator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ShardState.kt */
/* loaded from: classes6.dex */
public final class ShardStateTlbCombinator extends TlbCombinator<ShardState> {
    public static final ShardStateTlbCombinator INSTANCE = new ShardStateTlbCombinator();

    private ShardStateTlbCombinator() {
        super(Reflection.getOrCreateKotlinClass(ShardState.class), TuplesKt.m144to(Reflection.getOrCreateKotlinClass(SplitState.class), SplitState.Companion.tlbConstructor()), TuplesKt.m144to(Reflection.getOrCreateKotlinClass(ShardStateUnsplit.class), ShardStateUnsplit.Companion.tlbConstructor()));
    }
}
