package org.fork.p046ui.view;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MovingReactionCell.kt */
/* renamed from: org.fork.ui.view.MovingReactionCell$editText$2 */
/* loaded from: classes4.dex */
public final class MovingReactionCell$editText$2 extends Lambda implements Function0<MovingReactionCell$initEditText$1> {
    final /* synthetic */ MovingReactionCell this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MovingReactionCell$editText$2(MovingReactionCell movingReactionCell) {
        super(0);
        this.this$0 = movingReactionCell;
    }

    @Override // kotlin.jvm.functions.Function0
    public final MovingReactionCell$initEditText$1 invoke() {
        MovingReactionCell$initEditText$1 initEditText;
        initEditText = this.this$0.initEditText();
        return initEditText;
    }
}
