package org.fork.p046ui.dialog;

import android.widget.FrameLayout;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DeleteServiceMessagesBottomSheet.kt */
/* renamed from: org.fork.ui.dialog.DeleteServiceMessagesBottomSheet$buttonsLayout$2 */
/* loaded from: classes4.dex */
public final class DeleteServiceMessagesBottomSheet$buttonsLayout$2 extends Lambda implements Function0<FrameLayout> {
    final /* synthetic */ DeleteServiceMessagesBottomSheet this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeleteServiceMessagesBottomSheet$buttonsLayout$2(DeleteServiceMessagesBottomSheet deleteServiceMessagesBottomSheet) {
        super(0);
        this.this$0 = deleteServiceMessagesBottomSheet;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final FrameLayout invoke() {
        FrameLayout initButtonsLayout;
        initButtonsLayout = this.this$0.initButtonsLayout();
        return initButtonsLayout;
    }
}
