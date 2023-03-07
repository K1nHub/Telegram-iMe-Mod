package org.telegram.p048ui;

import org.fork.utils.Callbacks$Callback1;
import org.telegram.messenger.SharedConfig;
/* renamed from: org.telegram.ui.ChatActivity$ChatActivityEnterViewDelegate$$ExternalSyntheticLambda5 */
/* loaded from: classes5.dex */
public final /* synthetic */ class C3781xa846c472 implements Callbacks$Callback1 {
    public static final /* synthetic */ C3781xa846c472 INSTANCE = new C3781xa846c472();

    private /* synthetic */ C3781xa846c472() {
    }

    @Override // org.fork.utils.Callbacks$Callback1
    public final void invoke(Object obj) {
        SharedConfig.setCombineMessagesEnabled(((Boolean) obj).booleanValue());
    }
}
