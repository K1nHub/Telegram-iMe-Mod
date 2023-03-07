package com.trustwallet.walletconnect;

import com.trustwallet.walletconnect.models.ethereum.WCEthereumTransaction;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WCClient.kt */
/* loaded from: classes3.dex */
final class WCClient$onEthSendTransaction$1 extends Lambda implements Function2<Long, WCEthereumTransaction, Unit> {
    public static final WCClient$onEthSendTransaction$1 INSTANCE = new WCClient$onEthSendTransaction$1();

    WCClient$onEthSendTransaction$1() {
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
