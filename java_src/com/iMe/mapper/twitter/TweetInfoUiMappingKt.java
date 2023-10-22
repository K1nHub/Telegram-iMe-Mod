package com.iMe.mapper.twitter;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.twitter.TweetItem;
import com.iMe.storage.domain.model.twitter.TweetInfo;
import com.iMe.utils.formatter.DateFormatter;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
/* compiled from: TweetInfoUiMapping.kt */
/* loaded from: classes3.dex */
public final class TweetInfoUiMappingKt {
    public static final BaseNode mapToUi(TweetInfo tweetInfo) {
        Intrinsics.checkNotNullParameter(tweetInfo, "<this>");
        long id = tweetInfo.getId();
        String authorName = tweetInfo.getAuthorName();
        String str = '@' + tweetInfo.getAuthorNickname();
        String avatarUrl = tweetInfo.getAvatarUrl();
        String formatWholeNumber = AndroidUtilities.formatWholeNumber(tweetInfo.getLikesCount());
        Intrinsics.checkNotNullExpressionValue(formatWholeNumber, "formatWholeNumber(likesCount)");
        String formatWholeNumber2 = AndroidUtilities.formatWholeNumber(tweetInfo.getQuotesCount());
        Intrinsics.checkNotNullExpressionValue(formatWholeNumber2, "formatWholeNumber(quotesCount)");
        String formatWholeNumber3 = AndroidUtilities.formatWholeNumber(tweetInfo.getRetweetsCount());
        Intrinsics.checkNotNullExpressionValue(formatWholeNumber3, "formatWholeNumber(retweetsCount)");
        return new TweetItem(id, authorName, str, avatarUrl, formatWholeNumber, formatWholeNumber2, formatWholeNumber3, tweetInfo.getText(), DateFormatter.format$default(DateFormatter.DateType.ONLY_TIME, new Date(TimeUnit.SECONDS.toMillis(tweetInfo.getCreatedAt())), null, null, 12, null), tweetInfo.isLiked(), tweetInfo.getMediaInfo());
    }
}
