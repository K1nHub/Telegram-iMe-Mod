package org.fork.p046ui.view;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.Components.CheckBox2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CircleCheckCell.kt */
/* renamed from: org.fork.ui.view.CircleCheckCell$checkBox$2 */
/* loaded from: classes4.dex */
public final class CircleCheckCell$checkBox$2 extends Lambda implements Function0<CheckBox2> {
    final /* synthetic */ CircleCheckCell this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CircleCheckCell$checkBox$2(CircleCheckCell circleCheckCell) {
        super(0);
        this.this$0 = circleCheckCell;
    }

    @Override // kotlin.jvm.functions.Function0
    public final CheckBox2 invoke() {
        CheckBox2 initCheckBox;
        initCheckBox = this.this$0.initCheckBox();
        return initCheckBox;
    }
}
