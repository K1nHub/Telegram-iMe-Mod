package org.fork.p046ui.view;

import android.widget.TextView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MovingReactionCell.kt */
/* renamed from: org.fork.ui.view.MovingReactionCell$valueTextView$2 */
/* loaded from: classes4.dex */
public final class MovingReactionCell$valueTextView$2 extends Lambda implements Function0<TextView> {
    final /* synthetic */ MovingReactionCell this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MovingReactionCell$valueTextView$2(MovingReactionCell movingReactionCell) {
        super(0);
        this.this$0 = movingReactionCell;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TextView invoke() {
        TextView initValueTextView;
        initValueTextView = this.this$0.initValueTextView();
        return initValueTextView;
    }
}
