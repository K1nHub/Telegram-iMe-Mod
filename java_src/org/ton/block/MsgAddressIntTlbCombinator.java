package org.ton.block;

import kotlin.TuplesKt;
import kotlin.jvm.internal.Reflection;
import org.ton.tlb.TlbCombinator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MsgAddressInt.kt */
/* loaded from: classes6.dex */
public final class MsgAddressIntTlbCombinator extends TlbCombinator<MsgAddressInt> {
    public static final MsgAddressIntTlbCombinator INSTANCE = new MsgAddressIntTlbCombinator();

    private MsgAddressIntTlbCombinator() {
        super(Reflection.getOrCreateKotlinClass(MsgAddressInt.class), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(AddrStd.class), AddrStd.Companion.tlbCodec()), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(AddrVar.class), AddrVar.Companion.tlbCodec()));
    }
}
