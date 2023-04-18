package com.iMe.fork.p024ui.dialog;

import android.view.View;
import com.iMe.fork.p024ui.dialog.SelectIconBottomSheet;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SelectIconBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.SelectIconBottomSheet$IconView$circleView$2 */
/* loaded from: classes3.dex */
public final class SelectIconBottomSheet$IconView$circleView$2 extends Lambda implements Function0<View> {
    final /* synthetic */ SelectIconBottomSheet.IconView this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectIconBottomSheet$IconView$circleView$2(SelectIconBottomSheet.IconView iconView) {
        super(0);
        this.this$0 = iconView;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final View invoke() {
        View initCircleView;
        initCircleView = this.this$0.initCircleView();
        return initCircleView;
    }
}
