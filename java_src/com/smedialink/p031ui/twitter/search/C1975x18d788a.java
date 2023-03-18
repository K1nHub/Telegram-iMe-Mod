package com.smedialink.p031ui.twitter.search;

import com.smedialink.model.twitter.TwitterUserItem;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.model.twitter.TwitterProfileInfo;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3286R;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.twitter.search.TwitterSearchPresenter$onUserClick$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1975x18d788a extends Lambda implements Function1<Result<? extends TwitterProfileInfo>, Unit> {
    final /* synthetic */ TwitterUserItem $twitterUserItem$inlined;
    final /* synthetic */ TwitterSearchPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1975x18d788a(TwitterUserItem twitterUserItem, TwitterSearchPresenter twitterSearchPresenter) {
        super(1);
        this.$twitterUserItem$inlined = twitterUserItem;
        this.this$0 = twitterSearchPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends TwitterProfileInfo> result) {
        m1274invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1274invoke(Result<? extends TwitterProfileInfo> it) {
        ResourceManager resourceManager;
        ResourceManager resourceManager2;
        BlockchainType blockchainType;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends TwitterProfileInfo> result = it;
        if (result instanceof Result.Success) {
            if (((TwitterProfileInfo) ((Result.Success) result).getData()).getTelegramUserId() != this.$twitterUserItem$inlined.getUser().f1639id) {
                resourceManager2 = this.this$0.resourceManager;
                ((TwitterSearchView) this.this$0.getViewState()).showToast(resourceManager2.getString(C3286R.string.common_error_unexpected));
                return;
            }
            TwitterSearchPresenter twitterSearchPresenter = this.this$0;
            String valueOf = String.valueOf(this.$twitterUserItem$inlined.getUser().f1639id);
            blockchainType = this.this$0.blockchainType;
            twitterSearchPresenter.loadAddressInfoById(valueOf, blockchainType);
        } else if (result instanceof Result.Error) {
            ErrorModel error = ((Result.Error) result).getError();
            resourceManager = this.this$0.resourceManager;
            ((TwitterSearchView) this.this$0.getViewState()).showToast(error.getMessage(resourceManager));
        }
    }
}
