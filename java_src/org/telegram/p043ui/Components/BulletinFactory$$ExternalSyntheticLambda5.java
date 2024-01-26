package org.telegram.p043ui.Components;

import org.telegram.messenger.SavedMessagesController;
/* renamed from: org.telegram.ui.Components.BulletinFactory$$ExternalSyntheticLambda5 */
/* loaded from: classes6.dex */
public final /* synthetic */ class BulletinFactory$$ExternalSyntheticLambda5 implements Runnable {
    public static final /* synthetic */ BulletinFactory$$ExternalSyntheticLambda5 INSTANCE = new BulletinFactory$$ExternalSyntheticLambda5();

    private /* synthetic */ BulletinFactory$$ExternalSyntheticLambda5() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        SavedMessagesController.openSavedMessages();
    }
}
