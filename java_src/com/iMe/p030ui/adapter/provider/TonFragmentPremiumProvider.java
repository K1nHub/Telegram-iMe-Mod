package com.iMe.p030ui.adapter.provider;

import android.content.res.ColorStateList;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.fragment.TonFragmentItem;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.CheckBox2;
import org.telegram.p043ui.Components.LayoutHelper;
/* compiled from: TonFragmentPremiumProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.TonFragmentPremiumProvider */
/* loaded from: classes.dex */
public final class TonFragmentPremiumProvider extends BaseNodeProvider<TonFragmentItem.C1533Premium> {
    private final Lazy discountCornerRadius$delegate;
    private final int itemViewType = IdFabric$ViewTypes.TON_FRAGMENT_PREMIUM;
    private final int layoutId = C3632R.layout.fork_recycle_item_ton_fragment_product;

    static {
        new Companion(null);
    }

    public TonFragmentPremiumProvider() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.iMe.ui.adapter.provider.TonFragmentPremiumProvider$discountCornerRadius$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Float invoke() {
                return Float.valueOf(ViewExtKt.getDpToPx(5));
            }
        });
        this.discountCornerRadius$delegate = lazy;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (TonFragmentItem.C1533Premium) obj, (List<? extends Object>) list);
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
    public final float getDiscountCornerRadius() {
        return ((Number) this.discountCornerRadius$delegate.getValue()).floatValue();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void convert(BaseViewHolder helper, final TonFragmentItem.C1533Premium item) {
        boolean isBlank;
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseViewHolder rippleBackground = BaseQuickAdapterExtKt.setRippleBackground(helper, C3632R.C3635id.constraint_root, false);
        int i = Theme.key_windowBackgroundWhiteBlackText;
        int i2 = C3632R.C3635id.text_title;
        int i3 = C3632R.C3635id.text_price;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(rippleBackground, i, i2, i3);
        int i4 = Theme.key_windowBackgroundWhiteGrayText2;
        int i5 = C3632R.C3635id.text_fiat_price;
        BaseViewHolder themedTextColor2 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i4, C3632R.C3635id.text_subtitle, i5);
        int i6 = C3632R.C3635id.text_discount;
        BaseViewHolder text = BaseQuickAdapterExtKt.setMediumTypeface(themedTextColor2.setTextColor(i6, -1), i2, i6, i3).setText(i2, item.getTitle()).setText(i3, item.getPriceText()).setText(i5, item.getFiatPrice()).setText(i6, item.getDiscount());
        isBlank = StringsKt__StringsJVMKt.isBlank(item.getDiscount());
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setVisibleElseGone(text, i6, !isBlank), C3632R.C3635id.frame_icon_container, new Function1<FrameLayout, Unit>() { // from class: com.iMe.ui.adapter.provider.TonFragmentPremiumProvider$convert$1$1
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
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                CheckBox2 checkBox2 = new CheckBox2(applyForView.getContext(), 24);
                TonFragmentItem.C1533Premium c1533Premium = TonFragmentItem.C1533Premium.this;
                checkBox2.setDrawBackgroundAsArc(10);
                checkBox2.setColor(Theme.key_radioBackgroundChecked, Theme.key_radioBackground, Theme.key_checkboxCheck);
                checkBox2.setChecked(c1533Premium.isChecked(), false);
                applyForView.addView(checkBox2, LayoutHelper.createFrame(24, 24, 16, 14, 16, 0, 16));
            }
        }), i6, new Function1<TextView, Unit>() { // from class: com.iMe.ui.adapter.provider.TonFragmentPremiumProvider$convert$1$2
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
            public final void invoke2(TextView applyForView) {
                float discountCornerRadius;
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
                TonFragmentPremiumProvider tonFragmentPremiumProvider = TonFragmentPremiumProvider.this;
                materialShapeDrawable.setFillColor(ColorStateList.valueOf(Theme.getColor(Theme.key_radioBackgroundChecked)));
                discountCornerRadius = tonFragmentPremiumProvider.getDiscountCornerRadius();
                materialShapeDrawable.setCornerSize(discountCornerRadius);
                applyForView.setBackground(materialShapeDrawable);
            }
        });
    }

    public void convert(BaseViewHolder helper, final TonFragmentItem.C1533Premium item, List<? extends Object> payloads) {
        boolean isBlank;
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        BaseViewHolder text = helper.setText(C3632R.C3635id.text_title, item.getTitle()).setText(C3632R.C3635id.text_price, item.getPriceText()).setText(C3632R.C3635id.text_fiat_price, item.getFiatPrice());
        int i = C3632R.C3635id.text_discount;
        BaseViewHolder text2 = text.setText(i, item.getDiscount());
        isBlank = StringsKt__StringsJVMKt.isBlank(item.getDiscount());
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setVisibleElseGone(text2, i, !isBlank), C3632R.C3635id.frame_icon_container, new Function1<FrameLayout, Unit>() { // from class: com.iMe.ui.adapter.provider.TonFragmentPremiumProvider$convert$2$1
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
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                if (NumberExtKt.isZero(Integer.valueOf(applyForView.getChildCount()))) {
                    return;
                }
                View childAt = applyForView.getChildAt(0);
                CheckBox2 checkBox2 = childAt instanceof CheckBox2 ? (CheckBox2) childAt : null;
                if (checkBox2 != null) {
                    checkBox2.setChecked(TonFragmentItem.C1533Premium.this.isChecked(), true);
                }
            }
        });
    }

    /* compiled from: TonFragmentPremiumProvider.kt */
    /* renamed from: com.iMe.ui.adapter.provider.TonFragmentPremiumProvider$Companion */
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
