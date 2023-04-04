package com.trustwallet.walletconnect;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WCClient.kt */
/* loaded from: classes4.dex */
final class WCClient$onCustomRequest$1 extends Lambda implements Function2<Long, String, Unit> {
    public static final WCClient$onCustomRequest$1 INSTANCE = new WCClient$onCustomRequest$1();

    WCClient$onCustomRequest$1() {
        super(2);
    }

    public final void invoke(long j, String str) {
        Intrinsics.checkNotNullParameter(str, "<anonymous parameter 1>");
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(Long l, String str) {
        invoke(l.longValue(), str);
        return Unit.INSTANCE;
    }
}
