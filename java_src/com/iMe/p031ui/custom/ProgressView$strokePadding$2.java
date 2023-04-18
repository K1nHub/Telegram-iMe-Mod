package com.iMe.p031ui.custom;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ProgressView.kt */
/* renamed from: com.iMe.ui.custom.ProgressView$strokePadding$2 */
/* loaded from: classes3.dex */
public final class ProgressView$strokePadding$2 extends Lambda implements Function0<Float> {
    final /* synthetic */ ProgressView this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProgressView$strokePadding$2(ProgressView progressView) {
        super(0);
        this.this$0 = progressView;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final Float invoke() {
        float strokeWidth;
        strokeWidth = this.this$0.getStrokeWidth();
        return Float.valueOf(strokeWidth / 2);
    }
}
