package com.iMe.storage.domain.model.wallet.swap;

import com.iMe.storage.domain.model.wallet.swap.CentralizedExchangesInfo;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: CentralizedExchangesInfo.kt */
/* loaded from: classes3.dex */
final class CentralizedExchangesInfo$Companion$supportedExchanges$2 extends Lambda implements Function0<List<? extends CentralizedExchangesInfo>> {
    public static final CentralizedExchangesInfo$Companion$supportedExchanges$2 INSTANCE = new CentralizedExchangesInfo$Companion$supportedExchanges$2();

    CentralizedExchangesInfo$Companion$supportedExchanges$2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<? extends CentralizedExchangesInfo> invoke() {
        List<? extends CentralizedExchangesInfo> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new CentralizedExchangesInfo[]{CentralizedExchangesInfo.Binance.INSTANCE, CentralizedExchangesInfo.Gate.INSTANCE, CentralizedExchangesInfo.Ascendeex.INSTANCE});
        return listOf;
    }
}
