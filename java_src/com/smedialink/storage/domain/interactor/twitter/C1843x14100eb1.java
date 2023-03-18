package com.smedialink.storage.domain.interactor.twitter;

import com.smedialink.storage.data.utils.extentions.DateExtKt;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.twitter.PreferenceTwitterTelegramIdMappedData;
import com.smedialink.storage.domain.model.twitter.TwitterAccountData;
import com.smedialink.storage.domain.model.twitter.TwitterRefreshTokenData;
import com.smedialink.storage.domain.storage.TwitterPreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.smedialink.storage.domain.interactor.twitter.TwitterInteractor$handleTokenError$lambda$3$$inlined$flatMapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1843x14100eb1 extends Lambda implements Function1<Result<? extends TwitterRefreshTokenData>, ObservableSource<? extends Result<? extends T>>> {
    final /* synthetic */ Observable $onSuccessObservable$inlined;
    final /* synthetic */ long $profileId$inlined;
    final /* synthetic */ TwitterInteractor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1843x14100eb1(Observable observable, TwitterInteractor twitterInteractor, long j) {
        super(1);
        this.$onSuccessObservable$inlined = observable;
        this.this$0 = twitterInteractor;
        this.$profileId$inlined = j;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends T>> invoke(Result<? extends TwitterRefreshTokenData> result) {
        SchedulersProvider schedulersProvider;
        TwitterPreferenceHelper twitterPreferenceHelper;
        Intrinsics.checkNotNullParameter(result, "result");
        boolean z = result instanceof Result.Success;
        TwitterAccountData twitterAccountData = null;
        if (!z) {
            if (result instanceof Result.Error) {
                Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.smedialink.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                return Observable.just(error$default);
            }
            return Observable.empty();
        }
        if (z) {
            TwitterRefreshTokenData twitterRefreshTokenData = (TwitterRefreshTokenData) ((Result.Success) result).getData();
            twitterPreferenceHelper = this.this$0.twitterPreferenceHelper;
            PreferenceTwitterTelegramIdMappedData accountsData = twitterPreferenceHelper.getAccountsData();
            TwitterAccountData dataByTelegramId = accountsData.getDataByTelegramId(this.$profileId$inlined);
            if (dataByTelegramId != null) {
                twitterAccountData = dataByTelegramId.copy((r16 & 1) != 0 ? dataByTelegramId.twitterId : 0L, (r16 & 2) != 0 ? dataByTelegramId.twitterUsername : null, (r16 & 4) != 0 ? dataByTelegramId.accessToken : twitterRefreshTokenData.getAccessToken(), (r16 & 8) != 0 ? dataByTelegramId.refreshToken : twitterRefreshTokenData.getRefreshToken(), (r16 & 16) != 0 ? dataByTelegramId.tokenValidUntil : TimeUnit.SECONDS.toMillis(twitterRefreshTokenData.getExpiresIn()) + DateExtKt.now());
            }
            if (twitterAccountData != null) {
                accountsData.put(this.$profileId$inlined, twitterAccountData);
            }
        }
        Observable observable = this.$onSuccessObservable$inlined;
        schedulersProvider = this.this$0.schedulersProvider;
        Observable subscribeOn = observable.subscribeOn(schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "onSuccessObservable.subs…(schedulersProvider.io())");
        return subscribeOn;
    }
}
