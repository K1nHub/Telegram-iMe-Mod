package org.fork.p046ui.dialog;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.fork.models.DrawerHeaderSettings;
import org.telegram.messenger.SharedConfig;
/* compiled from: DrawerHeaderSettingsBottomSheet.kt */
/* renamed from: org.fork.ui.dialog.DrawerHeaderSettingsBottomSheet$currentSettings$2 */
/* loaded from: classes4.dex */
final class DrawerHeaderSettingsBottomSheet$currentSettings$2 extends Lambda implements Function0<DrawerHeaderSettings> {
    public static final DrawerHeaderSettingsBottomSheet$currentSettings$2 INSTANCE = new DrawerHeaderSettingsBottomSheet$currentSettings$2();

    DrawerHeaderSettingsBottomSheet$currentSettings$2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final DrawerHeaderSettings invoke() {
        return SharedConfig.getDrawerHeaderSettings();
    }
}
