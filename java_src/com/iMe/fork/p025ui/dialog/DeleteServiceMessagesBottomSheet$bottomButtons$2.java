package com.iMe.fork.p025ui.dialog;

import android.widget.TextView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DeleteServiceMessagesBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.DeleteServiceMessagesBottomSheet$bottomButtons$2 */
/* loaded from: classes3.dex */
public final class DeleteServiceMessagesBottomSheet$bottomButtons$2 extends Lambda implements Function0<TextView[]> {
    final /* synthetic */ DeleteServiceMessagesBottomSheet this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeleteServiceMessagesBottomSheet$bottomButtons$2(DeleteServiceMessagesBottomSheet deleteServiceMessagesBottomSheet) {
        super(0);
        this.this$0 = deleteServiceMessagesBottomSheet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(DeleteServiceMessagesBottomSheet this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.showPeriodSelectionDialog();
    }

    @Override // kotlin.jvm.functions.Function0
    public final TextView[] invoke() {
        TextView[] bottomDialogButtons;
        final DeleteServiceMessagesBottomSheet deleteServiceMessagesBottomSheet = this.this$0;
        bottomDialogButtons = deleteServiceMessagesBottomSheet.getBottomDialogButtons(new Runnable() { // from class: com.iMe.fork.ui.dialog.DeleteServiceMessagesBottomSheet$bottomButtons$2$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                DeleteServiceMessagesBottomSheet$bottomButtons$2.invoke$lambda$0(DeleteServiceMessagesBottomSheet.this);
            }
        });
        return bottomDialogButtons;
    }
}
