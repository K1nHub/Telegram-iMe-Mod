package com.iMe.p031ui.wallet.home.tabs.crypto.settings.token_family;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.wallet.home.FoundTokenItem;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyPresenter$subscribeToTokenVisibilitySwitch$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2354x20db79d6 extends Lambda implements Function1<Pair<? extends Result<? extends Boolean>, ? extends FoundTokenItem>, Unit> {
    final /* synthetic */ TokenFamilyPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2354x20db79d6(TokenFamilyPresenter tokenFamilyPresenter) {
        super(1);
        this.this$0 = tokenFamilyPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Pair<? extends Result<? extends Boolean>, ? extends FoundTokenItem> pair) {
        m1509invoke(pair);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1509invoke(Pair<? extends Result<? extends Boolean>, ? extends FoundTokenItem> it) {
        ResourceManager resourceManager;
        List<FoundTokenItem> list;
        int collectionSizeOrDefault;
        List list2;
        List<BaseNode> mutableList;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Pair<? extends Result<? extends Boolean>, ? extends FoundTokenItem> pair = it;
        Result<? extends Boolean> result = pair.component1();
        FoundTokenItem component2 = pair.component2();
        if (result instanceof Result.Error) {
            Intrinsics.checkNotNullExpressionValue(result, "result");
            resourceManager = this.this$0.resourceManager;
            ((TokenFamilyView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
            TokenFamilyPresenter tokenFamilyPresenter = this.this$0;
            list = tokenFamilyPresenter.tokens;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (FoundTokenItem foundTokenItem : list) {
                if (Intrinsics.areEqual(foundTokenItem.getAddress(), component2.getAddress())) {
                    foundTokenItem = foundTokenItem.copy((r20 & 1) != 0 ? foundTokenItem.name : null, (r20 & 2) != 0 ? foundTokenItem.ticker : null, (r20 & 4) != 0 ? foundTokenItem.address : null, (r20 & 8) != 0 ? foundTokenItem.tokenLogoUrl : null, (r20 & 16) != 0 ? foundTokenItem.networkId : null, (r20 & 32) != 0 ? foundTokenItem.networkLogoUrl : null, (r20 & 64) != 0 ? foundTokenItem.isEnabled : !foundTokenItem.isEnabled(), (r20 & 128) != 0 ? foundTokenItem.isCustom : false, (r20 & 256) != 0 ? foundTokenItem.isSwitchable : false);
                }
                arrayList.add(foundTokenItem);
            }
            tokenFamilyPresenter.tokens = arrayList;
            list2 = this.this$0.tokens;
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) list2);
            ((TokenFamilyView) this.this$0.getViewState()).renderData(mutableList);
        }
    }
}
