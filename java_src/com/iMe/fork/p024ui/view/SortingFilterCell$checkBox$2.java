package com.iMe.fork.p024ui.view;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p044ui.Components.CheckBoxSquare;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SortingFilterCell.kt */
/* renamed from: com.iMe.fork.ui.view.SortingFilterCell$checkBox$2 */
/* loaded from: classes3.dex */
public final class SortingFilterCell$checkBox$2 extends Lambda implements Function0<CheckBoxSquare> {
    final /* synthetic */ SortingFilterCell this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SortingFilterCell$checkBox$2(SortingFilterCell sortingFilterCell) {
        super(0);
        this.this$0 = sortingFilterCell;
    }

    @Override // kotlin.jvm.functions.Function0
    public final CheckBoxSquare invoke() {
        CheckBoxSquare initCheckBox;
        initCheckBox = this.this$0.initCheckBox();
        return initCheckBox;
    }
}
