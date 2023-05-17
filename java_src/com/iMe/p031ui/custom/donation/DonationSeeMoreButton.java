package com.iMe.p031ui.custom.donation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.LayoutHelper;
/* compiled from: DonationSeeMoreButton.kt */
/* renamed from: com.iMe.ui.custom.donation.DonationSeeMoreButton */
/* loaded from: classes3.dex */
public final class DonationSeeMoreButton extends FrameLayout {
    private final Lazy textView$delegate;

    static {
        new Companion(null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DonationSeeMoreButton(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ DonationSeeMoreButton(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DonationSeeMoreButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new DonationSeeMoreButton$textView$2(this));
        this.textView$delegate = lazy;
        setupColors();
        addView(getTextView(), LayoutHelper.createFrame(-1, 40, 16, 0, 0, 0, 0));
    }

    private final AppCompatTextView getTextView() {
        return (AppCompatTextView) this.textView$delegate.getValue();
    }

    public final void setText(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        getTextView().setText(text);
    }

    public final void setupColors() {
        setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        AppCompatTextView textView = getTextView();
        textView.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText));
        textView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m54dp(6), Theme.getColor(Theme.key_featuredStickers_addButton), Theme.getColor(Theme.key_featuredStickers_addButtonPressed)));
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        getTextView().setOnClickListener(onClickListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AppCompatTextView initTextView() {
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
        appCompatTextView.setTextSize(1, 14.0f);
        ViewExtKt.withMediumTypeface(appCompatTextView);
        appCompatTextView.setSingleLine();
        appCompatTextView.setGravity(17);
        int m54dp = AndroidUtilities.m54dp(10);
        appCompatTextView.setPadding(m54dp, m54dp, m54dp, m54dp);
        return appCompatTextView;
    }

    /* compiled from: DonationSeeMoreButton.kt */
    /* renamed from: com.iMe.ui.custom.donation.DonationSeeMoreButton$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
