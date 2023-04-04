package com.iMe.fork.p025ui.dialog;

import android.widget.TextView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SelectedFilesBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.SelectedFilesBottomSheet$saveButton$2 */
/* loaded from: classes3.dex */
public final class SelectedFilesBottomSheet$saveButton$2 extends Lambda implements Function0<TextView> {
    final /* synthetic */ SelectedFilesBottomSheet this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectedFilesBottomSheet$saveButton$2(SelectedFilesBottomSheet selectedFilesBottomSheet) {
        super(0);
        this.this$0 = selectedFilesBottomSheet;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TextView invoke() {
        TextView initSaveButton;
        initSaveButton = this.this$0.initSaveButton();
        return initSaveButton;
    }
}
