package org.telegram.p043ui;

import android.view.MotionEvent;
import org.telegram.p043ui.Components.RecyclerListView;
/* renamed from: org.telegram.ui.ChatActivity$$ExternalSyntheticLambda323 */
/* loaded from: classes5.dex */
public final /* synthetic */ class ChatActivity$$ExternalSyntheticLambda323 implements RecyclerListView.OnInterceptTouchListener {
    public static final /* synthetic */ ChatActivity$$ExternalSyntheticLambda323 INSTANCE = new ChatActivity$$ExternalSyntheticLambda323();

    private /* synthetic */ ChatActivity$$ExternalSyntheticLambda323() {
    }

    @Override // org.telegram.p043ui.Components.RecyclerListView.OnInterceptTouchListener
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean lambda$showChatThemeBottomSheet$327;
        lambda$showChatThemeBottomSheet$327 = ChatActivity.lambda$showChatThemeBottomSheet$327(motionEvent);
        return lambda$showChatThemeBottomSheet$327;
    }
}
