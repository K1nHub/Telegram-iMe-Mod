package com.iMe.p032ui.custom;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: ActionButton.kt */
/* renamed from: com.iMe.ui.custom.ActionButton$horizontalPadding$2 */
/* loaded from: classes3.dex */
final class ActionButton$horizontalPadding$2 extends Lambda implements Function0<Integer> {
    final /* synthetic */ ActionButton this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActionButton$horizontalPadding$2(ActionButton actionButton) {
        super(0);
        this.this$0 = actionButton;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final Integer invoke() {
        return Integer.valueOf(this.this$0.calculateHorizontalPadding());
    }
}
