package org.ton.block;

import kotlin.TuplesKt;
import kotlin.jvm.internal.Reflection;
import org.ton.tlb.TlbCombinator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CommonMsgInfo.kt */
/* loaded from: classes6.dex */
public final class CommonMsgInfoTlbCombinator extends TlbCombinator<CommonMsgInfo> {
    public static final CommonMsgInfoTlbCombinator INSTANCE = new CommonMsgInfoTlbCombinator();

    private CommonMsgInfoTlbCombinator() {
        super(Reflection.getOrCreateKotlinClass(CommonMsgInfo.class), TuplesKt.m146to(Reflection.getOrCreateKotlinClass(IntMsgInfo.class), IntMsgInfo.Companion), TuplesKt.m146to(Reflection.getOrCreateKotlinClass(ExtInMsgInfo.class), ExtInMsgInfo.Companion), TuplesKt.m146to(Reflection.getOrCreateKotlinClass(ExtOutMsgInfo.class), ExtOutMsgInfo.Companion));
    }
}
