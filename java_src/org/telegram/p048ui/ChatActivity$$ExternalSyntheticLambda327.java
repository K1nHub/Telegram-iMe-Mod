package org.telegram.p048ui;

import android.view.MotionEvent;
import org.telegram.p048ui.Components.RecyclerListView;
/* renamed from: org.telegram.ui.ChatActivity$$ExternalSyntheticLambda327 */
/* loaded from: classes5.dex */
public final /* synthetic */ class ChatActivity$$ExternalSyntheticLambda327 implements RecyclerListView.OnInterceptTouchListener {
    public static final /* synthetic */ ChatActivity$$ExternalSyntheticLambda327 INSTANCE = new ChatActivity$$ExternalSyntheticLambda327();

    private /* synthetic */ ChatActivity$$ExternalSyntheticLambda327() {
    }

    @Override // org.telegram.p048ui.Components.RecyclerListView.OnInterceptTouchListener
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean lambda$showChatThemeBottomSheet$327;
        lambda$showChatThemeBottomSheet$327 = ChatActivity.lambda$showChatThemeBottomSheet$327(motionEvent);
        return lambda$showChatThemeBottomSheet$327;
    }
}
