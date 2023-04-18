package org.telegram.p044ui;

import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.TopicsNotifySettingsFragments$$ExternalSyntheticLambda0 */
/* loaded from: classes5.dex */
public final /* synthetic */ class TopicsNotifySettingsFragments$$ExternalSyntheticLambda0 implements RequestDelegate {
    public static final /* synthetic */ TopicsNotifySettingsFragments$$ExternalSyntheticLambda0 INSTANCE = new TopicsNotifySettingsFragments$$ExternalSyntheticLambda0();

    private /* synthetic */ TopicsNotifySettingsFragments$$ExternalSyntheticLambda0() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        TopicsNotifySettingsFragments.lambda$removeException$0(tLObject, tLRPC$TL_error);
    }
}
