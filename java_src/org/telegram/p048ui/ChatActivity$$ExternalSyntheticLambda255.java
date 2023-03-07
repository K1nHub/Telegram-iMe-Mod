package org.telegram.p048ui;

import org.telegram.messenger.MessageObject;
import p034j$.util.function.ToIntFunction;
/* renamed from: org.telegram.ui.ChatActivity$$ExternalSyntheticLambda255 */
/* loaded from: classes5.dex */
public final /* synthetic */ class ChatActivity$$ExternalSyntheticLambda255 implements ToIntFunction {
    public static final /* synthetic */ ChatActivity$$ExternalSyntheticLambda255 INSTANCE = new ChatActivity$$ExternalSyntheticLambda255();

    private /* synthetic */ ChatActivity$$ExternalSyntheticLambda255() {
    }

    @Override // p034j$.util.function.ToIntFunction
    public final int applyAsInt(Object obj) {
        return ((MessageObject) obj).getId();
    }
}
