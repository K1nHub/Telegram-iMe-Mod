package com.iMe.fork.p025ui.dialog;

import com.iMe.fork.p025ui.dialog.SelectIconBottomSheet;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.Components.CheckBox2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SelectIconBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.SelectIconBottomSheet$IconView$checkBox$2 */
/* loaded from: classes3.dex */
public final class SelectIconBottomSheet$IconView$checkBox$2 extends Lambda implements Function0<CheckBox2> {
    final /* synthetic */ SelectIconBottomSheet.IconView this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectIconBottomSheet$IconView$checkBox$2(SelectIconBottomSheet.IconView iconView) {
        super(0);
        this.this$0 = iconView;
    }

    @Override // kotlin.jvm.functions.Function0
    public final CheckBox2 invoke() {
        CheckBox2 initCheckBox;
        initCheckBox = this.this$0.initCheckBox();
        return initCheckBox;
    }
}
