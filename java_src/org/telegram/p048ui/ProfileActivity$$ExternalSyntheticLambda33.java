package org.telegram.p048ui;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.p032ui.profile.ProfilePresenter;
/* renamed from: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda33 */
/* loaded from: classes5.dex */
public final /* synthetic */ class ProfileActivity$$ExternalSyntheticLambda33 implements Callbacks$Callback {
    public final /* synthetic */ ProfilePresenter f$0;

    public /* synthetic */ ProfileActivity$$ExternalSyntheticLambda33(ProfilePresenter profilePresenter) {
        this.f$0 = profilePresenter;
    }

    @Override // com.iMe.fork.utils.Callbacks$Callback
    public final void invoke() {
        this.f$0.logoutTwitter();
    }
}
