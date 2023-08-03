package com.iMe.fork.p024ui.view;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.iMe.storage.domain.model.filters.FilterFab;
import com.iMe.utils.extentions.model.filter.FilterFabExtKt;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RLottieImageView;
/* compiled from: FabsView.kt */
/* renamed from: com.iMe.fork.ui.view.FabsView */
/* loaded from: classes3.dex */
public final class FabsView extends FrameLayout {
    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FabsView(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public final void setFabs(Set<? extends FilterFab> fabs) {
        List<FilterFab> reversed;
        Intrinsics.checkNotNullParameter(fabs, "fabs");
        removeAllViews();
        reversed = CollectionsKt___CollectionsKt.reversed(fabs);
        for (FilterFab filterFab : reversed) {
            addView(createFab(filterFab), LayoutHelper.createFrame(36, 36, 5, 0, 0, getChildCount() * 24, 0));
        }
    }

    private final RLottieImageView createFab(FilterFab filterFab) {
        RLottieImageView rLottieImageView = new RLottieImageView(getContext());
        rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
        FilterFabExtKt.bindMini(filterFab, rLottieImageView);
        return rLottieImageView;
    }

    /* compiled from: FabsView.kt */
    /* renamed from: com.iMe.fork.ui.view.FabsView$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final void updateColors() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            Intrinsics.checkNotNullExpressionValue(childAt, "getChildAt(i)");
            Intrinsics.checkNotNull(childAt, "null cannot be cast to non-null type android.widget.ImageView");
            ImageView imageView = (ImageView) childAt;
            imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chats_actionIcon), PorterDuff.Mode.SRC_IN));
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(1);
            gradientDrawable.setStroke(AndroidUtilities.m72dp(1), Theme.getColor(Theme.key_windowBackgroundWhite));
            gradientDrawable.setColor(Theme.getColor(Theme.key_chats_actionBackground));
            gradientDrawable.setSize(AndroidUtilities.m72dp(36), AndroidUtilities.m72dp(36));
            imageView.setBackground(gradientDrawable);
        }
    }
}
