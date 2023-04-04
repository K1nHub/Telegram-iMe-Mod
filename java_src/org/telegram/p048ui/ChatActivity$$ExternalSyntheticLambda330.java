package org.telegram.p048ui;

import android.view.MotionEvent;
import org.telegram.p048ui.Components.RecyclerListView;
/* renamed from: org.telegram.ui.ChatActivity$$ExternalSyntheticLambda330 */
/* loaded from: classes5.dex */
public final /* synthetic */ class ChatActivity$$ExternalSyntheticLambda330 implements RecyclerListView.OnInterceptTouchListener {
    public static final /* synthetic */ ChatActivity$$ExternalSyntheticLambda330 INSTANCE = new ChatActivity$$ExternalSyntheticLambda330();

    private /* synthetic */ ChatActivity$$ExternalSyntheticLambda330() {
    }

    @Override // org.telegram.p048ui.Components.RecyclerListView.OnInterceptTouchListener
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean lambda$showChatThemeBottomSheet$330;
        lambda$showChatThemeBottomSheet$330 = ChatActivity.lambda$showChatThemeBottomSheet$330(motionEvent);
        return lambda$showChatThemeBottomSheet$330;
    }
}
