package com.iMe.fork.p024ui.dialog;

import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SelectedFilesBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.SelectedFilesBottomSheet$setupListeners$2 */
/* loaded from: classes3.dex */
public final class SelectedFilesBottomSheet$setupListeners$2 extends Lambda implements Function1<Integer, Unit> {
    final /* synthetic */ SelectedFilesBottomSheet this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectedFilesBottomSheet$setupListeners$2(SelectedFilesBottomSheet selectedFilesBottomSheet) {
        super(1);
        this.this$0 = selectedFilesBottomSheet;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
        invoke(num.intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(int i) {
        List list = this.this$0.files;
        SelectedFilesBottomSheet selectedFilesBottomSheet = this.this$0;
        list.remove(i);
        selectedFilesBottomSheet.getListAdapter().notifyDataSetChanged();
        if (list.isEmpty()) {
            selectedFilesBottomSheet.getOnFilesChangedAction().invoke(new ArrayList<>());
            selectedFilesBottomSheet.dismiss();
        }
    }
}
