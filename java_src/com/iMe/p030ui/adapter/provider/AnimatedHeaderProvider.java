package com.iMe.p030ui.adapter.provider;

import android.widget.FrameLayout;
import android.widget.TextView;
import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.cryptobox.AnimatedHeaderItem;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ImageReceiver;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.RLottieImageView;
/* compiled from: AnimatedHeaderProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.AnimatedHeaderProvider */
/* loaded from: classes.dex */
public final class AnimatedHeaderProvider extends BaseNodeProvider<AnimatedHeaderItem> {
    private final Lazy buttonCornerRadius$delegate;
    private final int itemViewType = IdFabric$ViewTypes.ANIMATED_HEADER;
    private final int layoutId = C3632R.layout.fork_recycle_item_animated_header;

    static {
        new Companion(null);
    }

    public AnimatedHeaderProvider() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.iMe.ui.adapter.provider.AnimatedHeaderProvider$buttonCornerRadius$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                return Integer.valueOf(ViewExtKt.getDpToPx(4));
            }
        });
        this.buttonCornerRadius$delegate = lazy;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getItemViewType() {
        return this.itemViewType;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getLayoutId() {
        return this.layoutId;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getButtonCornerRadius() {
        return ((Number) this.buttonCornerRadius$delegate.getValue()).intValue();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void convert(BaseViewHolder helper, final AnimatedHeaderItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseViewHolder themedBackgroundColor = BaseQuickAdapterExtKt.setThemedBackgroundColor(helper, C3632R.C3635id.linear_root, Theme.key_windowBackgroundWhite);
        int i = C3632R.C3635id.text_description;
        BaseViewHolder applyForView = BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setThemedTextColor(themedBackgroundColor, i, Theme.key_windowBackgroundWhiteBlackText).setText(i, item.getDescriptionText()), C3632R.C3635id.image_header, new Function1<RLottieImageView, Unit>() { // from class: com.iMe.ui.adapter.provider.AnimatedHeaderProvider$convert$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RLottieImageView rLottieImageView) {
                invoke2(rLottieImageView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(RLottieImageView applyForView2) {
                Intrinsics.checkNotNullParameter(applyForView2, "$this$applyForView");
                applyForView2.setAutoRepeat(true);
                applyForView2.setAnimation(AnimatedHeaderItem.this.getAnimationResId(), ImageReceiver.DEFAULT_CROSSFADE_DURATION, ImageReceiver.DEFAULT_CROSSFADE_DURATION);
                applyForView2.playAnimation();
            }
        });
        int i2 = C3632R.C3635id.button_action;
        BaseViewHolder visibleElseGone = BaseQuickAdapterExtKt.setVisibleElseGone(applyForView, i2, item.getButton() != null);
        if (item.getButton() != null) {
            BaseViewHolder applyForView2 = BaseQuickAdapterExtKt.applyForView(visibleElseGone, i2, new Function1<FrameLayout, Unit>() { // from class: com.iMe.ui.adapter.provider.AnimatedHeaderProvider$convert$1$2$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(FrameLayout frameLayout) {
                    invoke2(frameLayout);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(FrameLayout applyForView3) {
                    int buttonCornerRadius;
                    Intrinsics.checkNotNullParameter(applyForView3, "$this$applyForView");
                    ViewExtKt.setRippleForeground$default(applyForView3, false, 1, null);
                    buttonCornerRadius = AnimatedHeaderProvider.this.getButtonCornerRadius();
                    applyForView3.setBackground(Theme.createSimpleSelectorRoundRectDrawable(buttonCornerRadius, Theme.getColor(Theme.key_featuredStickers_addButton), Theme.getColor(Theme.key_featuredStickers_addButtonPressed)));
                }
            });
            int i3 = C3632R.C3635id.text_action;
            BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(applyForView2, i3, Theme.key_featuredStickers_buttonText), i3).setText(i3, item.getButton().getText()), i3, new Function1<TextView, Unit>() { // from class: com.iMe.ui.adapter.provider.AnimatedHeaderProvider$convert$1$2$2
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(TextView textView) {
                    invoke2(textView);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(TextView applyForView3) {
                    Intrinsics.checkNotNullParameter(applyForView3, "$this$applyForView");
                    if (AnimatedHeaderItem.this.getButton().getIconResId() != null) {
                        applyForView3.setCompoundDrawablesWithIntrinsicBounds(AnimatedHeaderItem.this.getButton().getIconResId().intValue(), 0, 0, 0);
                        ViewExtKt.setCompoundDrawablesColor(applyForView3, Theme.getColor(Theme.key_featuredStickers_buttonText));
                    }
                }
            });
        }
    }

    /* compiled from: AnimatedHeaderProvider.kt */
    /* renamed from: com.iMe.ui.adapter.provider.AnimatedHeaderProvider$Companion */
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
