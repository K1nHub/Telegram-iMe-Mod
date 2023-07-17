package com.iMe.fork.p024ui.fragment;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p043ui.Components.EmojiView;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CreateReactionButtonsActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$emojiView$2 */
/* loaded from: classes3.dex */
public final class CreateReactionButtonsActivity$emojiView$2 extends Lambda implements Function0<EmojiView> {
    final /* synthetic */ CreateReactionButtonsActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateReactionButtonsActivity$emojiView$2(CreateReactionButtonsActivity createReactionButtonsActivity) {
        super(0);
        this.this$0 = createReactionButtonsActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final EmojiView invoke() {
        EmojiView initEmojiView;
        initEmojiView = this.this$0.initEmojiView();
        return initEmojiView;
    }
}
