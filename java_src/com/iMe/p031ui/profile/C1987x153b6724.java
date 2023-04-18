package com.iMe.p031ui.profile;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.twitter.TwitterProfileInfo;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.profile.ProfilePresenter$loadTwitterProfile$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1987x153b6724 extends Lambda implements Function1<Result<? extends TwitterProfileInfo>, Unit> {
    final /* synthetic */ ProfilePresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1987x153b6724(ProfilePresenter profilePresenter) {
        super(1);
        this.this$0 = profilePresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends TwitterProfileInfo> result) {
        m1318invoke(result);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0056, code lost:
        if (r1 == false) goto L15;
     */
    /* renamed from: invoke  reason: collision with other method in class */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1318invoke(com.iMe.storage.domain.model.Result<? extends com.iMe.storage.domain.model.twitter.TwitterProfileInfo> r6) {
        /*
            r5 = this;
            java.lang.String r0 = "it"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r0)
            com.iMe.storage.domain.model.Result r6 = (com.iMe.storage.domain.model.Result) r6
            boolean r0 = r6 instanceof com.iMe.storage.domain.model.Result.Success
            if (r0 == 0) goto L77
            com.iMe.ui.profile.ProfilePresenter r0 = r5.this$0
            com.iMe.storage.domain.model.Result$Success r6 = (com.iMe.storage.domain.model.Result.Success) r6
            java.lang.Object r1 = r6.getData()
            com.iMe.storage.domain.model.twitter.TwitterProfileInfo r1 = (com.iMe.storage.domain.model.twitter.TwitterProfileInfo) r1
            com.iMe.p031ui.profile.ProfilePresenter.access$setTwitterProfileInfo$p(r0, r1)
            com.iMe.ui.profile.ProfilePresenter r0 = r5.this$0
            java.lang.Object r6 = r6.getData()
            com.iMe.storage.domain.model.twitter.TwitterProfileInfo r6 = (com.iMe.storage.domain.model.twitter.TwitterProfileInfo) r6
            long r1 = r6.getTwitterUserId()
            java.lang.Long r1 = java.lang.Long.valueOf(r1)
            boolean r1 = com.iMe.storage.data.utils.extentions.NumberExtKt.isZero(r1)
            if (r1 == 0) goto L44
            com.iMe.ui.profile.ProfilePresenter r6 = r5.this$0
            com.iMe.storage.domain.storage.TwitterPreferenceHelper r6 = com.iMe.p031ui.profile.ProfilePresenter.access$getTwitterPreferenceHelper$p(r6)
            com.iMe.storage.domain.model.twitter.PreferenceTwitterTelegramIdMappedData r6 = r6.getAccountsData()
            com.iMe.ui.profile.ProfilePresenter r1 = r5.this$0
            long r1 = com.iMe.p031ui.profile.ProfilePresenter.access$getProfileId$p(r1)
            r6.remove(r1)
            com.iMe.model.twitter.TwitterAccountStatus$None r6 = com.iMe.model.twitter.TwitterAccountStatus.None.INSTANCE
            goto L73
        L44:
            long r1 = r6.getTwitterUserId()
            long r3 = r6.getTwitterUserIdInDatabase()
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 == 0) goto L58
            com.iMe.ui.profile.ProfilePresenter r1 = r5.this$0
            boolean r1 = com.iMe.p031ui.profile.ProfilePresenter.access$isCurrentUser$p(r1)
            if (r1 != 0) goto L5e
        L58:
            boolean r1 = r6.isUnlinked()
            if (r1 == 0) goto L69
        L5e:
            com.iMe.model.twitter.TwitterAccountStatus$Error r1 = new com.iMe.model.twitter.TwitterAccountStatus$Error
            java.lang.String r6 = r6.getTwitterUserName()
            r1.<init>(r6)
        L67:
            r6 = r1
            goto L73
        L69:
            com.iMe.model.twitter.TwitterAccountStatus$Active r1 = new com.iMe.model.twitter.TwitterAccountStatus$Active
            java.lang.String r6 = r6.getTwitterUserName()
            r1.<init>(r6)
            goto L67
        L73:
            com.iMe.p031ui.profile.ProfilePresenter.access$updateTwitterStatusAndRender(r0, r6)
            goto La3
        L77:
            boolean r0 = r6 instanceof com.iMe.storage.domain.model.Result.Error
            if (r0 == 0) goto La3
            com.iMe.storage.domain.model.Result$Error r6 = (com.iMe.storage.domain.model.Result.Error) r6
            com.iMe.storage.data.network.model.error.ErrorModel r6 = r6.getError()
            com.iMe.storage.data.network.model.error.IErrorStatus r6 = r6.getStatus()
            com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler$TwitterErrorStatus r0 = com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler.TwitterErrorStatus.WRONG_TWITTER_REFRESH_TOKEN_ERROR
            if (r6 != r0) goto La3
            com.iMe.ui.profile.ProfilePresenter r6 = r5.this$0
            com.iMe.model.twitter.TwitterAccountStatus$Error r0 = new com.iMe.model.twitter.TwitterAccountStatus$Error
            com.iMe.storage.domain.model.twitter.TwitterAccountData r1 = com.iMe.p031ui.profile.ProfilePresenter.access$getSavedAccountData(r6)
            if (r1 == 0) goto L98
            java.lang.String r1 = r1.getTwitterUsername()
            goto L99
        L98:
            r1 = 0
        L99:
            if (r1 != 0) goto L9d
            java.lang.String r1 = ""
        L9d:
            r0.<init>(r1)
            com.iMe.p031ui.profile.ProfilePresenter.access$updateTwitterStatusAndRender(r6, r0)
        La3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.p031ui.profile.C1987x153b6724.m1318invoke(java.lang.Object):void");
    }
}
