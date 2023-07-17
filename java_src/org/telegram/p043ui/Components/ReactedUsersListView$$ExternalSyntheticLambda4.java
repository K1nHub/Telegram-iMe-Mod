package org.telegram.p043ui.Components;

import org.telegram.tgnet.TLRPC$MessagePeerReaction;
import p033j$.util.function.ToIntFunction;
/* renamed from: org.telegram.ui.Components.ReactedUsersListView$$ExternalSyntheticLambda4 */
/* loaded from: classes6.dex */
public final /* synthetic */ class ReactedUsersListView$$ExternalSyntheticLambda4 implements ToIntFunction {
    public static final /* synthetic */ ReactedUsersListView$$ExternalSyntheticLambda4 INSTANCE = new ReactedUsersListView$$ExternalSyntheticLambda4();

    private /* synthetic */ ReactedUsersListView$$ExternalSyntheticLambda4() {
    }

    @Override // p033j$.util.function.ToIntFunction
    public final int applyAsInt(Object obj) {
        int lambda$load$2;
        lambda$load$2 = ReactedUsersListView.lambda$load$2((TLRPC$MessagePeerReaction) obj);
        return lambda$load$2;
    }
}
