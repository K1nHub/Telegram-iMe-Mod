package org.telegram.p044ui;

import org.telegram.messenger.MessageObject;
import p034j$.util.function.ToIntFunction;
/* renamed from: org.telegram.ui.ChatActivity$$ExternalSyntheticLambda278 */
/* loaded from: classes5.dex */
public final /* synthetic */ class ChatActivity$$ExternalSyntheticLambda278 implements ToIntFunction {
    public static final /* synthetic */ ChatActivity$$ExternalSyntheticLambda278 INSTANCE = new ChatActivity$$ExternalSyntheticLambda278();

    private /* synthetic */ ChatActivity$$ExternalSyntheticLambda278() {
    }

    @Override // p034j$.util.function.ToIntFunction
    public final int applyAsInt(Object obj) {
        return ((MessageObject) obj).getId();
    }
}
