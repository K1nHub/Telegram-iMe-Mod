package org.ton.block;

import kotlin.TuplesKt;
import kotlin.jvm.internal.Reflection;
import org.ton.tlb.TlbCombinator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: OutMsg.kt */
/* loaded from: classes6.dex */
public final class OutMsgTlbCombinator extends TlbCombinator<OutMsg> {
    public static final OutMsgTlbCombinator INSTANCE = new OutMsgTlbCombinator();

    private OutMsgTlbCombinator() {
        super(Reflection.getOrCreateKotlinClass(OutMsg.class), TuplesKt.m144to(Reflection.getOrCreateKotlinClass(MsgExportExt.class), MsgExportExt.Companion), TuplesKt.m144to(Reflection.getOrCreateKotlinClass(MsgExportImm.class), MsgExportImm.Companion), TuplesKt.m144to(Reflection.getOrCreateKotlinClass(MsgExportNew.class), MsgExportNew.Companion), TuplesKt.m144to(Reflection.getOrCreateKotlinClass(MsgExportTr.class), MsgExportTr.Companion), TuplesKt.m144to(Reflection.getOrCreateKotlinClass(MsgExportDeq.class), MsgExportDeq.Companion), TuplesKt.m144to(Reflection.getOrCreateKotlinClass(MsgExportDeqShort.class), MsgExportDeqShort.Companion), TuplesKt.m144to(Reflection.getOrCreateKotlinClass(MsgExportTrReq.class), MsgExportTrReq.Companion), TuplesKt.m144to(Reflection.getOrCreateKotlinClass(MsgExportDeqImm.class), MsgExportDeqImm.Companion));
    }
}
