package org.fork.p046ui.dialog;

import android.widget.TextView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.fork.p046ui.dialog.SelectedFilesBottomSheet;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SelectedFilesBottomSheet.kt */
/* renamed from: org.fork.ui.dialog.SelectedFilesBottomSheet$FileView$nameTextView$2 */
/* loaded from: classes4.dex */
public final class SelectedFilesBottomSheet$FileView$nameTextView$2 extends Lambda implements Function0<TextView> {
    final /* synthetic */ SelectedFilesBottomSheet.FileView this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectedFilesBottomSheet$FileView$nameTextView$2(SelectedFilesBottomSheet.FileView fileView) {
        super(0);
        this.this$0 = fileView;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TextView invoke() {
        TextView initNameTextView;
        initNameTextView = this.this$0.initNameTextView();
        return initNameTextView;
    }
}
