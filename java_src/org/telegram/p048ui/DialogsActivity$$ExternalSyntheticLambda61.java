package org.telegram.p048ui;

import com.iMe.bots.usecase.AiBotsManager;
/* renamed from: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda61 */
/* loaded from: classes5.dex */
public final /* synthetic */ class DialogsActivity$$ExternalSyntheticLambda61 implements AiBotsManager.FirebaseSnapshotCallback {
    public static final /* synthetic */ DialogsActivity$$ExternalSyntheticLambda61 INSTANCE = new DialogsActivity$$ExternalSyntheticLambda61();

    private /* synthetic */ DialogsActivity$$ExternalSyntheticLambda61() {
    }

    @Override // com.iMe.bots.usecase.AiBotsManager.FirebaseSnapshotCallback
    public final void onSuccess() {
        DialogsActivity.lambda$checkAndRunNeurobots$14();
    }
}
