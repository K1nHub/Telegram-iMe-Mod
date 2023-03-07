package org.fork.p046ui.dialog;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.Components.RecyclerListView;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SelectFabsBottomSheet.kt */
/* renamed from: org.fork.ui.dialog.SelectFabsBottomSheet$listView$2 */
/* loaded from: classes4.dex */
public final class SelectFabsBottomSheet$listView$2 extends Lambda implements Function0<RecyclerListView> {
    final /* synthetic */ SelectFabsBottomSheet this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectFabsBottomSheet$listView$2(SelectFabsBottomSheet selectFabsBottomSheet) {
        super(0);
        this.this$0 = selectFabsBottomSheet;
    }

    @Override // kotlin.jvm.functions.Function0
    public final RecyclerListView invoke() {
        RecyclerListView initListView;
        initListView = this.this$0.initListView();
        return initListView;
    }
}
