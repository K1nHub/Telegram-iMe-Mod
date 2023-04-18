package org.telegram.p044ui;

import android.view.MotionEvent;
import org.telegram.p044ui.Components.RecyclerListView;
/* renamed from: org.telegram.ui.ChatActivity$$ExternalSyntheticLambda322 */
/* loaded from: classes5.dex */
public final /* synthetic */ class ChatActivity$$ExternalSyntheticLambda322 implements RecyclerListView.OnInterceptTouchListener {
    public static final /* synthetic */ ChatActivity$$ExternalSyntheticLambda322 INSTANCE = new ChatActivity$$ExternalSyntheticLambda322();

    private /* synthetic */ ChatActivity$$ExternalSyntheticLambda322() {
    }

    @Override // org.telegram.p044ui.Components.RecyclerListView.OnInterceptTouchListener
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean lambda$showChatThemeBottomSheet$324;
        lambda$showChatThemeBottomSheet$324 = ChatActivity.lambda$showChatThemeBottomSheet$324(motionEvent);
        return lambda$showChatThemeBottomSheet$324;
    }
}
