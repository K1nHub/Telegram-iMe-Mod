package com.iMe.p032ui.adapter;

import com.iMe.model.common.FilterItem;
import com.iMe.p032ui.topics.TopicView;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FiltersRecycleAdapter.kt */
/* renamed from: com.iMe.ui.adapter.FiltersRecycleAdapter$convert$2 */
/* loaded from: classes.dex */
final class FiltersRecycleAdapter$convert$2 extends Lambda implements Function1<TopicView, Unit> {
    final /* synthetic */ FilterItem $item;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FiltersRecycleAdapter$convert$2(FilterItem filterItem) {
        super(1);
        this.$item = filterItem;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(TopicView topicView) {
        invoke2(topicView);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(TopicView applyForView) {
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        applyForView.setActive(this.$item.isSelected());
    }
}
