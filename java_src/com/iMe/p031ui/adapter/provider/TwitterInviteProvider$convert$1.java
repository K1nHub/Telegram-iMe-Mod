package com.iMe.p031ui.adapter.provider;

import android.widget.FrameLayout;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.twitter.TwitterInviteItem;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3558R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.Cells.StickerSetCell;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TwitterInviteProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.TwitterInviteProvider$convert$1 */
/* loaded from: classes.dex */
public final class TwitterInviteProvider$convert$1 extends Lambda implements Function1<FrameLayout, Unit> {
    final /* synthetic */ TwitterInviteItem $item;
    final /* synthetic */ TwitterInviteProvider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwitterInviteProvider$convert$1(TwitterInviteItem twitterInviteItem, TwitterInviteProvider twitterInviteProvider) {
        super(1);
        this.$item = twitterInviteItem;
        this.this$0 = twitterInviteProvider;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(FrameLayout frameLayout) {
        invoke2(frameLayout);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(FrameLayout applyForView) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        applyForView.removeAllViews();
        StickerSetCell stickerSetCell = new StickerSetCell(applyForView.getContext(), 0);
        final TwitterInviteItem twitterInviteItem = this.$item;
        final TwitterInviteProvider twitterInviteProvider = this.this$0;
        String nickname = twitterInviteItem.getNickname();
        resourceManager = twitterInviteProvider.resourceManager;
        stickerSetCell.setText(nickname, resourceManager.getString(C3558R.string.twitter_search_invite_subtitle), C3558R.C3560drawable.fork_drawer_social_twitter, true);
        stickerSetCell.setCustomButtonText(LocaleController.getString("Invite", C3558R.string.Invite));
        stickerSetCell.setCustomButtonAction(new Callbacks$Callback() { // from class: com.iMe.ui.adapter.provider.TwitterInviteProvider$convert$1$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                TwitterInviteProvider$convert$1.invoke$lambda$1$lambda$0(TwitterInviteProvider.this, twitterInviteItem);
            }
        });
        this.this$0.stickerSetCell = stickerSetCell;
        applyForView.addView(stickerSetCell);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$1$lambda$0(TwitterInviteProvider this$0, TwitterInviteItem item) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        this$0.getOnInviteClickAction().invoke(item);
    }
}
