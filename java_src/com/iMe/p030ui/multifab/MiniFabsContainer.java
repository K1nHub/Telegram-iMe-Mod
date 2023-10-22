package com.iMe.p030ui.multifab;

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
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.storage.domain.model.filters.FilterFab;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.model.filter.FilterFabExtKt;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.Components.LayoutHelper;
import org.telegram.p042ui.Components.RLottieImageView;
/* compiled from: MiniFabsContainer.kt */
/* renamed from: com.iMe.ui.multifab.MiniFabsContainer */
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
        ViewExtKt.gone$default(this, false, 1, null);
    }

    public final void setFabs(List<? extends FilterFab> fabs) {
        Intrinsics.checkNotNullParameter(fabs, "fabs");
        removeAllViews();
        for (FilterFab filterFab : fabs) {
            addView(createFab(filterFab), LayoutHelper.createLinear(36, 36, 17, 0, 0, 0, 8));
        }
        updateColors();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void show$lambda$4$lambda$2(boolean z, MiniFabsContainer this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            ViewExtKt.visible$default(this$0, false, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void show$lambda$4$lambda$3(boolean z, MiniFabsContainer this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            return;
        }
        ViewExtKt.gone$default(this$0, false, 1, null);
    }

    private final RLottieImageView createFab(final FilterFab filterFab) {
        RLottieImageView rLottieImageView = new RLottieImageView(getContext());
        ViewExtKt.setScale(rLottieImageView, BitmapDescriptorFactory.HUE_RED);
        rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
        float m102dp = AndroidUtilities.m102dp(2);
        StateListAnimator stateListAnimator = new StateListAnimator();
        Property property = LinearLayout.TRANSLATION_Z;
        float f = 2 * m102dp;
        stateListAnimator.addState(new int[]{16842919}, ObjectAnimator.ofFloat(rLottieImageView, property, m102dp, f).setDuration(200L));
        stateListAnimator.addState(new int[0], ObjectAnimator.ofFloat(rLottieImageView, property, f, m102dp).setDuration(200L));
        rLottieImageView.setStateListAnimator(stateListAnimator);
        rLottieImageView.setOutlineProvider(new ViewOutlineProvider() { // from class: com.iMe.ui.multifab.MiniFabsContainer$createFab$1$2
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(outline, "outline");
                outline.setOval(0, 0, AndroidUtilities.m102dp(36), AndroidUtilities.m102dp(36));
            }
        });
        FilterFabExtKt.bindMini(filterFab, rLottieImageView);
        rLottieImageView.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.multifab.MiniFabsContainer$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MiniFabsContainer.createFab$lambda$8$lambda$7(MiniFabsContainer.this, filterFab, view);
            }
        });
        return rLottieImageView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createFab$lambda$8$lambda$7(MiniFabsContainer this$0, FilterFab type, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(type, "$type");
        this$0.listener.invoke(type);
    }

    /* compiled from: MiniFabsContainer.kt */
    /* renamed from: com.iMe.ui.multifab.MiniFabsContainer$Companion */
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
            ViewExtKt.scale(animate, f).withStartAction(new Runnable() { // from class: com.iMe.ui.multifab.MiniFabsContainer$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    MiniFabsContainer.show$lambda$4$lambda$2(z, this);
                }
            }).withEndAction(new Runnable() { // from class: com.iMe.ui.multifab.MiniFabsContainer$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    MiniFabsContainer.show$lambda$4$lambda$3(z, this);
                }
            }).setDuration(200L).start();
        }
    }

    public final void updateColors() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            Intrinsics.checkNotNullExpressionValue(childAt, "getChildAt(i)");
            if (childAt instanceof RLottieImageView) {
                RLottieImageView rLottieImageView = (RLottieImageView) childAt;
                int m102dp = AndroidUtilities.m102dp(36);
                int i2 = Theme.key_windowBackgroundWhite;
                rLottieImageView.setBackground(Theme.createSimpleSelectorCircleDrawable(m102dp, ColorUtils.blendARGB(Theme.getColor(i2), -1, 0.1f), Theme.blendOver(Theme.getColor(i2), Theme.getColor(Theme.key_listSelector))));
                rLottieImageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon), PorterDuff.Mode.SRC_IN));
            }
        }
    }
}
