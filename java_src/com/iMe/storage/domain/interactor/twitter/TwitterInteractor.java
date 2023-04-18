package com.iMe.storage.domain.interactor.twitter;

import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.error.IErrorStatus;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.twitter.TweetInfo;
import com.iMe.storage.domain.model.twitter.TwitterProfileInfo;
import com.iMe.storage.domain.model.twitter.TwitterUserInfo;
import com.iMe.storage.domain.repository.twitter.TwitterRepository;
import com.iMe.storage.domain.storage.TwitterPreferenceHelper;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TwitterInteractor.kt */
/* loaded from: classes3.dex */
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

    public final Observable<Result<Boolean>> acceptConnection(long j, long j2) {
        Observable<Result<Boolean>> startWith = this.twitterRepository.acceptConnection(j, j2).startWith((Observable<Result<Boolean>>) Result.Companion.loading$default(Result.Companion, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(startWith, "twitterRepository\n      …artWith(Result.loading())");
        Observable<Result<Boolean>> subscribeOn = handleTokenError(startWith, this.twitterRepository.acceptConnection(j, j2), j2).subscribeOn(this.schedulersProvider.mo694io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "twitterRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Boolean>> declineConnection(long j, long j2) {
        Observable<Result<Boolean>> startWith = this.twitterRepository.declineConnection(j, j2).startWith((Observable<Result<Boolean>>) Result.Companion.loading$default(Result.Companion, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(startWith, "twitterRepository\n      …artWith(Result.loading())");
        Observable<Result<Boolean>> subscribeOn = handleTokenError(startWith, this.twitterRepository.declineConnection(j, j2), j2).subscribeOn(this.schedulersProvider.mo694io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "twitterRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Boolean>> logout(long j) {
        Observable<Result<Boolean>> startWith = this.twitterRepository.logout(j).startWith((Observable<Result<Boolean>>) Result.Companion.loading$default(Result.Companion, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(startWith, "twitterRepository\n      …artWith(Result.loading())");
        Observable<Result<Boolean>> subscribeOn = handleTokenError(startWith, this.twitterRepository.logout(j), j).subscribeOn(this.schedulersProvider.mo694io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "twitterRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<TwitterProfileInfo>> getSelfTwitterProfile(long j) {
        Observable<Result<TwitterProfileInfo>> startWith = this.twitterRepository.getSelfTwitterProfile(j).startWith((Observable<Result<TwitterProfileInfo>>) Result.Companion.loading$default(Result.Companion, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(startWith, "twitterRepository\n      …artWith(Result.loading())");
        Observable<Result<TwitterProfileInfo>> subscribeOn = handleTokenError(startWith, this.twitterRepository.getSelfTwitterProfile(j), j).subscribeOn(this.schedulersProvider.mo694io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "twitterRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<TwitterProfileInfo>> getSelfChatTwitterProfile(long j) {
        Observable<Result<TwitterProfileInfo>> startWith = this.twitterRepository.getSelfChatTwitterProfile(j).startWith((Observable<Result<TwitterProfileInfo>>) Result.Companion.loading$default(Result.Companion, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(startWith, "twitterRepository\n      …artWith(Result.loading())");
        Observable<Result<TwitterProfileInfo>> subscribeOn = handleTokenError(startWith, this.twitterRepository.getSelfChatTwitterProfile(j), j).subscribeOn(this.schedulersProvider.mo694io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "twitterRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<TwitterProfileInfo>> getUserTwitterProfile(long j) {
        Observable<Result<TwitterProfileInfo>> subscribeOn = this.twitterRepository.getUserTwitterProfile(j).startWith((Observable<Result<TwitterProfileInfo>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo694io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "twitterRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<List<TweetInfo>>> getUserTweets(long j, long j2, Long l) {
        Observable<Result<List<TweetInfo>>> subscribeOn = this.twitterRepository.getUserTweets(j, j2, l).startWith((Observable<Result<List<TweetInfo>>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo694io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "twitterRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<List<TwitterUserInfo>>> searchUsersByUsername(String usernameQuery, int i) {
        Intrinsics.checkNotNullParameter(usernameQuery, "usernameQuery");
        Observable<Result<List<TwitterUserInfo>>> subscribeOn = this.twitterRepository.searchUsersByUsername(usernameQuery, i).subscribeOn(this.schedulersProvider.mo694io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "twitterRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<TwitterProfileInfo>> getUserByUsername(String username) {
        Intrinsics.checkNotNullParameter(username, "username");
        Observable<Result<TwitterProfileInfo>> subscribeOn = this.twitterRepository.getUserByUsername(username).startWith((Observable<Result<TwitterProfileInfo>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo694io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "twitterRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Boolean>> sendInvite(long j, long j2) {
        Observable<Result<Boolean>> subscribeOn = this.twitterRepository.sendInvite(j, j2).startWith((Observable<Result<Boolean>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo694io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "twitterRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    private final <T> Observable<Result<T>> handleTokenError(Observable<Result<T>> observable, Observable<Result<T>> observable2, long j) {
        Observable<Result<T>> observable3 = (Observable<Result<T>>) observable.flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new TwitterInteractor$handleTokenError$$inlined$flatMapError$1(new IErrorStatus[]{FirebaseFunctionsErrorHandler.TwitterErrorStatus.WRONG_TWITTER_ACCESS_TOKEN_ERROR}, this, j, observable2)));
        Intrinsics.checkNotNullExpressionValue(observable3, "vararg errorStatus: IErr…e.empty()\n        }\n    }");
        return observable3;
    }
}
