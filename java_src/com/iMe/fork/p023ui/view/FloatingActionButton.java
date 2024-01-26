package com.iMe.fork.p023ui.view;

import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.Context;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.ImageView;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RLottieImageView;
/* compiled from: FloatingActionButton.kt */
/* renamed from: com.iMe.fork.ui.view.FloatingActionButton */
/* loaded from: classes3.dex */
public final class FloatingActionButton extends FrameLayout {
    private final Lazy buttonSize$delegate;
    private final Lazy iconView$delegate;
    private boolean isLoading;
    private final Lazy loadingAnimationSize$delegate;
    private Integer originalIconResId;
    private final Lazy translationZDefault$delegate;
    private final Lazy translationZPressed$delegate;

    static {
        new Companion(null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ FloatingActionButton(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FloatingActionButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<RLottieImageView>() { // from class: com.iMe.fork.ui.view.FloatingActionButton$iconView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final RLottieImageView invoke() {
                RLottieImageView initIconView;
                initIconView = FloatingActionButton.this.initIconView();
                return initIconView;
            }
        });
        this.iconView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.iMe.fork.ui.view.FloatingActionButton$translationZDefault$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Float invoke() {
                return Float.valueOf(AndroidUtilities.m107dp(4));
            }
        });
        this.translationZDefault$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.iMe.fork.ui.view.FloatingActionButton$translationZPressed$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Float invoke() {
                return Float.valueOf(AndroidUtilities.m107dp(2));
            }
        });
        this.translationZPressed$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.iMe.fork.ui.view.FloatingActionButton$buttonSize$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                return Integer.valueOf(AndroidUtilities.m107dp(56));
            }
        });
        this.buttonSize$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.iMe.fork.ui.view.FloatingActionButton$loadingAnimationSize$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                return Integer.valueOf(AndroidUtilities.m107dp(24));
            }
        });
        this.loadingAnimationSize$delegate = lazy5;
        StateListAnimator stateListAnimator = new StateListAnimator();
        Property property = FrameLayout.TRANSLATION_Z;
        stateListAnimator.addState(new int[]{16842919}, ObjectAnimator.ofFloat(this, property, getTranslationZPressed(), getTranslationZDefault()).setDuration(200L));
        stateListAnimator.addState(new int[0], ObjectAnimator.ofFloat(this, property, getTranslationZDefault(), getTranslationZPressed()).setDuration(200L));
        setStateListAnimator(stateListAnimator);
        setOutlineProvider(new ViewOutlineProvider() { // from class: com.iMe.fork.ui.view.FloatingActionButton.2
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(outline, "outline");
                outline.setOval(0, 0, FloatingActionButton.this.getButtonSize(), FloatingActionButton.this.getButtonSize());
            }
        });
        addView(getIconView(), LayoutHelper.createFrame(-1, -1));
        updateColors();
    }

    private final RLottieImageView getIconView() {
        return (RLottieImageView) this.iconView$delegate.getValue();
    }

    private final float getTranslationZDefault() {
        return ((Number) this.translationZDefault$delegate.getValue()).floatValue();
    }

    private final float getTranslationZPressed() {
        return ((Number) this.translationZPressed$delegate.getValue()).floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getButtonSize() {
        return ((Number) this.buttonSize$delegate.getValue()).intValue();
    }

    private final int getLoadingAnimationSize() {
        return ((Number) this.loadingAnimationSize$delegate.getValue()).intValue();
    }

    public final void setIcon(int i) {
        this.originalIconResId = Integer.valueOf(i);
        getIconView().setImageResource(i);
    }

    public final void updateColors() {
        setBackground(Theme.createSimpleSelectorCircleDrawable(getButtonSize(), Theme.getColor(Theme.key_chats_actionBackground), Theme.getColor(Theme.key_chats_actionPressedBackground)));
        getIconView().setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chats_actionIcon), PorterDuff.Mode.SRC_IN));
    }

    public final void updateLoadingState(boolean z) {
        if (this.isLoading == z) {
            return;
        }
        this.isLoading = z;
        RLottieImageView iconView = getIconView();
        if (this.isLoading) {
            iconView.setAutoRepeat(true);
            iconView.setAnimation(C3632R.raw.fork_state_progress, getLoadingAnimationSize(), getLoadingAnimationSize());
            iconView.playAnimation();
            return;
        }
        iconView.clearAnimationDrawable();
        Integer num = this.originalIconResId;
        if (num != null) {
            iconView.setImageResource(num.intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RLottieImageView initIconView() {
        RLottieImageView rLottieImageView = new RLottieImageView(getContext());
        rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
        return rLottieImageView;
    }

    /* compiled from: FloatingActionButton.kt */
    /* renamed from: com.iMe.fork.ui.view.FloatingActionButton$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
