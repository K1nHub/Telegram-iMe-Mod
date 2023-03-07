package org.fork.p046ui.dialog;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.fork.models.DrawerHeaderSettings;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DrawerHeaderSettingsBottomSheet.kt */
/* renamed from: org.fork.ui.dialog.DrawerHeaderSettingsBottomSheet$newSettings$2 */
/* loaded from: classes4.dex */
public final class DrawerHeaderSettingsBottomSheet$newSettings$2 extends Lambda implements Function0<DrawerHeaderSettings> {
    final /* synthetic */ DrawerHeaderSettingsBottomSheet this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DrawerHeaderSettingsBottomSheet$newSettings$2(DrawerHeaderSettingsBottomSheet drawerHeaderSettingsBottomSheet) {
        super(0);
        this.this$0 = drawerHeaderSettingsBottomSheet;
    }

    @Override // kotlin.jvm.functions.Function0
    public final DrawerHeaderSettings invoke() {
        DrawerHeaderSettings currentSettings;
        currentSettings = this.this$0.getCurrentSettings();
        Intrinsics.checkNotNullExpressionValue(currentSettings, "currentSettings");
        return DrawerHeaderSettings.copy$default(currentSettings, null, null, false, false, false, false, 63, null);
    }
}
