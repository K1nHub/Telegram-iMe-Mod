package com.iMe.fork.p024ui.dialog;

import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SelectIconBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.SelectIconBottomSheet$icons$2 */
/* loaded from: classes3.dex */
public final class SelectIconBottomSheet$icons$2 extends Lambda implements Function0<List<? extends Enum<?>>> {
    final /* synthetic */ SelectIconBottomSheet this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectIconBottomSheet$icons$2(SelectIconBottomSheet selectIconBottomSheet) {
        super(0);
        this.this$0 = selectIconBottomSheet;
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<? extends Enum<?>> invoke() {
        List<? extends Enum<?>> initIcons;
        initIcons = this.this$0.initIcons();
        return initIcons;
    }
}
