package com.iMe.p031ui.adapter.provider;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.iMe.model.twitter.TweetItem;
import com.iMe.p031ui.common.LinePagerIndicatorDecoration;
import com.iMe.storage.domain.model.twitter.MediaInfoDomain;
import com.iMe.utils.extentions.common.SimpleInitExtensionsKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3295R;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TweetProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.TweetProvider$convert$1$2 */
/* loaded from: classes.dex */
public final class TweetProvider$convert$1$2 extends Lambda implements Function1<RecyclerView, Unit> {
    final /* synthetic */ String $imageUrl;
    final /* synthetic */ TweetItem $item;
    final /* synthetic */ TweetProvider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TweetProvider$convert$1$2(String str, TweetProvider tweetProvider, TweetItem tweetItem) {
        super(1);
        this.$imageUrl = str;
        this.this$0 = tweetProvider;
        this.$item = tweetItem;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(RecyclerView recyclerView) {
        invoke2(recyclerView);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(RecyclerView applyForView) {
        LinePagerIndicatorDecoration linePagerIndicatorDecoration;
        LinePagerIndicatorDecoration linePagerIndicatorDecoration2;
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        ViewExtKt.gone(applyForView, this.$imageUrl.length() == 0);
        applyForView.setLayoutManager(new LinearLayoutManager(applyForView.getContext(), 0, false));
        applyForView.setOnFlingListener(null);
        new PagerSnapHelper().attachToRecyclerView(applyForView);
        linePagerIndicatorDecoration = this.this$0.itemDecoration;
        applyForView.removeItemDecoration(linePagerIndicatorDecoration);
        linePagerIndicatorDecoration2 = this.this$0.itemDecoration;
        applyForView.addItemDecoration(linePagerIndicatorDecoration2);
        SimpleInitExtensionsKt.quickInit(applyForView, this.$item.getMediaInfo(), C3295R.layout.fork_recylcer_image_item, new C19941(this.this$0, this.$item));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TweetProvider.kt */
    /* renamed from: com.iMe.ui.adapter.provider.TweetProvider$convert$1$2$1 */
    /* loaded from: classes.dex */
    public static final class C19941 extends Lambda implements Function3<View, MediaInfoDomain, Integer, Unit> {
        final /* synthetic */ TweetItem $item;
        final /* synthetic */ TweetProvider this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19941(TweetProvider tweetProvider, TweetItem tweetItem) {
            super(3);
            this.this$0 = tweetProvider;
            this.$item = tweetItem;
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(View view, MediaInfoDomain mediaInfoDomain, Integer num) {
            invoke(view, mediaInfoDomain, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(View quickInit, MediaInfoDomain mediaInfo, int i) {
            Intrinsics.checkNotNullParameter(quickInit, "$this$quickInit");
            Intrinsics.checkNotNullParameter(mediaInfo, "mediaInfo");
            this.this$0.onBindImage(quickInit, mediaInfo, this.$item);
        }
    }
}
