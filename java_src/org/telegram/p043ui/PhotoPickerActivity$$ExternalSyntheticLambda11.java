package org.telegram.p043ui;

import java.util.ArrayList;
import org.telegram.p043ui.Components.AlertsCreator;
/* renamed from: org.telegram.ui.PhotoPickerActivity$$ExternalSyntheticLambda11 */
/* loaded from: classes3.dex */
public final /* synthetic */ class PhotoPickerActivity$$ExternalSyntheticLambda11 implements AlertsCreator.ScheduleDatePickerDelegate {
    public final /* synthetic */ PhotoPickerActivity f$0;

    public /* synthetic */ PhotoPickerActivity$$ExternalSyntheticLambda11(PhotoPickerActivity photoPickerActivity) {
        this.f$0 = photoPickerActivity;
    }

    @Override // org.telegram.p043ui.Components.AlertsCreator.ScheduleDatePickerDelegate
    public final void didSelectDate(boolean z, int i, String str) {
        PhotoPickerActivity.m3847$r8$lambda$WTN55SH6KzEvu06KvDjoxMcCqc(this.f$0, z, i, str);
    }

    @Override // org.telegram.p043ui.Components.AlertsCreator.ScheduleDatePickerDelegate
    public /* synthetic */ ArrayList getSelectedDialogs() {
        return AlertsCreator.ScheduleDatePickerDelegate.CC.$default$getSelectedDialogs(this);
    }
}
