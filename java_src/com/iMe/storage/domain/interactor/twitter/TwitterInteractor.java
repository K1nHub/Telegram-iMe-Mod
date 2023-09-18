package com.iMe.storage.domain.interactor.twitter;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.twitter.TweetInfo;
import com.iMe.storage.domain.model.twitter.TwitterProfileInfo;
import com.iMe.storage.domain.model.twitter.TwitterUserInfo;
import com.iMe.storage.domain.repository.socialMedia.TwitterRepository;
import com.iMe.storage.domain.storage.TwitterPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TwitterInteractor.kt */
/* loaded from: classes4.dex */
public final class TwitterInteractor {
    private final SchedulersProvider schedulersProvider;
    private final TwitterPreferenceHelper twitterPreferenceHelper;
    private final TwitterRepository twitterRepository;

    public TwitterInteractor(SchedulersProvider schedulersProvider, TwitterRepository twitterRepository, TwitterPreferenceHelper twitterPreferenceHelper) {
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(twitterRepository, "twitterRepository");
        Intrinsics.checkNotNullParameter(twitterPreferenceHelper, "twitterPreferenceHelper");
        this.schedulersProvider = schedulersProvider;
        this.twitterRepository = twitterRepository;
        this.twitterPreferenceHelper = twitterPreferenceHelper;
    }

    public final Observable<Result<List<TweetInfo>>> getUserTweets(long j, long j2, Long l) {
        Observable<Result<List<TweetInfo>>> subscribeOn = this.twitterRepository.getUserTweets(j, j2, l).startWith((Observable<Result<List<TweetInfo>>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo717io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "twitterRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<List<TwitterUserInfo>>> searchUsersByUsername(String usernameQuery, int i) {
        Intrinsics.checkNotNullParameter(usernameQuery, "usernameQuery");
        Observable<Result<List<TwitterUserInfo>>> subscribeOn = this.twitterRepository.searchUsersByUsername(usernameQuery, i).subscribeOn(this.schedulersProvider.mo717io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "twitterRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<TwitterProfileInfo>> getUserByUsername(String username) {
        Intrinsics.checkNotNullParameter(username, "username");
        Observable<Result<TwitterProfileInfo>> subscribeOn = this.twitterRepository.getUserByUsername(username).startWith((Observable<Result<TwitterProfileInfo>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo717io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "twitterRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Boolean>> sendInvite(long j, long j2) {
        Observable<Result<Boolean>> subscribeOn = this.twitterRepository.sendInvite(j, j2).startWith((Observable<Result<Boolean>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo717io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "twitterRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }
}
