package org.telegram.p048ui;

import com.smedialink.p031ui.profile.ProfilePresenter;
import org.fork.utils.Callbacks$Callback;
/* renamed from: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda50 */
/* loaded from: classes5.dex */
public final /* synthetic */ class ProfileActivity$$ExternalSyntheticLambda50 implements Callbacks$Callback {
    public final /* synthetic */ ProfilePresenter f$0;

    public /* synthetic */ ProfileActivity$$ExternalSyntheticLambda50(ProfilePresenter profilePresenter) {
        this.f$0 = profilePresenter;
    }

    @Override // org.fork.utils.Callbacks$Callback
    public final void invoke() {
        this.f$0.logoutTwitter();
    }
}
