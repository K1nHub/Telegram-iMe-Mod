package com.iMe.fork.p025ui.fragment;

import android.view.View;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CreateReactionButtonsActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$uploadCircleView$2 */
/* loaded from: classes3.dex */
public final class CreateReactionButtonsActivity$uploadCircleView$2 extends Lambda implements Function0<View> {
    final /* synthetic */ CreateReactionButtonsActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateReactionButtonsActivity$uploadCircleView$2(CreateReactionButtonsActivity createReactionButtonsActivity) {
        super(0);
        this.this$0 = createReactionButtonsActivity;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final View invoke() {
        View initProgressCircleView;
        initProgressCircleView = this.this$0.initProgressCircleView();
        return initProgressCircleView;
    }
}
