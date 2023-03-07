package org.fork.p046ui.dialog;

import android.widget.LinearLayout;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DrawerHeaderSettingsBottomSheet.kt */
/* renamed from: org.fork.ui.dialog.DrawerHeaderSettingsBottomSheet$dynamicOrientationContainer$2 */
/* loaded from: classes4.dex */
public final class DrawerHeaderSettingsBottomSheet$dynamicOrientationContainer$2 extends Lambda implements Function0<LinearLayout> {
    final /* synthetic */ DrawerHeaderSettingsBottomSheet this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DrawerHeaderSettingsBottomSheet$dynamicOrientationContainer$2(DrawerHeaderSettingsBottomSheet drawerHeaderSettingsBottomSheet) {
        super(0);
        this.this$0 = drawerHeaderSettingsBottomSheet;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final LinearLayout invoke() {
        LinearLayout initDynamicOrientationContainer;
        initDynamicOrientationContainer = this.this$0.initDynamicOrientationContainer();
        return initDynamicOrientationContainer;
    }
}
