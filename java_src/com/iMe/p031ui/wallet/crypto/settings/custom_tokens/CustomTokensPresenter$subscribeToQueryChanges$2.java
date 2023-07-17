package com.iMe.p031ui.wallet.crypto.settings.custom_tokens;

import com.chad.library.adapter.base.entity.node.BaseNode;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CustomTokensPresenter.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensPresenter$subscribeToQueryChanges$2 */
/* loaded from: classes4.dex */
public final class CustomTokensPresenter$subscribeToQueryChanges$2 extends Lambda implements Function1<String, List<BaseNode>> {
    final /* synthetic */ CustomTokensPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomTokensPresenter$subscribeToQueryChanges$2(CustomTokensPresenter customTokensPresenter) {
        super(1);
        this.this$0 = customTokensPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public final List<BaseNode> invoke(String newQuery) {
        List<BaseNode> searchRenderItems;
        Intrinsics.checkNotNullParameter(newQuery, "newQuery");
        this.this$0.query = newQuery;
        searchRenderItems = this.this$0.getSearchRenderItems();
        return searchRenderItems;
    }
}
