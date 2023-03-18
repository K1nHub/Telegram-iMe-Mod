package org.fork.p046ui.dialog;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.fork.p046ui.dialog.SelectedFilesBottomSheet;
/* compiled from: SelectedFilesBottomSheet.kt */
/* renamed from: org.fork.ui.dialog.SelectedFilesBottomSheet$FilesAdapter$onBindViewHolder$1$1 */
/* loaded from: classes4.dex */
final class SelectedFilesBottomSheet$FilesAdapter$onBindViewHolder$1$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ int $position;
    final /* synthetic */ SelectedFilesBottomSheet.FilesAdapter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectedFilesBottomSheet$FilesAdapter$onBindViewHolder$1$1(SelectedFilesBottomSheet.FilesAdapter filesAdapter, int i) {
        super(0);
        this.this$0 = filesAdapter;
        this.$position = i;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.getOnItemDeleteClick().invoke(Integer.valueOf(this.$position));
    }
}
