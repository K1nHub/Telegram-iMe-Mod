package org.telegram.p043ui;

import org.telegram.p043ui.Components.Reactions.ReactionsEffectOverlay;
/* renamed from: org.telegram.ui.ChatActivity$ChatActivityFragmentView$$ExternalSyntheticLambda1 */
/* loaded from: classes5.dex */
public final /* synthetic */ class ChatActivity$ChatActivityFragmentView$$ExternalSyntheticLambda1 implements Runnable {
    public static final /* synthetic */ ChatActivity$ChatActivityFragmentView$$ExternalSyntheticLambda1 INSTANCE = new ChatActivity$ChatActivityFragmentView$$ExternalSyntheticLambda1();

    private /* synthetic */ ChatActivity$ChatActivityFragmentView$$ExternalSyntheticLambda1() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        ReactionsEffectOverlay.removeCurrent(true);
    }
}
