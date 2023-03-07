package com.trustwallet.walletconnect;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WCClient.kt */
/* loaded from: classes3.dex */
final class WCClient$onFailure$1 extends Lambda implements Function1<Throwable, Unit> {
    public static final WCClient$onFailure$1 INSTANCE = new WCClient$onFailure$1();

    WCClient$onFailure$1() {
        super(1);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Throwable th) {
        Intrinsics.checkNotNullParameter(th, "<anonymous parameter 0>");
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        invoke2(th);
        return Unit.INSTANCE;
    }
}
