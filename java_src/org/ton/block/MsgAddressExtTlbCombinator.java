package org.ton.block;

import kotlin.TuplesKt;
import kotlin.jvm.internal.Reflection;
import org.ton.tlb.TlbCombinator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MsgAddressExt.kt */
/* loaded from: classes6.dex */
public final class MsgAddressExtTlbCombinator extends TlbCombinator<MsgAddressExt> {
    public static final MsgAddressExtTlbCombinator INSTANCE = new MsgAddressExtTlbCombinator();

    private MsgAddressExtTlbCombinator() {
        super(Reflection.getOrCreateKotlinClass(MsgAddressExt.class), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(AddrNone.class), AddrNone.INSTANCE.tlbConstructor()), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(AddrExtern.class), AddrExtern.Companion.tlbConstructor()));
    }
}
