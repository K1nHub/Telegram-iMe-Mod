package org.telegram.p048ui;

import org.telegram.messenger.MessageObject;
import p034j$.util.function.ToIntFunction;
/* renamed from: org.telegram.ui.ChatActivity$$ExternalSyntheticLambda256 */
/* loaded from: classes5.dex */
public final /* synthetic */ class ChatActivity$$ExternalSyntheticLambda256 implements ToIntFunction {
    public static final /* synthetic */ ChatActivity$$ExternalSyntheticLambda256 INSTANCE = new ChatActivity$$ExternalSyntheticLambda256();

    private /* synthetic */ ChatActivity$$ExternalSyntheticLambda256() {
    }

    @Override // p034j$.util.function.ToIntFunction
    public final int applyAsInt(Object obj) {
        return ((MessageObject) obj).getId();
    }
}
