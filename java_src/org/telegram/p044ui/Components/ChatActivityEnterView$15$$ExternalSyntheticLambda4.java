package org.telegram.p044ui.Components;

import java.util.ArrayList;
import org.telegram.p044ui.Components.AlertsCreator;
import org.telegram.p044ui.Components.ChatActivityEnterView;
/* renamed from: org.telegram.ui.Components.ChatActivityEnterView$15$$ExternalSyntheticLambda4 */
/* loaded from: classes6.dex */
public final /* synthetic */ class ChatActivityEnterView$15$$ExternalSyntheticLambda4 implements AlertsCreator.ScheduleDatePickerDelegate {
    public static final /* synthetic */ ChatActivityEnterView$15$$ExternalSyntheticLambda4 INSTANCE = new ChatActivityEnterView$15$$ExternalSyntheticLambda4();

    private /* synthetic */ ChatActivityEnterView$15$$ExternalSyntheticLambda4() {
    }

    @Override // org.telegram.p044ui.Components.AlertsCreator.ScheduleDatePickerDelegate
    public final void didSelectDate(boolean z, int i, String str) {
        ChatActivityEnterView.C418215.lambda$onTouchEvent$0(z, i, str);
    }

    @Override // org.telegram.p044ui.Components.AlertsCreator.ScheduleDatePickerDelegate
    public /* synthetic */ ArrayList getSelectedDialogs() {
        return AlertsCreator.ScheduleDatePickerDelegate.CC.$default$getSelectedDialogs(this);
    }
}