package com.iMe.feature.twitter.search;

import com.iMe.model.twitter.TwitterUserItem;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.twitter.TwitterProfileInfo;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3290R;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.feature.twitter.search.TwitterSearchPresenter$onUserClick$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1477x18d788a extends Lambda implements Function1<Result<? extends TwitterProfileInfo>, Unit> {
    final /* synthetic */ TwitterUserItem $twitterUserItem$inlined;
    final /* synthetic */ TwitterSearchPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1477x18d788a(TwitterUserItem twitterUserItem, TwitterSearchPresenter twitterSearchPresenter) {
        super(1);
        this.$twitterUserItem$inlined = twitterUserItem;
        this.this$0 = twitterSearchPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends TwitterProfileInfo> result) {
        m1184invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1184invoke(Result<? extends TwitterProfileInfo> it) {
        ResourceManager resourceManager;
        ResourceManager resourceManager2;
        BlockchainType blockchainType;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends TwitterProfileInfo> result = it;
        if (result instanceof Result.Success) {
            if (((TwitterProfileInfo) ((Result.Success) result).getData()).getTelegramUserId() != this.$twitterUserItem$inlined.getUser().f1574id) {
                resourceManager2 = this.this$0.resourceManager;
                ((TwitterSearchView) this.this$0.getViewState()).showToast(resourceManager2.getString(C3290R.string.common_error_unexpected));
                return;
            }
            TwitterSearchPresenter twitterSearchPresenter = this.this$0;
            String valueOf = String.valueOf(this.$twitterUserItem$inlined.getUser().f1574id);
            blockchainType = this.this$0.blockchainType;
            twitterSearchPresenter.loadAddressInfoById(valueOf, blockchainType);
        } else if (result instanceof Result.Error) {
            resourceManager = this.this$0.resourceManager;
            ((TwitterSearchView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        }
    }
}
