package org.fork.p046ui.dialog;

import android.view.View;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ForwardCloudBottomSheet.kt */
/* renamed from: org.fork.ui.dialog.ForwardCloudBottomSheet$shadow$2 */
/* loaded from: classes4.dex */
public final class ForwardCloudBottomSheet$shadow$2 extends Lambda implements Function0<View> {
    final /* synthetic */ ForwardCloudBottomSheet this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ForwardCloudBottomSheet$shadow$2(ForwardCloudBottomSheet forwardCloudBottomSheet) {
        super(0);
        this.this$0 = forwardCloudBottomSheet;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final View invoke() {
        View initShadow;
        initShadow = this.this$0.initShadow();
        return initShadow;
    }
}
