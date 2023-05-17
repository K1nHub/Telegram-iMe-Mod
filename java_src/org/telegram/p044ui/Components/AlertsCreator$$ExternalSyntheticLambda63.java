package org.telegram.p044ui.Components;

import android.content.DialogInterface;
import org.telegram.messenger.SharedConfig;
/* renamed from: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda63 */
/* loaded from: classes6.dex */
public final /* synthetic */ class AlertsCreator$$ExternalSyntheticLambda63 implements DialogInterface.OnDismissListener {
    public static final /* synthetic */ AlertsCreator$$ExternalSyntheticLambda63 INSTANCE = new AlertsCreator$$ExternalSyntheticLambda63();

    private /* synthetic */ AlertsCreator$$ExternalSyntheticLambda63() {
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        SharedConfig.BackgroundActivityPrefs.increaseDismissedCount();
    }
}
