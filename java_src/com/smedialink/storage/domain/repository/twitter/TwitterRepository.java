package com.smedialink.storage.domain.repository.twitter;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.twitter.TweetInfo;
import com.smedialink.storage.domain.model.twitter.TwitterProfileInfo;
import com.smedialink.storage.domain.model.twitter.TwitterRefreshTokenData;
import com.smedialink.storage.domain.model.twitter.TwitterUserInfo;
import io.reactivex.Observable;
import java.util.List;
/* compiled from: TwitterRepository.kt */
/* loaded from: classes3.dex */
public interface TwitterRepository {
    Observable<Result<Boolean>> acceptConnection(long j, long j2);

    Observable<Result<Boolean>> declineConnection(long j, long j2);

    Observable<Result<TwitterRefreshTokenData>> getRefreshToken(long j);

    Observable<Result<TwitterProfileInfo>> getSelfChatTwitterProfile(long j);

    Observable<Result<TwitterProfileInfo>> getSelfTwitterProfile(long j);

    Observable<Result<TwitterProfileInfo>> getUserByUsername(String str);

    Observable<Result<List<TweetInfo>>> getUserTweets(long j, long j2, Long l);

    Observable<Result<TwitterProfileInfo>> getUserTwitterProfile(long j);

    Observable<Result<Boolean>> logout(long j);

    Observable<Result<List<TwitterUserInfo>>> searchUsersByUsername(String str, int i);

    Observable<Result<Boolean>> sendInvite(long j, long j2);
}
