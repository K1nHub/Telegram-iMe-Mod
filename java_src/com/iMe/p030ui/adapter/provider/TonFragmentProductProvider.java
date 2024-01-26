package com.iMe.p030ui.adapter.provider;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.fragment.TonFragmentItem;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt___StringsKt;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.LayoutHelper;
/* compiled from: TonFragmentProductProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.TonFragmentProductProvider */
/* loaded from: classes.dex */
public final class TonFragmentProductProvider extends BaseNodeProvider<TonFragmentItem.Product> {
    private final Lazy itemElevation$delegate;
    private final int itemViewType = IdFabric$ViewTypes.TON_FRAGMENT_PRODUCT;
    private final int layoutId = C3632R.layout.fork_recycle_item_ton_fragment_product;

    static {
        new Companion(null);
    }

    public TonFragmentProductProvider() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.iMe.ui.adapter.provider.TonFragmentProductProvider$itemElevation$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Float invoke() {
                return Float.valueOf(TonFragmentProductProvider.this.getContext().getResources().getDimension(C3632R.dimen.wallet_card_elevation));
            }
        });
        this.itemElevation$delegate = lazy;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (TonFragmentItem.Product) obj, (List<? extends Object>) list);
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
    public final float getItemElevation() {
        return ((Number) this.itemElevation$delegate.getValue()).floatValue();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void convert(BaseViewHolder helper, final TonFragmentItem.Product item) {
        boolean isBlank;
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3632R.C3635id.constraint_root;
        BaseViewHolder rippleForeground = BaseQuickAdapterExtKt.setRippleForeground(BaseQuickAdapterExtKt.setThemedBackgroundColor(helper, i, Theme.key_windowBackgroundWhite), i, false);
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        int i3 = C3632R.C3635id.text_title;
        int i4 = C3632R.C3635id.text_price;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(rippleForeground, i2, i3, i4);
        int i5 = Theme.key_windowBackgroundWhiteGrayText2;
        int i6 = C3632R.C3635id.text_subtitle;
        int i7 = C3632R.C3635id.text_fiat_price;
        BaseViewHolder themedTextColor2 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i5, i6, i7);
        int i8 = C3632R.C3635id.text_discount;
        BaseViewHolder text = BaseQuickAdapterExtKt.setMediumTypeface(themedTextColor2.setTextColor(i8, -1), i3, i8, i4).setText(i3, item.getTitle()).setText(i4, item.getPriceText()).setText(i7, item.getFiatPrice()).setText(i6, item.getSubtitle());
        isBlank = StringsKt__StringsJVMKt.isBlank(item.getSubtitle());
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setVisibleElseGone(text, i6, !isBlank), i, new Function1<ConstraintLayout, Unit>() { // from class: com.iMe.ui.adapter.provider.TonFragmentProductProvider$convert$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ConstraintLayout constraintLayout) {
                invoke2(constraintLayout);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(ConstraintLayout applyForView) {
                float itemElevation;
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                itemElevation = TonFragmentProductProvider.this.getItemElevation();
                applyForView.setElevation(itemElevation);
            }
        }), C3632R.C3635id.frame_icon_container, new Function1<FrameLayout, Unit>() { // from class: com.iMe.ui.adapter.provider.TonFragmentProductProvider$convert$1$2
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
                Character orNull;
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                AppCompatImageView appCompatImageView = new AppCompatImageView(applyForView.getContext());
                TonFragmentItem.Product product = TonFragmentItem.Product.this;
                AvatarDrawable avatarDrawable = new AvatarDrawable();
                String username = product.getUsername();
                long hashCode = username.hashCode();
                orNull = StringsKt___StringsKt.getOrNull(username, 1);
                avatarDrawable.setInfo(hashCode, username, orNull != null ? orNull.toString() : null);
                appCompatImageView.setBackground(avatarDrawable);
                applyForView.addView(appCompatImageView, LayoutHelper.createFrame(42, 42, 16, 20, 8, 0, 8));
            }
        });
    }

    public void convert(BaseViewHolder helper, final TonFragmentItem.Product item, List<? extends Object> payloads) {
        boolean isBlank;
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        BaseViewHolder text = helper.setText(C3632R.C3635id.text_title, item.getTitle()).setText(C3632R.C3635id.text_price, item.getPriceText()).setText(C3632R.C3635id.text_fiat_price, item.getFiatPrice());
        int i = C3632R.C3635id.text_subtitle;
        BaseViewHolder text2 = text.setText(i, item.getSubtitle());
        isBlank = StringsKt__StringsJVMKt.isBlank(item.getSubtitle());
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setVisibleElseGone(text2, i, !isBlank), C3632R.C3635id.frame_icon_container, new Function1<FrameLayout, Unit>() { // from class: com.iMe.ui.adapter.provider.TonFragmentProductProvider$convert$2$1
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
                Character orNull;
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                if (NumberExtKt.isZero(Integer.valueOf(applyForView.getChildCount()))) {
                    return;
                }
                View childAt = applyForView.getChildAt(0);
                ImageView imageView = childAt instanceof ImageView ? (ImageView) childAt : null;
                if (imageView == null) {
                    return;
                }
                AvatarDrawable avatarDrawable = new AvatarDrawable();
                String username = TonFragmentItem.Product.this.getUsername();
                long hashCode = username.hashCode();
                orNull = StringsKt___StringsKt.getOrNull(username, 1);
                avatarDrawable.setInfo(hashCode, username, orNull != null ? orNull.toString() : null);
                imageView.setBackground(avatarDrawable);
            }
        });
    }

    /* compiled from: TonFragmentProductProvider.kt */
    /* renamed from: com.iMe.ui.adapter.provider.TonFragmentProductProvider$Companion */
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
