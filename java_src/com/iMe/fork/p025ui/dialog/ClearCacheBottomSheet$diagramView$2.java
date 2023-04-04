package com.iMe.fork.p025ui.dialog;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.Components.StorageDiagramView;
/* compiled from: ClearCacheBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.ClearCacheBottomSheet$diagramView$2 */
/* loaded from: classes3.dex */
final class ClearCacheBottomSheet$diagramView$2 extends Lambda implements Function0<StorageDiagramView> {
    final /* synthetic */ ClearCacheBottomSheet this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClearCacheBottomSheet$diagramView$2(ClearCacheBottomSheet clearCacheBottomSheet) {
        super(0);
        this.this$0 = clearCacheBottomSheet;
    }

    @Override // kotlin.jvm.functions.Function0
    public final StorageDiagramView invoke() {
        return new StorageDiagramView(this.this$0.getContext());
    }
}
