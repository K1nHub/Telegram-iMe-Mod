package org.fork.p046ui.view;

import android.widget.ImageView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SortingFilterCell.kt */
/* renamed from: org.fork.ui.view.SortingFilterCell$iconView$2 */
/* loaded from: classes4.dex */
public final class SortingFilterCell$iconView$2 extends Lambda implements Function0<ImageView> {
    final /* synthetic */ SortingFilterCell this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SortingFilterCell$iconView$2(SortingFilterCell sortingFilterCell) {
        super(0);
        this.this$0 = sortingFilterCell;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final ImageView invoke() {
        ImageView initIconView;
        initIconView = this.this$0.initIconView();
        return initIconView;
    }
}
