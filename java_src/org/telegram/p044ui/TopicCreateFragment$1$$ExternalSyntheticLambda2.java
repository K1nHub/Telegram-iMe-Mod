package org.telegram.p044ui;

import org.telegram.p044ui.TopicCreateFragment;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.TopicCreateFragment$1$$ExternalSyntheticLambda2 */
/* loaded from: classes5.dex */
public final /* synthetic */ class TopicCreateFragment$1$$ExternalSyntheticLambda2 implements RequestDelegate {
    public static final /* synthetic */ TopicCreateFragment$1$$ExternalSyntheticLambda2 INSTANCE = new TopicCreateFragment$1$$ExternalSyntheticLambda2();

    private /* synthetic */ TopicCreateFragment$1$$ExternalSyntheticLambda2() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        TopicCreateFragment.C66161.lambda$onItemClick$3(tLObject, tLRPC$TL_error);
    }
}
