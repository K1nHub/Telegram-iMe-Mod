package com.iMe.fork.p024ui.dialog;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p044ui.Components.RecyclerListView;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SelectIconBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.SelectIconBottomSheet$listView$2 */
/* loaded from: classes3.dex */
public final class SelectIconBottomSheet$listView$2 extends Lambda implements Function0<RecyclerListView> {
    final /* synthetic */ SelectIconBottomSheet this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectIconBottomSheet$listView$2(SelectIconBottomSheet selectIconBottomSheet) {
        super(0);
        this.this$0 = selectIconBottomSheet;
    }

    @Override // kotlin.jvm.functions.Function0
    public final RecyclerListView invoke() {
        RecyclerListView initListView;
        initListView = this.this$0.initListView();
        return initListView;
    }
}