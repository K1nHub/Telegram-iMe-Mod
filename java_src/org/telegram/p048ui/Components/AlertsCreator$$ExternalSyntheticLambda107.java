package org.telegram.p048ui.Components;

import android.view.KeyEvent;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
/* renamed from: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda107 */
/* loaded from: classes6.dex */
public final /* synthetic */ class AlertsCreator$$ExternalSyntheticLambda107 implements TextView.OnEditorActionListener {
    public static final /* synthetic */ AlertsCreator$$ExternalSyntheticLambda107 INSTANCE = new AlertsCreator$$ExternalSyntheticLambda107();

    private /* synthetic */ AlertsCreator$$ExternalSyntheticLambda107() {
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        boolean hideKeyboard;
        hideKeyboard = AndroidUtilities.hideKeyboard(textView);
        return hideKeyboard;
    }
}
