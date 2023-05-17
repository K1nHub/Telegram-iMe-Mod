package com.iMe.feature.twitter.search;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.twitter.TwitterUserItem;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.twitter.TwitterUserInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: TwitterSearchPresenter.kt */
/* loaded from: classes3.dex */
final class TwitterSearchPresenter$flatMapSearchResult$2 extends Lambda implements Function1<List<? extends TLRPC$User>, Result<? extends List<? extends BaseNode>>> {
    final /* synthetic */ List<TwitterUserInfo> $twitterProfiles;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwitterSearchPresenter$flatMapSearchResult$2(List<TwitterUserInfo> list) {
        super(1);
        this.$twitterProfiles = list;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<List<BaseNode>> invoke(List<? extends TLRPC$User> users) {
        Object obj;
        boolean z;
        Intrinsics.checkNotNullParameter(users, "users");
        List<TwitterUserInfo> list = this.$twitterProfiles;
        ArrayList arrayList = new ArrayList();
        for (TLRPC$User tLRPC$User : users) {
            Iterator<T> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                Long telegramUserId = ((TwitterUserInfo) obj).getTelegramUserId();
                long j = tLRPC$User.f1574id;
                if (telegramUserId != null && telegramUserId.longValue() == j) {
                    z = true;
                    continue;
                } else {
                    z = false;
                    continue;
                }
                if (z) {
                    break;
                }
            }
            TwitterUserInfo twitterUserInfo = (TwitterUserInfo) obj;
            TwitterUserItem twitterUserItem = twitterUserInfo != null ? new TwitterUserItem(tLRPC$User, twitterUserInfo.getTwitterName(), twitterUserInfo.getTwitterUsername(), twitterUserInfo.getTwitterAvatarUrl()) : null;
            if (twitterUserItem != null) {
                arrayList.add(twitterUserItem);
            }
        }
        return Result.Companion.success(arrayList);
    }
}
