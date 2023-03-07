package org.telegram.p048ui.Components;

import java.util.ArrayList;
import org.telegram.p048ui.Components.AlertsCreator;
/* renamed from: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda70 */
/* loaded from: classes6.dex */
public final /* synthetic */ class ChatActivityEnterView$$ExternalSyntheticLambda70 implements AlertsCreator.ScheduleDatePickerDelegate {
    public static final /* synthetic */ ChatActivityEnterView$$ExternalSyntheticLambda70 INSTANCE = new ChatActivityEnterView$$ExternalSyntheticLambda70();

    private /* synthetic */ ChatActivityEnterView$$ExternalSyntheticLambda70() {
    }

    @Override // org.telegram.p048ui.Components.AlertsCreator.ScheduleDatePickerDelegate
    public final void didSelectDate(boolean z, int i, String str) {
        ChatActivityEnterView.lambda$new$11(z, i, str);
    }

    @Override // org.telegram.p048ui.Components.AlertsCreator.ScheduleDatePickerDelegate
    public /* synthetic */ ArrayList getSelectedDialogs() {
        return AlertsCreator.ScheduleDatePickerDelegate.CC.$default$getSelectedDialogs(this);
    }
}
