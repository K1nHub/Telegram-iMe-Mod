package org.ton.block;

import kotlin.TuplesKt;
import kotlin.jvm.internal.Reflection;
import org.ton.tlb.TlbCombinator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: IntermediateAddress.kt */
/* loaded from: classes6.dex */
public final class IntermediateAddressTlbCombinator extends TlbCombinator<IntermediateAddress> {
    public static final IntermediateAddressTlbCombinator INSTANCE = new IntermediateAddressTlbCombinator();

    private IntermediateAddressTlbCombinator() {
        super(Reflection.getOrCreateKotlinClass(IntermediateAddress.class), TuplesKt.m144to(Reflection.getOrCreateKotlinClass(IntermediateAddressExt.class), IntermediateAddressExt.Companion), TuplesKt.m144to(Reflection.getOrCreateKotlinClass(IntermediateAddressRegular.class), IntermediateAddressRegular.Companion), TuplesKt.m144to(Reflection.getOrCreateKotlinClass(IntermediateAddressSimple.class), IntermediateAddressSimple.Companion));
    }
}
