package org.telegram.p048ui;

import androidx.core.util.Consumer;
import org.telegram.p048ui.ChatUsersActivity;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.ChatUsersActivity$9$$ExternalSyntheticLambda1 */
/* loaded from: classes5.dex */
public final /* synthetic */ class ChatUsersActivity$9$$ExternalSyntheticLambda1 implements Consumer {
    public static final /* synthetic */ ChatUsersActivity$9$$ExternalSyntheticLambda1 INSTANCE = new ChatUsersActivity$9$$ExternalSyntheticLambda1();

    private /* synthetic */ ChatUsersActivity$9$$ExternalSyntheticLambda1() {
    }

    @Override // androidx.core.util.Consumer
    public final void accept(Object obj) {
        ChatUsersActivity.C40079.lambda$didSelectUsers$1((TLRPC$User) obj);
    }
}
