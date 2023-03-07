package com.trustwallet.walletconnect;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WCClient.kt */
/* loaded from: classes3.dex */
final class WCClient$onDisconnect$1 extends Lambda implements Function2<Integer, String, Unit> {
    public static final WCClient$onDisconnect$1 INSTANCE = new WCClient$onDisconnect$1();

    WCClient$onDisconnect$1() {
        super(2);
    }

    public final void invoke(int i, String str) {
        Intrinsics.checkNotNullParameter(str, "<anonymous parameter 1>");
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str) {
        invoke(num.intValue(), str);
        return Unit.INSTANCE;
    }
}
