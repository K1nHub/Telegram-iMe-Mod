package com.iMe.fork.p025ui.dialog;

import android.widget.TextView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SelectFabsBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.SelectFabsBottomSheet$saveButton$2 */
/* loaded from: classes3.dex */
public final class SelectFabsBottomSheet$saveButton$2 extends Lambda implements Function0<TextView> {
    final /* synthetic */ SelectFabsBottomSheet this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectFabsBottomSheet$saveButton$2(SelectFabsBottomSheet selectFabsBottomSheet) {
        super(0);
        this.this$0 = selectFabsBottomSheet;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TextView invoke() {
        TextView initSaveButton;
        initSaveButton = this.this$0.initSaveButton();
        return initSaveButton;
    }
}
