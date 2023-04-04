package com.iMe.storage.data.manager.wallet_connect;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletConnectManagerImpl.kt */
/* loaded from: classes3.dex */
final class WalletConnectManagerImpl$clear$1$1$1$1 extends Lambda implements Function2<Integer, String, Unit> {
    public static final WalletConnectManagerImpl$clear$1$1$1$1 INSTANCE = new WalletConnectManagerImpl$clear$1$1$1$1();

    WalletConnectManagerImpl$clear$1$1$1$1() {
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
