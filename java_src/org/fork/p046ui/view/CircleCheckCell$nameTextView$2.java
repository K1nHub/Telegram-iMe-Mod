package org.fork.p046ui.view;

import android.widget.TextView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CircleCheckCell.kt */
/* renamed from: org.fork.ui.view.CircleCheckCell$nameTextView$2 */
/* loaded from: classes4.dex */
public final class CircleCheckCell$nameTextView$2 extends Lambda implements Function0<TextView> {
    final /* synthetic */ CircleCheckCell this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CircleCheckCell$nameTextView$2(CircleCheckCell circleCheckCell) {
        super(0);
        this.this$0 = circleCheckCell;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TextView invoke() {
        TextView initNameTextView;
        initNameTextView = this.this$0.initNameTextView();
        return initNameTextView;
    }
}
