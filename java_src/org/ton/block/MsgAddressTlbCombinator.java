package org.ton.block;

import kotlin.TuplesKt;
import kotlin.jvm.internal.Reflection;
import org.ton.tlb.TlbCombinator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MsgAddress.kt */
/* loaded from: classes6.dex */
public final class MsgAddressTlbCombinator extends TlbCombinator<MsgAddress> {
    public static final MsgAddressTlbCombinator INSTANCE = new MsgAddressTlbCombinator();

    private MsgAddressTlbCombinator() {
        super(Reflection.getOrCreateKotlinClass(MsgAddress.class), TuplesKt.m144to(Reflection.getOrCreateKotlinClass(MsgAddressInt.class), MsgAddressInt.Companion.tlbCodec()), TuplesKt.m144to(Reflection.getOrCreateKotlinClass(MsgAddressExt.class), MsgAddressExt.Companion.tlbCodec()));
    }
}
