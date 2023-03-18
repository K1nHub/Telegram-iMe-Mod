package org.telegram.p048ui;

import android.view.MotionEvent;
import org.telegram.p048ui.Components.RecyclerListView;
/* renamed from: org.telegram.ui.ChatActivity$$ExternalSyntheticLambda329 */
/* loaded from: classes5.dex */
public final /* synthetic */ class ChatActivity$$ExternalSyntheticLambda329 implements RecyclerListView.OnInterceptTouchListener {
    public static final /* synthetic */ ChatActivity$$ExternalSyntheticLambda329 INSTANCE = new ChatActivity$$ExternalSyntheticLambda329();

    private /* synthetic */ ChatActivity$$ExternalSyntheticLambda329() {
    }

    @Override // org.telegram.p048ui.Components.RecyclerListView.OnInterceptTouchListener
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean lambda$showChatThemeBottomSheet$329;
        lambda$showChatThemeBottomSheet$329 = ChatActivity.lambda$showChatThemeBottomSheet$329(motionEvent);
        return lambda$showChatThemeBottomSheet$329;
    }
}
