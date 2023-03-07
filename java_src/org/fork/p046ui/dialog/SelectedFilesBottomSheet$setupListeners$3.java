package org.fork.p046ui.dialog;

import android.net.Uri;
import android.view.View;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.fork.p046ui.dialog.SelectedFilesBottomSheet;
import org.fork.utils.Callbacks$Callback1;
import org.fork.utils.CollectionsUtilsKt;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SelectedFilesBottomSheet.kt */
/* renamed from: org.fork.ui.dialog.SelectedFilesBottomSheet$setupListeners$3 */
/* loaded from: classes4.dex */
public final class SelectedFilesBottomSheet$setupListeners$3 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ SelectedFilesBottomSheet this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectedFilesBottomSheet$setupListeners$3(SelectedFilesBottomSheet selectedFilesBottomSheet) {
        super(1);
        this.this$0 = selectedFilesBottomSheet;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(it, "it");
        Callbacks$Callback1<ArrayList<Uri>> onFilesChangedAction = this.this$0.getOnFilesChangedAction();
        List<SelectedFilesBottomSheet.FileItem> list = this.this$0.files;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (SelectedFilesBottomSheet.FileItem fileItem : list) {
            arrayList.add(fileItem.getUri());
        }
        onFilesChangedAction.invoke(CollectionsUtilsKt.toArrayList(arrayList));
        this.this$0.dismiss();
    }
}
