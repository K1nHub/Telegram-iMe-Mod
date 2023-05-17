package com.iMe.fork.p024ui.view;

import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.Context;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.util.Property;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.ImageView;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.LayoutHelper;
import org.telegram.p044ui.Components.RLottieImageView;
/* compiled from: FloatingActionButton.kt */
/* renamed from: com.iMe.fork.ui.view.FloatingActionButton */
/* loaded from: classes3.dex */
public final class FloatingActionButton extends FrameLayout {
    private final Lazy iconView$delegate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FloatingActionButton(Context context) {
        super(context);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new FloatingActionButton$iconView$2(this));
        this.iconView$delegate = lazy;
        StateListAnimator stateListAnimator = new StateListAnimator();
        Property property = FrameLayout.TRANSLATION_Z;
        stateListAnimator.addState(new int[]{16842919}, ObjectAnimator.ofFloat(this, property, AndroidUtilities.m54dp(2), AndroidUtilities.m54dp(4)).setDuration(200L));
        stateListAnimator.addState(new int[0], ObjectAnimator.ofFloat(this, property, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(2)).setDuration(200L));
        setStateListAnimator(stateListAnimator);
        setOutlineProvider(new ViewOutlineProvider() { // from class: com.iMe.fork.ui.view.FloatingActionButton.2
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(outline, "outline");
                outline.setOval(0, 0, AndroidUtilities.m54dp(56), AndroidUtilities.m54dp(56));
            }
        });
        addView(getIconView(), LayoutHelper.createFrame(-1, -1));
        updateColors();
    }

    private final RLottieImageView getIconView() {
        return (RLottieImageView) this.iconView$delegate.getValue();
    }

    public final void setIcon(int i) {
        getIconView().setImageResource(i);
    }

    public final void updateColors() {
        setBackground(Theme.createSimpleSelectorCircleDrawable(AndroidUtilities.m54dp(56), Theme.getColor(Theme.key_chats_actionBackground), Theme.getColor(Theme.key_chats_actionPressedBackground)));
        getIconView().setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chats_actionIcon), PorterDuff.Mode.SRC_IN));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RLottieImageView initIconView() {
        RLottieImageView rLottieImageView = new RLottieImageView(getContext());
        rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
        return rLottieImageView;
    }
}
