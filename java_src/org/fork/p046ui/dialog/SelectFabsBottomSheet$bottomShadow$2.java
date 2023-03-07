package org.fork.p046ui.dialog;

import android.view.View;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SelectFabsBottomSheet.kt */
/* renamed from: org.fork.ui.dialog.SelectFabsBottomSheet$bottomShadow$2 */
/* loaded from: classes4.dex */
public final class SelectFabsBottomSheet$bottomShadow$2 extends Lambda implements Function0<View> {
    final /* synthetic */ SelectFabsBottomSheet this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectFabsBottomSheet$bottomShadow$2(SelectFabsBottomSheet selectFabsBottomSheet) {
        super(0);
        this.this$0 = selectFabsBottomSheet;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final View invoke() {
        View initShadow;
        initShadow = this.this$0.initShadow();
        return initShadow;
    }
}
