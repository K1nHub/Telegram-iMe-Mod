package com.iMe.p031ui.wallet.swap.token.adapter;

import androidx.appcompat.widget.AppCompatImageView;
import com.iMe.model.wallet.select.SelectableTokenItem;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletSelectTokenAdapter.kt */
/* renamed from: com.iMe.ui.wallet.swap.token.adapter.WalletSelectTokenAdapter$convert$2$1 */
/* loaded from: classes4.dex */
public final class WalletSelectTokenAdapter$convert$2$1 extends Lambda implements Function1<AppCompatImageView, Unit> {
    final /* synthetic */ SelectableTokenItem $item;
    final /* synthetic */ SelectableTokenItem $this_with;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSelectTokenAdapter$convert$2$1(SelectableTokenItem selectableTokenItem, SelectableTokenItem selectableTokenItem2) {
        super(1);
        this.$item = selectableTokenItem;
        this.$this_with = selectableTokenItem2;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(AppCompatImageView appCompatImageView) {
        invoke2(appCompatImageView);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(AppCompatImageView applyForView) {
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        if (this.$item.isBinance()) {
            ViewExtKt.loadImage(applyForView, this.$this_with.getToken());
        } else {
            ImageViewExtKt.loadFrom$default(applyForView, this.$this_with.getToken().getAvatarUrl(), null, false, 6, null);
        }
    }
}
