package com.iMe.fork.p025ui.view;

import android.widget.TextView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TemplateCell.kt */
/* renamed from: com.iMe.fork.ui.view.TemplateCell$subtitleTextView$2 */
/* loaded from: classes3.dex */
public final class TemplateCell$subtitleTextView$2 extends Lambda implements Function0<TextView> {
    final /* synthetic */ TemplateCell this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TemplateCell$subtitleTextView$2(TemplateCell templateCell) {
        super(0);
        this.this$0 = templateCell;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TextView invoke() {
        TextView initSubtitleTextView;
        initSubtitleTextView = this.this$0.initSubtitleTextView();
        return initSubtitleTextView;
    }
}
