package com.iMe.p031ui.wallet.crypto.settings.custom_tokens;

import com.chad.library.adapter.base.entity.node.BaseNode;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2188x12ba1cdc extends Lambda implements Function1<List<BaseNode>, Unit> {
    final /* synthetic */ CustomTokensPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2188x12ba1cdc(CustomTokensPresenter customTokensPresenter) {
        super(1);
        this.this$0 = customTokensPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(List<BaseNode> list) {
        m1441invoke(list);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1441invoke(List<BaseNode> it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        ((CustomTokensView) this.this$0.getViewState()).renderItems(it);
    }
}
