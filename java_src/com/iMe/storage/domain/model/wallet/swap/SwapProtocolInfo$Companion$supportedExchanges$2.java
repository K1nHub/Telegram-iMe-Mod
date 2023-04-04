package com.iMe.storage.domain.model.wallet.swap;

import com.iMe.storage.domain.model.wallet.swap.SwapProtocolInfo;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: SwapProtocolInfo.kt */
/* loaded from: classes3.dex */
final class SwapProtocolInfo$Companion$supportedExchanges$2 extends Lambda implements Function0<List<? extends SwapProtocolInfo>> {
    public static final SwapProtocolInfo$Companion$supportedExchanges$2 INSTANCE = new SwapProtocolInfo$Companion$supportedExchanges$2();

    SwapProtocolInfo$Companion$supportedExchanges$2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<? extends SwapProtocolInfo> invoke() {
        List<? extends SwapProtocolInfo> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new SwapProtocolInfo[]{SwapProtocolInfo.Uniswap.INSTANCE, SwapProtocolInfo.PancakeSwap.INSTANCE, SwapProtocolInfo.Oneinch.INSTANCE});
        return listOf;
    }
}
