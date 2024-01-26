package org.ton.hashmap;

import kotlin.TuplesKt;
import kotlin.jvm.internal.Reflection;
import org.ton.tlb.TlbNegatedCombinator;
/* compiled from: Unary.kt */
/* loaded from: classes6.dex */
final class UnaryTlbCombinator extends TlbNegatedCombinator<Unary> {
    public static final UnaryTlbCombinator INSTANCE = new UnaryTlbCombinator();

    private UnaryTlbCombinator() {
        super(Reflection.getOrCreateKotlinClass(Unary.class), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(UnaryZero.class), UnaryZeroTlbConstructor.INSTANCE), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(UnarySuccess.class), UnarySuccessTlbConstructor.INSTANCE));
    }
}
