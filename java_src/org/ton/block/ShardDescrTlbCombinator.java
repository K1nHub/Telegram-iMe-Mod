package org.ton.block;

import kotlin.TuplesKt;
import kotlin.jvm.internal.Reflection;
import org.ton.tlb.TlbCombinator;
/* compiled from: ShardDescr.kt */
/* loaded from: classes6.dex */
final class ShardDescrTlbCombinator extends TlbCombinator<ShardDescr> {
    public static final ShardDescrTlbCombinator INSTANCE = new ShardDescrTlbCombinator();

    private ShardDescrTlbCombinator() {
        super(Reflection.getOrCreateKotlinClass(ShardDescr.class), TuplesKt.m146to(Reflection.getOrCreateKotlinClass(ShardDescrOld.class), ShardDescrOld.Companion), TuplesKt.m146to(Reflection.getOrCreateKotlinClass(ShardDescrNew.class), ShardDescrNew.Companion));
    }
}
