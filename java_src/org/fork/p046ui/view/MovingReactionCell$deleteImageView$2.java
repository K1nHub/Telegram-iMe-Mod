package org.fork.p046ui.view;

import android.widget.ImageView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MovingReactionCell.kt */
/* renamed from: org.fork.ui.view.MovingReactionCell$deleteImageView$2 */
/* loaded from: classes4.dex */
public final class MovingReactionCell$deleteImageView$2 extends Lambda implements Function0<ImageView> {
    final /* synthetic */ MovingReactionCell this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MovingReactionCell$deleteImageView$2(MovingReactionCell movingReactionCell) {
        super(0);
        this.this$0 = movingReactionCell;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final ImageView invoke() {
        ImageView initDeleteImageView;
        initDeleteImageView = this.this$0.initDeleteImageView();
        return initDeleteImageView;
    }
}
