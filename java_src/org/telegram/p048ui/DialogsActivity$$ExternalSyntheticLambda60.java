package org.telegram.p048ui;

import com.smedialink.bots.usecase.AiBotsManager;
/* renamed from: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda60 */
/* loaded from: classes5.dex */
public final /* synthetic */ class DialogsActivity$$ExternalSyntheticLambda60 implements AiBotsManager.FirebaseSnapshotCallback {
    public static final /* synthetic */ DialogsActivity$$ExternalSyntheticLambda60 INSTANCE = new DialogsActivity$$ExternalSyntheticLambda60();

    private /* synthetic */ DialogsActivity$$ExternalSyntheticLambda60() {
    }

    @Override // com.smedialink.bots.usecase.AiBotsManager.FirebaseSnapshotCallback
    public final void onSuccess() {
        DialogsActivity.lambda$checkAndRunNeurobots$14();
    }
}
