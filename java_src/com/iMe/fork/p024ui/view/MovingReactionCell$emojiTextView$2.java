package com.iMe.fork.p024ui.view;

import android.widget.TextView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MovingReactionCell.kt */
/* renamed from: com.iMe.fork.ui.view.MovingReactionCell$emojiTextView$2 */
/* loaded from: classes3.dex */
public final class MovingReactionCell$emojiTextView$2 extends Lambda implements Function0<TextView> {
    final /* synthetic */ MovingReactionCell this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MovingReactionCell$emojiTextView$2(MovingReactionCell movingReactionCell) {
        super(0);
        this.this$0 = movingReactionCell;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TextView invoke() {
        TextView initEmojiTextView;
        initEmojiTextView = this.this$0.initEmojiTextView();
        return initEmojiTextView;
    }
}
