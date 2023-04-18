package org.telegram.p044ui;

import org.telegram.messenger.MessageObject;
import p034j$.util.function.ToIntFunction;
/* renamed from: org.telegram.ui.ChatActivity$$ExternalSyntheticLambda276 */
/* loaded from: classes5.dex */
public final /* synthetic */ class ChatActivity$$ExternalSyntheticLambda276 implements ToIntFunction {
    public static final /* synthetic */ ChatActivity$$ExternalSyntheticLambda276 INSTANCE = new ChatActivity$$ExternalSyntheticLambda276();

    private /* synthetic */ ChatActivity$$ExternalSyntheticLambda276() {
    }

    @Override // p034j$.util.function.ToIntFunction
    public final int applyAsInt(Object obj) {
        return ((MessageObject) obj).getId();
    }
}
