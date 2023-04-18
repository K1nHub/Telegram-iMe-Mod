package org.telegram.p044ui.Components;

import android.content.DialogInterface;
import org.telegram.messenger.SharedConfig;
/* renamed from: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda60 */
/* loaded from: classes6.dex */
public final /* synthetic */ class AlertsCreator$$ExternalSyntheticLambda60 implements DialogInterface.OnDismissListener {
    public static final /* synthetic */ AlertsCreator$$ExternalSyntheticLambda60 INSTANCE = new AlertsCreator$$ExternalSyntheticLambda60();

    private /* synthetic */ AlertsCreator$$ExternalSyntheticLambda60() {
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        SharedConfig.BackgroundActivityPrefs.increaseDismissedCount();
    }
}
