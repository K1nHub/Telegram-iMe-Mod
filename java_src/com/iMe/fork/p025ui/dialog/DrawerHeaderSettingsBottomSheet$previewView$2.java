package com.iMe.fork.p025ui.dialog;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.Cells.DrawerProfileCell;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DrawerHeaderSettingsBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.DrawerHeaderSettingsBottomSheet$previewView$2 */
/* loaded from: classes3.dex */
public final class DrawerHeaderSettingsBottomSheet$previewView$2 extends Lambda implements Function0<DrawerProfileCell> {
    final /* synthetic */ DrawerHeaderSettingsBottomSheet this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DrawerHeaderSettingsBottomSheet$previewView$2(DrawerHeaderSettingsBottomSheet drawerHeaderSettingsBottomSheet) {
        super(0);
        this.this$0 = drawerHeaderSettingsBottomSheet;
    }

    @Override // kotlin.jvm.functions.Function0
    public final DrawerProfileCell invoke() {
        DrawerProfileCell initPreviewView;
        initPreviewView = this.this$0.initPreviewView();
        return initPreviewView;
    }
}
