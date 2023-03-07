package org.fork.p046ui.view;

import android.widget.ImageView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TemplateCell.kt */
/* renamed from: org.fork.ui.view.TemplateCell$sendButton$2 */
/* loaded from: classes4.dex */
public final class TemplateCell$sendButton$2 extends Lambda implements Function0<ImageView> {
    final /* synthetic */ TemplateCell this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TemplateCell$sendButton$2(TemplateCell templateCell) {
        super(0);
        this.this$0 = templateCell;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final ImageView invoke() {
        ImageView initSendButton;
        initSendButton = this.this$0.initSendButton();
        return initSendButton;
    }
}
