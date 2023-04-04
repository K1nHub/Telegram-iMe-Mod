package org.telegram.p048ui;

import org.telegram.messenger.MessageObject;
import p035j$.util.function.ToIntFunction;
/* renamed from: org.telegram.ui.ChatActivity$$ExternalSyntheticLambda284 */
/* loaded from: classes5.dex */
public final /* synthetic */ class ChatActivity$$ExternalSyntheticLambda284 implements ToIntFunction {
    public static final /* synthetic */ ChatActivity$$ExternalSyntheticLambda284 INSTANCE = new ChatActivity$$ExternalSyntheticLambda284();

    private /* synthetic */ ChatActivity$$ExternalSyntheticLambda284() {
    }

    @Override // p035j$.util.function.ToIntFunction
    public final int applyAsInt(Object obj) {
        return ((MessageObject) obj).getId();
    }
}
