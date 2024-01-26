package org.ton.block;

import kotlin.TuplesKt;
import kotlin.jvm.internal.Reflection;
import org.ton.tlb.TlbCombinator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InMsg.kt */
/* loaded from: classes6.dex */
public final class InMsgTlbCombinator extends TlbCombinator<InMsg> {
    public static final InMsgTlbCombinator INSTANCE = new InMsgTlbCombinator();

    private InMsgTlbCombinator() {
        super(Reflection.getOrCreateKotlinClass(InMsg.class), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(MsgImportExt.class), MsgImportExt.Companion), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(MsgImportIhr.class), MsgImportIhr.Companion), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(MsgImportImm.class), MsgImportImm.Companion), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(MsgImportFin.class), MsgImportFin.Companion), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(MsgImportTr.class), MsgImportTr.Companion), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(MsgDiscardFin.class), MsgDiscardFin.Companion), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(MsgDiscardTr.class), MsgDiscardTr.Companion));
    }
}
