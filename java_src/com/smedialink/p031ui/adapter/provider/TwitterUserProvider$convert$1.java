package com.smedialink.p031ui.adapter.provider;

import android.widget.FrameLayout;
import com.smedialink.model.twitter.TwitterUserItem;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.Cells.UserCell;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TwitterUserProvider.kt */
/* renamed from: com.smedialink.ui.adapter.provider.TwitterUserProvider$convert$1 */
/* loaded from: classes3.dex */
public final class TwitterUserProvider$convert$1 extends Lambda implements Function1<FrameLayout, Unit> {
    final /* synthetic */ TwitterUserItem $item;
    final /* synthetic */ TwitterUserProvider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwitterUserProvider$convert$1(TwitterUserItem twitterUserItem, TwitterUserProvider twitterUserProvider) {
        super(1);
        this.$item = twitterUserItem;
        this.this$0 = twitterUserProvider;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(FrameLayout frameLayout) {
        invoke2(frameLayout);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(FrameLayout applyForView) {
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        applyForView.removeAllViews();
        UserCell userCell = new UserCell(applyForView.getContext(), 0, 0, false);
        TwitterUserItem twitterUserItem = this.$item;
        userCell.setData(null, twitterUserItem.getName(), twitterUserItem.getNickname(), 0, true);
        userCell.hideNameDrawable();
        userCell.setAvatar(twitterUserItem.getAvatarUrl());
        this.this$0.userCell = userCell;
        applyForView.addView(userCell);
    }
}
