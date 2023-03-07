package org.fork.p046ui.view;

import android.view.View;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CircleCheckCell.kt */
/* renamed from: org.fork.ui.view.CircleCheckCell$circleView$2 */
/* loaded from: classes4.dex */
public final class CircleCheckCell$circleView$2 extends Lambda implements Function0<View> {
    final /* synthetic */ CircleCheckCell this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CircleCheckCell$circleView$2(CircleCheckCell circleCheckCell) {
        super(0);
        this.this$0 = circleCheckCell;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final View invoke() {
        View initCircleView;
        initCircleView = this.this$0.initCircleView();
        return initCircleView;
    }
}
