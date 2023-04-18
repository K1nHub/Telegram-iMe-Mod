package org.telegram.p044ui;

import com.iMe.fork.utils.Callbacks$Callback1;
import org.telegram.messenger.SharedConfig;
/* renamed from: org.telegram.ui.ChatActivity$ChatActivityEnterViewDelegate$$ExternalSyntheticLambda4 */
/* loaded from: classes5.dex */
public final /* synthetic */ class C3873xa846c471 implements Callbacks$Callback1 {
    public static final /* synthetic */ C3873xa846c471 INSTANCE = new C3873xa846c471();

    private /* synthetic */ C3873xa846c471() {
    }

    @Override // com.iMe.fork.utils.Callbacks$Callback1
    public final void invoke(Object obj) {
        SharedConfig.setCombineMessagesEnabled(((Boolean) obj).booleanValue());
    }
}
