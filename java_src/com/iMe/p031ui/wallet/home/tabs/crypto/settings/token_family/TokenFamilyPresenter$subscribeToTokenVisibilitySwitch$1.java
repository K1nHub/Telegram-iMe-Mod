package com.iMe.p031ui.wallet.home.tabs.crypto.settings.token_family;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.wallet.home.FoundTokenItem;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TokenFamilyPresenter.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyPresenter$subscribeToTokenVisibilitySwitch$1 */
/* loaded from: classes4.dex */
public final class TokenFamilyPresenter$subscribeToTokenVisibilitySwitch$1 extends Lambda implements Function1<FoundTokenItem, FoundTokenItem> {
    final /* synthetic */ TokenFamilyPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TokenFamilyPresenter$subscribeToTokenVisibilitySwitch$1(TokenFamilyPresenter tokenFamilyPresenter) {
        super(1);
        this.this$0 = tokenFamilyPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public final FoundTokenItem invoke(FoundTokenItem foundTokenItem) {
        List<FoundTokenItem> list;
        int collectionSizeOrDefault;
        List list2;
        List<BaseNode> mutableList;
        Intrinsics.checkNotNullParameter(foundTokenItem, "foundTokenItem");
        TokenFamilyPresenter tokenFamilyPresenter = this.this$0;
        list = tokenFamilyPresenter.tokens;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (FoundTokenItem foundTokenItem2 : list) {
            if (Intrinsics.areEqual(foundTokenItem2.getAddress(), foundTokenItem.getAddress())) {
                foundTokenItem2 = foundTokenItem2.copy((r20 & 1) != 0 ? foundTokenItem2.name : null, (r20 & 2) != 0 ? foundTokenItem2.ticker : null, (r20 & 4) != 0 ? foundTokenItem2.address : null, (r20 & 8) != 0 ? foundTokenItem2.tokenLogoUrl : null, (r20 & 16) != 0 ? foundTokenItem2.networkId : null, (r20 & 32) != 0 ? foundTokenItem2.networkLogoUrl : null, (r20 & 64) != 0 ? foundTokenItem2.isEnabled : !foundTokenItem2.isEnabled(), (r20 & 128) != 0 ? foundTokenItem2.isCustom : false, (r20 & 256) != 0 ? foundTokenItem2.isSwitchable : false);
            }
            arrayList.add(foundTokenItem2);
        }
        tokenFamilyPresenter.tokens = arrayList;
        list2 = this.this$0.tokens;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) list2);
        ((TokenFamilyView) this.this$0.getViewState()).renderData(mutableList);
        return foundTokenItem;
    }
}
