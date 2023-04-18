package com.iMe.p031ui.profile;

import com.iMe.model.twitter.TwitterAccountStatus;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.twitter.PreferenceTwitterTelegramIdMappedData;
import com.iMe.storage.domain.storage.TwitterPreferenceHelper;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.profile.ProfilePresenter$declineConnection$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1983x99db2a72 extends Lambda implements Function1<Result<? extends Boolean>, Unit> {
    final /* synthetic */ ProfilePresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1983x99db2a72(ProfilePresenter profilePresenter) {
        super(1);
        this.this$0 = profilePresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
        m1316invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1316invoke(Result<? extends Boolean> it) {
        ResourceManager resourceManager;
        TwitterPreferenceHelper twitterPreferenceHelper;
        long j;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends Boolean> result = it;
        if (result instanceof Result.Success) {
            twitterPreferenceHelper = this.this$0.twitterPreferenceHelper;
            PreferenceTwitterTelegramIdMappedData accountsData = twitterPreferenceHelper.getAccountsData();
            j = this.this$0.profileId;
            accountsData.remove(j);
            this.this$0.twitterProfileInfo = null;
            this.this$0.updateTwitterStatusAndRender(TwitterAccountStatus.None.INSTANCE);
        } else if (result instanceof Result.Error) {
            resourceManager = this.this$0.resourceManager;
            ((ProfileView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        }
    }
}
