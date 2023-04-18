package org.telegram.p044ui.Components;

import java.util.ArrayList;
import org.telegram.p044ui.Components.AlertsCreator;
import org.telegram.p044ui.Components.ChatActivityEnterView;
/* renamed from: org.telegram.ui.Components.ChatActivityEnterView$16$$ExternalSyntheticLambda5 */
/* loaded from: classes6.dex */
public final /* synthetic */ class ChatActivityEnterView$16$$ExternalSyntheticLambda5 implements AlertsCreator.ScheduleDatePickerDelegate {
    public static final /* synthetic */ ChatActivityEnterView$16$$ExternalSyntheticLambda5 INSTANCE = new ChatActivityEnterView$16$$ExternalSyntheticLambda5();

    private /* synthetic */ ChatActivityEnterView$16$$ExternalSyntheticLambda5() {
    }

    @Override // org.telegram.p044ui.Components.AlertsCreator.ScheduleDatePickerDelegate
    public final void didSelectDate(boolean z, int i, String str) {
        ChatActivityEnterView.C412616.lambda$onTouchEvent$0(z, i, str);
    }

    @Override // org.telegram.p044ui.Components.AlertsCreator.ScheduleDatePickerDelegate
    public /* synthetic */ ArrayList getSelectedDialogs() {
        return AlertsCreator.ScheduleDatePickerDelegate.CC.$default$getSelectedDialogs(this);
    }
}
