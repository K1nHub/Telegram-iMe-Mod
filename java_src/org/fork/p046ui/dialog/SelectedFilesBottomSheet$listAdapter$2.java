package org.fork.p046ui.dialog;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.fork.p046ui.dialog.SelectedFilesBottomSheet;
/* compiled from: SelectedFilesBottomSheet.kt */
/* renamed from: org.fork.ui.dialog.SelectedFilesBottomSheet$listAdapter$2 */
/* loaded from: classes4.dex */
final class SelectedFilesBottomSheet$listAdapter$2 extends Lambda implements Function0<SelectedFilesBottomSheet.FilesAdapter> {
    final /* synthetic */ SelectedFilesBottomSheet this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectedFilesBottomSheet$listAdapter$2(SelectedFilesBottomSheet selectedFilesBottomSheet) {
        super(0);
        this.this$0 = selectedFilesBottomSheet;
    }

    @Override // kotlin.jvm.functions.Function0
    public final SelectedFilesBottomSheet.FilesAdapter invoke() {
        return new SelectedFilesBottomSheet.FilesAdapter();
    }
}
