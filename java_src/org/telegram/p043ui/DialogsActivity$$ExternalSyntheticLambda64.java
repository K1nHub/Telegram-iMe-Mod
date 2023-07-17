package org.telegram.p043ui;

import com.iMe.bots.usecase.AiBotsManager;
/* renamed from: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda64 */
/* loaded from: classes5.dex */
public final /* synthetic */ class DialogsActivity$$ExternalSyntheticLambda64 implements AiBotsManager.FirebaseSnapshotCallback {
    public static final /* synthetic */ DialogsActivity$$ExternalSyntheticLambda64 INSTANCE = new DialogsActivity$$ExternalSyntheticLambda64();

    private /* synthetic */ DialogsActivity$$ExternalSyntheticLambda64() {
    }

    @Override // com.iMe.bots.usecase.AiBotsManager.FirebaseSnapshotCallback
    public final void onSuccess() {
        DialogsActivity.lambda$checkAndRunNeurobots$8();
    }
}
