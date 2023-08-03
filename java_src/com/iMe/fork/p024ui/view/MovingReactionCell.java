package com.iMe.fork.p024ui.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.text.TextUtils;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.iMe.storage.data.network.model.request.reaction.UrlButton;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3419R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.EditTextBoldCursor;
import org.telegram.p043ui.Components.LayoutHelper;
/* compiled from: MovingReactionCell.kt */
/* renamed from: com.iMe.fork.ui.view.MovingReactionCell */
/* loaded from: classes3.dex */
public final class MovingReactionCell extends FrameLayout {
    private final Lazy deleteImageView$delegate;
    private final Lazy editText$delegate;
    private final Lazy emojiTextView$delegate;
    private String emojiValue;
    private final boolean linkIconShow;
    private final Lazy linkImageView$delegate;
    private final Lazy moveImageView$delegate;
    private boolean needDivider;
    private boolean showNextButton;
    private UrlButton urlButton;
    private final Lazy valueTextView$delegate;

    static {
        new Companion(null);
    }

    public final boolean getLinkIconShow() {
        return this.linkIconShow;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MovingReactionCell(Context context, boolean z) {
        super(context);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        Intrinsics.checkNotNullParameter(context, "context");
        this.linkIconShow = z;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<ImageView>() { // from class: com.iMe.fork.ui.view.MovingReactionCell$linkImageView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ImageView invoke() {
                ImageView initLinkImageView;
                initLinkImageView = MovingReactionCell.this.initLinkImageView();
                return initLinkImageView;
            }
        });
        this.linkImageView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<ImageView>() { // from class: com.iMe.fork.ui.view.MovingReactionCell$deleteImageView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ImageView invoke() {
                ImageView initDeleteImageView;
                initDeleteImageView = MovingReactionCell.this.initDeleteImageView();
                return initDeleteImageView;
            }
        });
        this.deleteImageView$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<MovingReactionCell$initEditText$1>() { // from class: com.iMe.fork.ui.view.MovingReactionCell$editText$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final MovingReactionCell$initEditText$1 invoke() {
                MovingReactionCell$initEditText$1 initEditText;
                initEditText = MovingReactionCell.this.initEditText();
                return initEditText;
            }
        });
        this.editText$delegate = lazy3;
        this.urlButton = new UrlButton(null, null, 3, null);
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<TextView>() { // from class: com.iMe.fork.ui.view.MovingReactionCell$valueTextView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextView invoke() {
                TextView initValueTextView;
                initValueTextView = MovingReactionCell.this.initValueTextView();
                return initValueTextView;
            }
        });
        this.valueTextView$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<ImageView>() { // from class: com.iMe.fork.ui.view.MovingReactionCell$moveImageView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ImageView invoke() {
                ImageView initMoveImageView;
                initMoveImageView = MovingReactionCell.this.initMoveImageView();
                return initMoveImageView;
            }
        });
        this.moveImageView$delegate = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new Function0<TextView>() { // from class: com.iMe.fork.ui.view.MovingReactionCell$emojiTextView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextView invoke() {
                TextView initEmojiTextView;
                initEmojiTextView = MovingReactionCell.this.initEmojiTextView();
                return initEmojiTextView;
            }
        });
        this.emojiTextView$delegate = lazy6;
        setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        setupViews();
    }

    public final ImageView getLinkImageView() {
        return (ImageView) this.linkImageView$delegate.getValue();
    }

    public final ImageView getDeleteImageView() {
        return (ImageView) this.deleteImageView$delegate.getValue();
    }

    public final EditTextBoldCursor getEditText() {
        return (EditTextBoldCursor) this.editText$delegate.getValue();
    }

    public final boolean getShowNextButton() {
        return this.showNextButton;
    }

    public final void setShowNextButton(boolean z) {
        this.showNextButton = z;
    }

    public final String getEmojiValue() {
        return this.emojiValue;
    }

    public final void setEmojiValue(String str) {
        this.emojiValue = str;
    }

    public final UrlButton getUrlButton() {
        return this.urlButton;
    }

    public final void setUrlButton(UrlButton urlButton) {
        Intrinsics.checkNotNullParameter(urlButton, "<set-?>");
        this.urlButton = urlButton;
    }

    private final TextView getValueTextView() {
        return (TextView) this.valueTextView$delegate.getValue();
    }

    private final ImageView getMoveImageView() {
        return (ImageView) this.moveImageView$delegate.getValue();
    }

    private final TextView getEmojiTextView() {
        return (TextView) this.emojiTextView$delegate.getValue();
    }

    public final void updateUrlButton(UrlButton urlButton) {
        Intrinsics.checkNotNullParameter(urlButton, "urlButton");
        this.urlButton = urlButton;
        if (urlButton.getTitle().length() == 0) {
            getEditText().setHint(LocaleController.getInternalString(C3419R.string.chat_reaction_enter_the_title));
        }
        TextView valueTextView = getValueTextView();
        String url = urlButton.getUrl();
        if (url.length() == 0) {
            url = LocaleController.getInternalString(C3419R.string.chat_reaction_link_not_added);
        }
        valueTextView.setText(url);
        getLinkImageView().setColorFilter(urlButton.getUrl().length() == 0 ? new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteBlueHeader), PorterDuff.Mode.MULTIPLY) : new PorterDuffColorFilter(Theme.getColor(Theme.key_stickers_menu), PorterDuff.Mode.MULTIPLY));
        getEditText().setText(urlButton.getTitle());
    }

    public final void addUrlAddress(String address) {
        Intrinsics.checkNotNullParameter(address, "address");
        this.urlButton.setUrl(address);
        getValueTextView().setText(address);
        ViewExtKt.visible$default(getValueTextView(), false, 1, null);
        getLinkImageView().setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_stickers_menu), PorterDuff.Mode.MULTIPLY));
    }

    public final void setEmoji(String str, boolean z) {
        this.emojiValue = str;
        getEmojiTextView().setText(Emoji.replaceEmoji(str, getEmojiTextView().getPaint().getFontMetricsInt(), AndroidUtilities.m72dp(24), false));
        this.needDivider = z;
        setWillNotDraw(!z);
    }

    public final boolean isEmojiButton() {
        String str = this.emojiValue;
        return !(str == null || str.length() == 0);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m73dp(getValueTextView().getVisibility() == 0 ? 64.0f : 48.0f) + (this.needDivider ? 1 : 0), 1073741824));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        if (this.needDivider) {
            canvas.drawLine(AndroidUtilities.m73dp(62.0f), getMeasuredHeight() - 1.0f, getMeasuredWidth(), getMeasuredHeight() - 1.0f, Theme.dividerPaint);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r1v0, types: [org.telegram.ui.Components.EditTextEffects, com.iMe.fork.ui.view.MovingReactionCell$initEditText$1, android.widget.TextView, android.widget.EditText] */
    public final MovingReactionCell$initEditText$1 initEditText() {
        final Context context = getContext();
        ?? r1 = new EditTextBoldCursor(context) { // from class: com.iMe.fork.ui.view.MovingReactionCell$initEditText$1
            @Override // android.widget.TextView, android.view.View
            public InputConnection onCreateInputConnection(EditorInfo outAttrs) {
                Intrinsics.checkNotNullParameter(outAttrs, "outAttrs");
                InputConnection conn = super.onCreateInputConnection(outAttrs);
                if (MovingReactionCell.this.getShowNextButton()) {
                    outAttrs.imeOptions &= -1073741825;
                }
                Intrinsics.checkNotNullExpressionValue(conn, "conn");
                return conn;
            }
        };
        ViewExtKt.singleLine(r1);
        r1.setGravity(LocaleController.isRTL ? 8388613 : 8388611);
        r1.setBackground(null);
        r1.setImeOptions(r1.getImeOptions() | 268435456);
        r1.setInputType(r1.getInputType() | 16384);
        r1.setHint(LocaleController.getInternalString(C3419R.string.chat_reaction_enter_the_title));
        r1.setTextSize(1, 16.0f);
        r1.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        r1.setHintTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteHintText));
        return r1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ImageView initMoveImageView() {
        ImageView imageView = new ImageView(getContext());
        imageView.setFocusable(false);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_stickers_menu), PorterDuff.Mode.MULTIPLY));
        imageView.setClickable(true);
        imageView.setImageResource(C3419R.C3421drawable.poll_reorder);
        return imageView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initValueTextView() {
        TextView textView = new TextView(getContext());
        ViewExtKt.singleLine(textView);
        textView.setGravity(8388611);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setText(LocaleController.getInternalString(C3419R.string.chat_reaction_link_not_added));
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2));
        textView.setTextSize(1, 12.0f);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ImageView initDeleteImageView() {
        ImageView imageView = new ImageView(getContext());
        imageView.setFocusable(false);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_stickers_menu), PorterDuff.Mode.MULTIPLY));
        imageView.setClickable(true);
        imageView.setImageResource(C3419R.C3421drawable.delete);
        return imageView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ImageView initLinkImageView() {
        ImageView imageView = new ImageView(getContext());
        imageView.setClickable(true);
        imageView.setFocusable(false);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteBlueHeader), PorterDuff.Mode.MULTIPLY));
        imageView.setVisibility(this.linkIconShow ? 0 : 8);
        imageView.setImageResource(C3419R.C3421drawable.msg_link);
        return imageView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initEmojiTextView() {
        TextView textView = new TextView(getContext());
        ViewExtKt.singleLine(textView);
        textView.setGravity(17);
        textView.setTextSize(1, 24.0f);
        textView.setTextColor(Theme.getColor(Theme.key_chat_messagePanelText));
        ViewExtKt.gone$default(getValueTextView(), false, 1, null);
        return textView;
    }

    private final void setupViews() {
        addView(getMoveImageView(), LayoutHelper.createFrame(48, 48, this.linkIconShow ? 8388611 : 8388627, 6, 0, 6, 0));
        if (this.linkIconShow) {
            addView(getEditText(), LayoutHelper.createFrame(-2, -1, 8388627, 58, 2, 111, 0));
            addView(getValueTextView(), LayoutHelper.createFrame(-2, -2, 8388659, 62, 36, 111, 0));
        } else {
            addView(getEmojiTextView(), LayoutHelper.createFrame(-2, -2, 16, 62, 0, 0, 0));
        }
        addView(getLinkImageView(), LayoutHelper.createFrame(48, 48, 8388613, 21, 0, 62, 0));
        addView(getDeleteImageView(), LayoutHelper.createFrame(48, 48, this.linkIconShow ? 8388613 : 8388629, 6, 0, 6, 0));
    }

    /* compiled from: MovingReactionCell.kt */
    /* renamed from: com.iMe.fork.ui.view.MovingReactionCell$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
