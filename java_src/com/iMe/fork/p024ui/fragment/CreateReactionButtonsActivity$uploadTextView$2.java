package com.iMe.fork.p024ui.fragment;

import android.widget.TextView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CreateReactionButtonsActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$uploadTextView$2 */
/* loaded from: classes3.dex */
public final class CreateReactionButtonsActivity$uploadTextView$2 extends Lambda implements Function0<TextView> {
    final /* synthetic */ CreateReactionButtonsActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateReactionButtonsActivity$uploadTextView$2(CreateReactionButtonsActivity createReactionButtonsActivity) {
        super(0);
        this.this$0 = createReactionButtonsActivity;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TextView invoke() {
        TextView initUploadTextView;
        initUploadTextView = this.this$0.initUploadTextView();
        return initUploadTextView;
    }
}
