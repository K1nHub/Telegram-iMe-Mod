package com.smedialink.p031ui.multifab;

import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.Context;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.util.Property;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.ViewPropertyAnimator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smedialink.storage.domain.model.filters.FilterFab;
import com.smedialink.utils.extentions.common.ViewExtKt;
import com.smedialink.utils.extentions.model.filter.FilterFabExtKt;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.fork.utils.Callbacks$Callback1;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.LayoutHelper;
/* compiled from: MiniFabsContainer.kt */
/* renamed from: com.smedialink.ui.multifab.MiniFabsContainer */
/* loaded from: classes3.dex */
public final class MiniFabsContainer extends LinearLayout {
    private final Callbacks$Callback1<FilterFab> listener;

    static {
        new Companion(null);
    }

    public final Callbacks$Callback1<FilterFab> getListener() {
        return this.listener;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MiniFabsContainer(Context context, Callbacks$Callback1<FilterFab> listener) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = listener;
        setOrientation(1);
        ViewExtKt.gone(this);
    }

    public final void setFabs(List<? extends FilterFab> fabs) {
        Intrinsics.checkNotNullParameter(fabs, "fabs");
        removeAllViews();
        for (FilterFab filterFab : fabs) {
            addView(createFab(filterFab), LayoutHelper.createLinear(43, 43, 17, 0, 0, 0, 12));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void show$lambda$4$lambda$2(boolean z, MiniFabsContainer this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            ViewExtKt.visible(this$0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void show$lambda$4$lambda$3(boolean z, MiniFabsContainer this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            return;
        }
        ViewExtKt.gone(this$0);
    }

    private final ImageView createFab(final FilterFab filterFab) {
        ImageView imageView = new ImageView(getContext());
        ViewExtKt.setScale(imageView, BitmapDescriptorFactory.HUE_RED);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setBackground(Theme.createSimpleSelectorCircleDrawable(43, "chats_actionBackground", "chats_actionPressedBackground"));
        imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor("chats_actionIcon"), PorterDuff.Mode.SRC_IN));
        float m50dp = AndroidUtilities.m50dp(2);
        StateListAnimator stateListAnimator = new StateListAnimator();
        Property property = LinearLayout.TRANSLATION_Z;
        float f = 2 * m50dp;
        stateListAnimator.addState(new int[]{16842919}, ObjectAnimator.ofFloat(imageView, property, m50dp, f).setDuration(200L));
        stateListAnimator.addState(new int[0], ObjectAnimator.ofFloat(imageView, property, f, m50dp).setDuration(200L));
        imageView.setStateListAnimator(stateListAnimator);
        imageView.setOutlineProvider(new ViewOutlineProvider() { // from class: com.smedialink.ui.multifab.MiniFabsContainer$createFab$1$2
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(outline, "outline");
                outline.setOval(0, 0, AndroidUtilities.m50dp(43), AndroidUtilities.m50dp(43));
            }
        });
        imageView.setImageResource(FilterFabExtKt.iconResId(filterFab, false));
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.smedialink.ui.multifab.MiniFabsContainer$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MiniFabsContainer.createFab$lambda$7$lambda$6(MiniFabsContainer.this, filterFab, view);
            }
        });
        return imageView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createFab$lambda$7$lambda$6(MiniFabsContainer this$0, FilterFab type, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(type, "$type");
        this$0.listener.invoke(type);
    }

    /* compiled from: MiniFabsContainer.kt */
    /* renamed from: com.smedialink.ui.multifab.MiniFabsContainer$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final void setScale(float f) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            Intrinsics.checkNotNullExpressionValue(childAt, "getChildAt(i)");
            ViewExtKt.setScale(childAt, f);
        }
    }

    public final void show(final boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            Intrinsics.checkNotNullExpressionValue(childAt, "getChildAt(i)");
            float f = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            ViewPropertyAnimator animate = childAt.animate();
            Intrinsics.checkNotNullExpressionValue(animate, "fab.animate()");
            ViewExtKt.scale(animate, f).withStartAction(new Runnable() { // from class: com.smedialink.ui.multifab.MiniFabsContainer$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    MiniFabsContainer.show$lambda$4$lambda$2(z, this);
                }
            }).withEndAction(new Runnable() { // from class: com.smedialink.ui.multifab.MiniFabsContainer$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    MiniFabsContainer.show$lambda$4$lambda$3(z, this);
                }
            }).setDuration(200L).start();
        }
    }
}
