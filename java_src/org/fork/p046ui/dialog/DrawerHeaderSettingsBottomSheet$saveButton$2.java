package org.fork.p046ui.dialog;

import android.widget.TextView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DrawerHeaderSettingsBottomSheet.kt */
/* renamed from: org.fork.ui.dialog.DrawerHeaderSettingsBottomSheet$saveButton$2 */
/* loaded from: classes4.dex */
public final class DrawerHeaderSettingsBottomSheet$saveButton$2 extends Lambda implements Function0<TextView> {
    final /* synthetic */ DrawerHeaderSettingsBottomSheet this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DrawerHeaderSettingsBottomSheet$saveButton$2(DrawerHeaderSettingsBottomSheet drawerHeaderSettingsBottomSheet) {
        super(0);
        this.this$0 = drawerHeaderSettingsBottomSheet;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TextView invoke() {
        TextView initSaveButton;
        initSaveButton = this.this$0.initSaveButton();
        return initSaveButton;
    }
}
