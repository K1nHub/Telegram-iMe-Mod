package org.ton.block;

import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbCombinator;
/* compiled from: BinTree.kt */
/* loaded from: classes6.dex */
final class BinTreeTlbCombinator extends TlbCombinator<BinTree<?>> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinTreeTlbCombinator(TlbCodec<?> x) {
        super(Reflection.getOrCreateKotlinClass(BinTree.class), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(BinTreeLeaf.class), BinTreeLeaf.Companion.tlbCodec(x)), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(BinTreeFork.class), BinTreeFork.Companion.tlbCodec(x)));
        Intrinsics.checkNotNullParameter(x, "x");
    }
}
