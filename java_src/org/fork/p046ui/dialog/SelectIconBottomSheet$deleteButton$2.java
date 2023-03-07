package org.fork.p046ui.dialog;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.Components.ReportAlert;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SelectIconBottomSheet.kt */
/* renamed from: org.fork.ui.dialog.SelectIconBottomSheet$deleteButton$2 */
/* loaded from: classes4.dex */
public final class SelectIconBottomSheet$deleteButton$2 extends Lambda implements Function0<ReportAlert.BottomSheetCell> {
    final /* synthetic */ SelectIconBottomSheet this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectIconBottomSheet$deleteButton$2(SelectIconBottomSheet selectIconBottomSheet) {
        super(0);
        this.this$0 = selectIconBottomSheet;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ReportAlert.BottomSheetCell invoke() {
        ReportAlert.BottomSheetCell initDeleteButton;
        initDeleteButton = this.this$0.initDeleteButton();
        return initDeleteButton;
    }
}
