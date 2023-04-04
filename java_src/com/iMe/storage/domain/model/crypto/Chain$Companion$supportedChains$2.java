package com.iMe.storage.domain.model.crypto;

import com.iMe.storage.domain.model.crypto.Chain;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: Chain.kt */
/* loaded from: classes3.dex */
final class Chain$Companion$supportedChains$2 extends Lambda implements Function0<List<? extends Chain>> {
    public static final Chain$Companion$supportedChains$2 INSTANCE = new Chain$Companion$supportedChains$2();

    Chain$Companion$supportedChains$2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<? extends Chain> invoke() {
        List<? extends Chain> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Chain[]{Chain.Ethereum.Main.INSTANCE, Chain.Ethereum.Ropsten.INSTANCE, Chain.BSC.Main.INSTANCE, Chain.BSC.Testnet.INSTANCE, Chain.Polygon.Main.INSTANCE, Chain.Polygon.Testnet.INSTANCE, new Chain.Unknown(0L, 1, null)});
        return listOf;
    }
}
