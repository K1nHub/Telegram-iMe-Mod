package com.iMe.fork.p024ui.view;

import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.iMe.fork.enums.FilterActivityType;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3242R;
import org.telegram.messenger.LocaleController;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Cells.PollEditTextCell;
import org.telegram.p044ui.Components.EditTextBoldCursor;
import org.telegram.p044ui.Components.LayoutHelper;
/* compiled from: PollEditTextCellWrapper.kt */
/* renamed from: com.iMe.fork.ui.view.PollEditTextCellWrapper */
/* loaded from: classes3.dex */
public final class PollEditTextCellWrapper extends LinearLayout {
    private final Lazy arrowImageView$delegate;
    private final Lazy iconLayout$delegate;
    private final Lazy iconView$delegate;
    private final Lazy noIconTextView$delegate;
    private final Runnable onSelectIconClick;
    private final PollEditTextCell pollEditTextCell;
    private final FilterActivityType type;

    static {
        new Companion(null);
    }

    public final PollEditTextCell getPollEditTextCell() {
        return this.pollEditTextCell;
    }

    public final FilterActivityType getType() {
        return this.type;
    }

    public final Runnable getOnSelectIconClick() {
        return this.onSelectIconClick;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PollEditTextCellWrapper(PollEditTextCell pollEditTextCell, FilterActivityType type, Runnable onSelectIconClick) {
        super(pollEditTextCell.getContext());
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Intrinsics.checkNotNullParameter(pollEditTextCell, "pollEditTextCell");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(onSelectIconClick, "onSelectIconClick");
        this.pollEditTextCell = pollEditTextCell;
        this.type = type;
        this.onSelectIconClick = onSelectIconClick;
        lazy = LazyKt__LazyJVMKt.lazy(new PollEditTextCellWrapper$iconLayout$2(this));
        this.iconLayout$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new PollEditTextCellWrapper$iconView$2(this));
        this.iconView$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new PollEditTextCellWrapper$noIconTextView$2(this));
        this.noIconTextView$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new PollEditTextCellWrapper$arrowImageView$2(this));
        this.arrowImageView$delegate = lazy4;
        addView(pollEditTextCell, LayoutHelper.createLinear(0, -2, 1.0f));
        addView(getIconLayout(), LayoutHelper.createLinear(-2, -1, 48));
        setupPollEditTextCell();
        updateColors();
    }

    private final LinearLayout getIconLayout() {
        return (LinearLayout) this.iconLayout$delegate.getValue();
    }

    private final ImageView getIconView() {
        return (ImageView) this.iconView$delegate.getValue();
    }

    private final TextView getNoIconTextView() {
        return (TextView) this.noIconTextView$delegate.getValue();
    }

    private final ImageView getArrowImageView() {
        return (ImageView) this.arrowImageView$delegate.getValue();
    }

    public final void setIcon(int i) {
        if (i == -1) {
            ViewExtKt.gone(getIconView());
            ViewExtKt.visible(getNoIconTextView());
            return;
        }
        ViewExtKt.gone(getNoIconTextView());
        ViewExtKt.visible(getIconView());
        getIconView().setImageResource(i);
    }

    public final void updateColors() {
        this.pollEditTextCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
        getIconLayout().setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
        getIconLayout().setBackground(Theme.createSelectorWithBackgroundDrawable(Theme.getColor("windowBackgroundWhite"), Theme.getColor("listSelectorSDK21")));
        getIconView().setColorFilter(new PorterDuffColorFilter(Theme.getColor("chats_actionBackground"), PorterDuff.Mode.SRC_IN));
        getNoIconTextView().setTextColor(Theme.getColor("windowBackgroundWhiteGrayIcon"));
        getArrowImageView().setColorFilter(new PorterDuffColorFilter(Theme.getColor("windowBackgroundWhiteGrayIcon"), PorterDuff.Mode.MULTIPLY));
    }

    public final boolean checkEditTextTouch(float f) {
        return f > ((float) this.pollEditTextCell.getLeft()) && f < ((float) this.pollEditTextCell.getRight());
    }

    private final void setupPollEditTextCell() {
        PollEditTextCell pollEditTextCell = this.pollEditTextCell;
        EditTextBoldCursor textView = pollEditTextCell.getTextView();
        Intrinsics.checkNotNullExpressionValue(textView, "textView");
        ViewExtKt.singleLine(textView);
        pollEditTextCell.needVerticalDivider = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LinearLayout initIconLayout() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        ViewExtKt.setHorizontalPadding(linearLayout, Integer.valueOf(AndroidUtilities.m50dp(6)));
        linearLayout.setGravity(17);
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.view.PollEditTextCellWrapper$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PollEditTextCellWrapper.initIconLayout$lambda$2$lambda$1(PollEditTextCellWrapper.this, view);
            }
        });
        linearLayout.addView(getIconView(), LayoutHelper.createLinear(this.type.getIconSize(), this.type.getIconSize()));
        linearLayout.addView(getNoIconTextView(), LayoutHelper.createLinear(-2, -2));
        linearLayout.addView(getArrowImageView(), LayoutHelper.createLinear(16, 16, 17, 6, 0, 0, 0));
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initIconLayout$lambda$2$lambda$1(PollEditTextCellWrapper this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onSelectIconClick.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ImageView initIconView() {
        ImageView imageView = new ImageView(getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        return imageView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initNoIconTextView() {
        TextView textView = new TextView(getContext());
        textView.setText(LocaleController.getInternalString(C3242R.string.no_icon));
        textView.setTextSize(1, 14.0f);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ImageView initArrowImageView() {
        ImageView imageView = new ImageView(getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        imageView.setImageResource(C3242R.C3244drawable.arrow_more);
        return imageView;
    }

    /* compiled from: PollEditTextCellWrapper.kt */
    /* renamed from: com.iMe.fork.ui.view.PollEditTextCellWrapper$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
