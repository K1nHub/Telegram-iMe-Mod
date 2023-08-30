package com.iMe.p031ui.adapter.provider;

import android.widget.FrameLayout;
import android.widget.TextView;
import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.cryptobox.CryptoBoxesHeaderItem;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3558R;
import org.telegram.messenger.ImageReceiver;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.RLottieImageView;
/* compiled from: CryptoBoxesHeaderProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.CryptoBoxesHeaderProvider */
/* loaded from: classes.dex */
public final class CryptoBoxesHeaderProvider extends BaseNodeProvider<CryptoBoxesHeaderItem> {
    private final Lazy buttonCornerRadius$delegate;
    private final int itemViewType;
    private final int layoutId;
    private final ResourceManager resourceManager;

    static {
        new Companion(null);
    }

    public CryptoBoxesHeaderProvider(ResourceManager resourceManager) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
        this.itemViewType = IdFabric$ViewTypes.CRYPTOBOXES_HEADER;
        this.layoutId = C3558R.layout.fork_recycle_item_cryptoboxes_header;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.iMe.ui.adapter.provider.CryptoBoxesHeaderProvider$buttonCornerRadius$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                return Integer.valueOf(AndroidUtilities.m72dp(4));
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
    public void convert(BaseViewHolder helper, CryptoBoxesHeaderItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseViewHolder themedBackgroundColor = BaseQuickAdapterExtKt.setThemedBackgroundColor(helper, C3558R.C3561id.linear_root, Theme.key_windowBackgroundWhite);
        int i = C3558R.C3561id.text_description;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedBackgroundColor, i, Theme.key_windowBackgroundWhiteBlackText);
        int i2 = C3558R.C3561id.text_new_cryptobox;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i2, Theme.key_featuredStickers_buttonText), i2).setText(i, this.resourceManager.getString(C3558R.string.cryptoboxes_description)).setText(i2, this.resourceManager.getString(C3558R.string.cryptoboxes_create_new)), C3558R.C3561id.image_header, new Function1<RLottieImageView, Unit>() { // from class: com.iMe.ui.adapter.provider.CryptoBoxesHeaderProvider$convert$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RLottieImageView rLottieImageView) {
                invoke2(rLottieImageView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(RLottieImageView applyForView) {
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                applyForView.setAutoRepeat(true);
                applyForView.setAnimation(C3558R.raw.fork_cryptoboxes, ImageReceiver.DEFAULT_CROSSFADE_DURATION, ImageReceiver.DEFAULT_CROSSFADE_DURATION);
                applyForView.playAnimation();
            }
        }), C3558R.C3561id.button_new_cryptobox, new Function1<FrameLayout, Unit>() { // from class: com.iMe.ui.adapter.provider.CryptoBoxesHeaderProvider$convert$2
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
            public final void invoke2(FrameLayout applyForView) {
                int buttonCornerRadius;
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                buttonCornerRadius = CryptoBoxesHeaderProvider.this.getButtonCornerRadius();
                applyForView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(buttonCornerRadius, Theme.getColor(Theme.key_featuredStickers_addButton), Theme.getColor(Theme.key_featuredStickers_addButtonPressed)));
            }
        }), i2, new Function1<TextView, Unit>() { // from class: com.iMe.ui.adapter.provider.CryptoBoxesHeaderProvider$convert$3
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TextView textView) {
                invoke2(textView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(TextView applyForView) {
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                ViewExtKt.setCompoundDrawablesColor(applyForView, Theme.getColor(Theme.key_featuredStickers_buttonText));
            }
        });
    }

    /* compiled from: CryptoBoxesHeaderProvider.kt */
    /* renamed from: com.iMe.ui.adapter.provider.CryptoBoxesHeaderProvider$Companion */
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
