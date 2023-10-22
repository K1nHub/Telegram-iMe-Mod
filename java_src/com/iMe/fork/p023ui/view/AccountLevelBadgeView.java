package com.iMe.fork.p023ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.iMe.storage.domain.model.crypto.level.AccountLevel;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3630R;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.Components.LayoutHelper;
/* compiled from: AccountLevelBadgeView.kt */
/* renamed from: com.iMe.fork.ui.view.AccountLevelBadgeView */
/* loaded from: classes3.dex */
public final class AccountLevelBadgeView extends LinearLayout {
    private final Lazy iconView$delegate;
    private final Lazy nameTextView$delegate;

    static {
        new Companion(null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AccountLevelBadgeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ AccountLevelBadgeView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountLevelBadgeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<TextView>() { // from class: com.iMe.fork.ui.view.AccountLevelBadgeView$nameTextView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextView invoke() {
                TextView createNameTextView;
                createNameTextView = AccountLevelBadgeView.this.createNameTextView();
                return createNameTextView;
            }
        });
        this.nameTextView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<ImageView>() { // from class: com.iMe.fork.ui.view.AccountLevelBadgeView$iconView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ImageView invoke() {
                ImageView createIconView;
                createIconView = AccountLevelBadgeView.this.createIconView();
                return createIconView;
            }
        });
        this.iconView$delegate = lazy2;
        setGravity(17);
        setClipToPadding(false);
        setPadding(AndroidUtilities.m103dp(4.0f), 0, AndroidUtilities.m103dp(14.0f), 0);
        addView(getIconView(), LayoutHelper.createLinear(-2, -2));
        addView(getNameTextView(), LayoutHelper.createLinear(-2, -2, 17, 8, 0, 0, 0));
    }

    private final TextView getNameTextView() {
        return (TextView) this.nameTextView$delegate.getValue();
    }

    private final ImageView getIconView() {
        return (ImageView) this.iconView$delegate.getValue();
    }

    public final void setAccountLevel(AccountLevel accountLevel) {
        Intrinsics.checkNotNullParameter(accountLevel, "accountLevel");
        getIconView().setImageResource(C3630R.C3632drawable.fork_account_level_badge);
        getNameTextView().setText(accountLevel.name());
        setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m103dp(19.0f), ContextCompat.getColor(getContext(), accountLevel.getColorResId())));
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 0), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m103dp(20.0f), 1073741824));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView createNameTextView() {
        TextView textView = new TextView(getContext());
        textView.setGravity(17);
        textView.setLetterSpacing(0.1f);
        textView.setSingleLine(true);
        textView.setIncludeFontPadding(false);
        textView.setTextColor(-1);
        textView.setTextSize(1, 11.0f);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ImageView createIconView() {
        ImageView imageView = new ImageView(getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        return imageView;
    }

    /* compiled from: AccountLevelBadgeView.kt */
    /* renamed from: com.iMe.fork.ui.view.AccountLevelBadgeView$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
