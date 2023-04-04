package com.iMe.storage.data.repository.twitter;

import com.iMe.storage.data.network.api.own.TwitterApi;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.twitter.ChangeTwitterConnectionStatusRequest;
import com.iMe.storage.data.network.model.request.twitter.CommonTwitterAuthorizedRequest;
import com.iMe.storage.data.network.model.request.twitter.TwitterFeedRequest;
import com.iMe.storage.data.network.model.request.twitter.TwitterInviteRequest;
import com.iMe.storage.data.network.model.request.twitter.TwitterLogoutRequest;
import com.iMe.storage.data.network.model.request.twitter.TwitterProfileByTelegramIdRequest;
import com.iMe.storage.data.network.model.request.twitter.TwitterRefreshTokenRequest;
import com.iMe.storage.data.network.model.request.twitter.TwitterSearchByUsernameRequest;
import com.iMe.storage.data.network.model.request.twitter.TwitterSelfChatProfileRequest;
import com.iMe.storage.data.network.model.request.twitter.TwitterUserByUsernameRequest;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.twitter.TweetInfo;
import com.iMe.storage.domain.model.twitter.TwitterAccountData;
import com.iMe.storage.domain.model.twitter.TwitterProfileInfo;
import com.iMe.storage.domain.model.twitter.TwitterRefreshTokenData;
import com.iMe.storage.domain.model.twitter.TwitterUserInfo;
import com.iMe.storage.domain.repository.twitter.TwitterRepository;
import com.iMe.storage.domain.storage.TwitterPreferenceHelper;
import io.reactivex.Observable;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TwitterRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class TwitterRepositoryImpl implements TwitterRepository {
    private final ApiErrorHandler errorHandler;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final TwitterApi twitterApi;
    private final TwitterPreferenceHelper twitterPreferenceHelper;

    public TwitterRepositoryImpl(ApiErrorHandler errorHandler, FirebaseFunctionsErrorHandler firebaseErrorHandler, TwitterApi twitterApi, TwitterPreferenceHelper twitterPreferenceHelper) {
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(twitterApi, "twitterApi");
        Intrinsics.checkNotNullParameter(twitterPreferenceHelper, "twitterPreferenceHelper");
        this.errorHandler = errorHandler;
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.twitterApi = twitterApi;
        this.twitterPreferenceHelper = twitterPreferenceHelper;
    }

    @Override // com.iMe.storage.domain.repository.twitter.TwitterRepository
    public Observable<Result<TwitterRefreshTokenData>> getRefreshToken(long j) {
        TwitterAccountData twitterAccountDataById = getTwitterAccountDataById(j);
        String refreshToken = twitterAccountDataById != null ? twitterAccountDataById.getRefreshToken() : null;
        if (refreshToken == null) {
            refreshToken = "";
        }
        Observable<R> map = this.twitterApi.getRefreshToken(new TwitterRefreshTokenRequest(refreshToken)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new TwitterRepositoryImpl$getRefreshToken$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<TwitterRefreshTokenData>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new TwitterRepositoryImpl$getRefreshToken$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.twitter.TwitterRepository
    public Observable<Result<Boolean>> acceptConnection(long j, long j2) {
        Observable<R> map = this.twitterApi.acceptConnection(new ChangeTwitterConnectionStatusRequest(String.valueOf(j), String.valueOf(j2))).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new TwitterRepositoryImpl$acceptConnection$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new TwitterRepositoryImpl$acceptConnection$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.twitter.TwitterRepository
    public Observable<Result<Boolean>> declineConnection(long j, long j2) {
        Observable<R> map = this.twitterApi.declineConnection(new ChangeTwitterConnectionStatusRequest(String.valueOf(j), String.valueOf(j2))).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new TwitterRepositoryImpl$declineConnection$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new TwitterRepositoryImpl$declineConnection$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.twitter.TwitterRepository
    public Observable<Result<Boolean>> logout(long j) {
        TwitterAccountData twitterAccountDataById = getTwitterAccountDataById(j);
        TwitterApi twitterApi = this.twitterApi;
        String accessToken = twitterAccountDataById != null ? twitterAccountDataById.getAccessToken() : null;
        if (accessToken == null) {
            accessToken = "";
        }
        Observable<R> map = twitterApi.logout(new TwitterLogoutRequest(accessToken, String.valueOf(j), String.valueOf(NumberExtKt.orZero(twitterAccountDataById != null ? Long.valueOf(twitterAccountDataById.getTwitterId()) : null)))).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new TwitterRepositoryImpl$logout$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new TwitterRepositoryImpl$logout$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.twitter.TwitterRepository
    public Observable<Result<TwitterProfileInfo>> getSelfTwitterProfile(long j) {
        TwitterApi twitterApi = this.twitterApi;
        TwitterAccountData twitterAccountDataById = getTwitterAccountDataById(j);
        String accessToken = twitterAccountDataById != null ? twitterAccountDataById.getAccessToken() : null;
        if (accessToken == null) {
            accessToken = "";
        }
        Observable<R> map = twitterApi.getSelfTwitterProfile(new CommonTwitterAuthorizedRequest(accessToken)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1862x1630131e(this.firebaseErrorHandler, this, j)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<TwitterProfileInfo>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1861x92da0943(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.twitter.TwitterRepository
    public Observable<Result<TwitterProfileInfo>> getSelfChatTwitterProfile(long j) {
        TwitterApi twitterApi = this.twitterApi;
        TwitterAccountData twitterAccountDataById = getTwitterAccountDataById(j);
        String accessToken = twitterAccountDataById != null ? twitterAccountDataById.getAccessToken() : null;
        if (accessToken == null) {
            accessToken = "";
        }
        Observable<R> map = twitterApi.getSelfChatTwitterProfile(new TwitterSelfChatProfileRequest(accessToken, String.valueOf(j))).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1860x8ce31916(this.firebaseErrorHandler, this, j)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<TwitterProfileInfo>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1859xf287c24b(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.twitter.TwitterRepository
    public Observable<Result<TwitterProfileInfo>> getUserTwitterProfile(long j) {
        Observable<R> map = this.twitterApi.getUserTwitterProfile(new TwitterProfileByTelegramIdRequest(String.valueOf(j))).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1864x5151c1d(this.firebaseErrorHandler, this, j)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<TwitterProfileInfo>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1863x80962024(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.twitter.TwitterRepository
    public Observable<Result<List<TweetInfo>>> getUserTweets(long j, long j2, Long l) {
        TwitterApi twitterApi = this.twitterApi;
        String valueOf = String.valueOf(j2);
        String l2 = l != null ? l.toString() : null;
        TwitterAccountData twitterAccountDataById = getTwitterAccountDataById(j);
        String accessToken = twitterAccountDataById != null ? twitterAccountDataById.getAccessToken() : null;
        if (accessToken == null) {
            accessToken = "";
        }
        Observable<R> map = twitterApi.getUserTweets(new TwitterFeedRequest(valueOf, l2, accessToken)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new TwitterRepositoryImpl$getUserTweets$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<List<TweetInfo>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new TwitterRepositoryImpl$getUserTweets$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.twitter.TwitterRepository
    public Observable<Result<List<TwitterUserInfo>>> searchUsersByUsername(String usernameQuery, int i) {
        Intrinsics.checkNotNullParameter(usernameQuery, "usernameQuery");
        Observable<R> map = this.twitterApi.searchUsersByUsername(new TwitterSearchByUsernameRequest(usernameQuery, i)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1866x2fcdcf3(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<List<TwitterUserInfo>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1865x3fa67a0e(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.twitter.TwitterRepository
    public Observable<Result<TwitterProfileInfo>> getUserByUsername(String username) {
        Intrinsics.checkNotNullParameter(username, "username");
        Observable<R> map = this.twitterApi.getUserByUsername(new TwitterUserByUsernameRequest(username)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new TwitterRepositoryImpl$getUserByUsername$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<TwitterProfileInfo>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new TwitterRepositoryImpl$getUserByUsername$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.twitter.TwitterRepository
    public Observable<Result<Boolean>> sendInvite(long j, long j2) {
        TwitterAccountData twitterAccountDataById = getTwitterAccountDataById(j);
        TwitterApi twitterApi = this.twitterApi;
        String accessToken = twitterAccountDataById != null ? twitterAccountDataById.getAccessToken() : null;
        if (accessToken == null) {
            accessToken = "";
        }
        Observable<R> map = twitterApi.sendInvite(new TwitterInviteRequest(accessToken, String.valueOf(j2))).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new TwitterRepositoryImpl$sendInvite$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new TwitterRepositoryImpl$sendInvite$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    private final TwitterAccountData getTwitterAccountDataById(long j) {
        return this.twitterPreferenceHelper.getAccountsData().getDataByTelegramId(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000c, code lost:
        r14 = r1.copy((r16 & 1) != 0 ? r1.twitterId : 0, (r16 & 2) != 0 ? r1.twitterUsername : r14, (r16 & 4) != 0 ? r1.accessToken : null, (r16 & 8) != 0 ? r1.refreshToken : null, (r16 & 16) != 0 ? r1.tokenValidUntil : 0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateAccountUsername(long r12, java.lang.String r14) {
        /*
            r11 = this;
            com.iMe.storage.domain.storage.TwitterPreferenceHelper r0 = r11.twitterPreferenceHelper
            com.iMe.storage.domain.model.twitter.PreferenceTwitterTelegramIdMappedData r0 = r0.getAccountsData()
            com.iMe.storage.domain.model.twitter.TwitterAccountData r1 = r11.getTwitterAccountDataById(r12)
            if (r1 == 0) goto L20
            r2 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r9 = 29
            r10 = 0
            r4 = r14
            com.iMe.storage.domain.model.twitter.TwitterAccountData r14 = com.iMe.storage.domain.model.twitter.TwitterAccountData.copy$default(r1, r2, r4, r5, r6, r7, r9, r10)
            if (r14 != 0) goto L1d
            goto L20
        L1d:
            r0.put(r12, r14)
        L20:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.data.repository.twitter.TwitterRepositoryImpl.updateAccountUsername(long, java.lang.String):void");
    }
}
