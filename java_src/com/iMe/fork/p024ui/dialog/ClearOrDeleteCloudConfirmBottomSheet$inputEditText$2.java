package com.iMe.fork.p024ui.dialog;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p044ui.Components.EditTextBoldCursor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ClearOrDeleteCloudConfirmBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.ClearOrDeleteCloudConfirmBottomSheet$inputEditText$2 */
/* loaded from: classes3.dex */
public final class ClearOrDeleteCloudConfirmBottomSheet$inputEditText$2 extends Lambda implements Function0<EditTextBoldCursor> {
    final /* synthetic */ ClearOrDeleteCloudConfirmBottomSheet this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClearOrDeleteCloudConfirmBottomSheet$inputEditText$2(ClearOrDeleteCloudConfirmBottomSheet clearOrDeleteCloudConfirmBottomSheet) {
        super(0);
        this.this$0 = clearOrDeleteCloudConfirmBottomSheet;
    }

    @Override // kotlin.jvm.functions.Function0
    public final EditTextBoldCursor invoke() {
        EditTextBoldCursor initInputEditText;
        initInputEditText = this.this$0.initInputEditText();
        return initInputEditText;
    }
}
