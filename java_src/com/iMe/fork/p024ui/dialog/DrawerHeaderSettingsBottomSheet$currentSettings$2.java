package com.iMe.fork.p024ui.dialog;

import com.iMe.fork.models.DrawerHeaderSettings;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.SharedConfig;
/* compiled from: DrawerHeaderSettingsBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.DrawerHeaderSettingsBottomSheet$currentSettings$2 */
/* loaded from: classes3.dex */
final class DrawerHeaderSettingsBottomSheet$currentSettings$2 extends Lambda implements Function0<DrawerHeaderSettings> {
    public static final DrawerHeaderSettingsBottomSheet$currentSettings$2 INSTANCE = new DrawerHeaderSettingsBottomSheet$currentSettings$2();

    DrawerHeaderSettingsBottomSheet$currentSettings$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final DrawerHeaderSettings invoke() {
        return SharedConfig.getDrawerHeaderSettings();
    }
}
