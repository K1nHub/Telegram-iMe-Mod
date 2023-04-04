package com.iMe.fork.p025ui.view;

import android.view.View;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SortingFilterCell.kt */
/* renamed from: com.iMe.fork.ui.view.SortingFilterCell$verticalDivider$2 */
/* loaded from: classes3.dex */
public final class SortingFilterCell$verticalDivider$2 extends Lambda implements Function0<View> {
    final /* synthetic */ SortingFilterCell this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SortingFilterCell$verticalDivider$2(SortingFilterCell sortingFilterCell) {
        super(0);
        this.this$0 = sortingFilterCell;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final View invoke() {
        View initVerticalDivider;
        initVerticalDivider = this.this$0.initVerticalDivider();
        return initVerticalDivider;
    }
}
