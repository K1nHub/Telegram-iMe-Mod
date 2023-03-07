package org.fork.p046ui.dialog;

import android.widget.ImageView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.fork.p046ui.dialog.SelectedFilesBottomSheet;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SelectedFilesBottomSheet.kt */
/* renamed from: org.fork.ui.dialog.SelectedFilesBottomSheet$FileView$deleteButton$2 */
/* loaded from: classes4.dex */
public final class SelectedFilesBottomSheet$FileView$deleteButton$2 extends Lambda implements Function0<ImageView> {
    final /* synthetic */ SelectedFilesBottomSheet.FileView this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectedFilesBottomSheet$FileView$deleteButton$2(SelectedFilesBottomSheet.FileView fileView) {
        super(0);
        this.this$0 = fileView;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final ImageView invoke() {
        ImageView initDeleteButton;
        initDeleteButton = this.this$0.initDeleteButton();
        return initDeleteButton;
    }
}
