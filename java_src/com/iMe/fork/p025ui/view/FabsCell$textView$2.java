package com.iMe.fork.p025ui.view;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.ActionBar.SimpleTextView;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FabsCell.kt */
/* renamed from: com.iMe.fork.ui.view.FabsCell$textView$2 */
/* loaded from: classes3.dex */
public final class FabsCell$textView$2 extends Lambda implements Function0<SimpleTextView> {
    final /* synthetic */ FabsCell this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FabsCell$textView$2(FabsCell fabsCell) {
        super(0);
        this.this$0 = fabsCell;
    }

    @Override // kotlin.jvm.functions.Function0
    public final SimpleTextView invoke() {
        SimpleTextView initTextView;
        initTextView = this.this$0.initTextView();
        return initTextView;
    }
}
