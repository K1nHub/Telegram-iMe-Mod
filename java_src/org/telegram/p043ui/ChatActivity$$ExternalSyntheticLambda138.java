package org.telegram.p043ui;

import androidx.core.util.Consumer;
import java.util.List;
import org.telegram.p043ui.Components.ReactedUsersListView;
/* renamed from: org.telegram.ui.ChatActivity$$ExternalSyntheticLambda138 */
/* loaded from: classes5.dex */
public final /* synthetic */ class ChatActivity$$ExternalSyntheticLambda138 implements Consumer {
    public final /* synthetic */ ReactedUsersListView f$0;

    public /* synthetic */ ChatActivity$$ExternalSyntheticLambda138(ReactedUsersListView reactedUsersListView) {
        this.f$0 = reactedUsersListView;
    }

    @Override // androidx.core.util.Consumer
    public final void accept(Object obj) {
        this.f$0.setSeenUsers((List) obj);
    }
}
