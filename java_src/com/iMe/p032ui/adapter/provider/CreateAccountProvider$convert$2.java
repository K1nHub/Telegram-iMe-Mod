package com.iMe.p032ui.adapter.provider;

import com.iMe.model.wallet.home.AccountItem;
import com.iMe.p032ui.custom.HorizontalActionButtonsView;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: CreateAccountProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.CreateAccountProvider$convert$2 */
/* loaded from: classes.dex */
final class CreateAccountProvider$convert$2 extends Lambda implements Function1<HorizontalActionButtonsView, Unit> {
    final /* synthetic */ AccountItem.Create $item;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateAccountProvider$convert$2(AccountItem.Create create) {
        super(1);
        this.$item = create;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(HorizontalActionButtonsView horizontalActionButtonsView) {
        invoke2(horizontalActionButtonsView);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(HorizontalActionButtonsView applyForView) {
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        applyForView.initButtons(this.$item.getHorizontalActionButtonItems());
    }
}
