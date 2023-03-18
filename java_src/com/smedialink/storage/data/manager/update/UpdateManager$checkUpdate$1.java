package com.smedialink.storage.data.manager.update;

import com.google.android.play.core.appupdate.AppUpdateInfo;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import timber.log.Timber;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UpdateManager.kt */
/* loaded from: classes3.dex */
public final class UpdateManager$checkUpdate$1 extends Lambda implements Function1<AppUpdateInfo, Unit> {
    final /* synthetic */ UpdateManager this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateManager$checkUpdate$1(UpdateManager updateManager) {
        super(1);
        this.this$0 = updateManager;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(AppUpdateInfo appUpdateInfo) {
        invoke2(appUpdateInfo);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(AppUpdateInfo appUpdateInfo) {
        int i;
        boolean isNeedUpdate;
        Intrinsics.checkNotNullParameter(appUpdateInfo, "appUpdateInfo");
        if (appUpdateInfo.updateAvailability() == 2) {
            i = this.this$0.mode;
            if (appUpdateInfo.isUpdateTypeAllowed(i)) {
                Timber.m7d("Update available", new Object[0]);
                isNeedUpdate = this.this$0.isNeedUpdate();
                if (isNeedUpdate) {
                    this.this$0.startUpdate(appUpdateInfo);
                    return;
                }
                return;
            }
        }
        Timber.m7d("No Update available", new Object[0]);
    }
}
