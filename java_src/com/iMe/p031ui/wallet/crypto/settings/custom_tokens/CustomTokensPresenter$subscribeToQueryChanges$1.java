package com.iMe.p031ui.wallet.crypto.settings.custom_tokens;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.mapper.wallet.TokenUiMappingKt;
import com.iMe.model.common.GlobalStateItem;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CustomTokensPresenter.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensPresenter$subscribeToQueryChanges$1 */
/* loaded from: classes4.dex */
public final class CustomTokensPresenter$subscribeToQueryChanges$1 extends Lambda implements Function1<String, Boolean> {
    final /* synthetic */ CustomTokensPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomTokensPresenter$subscribeToQueryChanges$1(CustomTokensPresenter customTokensPresenter) {
        super(1);
        this.this$0 = customTokensPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(String rawQuery) {
        List<BaseNode> list;
        List list2;
        Intrinsics.checkNotNullParameter(rawQuery, "rawQuery");
        boolean z = false;
        boolean z2 = true;
        if (rawQuery.length() < 2) {
            this.this$0.query = "";
            list = this.this$0.items;
            CustomTokensPresenter customTokensPresenter = this.this$0;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    } else if (((BaseNode) it.next()) instanceof GlobalStateItem) {
                        z2 = false;
                        break;
                    }
                }
            }
            if (z2) {
                list.clear();
                list2 = customTokensPresenter.tokens;
                list.addAll(TokenUiMappingKt.mapToUI(list2));
            }
            ((CustomTokensView) customTokensPresenter.getViewState()).renderItems(list);
        } else {
            z = true;
        }
        return Boolean.valueOf(z);
    }
}
