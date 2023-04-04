package com.iMe.fork.p025ui.dialog;

import android.content.Context;
import com.iMe.fork.p025ui.dialog.DeleteServiceMessagesBottomSheet;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: DeleteServiceMessagesBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.DeleteServiceMessagesBottomSheet$listAdapter$2 */
/* loaded from: classes3.dex */
final class DeleteServiceMessagesBottomSheet$listAdapter$2 extends Lambda implements Function0<DeleteServiceMessagesBottomSheet.ServiceMessagesTypesAdapter> {
    final /* synthetic */ Context $context;
    final /* synthetic */ DeleteServiceMessagesBottomSheet this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeleteServiceMessagesBottomSheet$listAdapter$2(DeleteServiceMessagesBottomSheet deleteServiceMessagesBottomSheet, Context context) {
        super(0);
        this.this$0 = deleteServiceMessagesBottomSheet;
        this.$context = context;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final DeleteServiceMessagesBottomSheet.ServiceMessagesTypesAdapter invoke() {
        return new DeleteServiceMessagesBottomSheet.ServiceMessagesTypesAdapter(this.this$0, this.$context);
    }
}
