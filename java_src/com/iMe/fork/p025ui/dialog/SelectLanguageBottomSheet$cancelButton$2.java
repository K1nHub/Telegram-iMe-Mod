package com.iMe.fork.p025ui.dialog;

import android.widget.TextView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SelectLanguageBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.SelectLanguageBottomSheet$cancelButton$2 */
/* loaded from: classes3.dex */
public final class SelectLanguageBottomSheet$cancelButton$2 extends Lambda implements Function0<TextView> {
    final /* synthetic */ SelectLanguageBottomSheet this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectLanguageBottomSheet$cancelButton$2(SelectLanguageBottomSheet selectLanguageBottomSheet) {
        super(0);
        this.this$0 = selectLanguageBottomSheet;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TextView invoke() {
        TextView initCancelButton;
        initCancelButton = this.this$0.initCancelButton();
        return initCancelButton;
    }
}
