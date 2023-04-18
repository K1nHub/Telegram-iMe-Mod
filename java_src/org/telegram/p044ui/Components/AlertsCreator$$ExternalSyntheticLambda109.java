package org.telegram.p044ui.Components;

import android.view.KeyEvent;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
/* renamed from: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda109 */
/* loaded from: classes6.dex */
public final /* synthetic */ class AlertsCreator$$ExternalSyntheticLambda109 implements TextView.OnEditorActionListener {
    public static final /* synthetic */ AlertsCreator$$ExternalSyntheticLambda109 INSTANCE = new AlertsCreator$$ExternalSyntheticLambda109();

    private /* synthetic */ AlertsCreator$$ExternalSyntheticLambda109() {
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        boolean hideKeyboard;
        hideKeyboard = AndroidUtilities.hideKeyboard(textView);
        return hideKeyboard;
    }
}
