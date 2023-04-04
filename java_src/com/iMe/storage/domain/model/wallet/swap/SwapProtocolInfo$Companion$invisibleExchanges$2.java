package com.iMe.storage.domain.model.wallet.swap;

import com.iMe.storage.domain.model.wallet.swap.SwapProtocolInfo;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: SwapProtocolInfo.kt */
/* loaded from: classes3.dex */
final class SwapProtocolInfo$Companion$invisibleExchanges$2 extends Lambda implements Function0<List<? extends SwapProtocolInfo.UniswapV3>> {
    public static final SwapProtocolInfo$Companion$invisibleExchanges$2 INSTANCE = new SwapProtocolInfo$Companion$invisibleExchanges$2();

    SwapProtocolInfo$Companion$invisibleExchanges$2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<? extends SwapProtocolInfo.UniswapV3> invoke() {
        List<? extends SwapProtocolInfo.UniswapV3> listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(SwapProtocolInfo.UniswapV3.INSTANCE);
        return listOf;
    }
}
