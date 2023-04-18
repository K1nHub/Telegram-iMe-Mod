package com.iMe.p031ui.wallet.swap.token.adapter;

import androidx.appcompat.widget.AppCompatImageView;
import com.iMe.model.wallet.select.SelectableTokenItem;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletSelectTokenAdapter.kt */
/* renamed from: com.iMe.ui.wallet.swap.token.adapter.WalletSelectTokenAdapter$convert$3 */
/* loaded from: classes4.dex */
final class WalletSelectTokenAdapter$convert$3 extends Lambda implements Function1<AppCompatImageView, Unit> {
    final /* synthetic */ SelectableTokenItem $item;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSelectTokenAdapter$convert$3(SelectableTokenItem selectableTokenItem) {
        super(1);
        this.$item = selectableTokenItem;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(AppCompatImageView appCompatImageView) {
        invoke2(appCompatImageView);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(AppCompatImageView applyForView) {
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        ViewExtKt.loadImage(applyForView, this.$item.getToken());
    }
}
