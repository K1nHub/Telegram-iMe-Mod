package com.iMe.p031ui.custom;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p043ui.Components.LoadingDrawable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ActionButton.kt */
/* renamed from: com.iMe.ui.custom.ActionButton$loadingDrawable$2 */
/* loaded from: classes3.dex */
public final class ActionButton$loadingDrawable$2 extends Lambda implements Function0<LoadingDrawable> {
    final /* synthetic */ ActionButton this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActionButton$loadingDrawable$2(ActionButton actionButton) {
        super(0);
        this.this$0 = actionButton;
    }

    @Override // kotlin.jvm.functions.Function0
    public final LoadingDrawable invoke() {
        LoadingDrawable initLoadingDrawable;
        initLoadingDrawable = this.this$0.initLoadingDrawable();
        return initLoadingDrawable;
    }
}
