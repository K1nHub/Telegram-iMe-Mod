package com.trustwallet.walletconnect;

import com.trustwallet.walletconnect.models.ethereum.WCEthereumSignMessage;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WCClient.kt */
/* loaded from: classes4.dex */
final class WCClient$onEthSign$1 extends Lambda implements Function2<Long, WCEthereumSignMessage, Unit> {
    public static final WCClient$onEthSign$1 INSTANCE = new WCClient$onEthSign$1();

    WCClient$onEthSign$1() {
        super(2);
    }

    public final void invoke(long j, WCEthereumSignMessage wCEthereumSignMessage) {
        Intrinsics.checkNotNullParameter(wCEthereumSignMessage, "<anonymous parameter 1>");
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(Long l, WCEthereumSignMessage wCEthereumSignMessage) {
        invoke(l.longValue(), wCEthereumSignMessage);
        return Unit.INSTANCE;
    }
}
