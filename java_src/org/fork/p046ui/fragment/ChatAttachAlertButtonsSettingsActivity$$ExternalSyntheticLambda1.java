package org.fork.p046ui.fragment;

import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.fork.ui.fragment.ChatAttachAlertButtonsSettingsActivity$$ExternalSyntheticLambda1 */
/* loaded from: classes4.dex */
public final /* synthetic */ class ChatAttachAlertButtonsSettingsActivity$$ExternalSyntheticLambda1 implements RequestDelegate {
    public static final /* synthetic */ ChatAttachAlertButtonsSettingsActivity$$ExternalSyntheticLambda1 INSTANCE = new ChatAttachAlertButtonsSettingsActivity$$ExternalSyntheticLambda1();

    private /* synthetic */ ChatAttachAlertButtonsSettingsActivity$$ExternalSyntheticLambda1() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        ChatAttachAlertButtonsSettingsActivity.m2032saveSuggestContacts$lambda2(tLObject, tLRPC$TL_error);
    }
}
