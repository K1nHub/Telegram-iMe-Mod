package org.telegram.p048ui.Components.Forum;

import org.telegram.p048ui.Cells.ChatMessageCell;
import org.telegram.p048ui.Components.AnimatedEmojiSpan;
/* renamed from: org.telegram.ui.Components.Forum.MessageTopicButton$$ExternalSyntheticLambda0 */
/* loaded from: classes6.dex */
public final /* synthetic */ class MessageTopicButton$$ExternalSyntheticLambda0 implements AnimatedEmojiSpan.InvalidateHolder {
    public final /* synthetic */ ChatMessageCell f$0;

    public /* synthetic */ MessageTopicButton$$ExternalSyntheticLambda0(ChatMessageCell chatMessageCell) {
        this.f$0 = chatMessageCell;
    }

    @Override // org.telegram.p048ui.Components.AnimatedEmojiSpan.InvalidateHolder
    public final void invalidate() {
        this.f$0.invalidateOutbounds();
    }
}
