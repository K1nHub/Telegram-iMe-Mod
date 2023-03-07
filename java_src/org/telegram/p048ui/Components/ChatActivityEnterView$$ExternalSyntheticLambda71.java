package org.telegram.p048ui.Components;

import java.util.ArrayList;
import org.telegram.p048ui.Components.AlertsCreator;
/* renamed from: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda71 */
/* loaded from: classes6.dex */
public final /* synthetic */ class ChatActivityEnterView$$ExternalSyntheticLambda71 implements AlertsCreator.ScheduleDatePickerDelegate {
    public static final /* synthetic */ ChatActivityEnterView$$ExternalSyntheticLambda71 INSTANCE = new ChatActivityEnterView$$ExternalSyntheticLambda71();

    private /* synthetic */ ChatActivityEnterView$$ExternalSyntheticLambda71() {
    }

    @Override // org.telegram.p048ui.Components.AlertsCreator.ScheduleDatePickerDelegate
    public final void didSelectDate(boolean z, int i, String str) {
        ChatActivityEnterView.lambda$new$8(z, i, str);
    }

    @Override // org.telegram.p048ui.Components.AlertsCreator.ScheduleDatePickerDelegate
    public /* synthetic */ ArrayList getSelectedDialogs() {
        return AlertsCreator.ScheduleDatePickerDelegate.CC.$default$getSelectedDialogs(this);
    }
}
