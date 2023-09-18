package com.iMe.p031ui.custom;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.iMe.model.wallet.home.HorizontalActionButtonItem;
import com.iMe.p031ui.custom.HorizontalActionButtonsView;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3473R;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
/* compiled from: HorizontalActionButtonsView.kt */
/* renamed from: com.iMe.ui.custom.HorizontalActionButtonsView */
/* loaded from: classes4.dex */
public final class HorizontalActionButtonsView extends LinearLayout {
    private final List<Button> buttons;

    static {
        new Companion(null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public HorizontalActionButtonsView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ HorizontalActionButtonsView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HorizontalActionButtonsView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.buttons = new ArrayList();
        setOrientation(0);
    }

    public final void initButtons(List<HorizontalActionButtonItem> buttonsItems) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(buttonsItems, "buttonsItems");
        removeAllViewsInLayout();
        List<Button> list = this.buttons;
        list.clear();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(buttonsItems, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (HorizontalActionButtonItem horizontalActionButtonItem : buttonsItems) {
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            Button button = new Button(context, horizontalActionButtonItem);
            addView(button, new LinearLayout.LayoutParams(0, -2, 1.0f));
            arrayList.add(button);
        }
        list.addAll(arrayList);
        setupColors();
    }

    public final void setupColors() {
        for (Button button : this.buttons) {
            button.setupColors();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.buttons.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: HorizontalActionButtonsView.kt */
    /* renamed from: com.iMe.ui.custom.HorizontalActionButtonsView$Button */
    /* loaded from: classes4.dex */
    public static final class Button extends LinearLayout {
        private final Lazy imageView$delegate;
        private final Lazy textView$delegate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Button(final Context context, HorizontalActionButtonItem item) {
            super(context);
            Lazy lazy;
            Lazy lazy2;
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(item, "item");
            lazy = LazyKt__LazyJVMKt.lazy(new Function0<AppCompatImageView>() { // from class: com.iMe.ui.custom.HorizontalActionButtonsView$Button$imageView$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final AppCompatImageView invoke() {
                    return new AppCompatImageView(context);
                }
            });
            this.imageView$delegate = lazy;
            lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<TextView>() { // from class: com.iMe.ui.custom.HorizontalActionButtonsView$Button$textView$2
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final TextView invoke() {
                    TextView initTextView;
                    initTextView = HorizontalActionButtonsView.Button.this.initTextView();
                    return initTextView;
                }
            });
            this.textView$delegate = lazy2;
            initView();
            setupData(item);
        }

        private final AppCompatImageView getImageView() {
            return (AppCompatImageView) this.imageView$delegate.getValue();
        }

        private final TextView getTextView() {
            return (TextView) this.textView$delegate.getValue();
        }

        public final void setupColors() {
            ViewExtKt.setRippleBackground$default(this, false, 1, null);
            ImageViewExtKt.setImageColor(getImageView(), Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon));
            getTextView().setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        }

        private final void initView() {
            setOrientation(1);
            com.tbuonomo.viewpagerdotsindicator.ViewExtKt.setPaddingHorizontal(this, getResources().getDimensionPixelOffset(C3473R.dimen.margin_half_small));
            com.tbuonomo.viewpagerdotsindicator.ViewExtKt.setPaddingVertical(this, getResources().getDimensionPixelOffset(C3473R.dimen.margin_normal_2));
            setGravity(1);
            addView(getImageView(), LayoutHelper.createLinear(24, 24));
            addView(getTextView(), LayoutHelper.createLinear(-1, -2, 0, 4, 0, 0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final TextView initTextView() {
            TextView textView = new TextView(getContext());
            textView.setGravity(17);
            ViewExtKt.singleLine(textView);
            textView.setEllipsize(TextUtils.TruncateAt.END);
            textView.setTextSize(0, textView.getResources().getDimension(C3473R.dimen.text_size_normal));
            return textView;
        }

        private final void setupData(final HorizontalActionButtonItem horizontalActionButtonItem) {
            getImageView().setImageResource(horizontalActionButtonItem.getIconResId());
            getTextView().setText(horizontalActionButtonItem.getText());
            ViewExtKt.setEnabledWithAlpha(this, horizontalActionButtonItem.isEnabled());
            ViewExtKt.safeThrottledClick$default(this, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.custom.HorizontalActionButtonsView$Button$setupData$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(View view) {
                    invoke2(view);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(View it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    HorizontalActionButtonItem.this.getOnClickAction().invoke();
                }
            }, 1, null);
        }
    }

    /* compiled from: HorizontalActionButtonsView.kt */
    /* renamed from: com.iMe.ui.custom.HorizontalActionButtonsView$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
