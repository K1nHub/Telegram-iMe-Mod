package com.smedialink.storage.data.manager.update;

import com.google.android.play.core.appupdate.AppUpdateManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UpdateManager.kt */
/* loaded from: classes3.dex */
public final class UpdateManager$popupSnackbarForCompleteUpdate$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ UpdateManager this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateManager$popupSnackbarForCompleteUpdate$1(UpdateManager updateManager) {
        super(0);
        this.this$0 = updateManager;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        AppUpdateManager appUpdateManager;
        appUpdateManager = this.this$0.appUpdateManager;
        appUpdateManager.completeUpdate();
    }
}
