package org.fork.p046ui.dialog;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.fork.p046ui.dialog.DrawerHeaderSettingsBottomSheet;
/* compiled from: DrawerHeaderSettingsBottomSheet.kt */
/* renamed from: org.fork.ui.dialog.DrawerHeaderSettingsBottomSheet$listAdapter$2 */
/* loaded from: classes4.dex */
final class DrawerHeaderSettingsBottomSheet$listAdapter$2 extends Lambda implements Function0<DrawerHeaderSettingsBottomSheet.ListAdapter> {
    final /* synthetic */ DrawerHeaderSettingsBottomSheet this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DrawerHeaderSettingsBottomSheet$listAdapter$2(DrawerHeaderSettingsBottomSheet drawerHeaderSettingsBottomSheet) {
        super(0);
        this.this$0 = drawerHeaderSettingsBottomSheet;
    }

    @Override // kotlin.jvm.functions.Function0
    public final DrawerHeaderSettingsBottomSheet.ListAdapter invoke() {
        return new DrawerHeaderSettingsBottomSheet.ListAdapter(this.this$0);
    }
}
