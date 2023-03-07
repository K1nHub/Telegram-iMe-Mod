package org.fork.p046ui.view;

import android.widget.ImageView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PollEditTextCellWrapper.kt */
/* renamed from: org.fork.ui.view.PollEditTextCellWrapper$arrowImageView$2 */
/* loaded from: classes4.dex */
public final class PollEditTextCellWrapper$arrowImageView$2 extends Lambda implements Function0<ImageView> {
    final /* synthetic */ PollEditTextCellWrapper this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PollEditTextCellWrapper$arrowImageView$2(PollEditTextCellWrapper pollEditTextCellWrapper) {
        super(0);
        this.this$0 = pollEditTextCellWrapper;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final ImageView invoke() {
        ImageView initArrowImageView;
        initArrowImageView = this.this$0.initArrowImageView();
        return initArrowImageView;
    }
}
