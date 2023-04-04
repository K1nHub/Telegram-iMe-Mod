package com.iMe.fork.p025ui.view;

import android.widget.LinearLayout;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TemplateCell.kt */
/* renamed from: com.iMe.fork.ui.view.TemplateCell$titleContainer$2 */
/* loaded from: classes3.dex */
public final class TemplateCell$titleContainer$2 extends Lambda implements Function0<LinearLayout> {
    final /* synthetic */ TemplateCell this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TemplateCell$titleContainer$2(TemplateCell templateCell) {
        super(0);
        this.this$0 = templateCell;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final LinearLayout invoke() {
        LinearLayout initTitleContainer;
        initTitleContainer = this.this$0.initTitleContainer();
        return initTitleContainer;
    }
}
