package com.iMe.storage.domain.model.wallet.swap;

import com.iMe.storage.domain.model.wallet.swap.SwapProtocolInfo;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: SwapProtocolInfo.kt */
/* loaded from: classes3.dex */
final class SwapProtocolInfo$Companion$allExchanges$2 extends Lambda implements Function0<List<? extends SwapProtocolInfo>> {
    public static final SwapProtocolInfo$Companion$allExchanges$2 INSTANCE = new SwapProtocolInfo$Companion$allExchanges$2();

    SwapProtocolInfo$Companion$allExchanges$2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<? extends SwapProtocolInfo> invoke() {
        List plus;
        List invisibleExchanges;
        List<? extends SwapProtocolInfo> plus2;
        SwapProtocolInfo.Companion companion = SwapProtocolInfo.Companion;
        plus = CollectionsKt___CollectionsKt.plus((Collection) companion.getSupportedExchanges(), (Iterable) companion.getSupportedCrossChainExchanges());
        invisibleExchanges = companion.getInvisibleExchanges();
        plus2 = CollectionsKt___CollectionsKt.plus((Collection) plus, (Iterable) invisibleExchanges);
        return plus2;
    }
}
