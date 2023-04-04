package com.trustwallet.walletconnect;

import com.trustwallet.walletconnect.models.ethereum.WCEthereumTransaction;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WCClient.kt */
/* loaded from: classes4.dex */
final class WCClient$onEthSignTransaction$1 extends Lambda implements Function2<Long, WCEthereumTransaction, Unit> {
    public static final WCClient$onEthSignTransaction$1 INSTANCE = new WCClient$onEthSignTransaction$1();

    WCClient$onEthSignTransaction$1() {
        super(2);
    }

    public final void invoke(long j, WCEthereumTransaction wCEthereumTransaction) {
        Intrinsics.checkNotNullParameter(wCEthereumTransaction, "<anonymous parameter 1>");
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(Long l, WCEthereumTransaction wCEthereumTransaction) {
        invoke(l.longValue(), wCEthereumTransaction);
        return Unit.INSTANCE;
    }
}
