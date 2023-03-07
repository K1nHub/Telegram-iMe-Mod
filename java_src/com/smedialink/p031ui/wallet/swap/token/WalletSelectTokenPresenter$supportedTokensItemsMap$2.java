package com.smedialink.p031ui.wallet.swap.token;

import com.smedialink.model.wallet.select.SelectableToken;
import com.smedialink.model.wallet.select.SelectableTokenItem;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.ranges.RangesKt___RangesKt;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletSelectTokenPresenter.kt */
/* renamed from: com.smedialink.ui.wallet.swap.token.WalletSelectTokenPresenter$supportedTokensItemsMap$2 */
/* loaded from: classes3.dex */
public final class WalletSelectTokenPresenter$supportedTokensItemsMap$2 extends Lambda implements Function0<Map<String, ? extends SelectableTokenItem>> {
    final /* synthetic */ WalletSelectTokenPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSelectTokenPresenter$supportedTokensItemsMap$2(WalletSelectTokenPresenter walletSelectTokenPresenter) {
        super(0);
        this.this$0 = walletSelectTokenPresenter;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Map<String, ? extends SelectableTokenItem> invoke() {
        List<SelectableToken> list;
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        list = this.this$0.supportedTokens;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        for (SelectableToken selectableToken : list) {
            linkedHashMap.put(selectableToken.getId(), new SelectableTokenItem(selectableToken, null, 2, null));
        }
        return linkedHashMap;
    }
}
