package org.telegram.p048ui;

import com.smedialink.p031ui.profile.ProfilePresenter;
import org.fork.utils.Callbacks$Callback;
/* renamed from: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda52 */
/* loaded from: classes5.dex */
public final /* synthetic */ class ProfileActivity$$ExternalSyntheticLambda52 implements Callbacks$Callback {
    public final /* synthetic */ ProfilePresenter f$0;

    public /* synthetic */ ProfileActivity$$ExternalSyntheticLambda52(ProfilePresenter profilePresenter) {
        this.f$0 = profilePresenter;
    }

    @Override // org.fork.utils.Callbacks$Callback
    public final void invoke() {
        this.f$0.prepareTwitterAuthFlow();
    }
}
