package org.telegram.p043ui;

import org.telegram.messenger.Utilities;
/* renamed from: org.telegram.ui.LaunchActivity$$ExternalSyntheticLambda112 */
/* loaded from: classes5.dex */
public final /* synthetic */ class LaunchActivity$$ExternalSyntheticLambda112 implements Utilities.Callback {
    public final /* synthetic */ LaunchActivity f$0;

    public /* synthetic */ LaunchActivity$$ExternalSyntheticLambda112(LaunchActivity launchActivity) {
        this.f$0 = launchActivity;
    }

    @Override // org.telegram.messenger.Utilities.Callback
    public final void run(Object obj) {
        this.f$0.onPowerSaver(((Boolean) obj).booleanValue());
    }
}
