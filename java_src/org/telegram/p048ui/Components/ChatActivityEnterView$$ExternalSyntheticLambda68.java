package org.telegram.p048ui.Components;

import java.util.ArrayList;
import org.telegram.p048ui.Components.AlertsCreator;
/* renamed from: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda68 */
/* loaded from: classes6.dex */
public final /* synthetic */ class ChatActivityEnterView$$ExternalSyntheticLambda68 implements AlertsCreator.ScheduleDatePickerDelegate {
    public final /* synthetic */ ChatActivityEnterView f$0;

    public /* synthetic */ ChatActivityEnterView$$ExternalSyntheticLambda68(ChatActivityEnterView chatActivityEnterView) {
        this.f$0 = chatActivityEnterView;
    }

    @Override // org.telegram.p048ui.Components.AlertsCreator.ScheduleDatePickerDelegate
    public final void didSelectDate(boolean z, int i, String str) {
        this.f$0.sendMessageInternal(z, i, str);
    }

    @Override // org.telegram.p048ui.Components.AlertsCreator.ScheduleDatePickerDelegate
    public /* synthetic */ ArrayList getSelectedDialogs() {
        return AlertsCreator.ScheduleDatePickerDelegate.CC.$default$getSelectedDialogs(this);
    }
}
