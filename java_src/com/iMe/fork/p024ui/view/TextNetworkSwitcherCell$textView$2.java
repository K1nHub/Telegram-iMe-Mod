package com.iMe.fork.p024ui.view;

import android.widget.TextView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TextNetworkSwitcherCell.kt */
/* renamed from: com.iMe.fork.ui.view.TextNetworkSwitcherCell$textView$2 */
/* loaded from: classes3.dex */
public final class TextNetworkSwitcherCell$textView$2 extends Lambda implements Function0<TextView> {
    final /* synthetic */ TextNetworkSwitcherCell this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextNetworkSwitcherCell$textView$2(TextNetworkSwitcherCell textNetworkSwitcherCell) {
        super(0);
        this.this$0 = textNetworkSwitcherCell;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TextView invoke() {
        TextView initTextView;
        initTextView = this.this$0.initTextView();
        return initTextView;
    }
}
