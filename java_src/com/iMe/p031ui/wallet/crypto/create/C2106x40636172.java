package com.iMe.p031ui.wallet.crypto.create;

import com.iMe.storage.data.utils.extentions.CollectionExtKt;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2106x40636172 extends Lambda implements Function1<List<? extends String>, Unit> {
    final /* synthetic */ CreateWalletPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2106x40636172(CreateWalletPresenter createWalletPresenter) {
        super(1);
        this.this$0 = createWalletPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(List<? extends String> list) {
        m1391invoke(list);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1391invoke(List<? extends String> it) {
        String str;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        List<? extends String> list = it;
        CreateWalletView createWalletView = (CreateWalletView) this.this$0.getViewState();
        if (CollectionExtKt.isSingletonList(list)) {
            Object firstOrNull = CollectionsKt.firstOrNull(list);
            str = this.this$0.lastSearchQuery;
            if (Intrinsics.areEqual(firstOrNull, str)) {
                list = CollectionsKt__CollectionsKt.emptyList();
            }
        }
        createWalletView.showWordsSuggestions(list);
    }
}
