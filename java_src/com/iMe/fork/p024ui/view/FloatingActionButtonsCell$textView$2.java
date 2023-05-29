package com.iMe.fork.p024ui.view;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p044ui.ActionBar.SimpleTextView;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FloatingActionButtonsCell.kt */
/* renamed from: com.iMe.fork.ui.view.FloatingActionButtonsCell$textView$2 */
/* loaded from: classes3.dex */
public final class FloatingActionButtonsCell$textView$2 extends Lambda implements Function0<SimpleTextView> {
    final /* synthetic */ FloatingActionButtonsCell this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FloatingActionButtonsCell$textView$2(FloatingActionButtonsCell floatingActionButtonsCell) {
        super(0);
        this.this$0 = floatingActionButtonsCell;
    }

    @Override // kotlin.jvm.functions.Function0
    public final SimpleTextView invoke() {
        SimpleTextView initTextView;
        initTextView = this.this$0.initTextView();
        return initTextView;
    }
}
