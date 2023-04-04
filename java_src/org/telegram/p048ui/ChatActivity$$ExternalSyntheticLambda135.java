package org.telegram.p048ui;

import androidx.core.util.Consumer;
import java.util.List;
import org.telegram.p048ui.Components.ReactedUsersListView;
/* renamed from: org.telegram.ui.ChatActivity$$ExternalSyntheticLambda135 */
/* loaded from: classes5.dex */
public final /* synthetic */ class ChatActivity$$ExternalSyntheticLambda135 implements Consumer {
    public final /* synthetic */ ReactedUsersListView f$0;

    public /* synthetic */ ChatActivity$$ExternalSyntheticLambda135(ReactedUsersListView reactedUsersListView) {
        this.f$0 = reactedUsersListView;
    }

    @Override // androidx.core.util.Consumer
    public final void accept(Object obj) {
        this.f$0.setSeenUsers((List) obj);
    }
}
