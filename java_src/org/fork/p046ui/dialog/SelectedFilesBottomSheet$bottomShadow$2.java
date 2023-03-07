package org.fork.p046ui.dialog;

import android.view.View;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SelectedFilesBottomSheet.kt */
/* renamed from: org.fork.ui.dialog.SelectedFilesBottomSheet$bottomShadow$2 */
/* loaded from: classes4.dex */
public final class SelectedFilesBottomSheet$bottomShadow$2 extends Lambda implements Function0<View> {
    final /* synthetic */ SelectedFilesBottomSheet this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectedFilesBottomSheet$bottomShadow$2(SelectedFilesBottomSheet selectedFilesBottomSheet) {
        super(0);
        this.this$0 = selectedFilesBottomSheet;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final View invoke() {
        View initShadow;
        initShadow = this.this$0.initShadow(false);
        return initShadow;
    }
}
