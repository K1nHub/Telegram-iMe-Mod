package com.iMe.storage.domain.model.wallet.swap;

import com.iMe.storage.domain.model.wallet.swap.SwapProtocolInfo;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: SwapProtocolInfo.kt */
/* loaded from: classes3.dex */
final class SwapProtocolInfo$Companion$supportedCrossChainExchanges$2 extends Lambda implements Function0<List<? extends SwapProtocolInfo.Symbiosis>> {
    public static final SwapProtocolInfo$Companion$supportedCrossChainExchanges$2 INSTANCE = new SwapProtocolInfo$Companion$supportedCrossChainExchanges$2();

    SwapProtocolInfo$Companion$supportedCrossChainExchanges$2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<? extends SwapProtocolInfo.Symbiosis> invoke() {
        List<? extends SwapProtocolInfo.Symbiosis> listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(SwapProtocolInfo.Symbiosis.INSTANCE);
        return listOf;
    }
}
