package org.telegram.p048ui;

import com.iMe.fork.utils.Callbacks$Callback1;
import org.telegram.messenger.SharedConfig;
/* renamed from: org.telegram.ui.ChatActivity$ChatActivityEnterViewDelegate$$ExternalSyntheticLambda3 */
/* loaded from: classes5.dex */
public final /* synthetic */ class C3946xa846c470 implements Callbacks$Callback1 {
    public static final /* synthetic */ C3946xa846c470 INSTANCE = new C3946xa846c470();

    private /* synthetic */ C3946xa846c470() {
    }

    @Override // com.iMe.fork.utils.Callbacks$Callback1
    public final void invoke(Object obj) {
        SharedConfig.setCombineMessagesEnabled(((Boolean) obj).booleanValue());
    }
}
