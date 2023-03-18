package com.smedialink.p031ui.adapter.provider;

import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.smedialink.utils.extentions.common.ViewExtKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3286R;
import org.telegram.p048ui.ActionBar.Theme;
import ru.tinkoff.scrollingpagerindicator.ScrollingPagerIndicator;
/* compiled from: BannerProvider.kt */
/* renamed from: com.smedialink.ui.adapter.provider.BannerProvider$convert$2 */
/* loaded from: classes3.dex */
final class BannerProvider$convert$2 extends Lambda implements Function1<ScrollingPagerIndicator, Unit> {
    final /* synthetic */ BaseViewHolder $helper;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BannerProvider$convert$2(BaseViewHolder baseViewHolder) {
        super(1);
        this.$helper = baseViewHolder;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(ScrollingPagerIndicator scrollingPagerIndicator) {
        invoke2(scrollingPagerIndicator);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(ScrollingPagerIndicator applyForView) {
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        applyForView.attachToRecyclerView((RecyclerView) this.$helper.getView(C3286R.C3289id.recycle_banners));
        applyForView.setSelectedDotColor(Theme.getColor("chats_actionBackground"));
        applyForView.setDotColor(ViewExtKt.withAlpha(Theme.getColor("chats_actionBackground"), 55));
    }
}
