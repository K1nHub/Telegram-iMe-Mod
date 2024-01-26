package org.ton.block;

import kotlin.TuplesKt;
import kotlin.jvm.internal.Reflection;
import org.ton.tlb.TlbCombinator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TrBouncePhase.kt */
/* loaded from: classes6.dex */
public final class TrBouncePhaseTlbCombinator extends TlbCombinator<TrBouncePhase> {
    public static final TrBouncePhaseTlbCombinator INSTANCE = new TrBouncePhaseTlbCombinator();

    private TrBouncePhaseTlbCombinator() {
        super(Reflection.getOrCreateKotlinClass(TrBouncePhase.class), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(TrPhaseBounceNegFunds.class), TrPhaseBounceNegFunds.INSTANCE), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(TrPhaseBounceNoFunds.class), TrPhaseBounceNoFunds.Companion), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(TrPhaseBounceOk.class), TrPhaseBounceOk.Companion));
    }
}
