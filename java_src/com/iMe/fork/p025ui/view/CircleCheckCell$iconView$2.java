package com.iMe.fork.p025ui.view;

import android.widget.ImageView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CircleCheckCell.kt */
/* renamed from: com.iMe.fork.ui.view.CircleCheckCell$iconView$2 */
/* loaded from: classes3.dex */
public final class CircleCheckCell$iconView$2 extends Lambda implements Function0<ImageView> {
    final /* synthetic */ CircleCheckCell this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CircleCheckCell$iconView$2(CircleCheckCell circleCheckCell) {
        super(0);
        this.this$0 = circleCheckCell;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final ImageView invoke() {
        ImageView initIconView;
        initIconView = this.this$0.initIconView();
        return initIconView;
    }
}
