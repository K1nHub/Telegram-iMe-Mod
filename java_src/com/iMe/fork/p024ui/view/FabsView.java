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
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.LayoutHelper;
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
        Intrinsics.checkNotNullParameter(fabs, "fabs");
        removeAllViews();
        for (FilterFab filterFab : fabs) {
            addView(createFab(filterFab), LayoutHelper.createFrame(36, 36, 5, 0, 0, getChildCount() * 24, 0));
        }
    }

    private final ImageView createFab(FilterFab filterFab) {
        ImageView imageView = new ImageView(getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setImageResource(FilterFabExtKt.iconResId(filterFab, false));
        return imageView;
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
            imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor("chats_actionIcon"), PorterDuff.Mode.SRC_IN));
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(1);
            gradientDrawable.setStroke(AndroidUtilities.m50dp(1), Theme.getColor("windowBackgroundWhite"));
            gradientDrawable.setColor(Theme.getColor("chats_actionBackground"));
            gradientDrawable.setSize(AndroidUtilities.m50dp(36), AndroidUtilities.m50dp(36));
            imageView.setBackground(gradientDrawable);
        }
    }
}
