package org.telegram.p048ui;

import org.telegram.p048ui.TopicCreateFragment;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.TopicCreateFragment$1$$ExternalSyntheticLambda3 */
/* loaded from: classes5.dex */
public final /* synthetic */ class TopicCreateFragment$1$$ExternalSyntheticLambda3 implements RequestDelegate {
    public static final /* synthetic */ TopicCreateFragment$1$$ExternalSyntheticLambda3 INSTANCE = new TopicCreateFragment$1$$ExternalSyntheticLambda3();

    private /* synthetic */ TopicCreateFragment$1$$ExternalSyntheticLambda3() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        TopicCreateFragment.C65741.lambda$onItemClick$2(tLObject, tLRPC$TL_error);
    }
}
