package org.telegram.p043ui.Components;

import java.util.ArrayList;
import org.telegram.p043ui.Components.AlertsCreator;
/* renamed from: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda69 */
/* loaded from: classes6.dex */
public final /* synthetic */ class ChatActivityEnterView$$ExternalSyntheticLambda69 implements AlertsCreator.ScheduleDatePickerDelegate {
    public final /* synthetic */ ChatActivityEnterView f$0;

    public /* synthetic */ ChatActivityEnterView$$ExternalSyntheticLambda69(ChatActivityEnterView chatActivityEnterView) {
        this.f$0 = chatActivityEnterView;
    }

    @Override // org.telegram.p043ui.Components.AlertsCreator.ScheduleDatePickerDelegate
    public final void didSelectDate(boolean z, int i, String str) {
        this.f$0.sendMessageInternal(z, i, str);
    }

    @Override // org.telegram.p043ui.Components.AlertsCreator.ScheduleDatePickerDelegate
    public /* synthetic */ ArrayList getSelectedDialogs() {
        return AlertsCreator.ScheduleDatePickerDelegate.CC.$default$getSelectedDialogs(this);
    }
}
