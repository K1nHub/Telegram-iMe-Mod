package com.iMe.fork.p025ui.view;

import android.widget.TextView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TemplatesHeaderCell.kt */
/* renamed from: com.iMe.fork.ui.view.TemplatesHeaderCell$headerTextView$2 */
/* loaded from: classes3.dex */
public final class TemplatesHeaderCell$headerTextView$2 extends Lambda implements Function0<TextView> {
    final /* synthetic */ TemplatesHeaderCell this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TemplatesHeaderCell$headerTextView$2(TemplatesHeaderCell templatesHeaderCell) {
        super(0);
        this.this$0 = templatesHeaderCell;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TextView invoke() {
        TextView initHeaderTextView;
        initHeaderTextView = this.this$0.initHeaderTextView();
        return initHeaderTextView;
    }
}
