package org.fork.p046ui.fragment;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.fork.p046ui.view.MovingReactionCell;
/* compiled from: CreateReactionButtonsActivity.kt */
/* renamed from: org.fork.ui.fragment.CreateReactionButtonsActivity$ListAdapter$onCreateViewHolder$3$1 */
/* loaded from: classes4.dex */
final class CreateReactionButtonsActivity$ListAdapter$onCreateViewHolder$3$1 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ MovingReactionCell $this_apply;
    final /* synthetic */ CreateReactionButtonsActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateReactionButtonsActivity$ListAdapter$onCreateViewHolder$3$1(CreateReactionButtonsActivity createReactionButtonsActivity, MovingReactionCell movingReactionCell) {
        super(1);
        this.this$0 = createReactionButtonsActivity;
        this.$this_apply = movingReactionCell;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        this.this$0.getListAdapter().removeEmojiItem(this.$this_apply);
    }
}
