package com.iMe.p030ui.formatting_messages;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.iMe.fork.controller.FormattingTextController;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.List;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.EditTextBoldCursor;
import org.telegram.p043ui.Components.EditTextCaption;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.TextStyleSpan;
import org.telegram.p043ui.Components.URLSpanReplacement;
/* compiled from: FormattingMessagesKeyboardContainer.kt */
/* renamed from: com.iMe.ui.formatting_messages.FormattingMessagesKeyboardContainer */
/* loaded from: classes3.dex */
public final class FormattingMessagesKeyboardContainer extends FrameLayout {
    public static final Companion Companion = new Companion(null);
    private static final List<Integer> listTextStyleSpanFlags;
    private final Lazy bigButtons$delegate;
    private final Lazy boldButton$delegate;
    private final int buttonDefaultColor;
    private final int buttonPressedColor;
    private final int buttonTextColor;
    private final Lazy clearLink$delegate;
    private final FormattingTextController formattingTextController;
    private final Lazy iconLink$delegate;
    private final Lazy italicButton$delegate;
    private final Lazy linkContainer$delegate;
    private final Lazy linkText$delegate;
    private final Listener listener;
    private final EditTextCaption messageEditText;
    private final Lazy monoButton$delegate;
    private final Lazy pastLink$delegate;
    private final Lazy smallButtons$delegate;
    private final Lazy spoilerButton$delegate;
    private final Lazy strikeButton$delegate;
    private final int textColorPast;
    private final int titleColor;
    private final Lazy titleFormat$delegate;
    private final Lazy titleLink$delegate;
    private final Lazy underlineButton$delegate;
    private final View view;

    /* compiled from: FormattingMessagesKeyboardContainer.kt */
    /* renamed from: com.iMe.ui.formatting_messages.FormattingMessagesKeyboardContainer$Listener */
    /* loaded from: classes3.dex */
    public interface Listener {
        void onSearchOpenClose(String str);

        void onTranslationYChanged(float f);
    }

    public final EditTextCaption getMessageEditText() {
        return this.messageEditText;
    }

    public final Listener getListener() {
        return this.listener;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FormattingMessagesKeyboardContainer(Context context, EditTextCaption messageEditText, FormattingTextController formattingTextController, Listener listener) {
        super(context);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        Lazy lazy7;
        Lazy lazy8;
        Lazy lazy9;
        Lazy lazy10;
        Lazy lazy11;
        Lazy lazy12;
        Lazy lazy13;
        Lazy lazy14;
        Lazy lazy15;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(messageEditText, "messageEditText");
        Intrinsics.checkNotNullParameter(formattingTextController, "formattingTextController");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.messageEditText = messageEditText;
        this.formattingTextController = formattingTextController;
        this.listener = listener;
        int i = Theme.key_chats_nameMessage_threeLines;
        this.titleColor = i;
        this.buttonTextColor = i;
        this.buttonDefaultColor = Theme.key_windowBackgroundGray;
        this.buttonPressedColor = Theme.key_featuredStickers_addButtonPressed;
        this.textColorPast = Theme.key_featuredStickers_addButton;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<TextView>() { // from class: com.iMe.ui.formatting_messages.FormattingMessagesKeyboardContainer$titleLink$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextView invoke() {
                TextView initTitleLink;
                initTitleLink = FormattingMessagesKeyboardContainer.this.initTitleLink();
                return initTitleLink;
            }
        });
        this.titleLink$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<ImageView>() { // from class: com.iMe.ui.formatting_messages.FormattingMessagesKeyboardContainer$iconLink$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ImageView invoke() {
                ImageView initIconLink;
                initIconLink = FormattingMessagesKeyboardContainer.this.initIconLink();
                return initIconLink;
            }
        });
        this.iconLink$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<FormattingMessagesKeyboardContainer$initLinkText$1>() { // from class: com.iMe.ui.formatting_messages.FormattingMessagesKeyboardContainer$linkText$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final FormattingMessagesKeyboardContainer$initLinkText$1 invoke() {
                FormattingMessagesKeyboardContainer$initLinkText$1 initLinkText;
                initLinkText = FormattingMessagesKeyboardContainer.this.initLinkText();
                return initLinkText;
            }
        });
        this.linkText$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<TextView>() { // from class: com.iMe.ui.formatting_messages.FormattingMessagesKeyboardContainer$pastLink$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextView invoke() {
                TextView initPastLink;
                initPastLink = FormattingMessagesKeyboardContainer.this.initPastLink();
                return initPastLink;
            }
        });
        this.pastLink$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<ImageView>() { // from class: com.iMe.ui.formatting_messages.FormattingMessagesKeyboardContainer$clearLink$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ImageView invoke() {
                ImageView initClearLink;
                initClearLink = FormattingMessagesKeyboardContainer.this.initClearLink();
                return initClearLink;
            }
        });
        this.clearLink$delegate = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new Function0<TextView>() { // from class: com.iMe.ui.formatting_messages.FormattingMessagesKeyboardContainer$titleFormat$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextView invoke() {
                TextView initTitleFormat;
                initTitleFormat = FormattingMessagesKeyboardContainer.this.initTitleFormat();
                return initTitleFormat;
            }
        });
        this.titleFormat$delegate = lazy6;
        lazy7 = LazyKt__LazyJVMKt.lazy(new Function0<TextView>() { // from class: com.iMe.ui.formatting_messages.FormattingMessagesKeyboardContainer$boldButton$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextView invoke() {
                TextView initBoldButton;
                initBoldButton = FormattingMessagesKeyboardContainer.this.initBoldButton();
                return initBoldButton;
            }
        });
        this.boldButton$delegate = lazy7;
        lazy8 = LazyKt__LazyJVMKt.lazy(new Function0<TextView>() { // from class: com.iMe.ui.formatting_messages.FormattingMessagesKeyboardContainer$italicButton$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextView invoke() {
                TextView initItalicButton;
                initItalicButton = FormattingMessagesKeyboardContainer.this.initItalicButton();
                return initItalicButton;
            }
        });
        this.italicButton$delegate = lazy8;
        lazy9 = LazyKt__LazyJVMKt.lazy(new Function0<TextView>() { // from class: com.iMe.ui.formatting_messages.FormattingMessagesKeyboardContainer$underlineButton$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextView invoke() {
                TextView initUnderlineButton;
                initUnderlineButton = FormattingMessagesKeyboardContainer.this.initUnderlineButton();
                return initUnderlineButton;
            }
        });
        this.underlineButton$delegate = lazy9;
        lazy10 = LazyKt__LazyJVMKt.lazy(new Function0<TextView>() { // from class: com.iMe.ui.formatting_messages.FormattingMessagesKeyboardContainer$strikeButton$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextView invoke() {
                TextView initStrikeButton;
                initStrikeButton = FormattingMessagesKeyboardContainer.this.initStrikeButton();
                return initStrikeButton;
            }
        });
        this.strikeButton$delegate = lazy10;
        lazy11 = LazyKt__LazyJVMKt.lazy(new Function0<TextView>() { // from class: com.iMe.ui.formatting_messages.FormattingMessagesKeyboardContainer$monoButton$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextView invoke() {
                TextView initMonoButton;
                initMonoButton = FormattingMessagesKeyboardContainer.this.initMonoButton();
                return initMonoButton;
            }
        });
        this.monoButton$delegate = lazy11;
        lazy12 = LazyKt__LazyJVMKt.lazy(new Function0<TextView>() { // from class: com.iMe.ui.formatting_messages.FormattingMessagesKeyboardContainer$spoilerButton$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextView invoke() {
                TextView initSpoilerButton;
                initSpoilerButton = FormattingMessagesKeyboardContainer.this.initSpoilerButton();
                return initSpoilerButton;
            }
        });
        this.spoilerButton$delegate = lazy12;
        lazy13 = LazyKt__LazyJVMKt.lazy(new Function0<LinearLayout>() { // from class: com.iMe.ui.formatting_messages.FormattingMessagesKeyboardContainer$bigButtons$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final LinearLayout invoke() {
                LinearLayout initBigButtons;
                initBigButtons = FormattingMessagesKeyboardContainer.this.initBigButtons();
                return initBigButtons;
            }
        });
        this.bigButtons$delegate = lazy13;
        lazy14 = LazyKt__LazyJVMKt.lazy(new Function0<LinearLayout>() { // from class: com.iMe.ui.formatting_messages.FormattingMessagesKeyboardContainer$smallButtons$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final LinearLayout invoke() {
                LinearLayout initSmallButtons;
                initSmallButtons = FormattingMessagesKeyboardContainer.this.initSmallButtons();
                return initSmallButtons;
            }
        });
        this.smallButtons$delegate = lazy14;
        lazy15 = LazyKt__LazyJVMKt.lazy(new Function0<LinearLayout>() { // from class: com.iMe.ui.formatting_messages.FormattingMessagesKeyboardContainer$linkContainer$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final LinearLayout invoke() {
                LinearLayout initLinkContainer;
                initLinkContainer = FormattingMessagesKeyboardContainer.this.initLinkContainer();
                return initLinkContainer;
            }
        });
        this.linkContainer$delegate = lazy15;
        View view = new View(context);
        this.view = view;
        updateView();
        addView(view, LayoutHelper.createFrame(-1, AndroidUtilities.m104dp(1), 48));
        addView(getTitleLink(), LayoutHelper.createFrame(-2, -2));
        addView(getLinkContainer(), LayoutHelper.createFrame(-1, -2, 0, AndroidUtilities.m104dp(8), 0, AndroidUtilities.m104dp(8), 0));
        addView(getTitleFormat(), LayoutHelper.createFrame(-2, -2, 80));
        addView(getSmallButtons(), LayoutHelper.createFrame(-1, 60, 80));
        addView(getBigButtons(), LayoutHelper.createFrame(-1, 60, 80));
        setupListeners();
    }

    private final TextView getTitleLink() {
        return (TextView) this.titleLink$delegate.getValue();
    }

    private final ImageView getIconLink() {
        return (ImageView) this.iconLink$delegate.getValue();
    }

    private final FormattingMessagesKeyboardContainer$initLinkText$1 getLinkText() {
        return (FormattingMessagesKeyboardContainer$initLinkText$1) this.linkText$delegate.getValue();
    }

    private final TextView getPastLink() {
        return (TextView) this.pastLink$delegate.getValue();
    }

    private final ImageView getClearLink() {
        return (ImageView) this.clearLink$delegate.getValue();
    }

    private final TextView getTitleFormat() {
        return (TextView) this.titleFormat$delegate.getValue();
    }

    private final TextView getBoldButton() {
        return (TextView) this.boldButton$delegate.getValue();
    }

    private final TextView getItalicButton() {
        return (TextView) this.italicButton$delegate.getValue();
    }

    private final TextView getUnderlineButton() {
        return (TextView) this.underlineButton$delegate.getValue();
    }

    private final TextView getStrikeButton() {
        return (TextView) this.strikeButton$delegate.getValue();
    }

    private final TextView getMonoButton() {
        return (TextView) this.monoButton$delegate.getValue();
    }

    private final TextView getSpoilerButton() {
        return (TextView) this.spoilerButton$delegate.getValue();
    }

    private final LinearLayout getBigButtons() {
        return (LinearLayout) this.bigButtons$delegate.getValue();
    }

    private final LinearLayout getSmallButtons() {
        return (LinearLayout) this.smallButtons$delegate.getValue();
    }

    private final LinearLayout getLinkContainer() {
        return (LinearLayout) this.linkContainer$delegate.getValue();
    }

    public final void setEnabledView(boolean z) {
        getBoldButton().setEnabled(z);
        getItalicButton().setEnabled(z);
        getUnderlineButton().setEnabled(z);
        getStrikeButton().setEnabled(z);
        getMonoButton().setEnabled(z);
        getSpoilerButton().setEnabled(z);
        getPastLink().setEnabled(z);
        getLinkText().setEnabled(z);
    }

    public final void updateView() {
        List<? extends TextView> mutableListOf;
        setBackgroundColor(Theme.getColor(Theme.key_chat_messagePanelBackground));
        this.view.setBackgroundColor(Theme.getColor(Theme.key_chat_replyPanelLine));
        getTitleLink().setTextColor(Theme.getColor(this.titleColor));
        getIconLink().setColorFilter(Theme.getColor(this.titleColor));
        getClearLink().setColorFilter(Theme.getColor(Theme.key_text_RedBold));
        getTitleFormat().setTextColor(Theme.getColor(this.titleColor));
        TextView pastLink = getPastLink();
        pastLink.setAlpha(pastLink.isEnabled() ? 1.0f : 0.5f);
        pastLink.setTextColor(Theme.getColor(this.textColorPast));
        FormattingMessagesKeyboardContainer$initLinkText$1 linkText = getLinkText();
        linkText.setAlpha(linkText.isEnabled() ? 1.0f : 0.5f);
        if (this.formattingTextController.getListSpansFlags().size() == 1) {
            if ((this.formattingTextController.getListSpansFlags().get(0).getUrl().length() > 0) && linkText.isEnabled()) {
                linkText.setText(this.formattingTextController.getListSpansFlags().get(0).getUrl());
                ViewExtKt.gone$default(getPastLink(), false, 1, null);
                getClearLink().setVisibility(0);
                linkText.setHintTextColor(Theme.getColor(this.titleColor));
                linkText.setTextColor(Theme.getColor(this.titleColor));
                linkText.setBackgroundDrawable(null);
                mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(getBoldButton(), getItalicButton(), getUnderlineButton(), getStrikeButton(), getSpoilerButton(), getMonoButton());
                updateTextColor(mutableListOf);
                getLinkContainer().setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m105dp(8.0f), Theme.getColor(this.buttonDefaultColor), Theme.getColor(this.buttonPressedColor)));
            }
        }
        ViewExtKt.gone$default(getClearLink(), false, 1, null);
        getPastLink().setVisibility(0);
        linkText.setText("");
        linkText.setHintTextColor(Theme.getColor(this.titleColor));
        linkText.setTextColor(Theme.getColor(this.titleColor));
        linkText.setBackgroundDrawable(null);
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(getBoldButton(), getItalicButton(), getUnderlineButton(), getStrikeButton(), getSpoilerButton(), getMonoButton());
        updateTextColor(mutableListOf);
        getLinkContainer().setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m105dp(8.0f), Theme.getColor(this.buttonDefaultColor), Theme.getColor(this.buttonPressedColor)));
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x01a8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x017b A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateBackgroundButton(android.widget.TextView r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 551
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.p030ui.formatting_messages.FormattingMessagesKeyboardContainer.updateBackgroundButton(android.widget.TextView, boolean):void");
    }

    private final void switchMonoButton(boolean z, float f) {
        if (this.messageEditText.getSelectionEnd() - this.messageEditText.getSelectionStart() > 0) {
            getBoldButton().setEnabled(z);
            getItalicButton().setEnabled(z);
            getUnderlineButton().setEnabled(z);
            getStrikeButton().setEnabled(z);
            getSpoilerButton().setEnabled(z);
            getPastLink().setEnabled(z);
            getLinkText().setEnabled(z);
            getBoldButton().setAlpha(f);
            getItalicButton().setAlpha(f);
            getUnderlineButton().setAlpha(f);
            getStrikeButton().setAlpha(f);
            getSpoilerButton().setAlpha(f);
            getPastLink().setAlpha(f);
            getLinkText().setAlpha(f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initTitleLink() {
        TextView textView = new TextView(getContext());
        textView.setGravity(17);
        textView.setText(LocaleController.getString(C3634R.string.formatting_link_title));
        textView.setTextSize(1, 14.0f);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ImageView initIconLink() {
        ImageView imageView = new ImageView(getContext());
        int m104dp = AndroidUtilities.m104dp(8);
        imageView.setPadding(m104dp, m104dp, m104dp, m104dp);
        imageView.setImageResource(C3634R.C3636drawable.msg_link_folder);
        return imageView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.iMe.ui.formatting_messages.FormattingMessagesKeyboardContainer$initLinkText$1, org.telegram.ui.Components.EditTextBoldCursor, android.widget.EditText] */
    public final FormattingMessagesKeyboardContainer$initLinkText$1 initLinkText() {
        final Context context = getContext();
        ?? r1 = new EditTextBoldCursor(context) { // from class: com.iMe.ui.formatting_messages.FormattingMessagesKeyboardContainer$initLinkText$1
            @Override // org.telegram.p043ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
            public boolean onTouchEvent(MotionEvent event) {
                Intrinsics.checkNotNullParameter(event, "event");
                if (event.getAction() == 0 && isEnabled()) {
                    FormattingMessagesKeyboardContainer.this.getListener().onSearchOpenClose(getText().toString());
                    return super.onTouchEvent(event);
                }
                return false;
            }
        };
        r1.setGravity(16);
        r1.setTextSize(1, 16.0f);
        r1.setLines(1);
        r1.setSingleLine(true);
        r1.setImeOptions(268435459);
        r1.setHint(r1.getContext().getString(C3634R.string.formatting_link_hint_edit_text));
        r1.setCursorColor(Theme.key_featuredStickers_addedIcon);
        r1.setCursorSize(AndroidUtilities.m104dp(20));
        return r1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initPastLink() {
        TextView textView = new TextView(getContext());
        String string = LocaleController.getString(17039371);
        Intrinsics.checkNotNullExpressionValue(string, "getString(android.R.string.paste)");
        Locale locale = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale, "getDefault()");
        String upperCase = string.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        textView.setText(upperCase);
        textView.setTextSize(1, 18.0f);
        textView.setPadding(0, 0, AndroidUtilities.m104dp(8), 0);
        textView.setIncludeFontPadding(false);
        ViewExtKt.gone$default(textView, false, 1, null);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ImageView initClearLink() {
        ImageView imageView = new ImageView(getContext());
        ViewExtKt.gone$default(imageView, false, 1, null);
        imageView.setImageResource(C3634R.C3636drawable.msg_delete);
        int m104dp = AndroidUtilities.m104dp(8);
        imageView.setPadding(m104dp, m104dp, m104dp, m104dp);
        return imageView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initTitleFormat() {
        TextView textView = new TextView(getContext());
        textView.setGravity(17);
        textView.setText(textView.getContext().getText(C3634R.string.formatting_hint_format));
        textView.setTextSize(1, 14.0f);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initBoldButton() {
        TextView textView = new TextView(getContext());
        textView.setTag(this.formattingTextController.getListTextStyleSpanFlags().get(0));
        textView.setGravity(17);
        textView.setText("B");
        ViewExtKt.withMediumTypeface(textView);
        textView.setTextSize(1, 18.0f);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initItalicButton() {
        TextView textView = new TextView(getContext());
        textView.setTag(this.formattingTextController.getListTextStyleSpanFlags().get(1));
        textView.setGravity(17);
        textView.setText("I");
        textView.setTypeface(AndroidUtilities.getTypeface("fonts/ritalic.ttf"));
        textView.setTextSize(1, 18.0f);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initUnderlineButton() {
        TextView textView = new TextView(getContext());
        textView.setTag(this.formattingTextController.getListTextStyleSpanFlags().get(4));
        textView.setGravity(17);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("U");
        TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
        textStyleRun.flags = textStyleRun.flags | 16 | 1;
        spannableStringBuilder.setSpan(new TextStyleSpan(textStyleRun), 0, spannableStringBuilder.length(), 33);
        textView.setText(spannableStringBuilder);
        ViewExtKt.withMediumTypeface(textView);
        textView.setTextSize(1, 18.0f);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initStrikeButton() {
        TextView textView = new TextView(getContext());
        textView.setTag(this.formattingTextController.getListTextStyleSpanFlags().get(3));
        textView.setGravity(17);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("S");
        TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
        textStyleRun.flags = textStyleRun.flags | 8 | 1;
        spannableStringBuilder.setSpan(new TextStyleSpan(textStyleRun), 0, spannableStringBuilder.length(), 33);
        textView.setText(spannableStringBuilder);
        textView.setTypeface(AndroidUtilities.getTypeface(""));
        textView.setTextSize(1, 18.0f);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initMonoButton() {
        TextView textView = new TextView(getContext());
        textView.setTag(this.formattingTextController.getListTextStyleSpanFlags().get(2));
        textView.setGravity(17);
        textView.setIncludeFontPadding(false);
        textView.setText(LocaleController.getString("Mono", C3634R.string.Mono));
        ViewExtKt.withMediumTypeface(textView);
        textView.setTextSize(1, 18.0f);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.formatting_messages.FormattingMessagesKeyboardContainer$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FormattingMessagesKeyboardContainer.initMonoButton$lambda$16$lambda$15(FormattingMessagesKeyboardContainer.this, view);
            }
        });
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initMonoButton$lambda$16$lambda$15(FormattingMessagesKeyboardContainer this$0, View it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FormattingTextController formattingTextController = this$0.formattingTextController;
        EditTextCaption editTextCaption = this$0.messageEditText;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        formattingTextController.replaceSpans(editTextCaption, it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initSpoilerButton() {
        TextView textView = new TextView(getContext());
        textView.setTag(this.formattingTextController.getListTextStyleSpanFlags().get(5));
        textView.setGravity(17);
        textView.setIncludeFontPadding(false);
        textView.setText(LocaleController.getString("Spoiler", C3634R.string.Spoiler));
        ViewExtKt.withMediumTypeface(textView);
        textView.setTextSize(1, 18.0f);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.formatting_messages.FormattingMessagesKeyboardContainer$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FormattingMessagesKeyboardContainer.initSpoilerButton$lambda$18$lambda$17(FormattingMessagesKeyboardContainer.this, view);
            }
        });
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initSpoilerButton$lambda$18$lambda$17(FormattingMessagesKeyboardContainer this$0, View it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FormattingTextController formattingTextController = this$0.formattingTextController;
        EditTextCaption editTextCaption = this$0.messageEditText;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        formattingTextController.replaceSpans(editTextCaption, it);
    }

    private final void setupListeners() {
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.iMe.ui.formatting_messages.FormattingMessagesKeyboardContainer$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FormattingMessagesKeyboardContainer.setupListeners$lambda$19(FormattingMessagesKeyboardContainer.this, view);
            }
        };
        getBoldButton().setOnClickListener(onClickListener);
        getItalicButton().setOnClickListener(onClickListener);
        getUnderlineButton().setOnClickListener(onClickListener);
        getStrikeButton().setOnClickListener(onClickListener);
        getMonoButton().setOnClickListener(onClickListener);
        getSpoilerButton().setOnClickListener(onClickListener);
        getClearLink().setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.formatting_messages.FormattingMessagesKeyboardContainer$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FormattingMessagesKeyboardContainer.setupListeners$lambda$20(FormattingMessagesKeyboardContainer.this, view);
            }
        });
        getPastLink().setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.formatting_messages.FormattingMessagesKeyboardContainer$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FormattingMessagesKeyboardContainer.setupListeners$lambda$22(FormattingMessagesKeyboardContainer.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$19(FormattingMessagesKeyboardContainer this$0, View it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FormattingTextController formattingTextController = this$0.formattingTextController;
        EditTextCaption editTextCaption = this$0.messageEditText;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        formattingTextController.replaceSpans(editTextCaption, it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$20(FormattingMessagesKeyboardContainer this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ViewExtKt.gone$default(this$0.getClearLink(), false, 1, null);
        ViewExtKt.visible$default(this$0.getPastLink(), false, 1, null);
        this$0.getLinkText().setText("");
        this$0.formattingTextController.getListSpansFlags().get(0).setUrl("");
        int summaryFlags = this$0.formattingTextController.getListSpansFlags().get(0).getSummaryFlags();
        MediaDataController.addStyleToText(null, this$0.formattingTextController.getListSpansFlags().get(0).getStartIndexWord(), this$0.formattingTextController.getListSpansFlags().get(0).getEndIndexWord(), this$0.messageEditText.getText(), true);
        if (summaryFlags > 0) {
            TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
            textStyleRun.flags = summaryFlags;
            this$0.messageEditText.getText().setSpan(new TextStyleSpan(textStyleRun), this$0.formattingTextController.getListSpansFlags().get(0).getStartIndexWord(), this$0.formattingTextController.getListSpansFlags().get(0).getEndIndexWord(), 33);
        }
        EditTextCaption.EditTextCaptionDelegate delegate = this$0.messageEditText.getDelegate();
        if (delegate != null) {
            delegate.onSpansChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$22(FormattingMessagesKeyboardContainer this$0, View view) {
        ClipData primaryClip;
        ClipData.Item itemAt;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Object systemService = this$0.getContext().getSystemService("clipboard");
        ClipboardManager clipboardManager = systemService instanceof ClipboardManager ? (ClipboardManager) systemService : null;
        CharSequence text = (clipboardManager == null || (primaryClip = clipboardManager.getPrimaryClip()) == null || (itemAt = primaryClip.getItemAt(0)) == null) ? null : itemAt.getText();
        if (text == null) {
            text = "";
        }
        if (text.length() > 0) {
            this$0.getLinkText().setText(text);
            ViewExtKt.gone$default(this$0.getPastLink(), false, 1, null);
            ViewExtKt.visible$default(this$0.getClearLink(), false, 1, null);
            Editable text2 = this$0.messageEditText.getText();
            Intrinsics.checkNotNullExpressionValue(text2, "messageEditText.text");
            try {
                for (FormattingTextController.TextStyle textStyle : this$0.formattingTextController.getListSpansFlags()) {
                    MediaDataController.addStyleToText(null, textStyle.getStartIndexWord(), textStyle.getEndIndexWord(), this$0.messageEditText.getText(), true);
                    textStyle.setUrl(text.toString());
                    if (textStyle.getSummaryFlags() > 0) {
                        TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
                        textStyleRun.flags = textStyle.getSummaryFlags();
                        text2.setSpan(new URLSpanReplacement(text.toString(), textStyleRun), textStyle.getStartIndexWord(), textStyle.getEndIndexWord(), 33);
                    } else {
                        text2.setSpan(new URLSpanReplacement(text.toString()), textStyle.getStartIndexWord(), textStyle.getEndIndexWord(), 33);
                    }
                }
            } catch (Exception unused) {
            }
            EditTextCaption.EditTextCaptionDelegate delegate = this$0.messageEditText.getDelegate();
            if (delegate != null) {
                delegate.onSpansChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LinearLayout initLinkContainer() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m105dp(8.0f), Theme.getColor(this.buttonDefaultColor), Theme.getColor(this.buttonPressedColor)));
        linearLayout.addView(getIconLink(), LayoutHelper.createLinear(-2, 40));
        linearLayout.addView(getLinkText(), LayoutHelper.createLinear(-1, 40, 1.0f));
        linearLayout.addView(getPastLink(), LayoutHelper.createLinear(-2, 40));
        linearLayout.addView(getClearLink(), LayoutHelper.createLinear(-2, 40));
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LinearLayout initSmallButtons() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.addView(getBoldButton(), LayoutHelper.createLinear(-2, 60, 1.0f, AndroidUtilities.m104dp(8), 0, 0, 0));
        linearLayout.addView(getItalicButton(), LayoutHelper.createLinear(-2, 60, 1.0f, AndroidUtilities.m104dp(1), 0, 0, 0));
        linearLayout.addView(getUnderlineButton(), LayoutHelper.createLinear(-2, 60, 1.0f, AndroidUtilities.m104dp(1), 0, 0, 0));
        linearLayout.addView(getStrikeButton(), LayoutHelper.createLinear(-2, 60, 1.0f, AndroidUtilities.m104dp(1), 0, AndroidUtilities.m104dp(8), 0));
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LinearLayout initBigButtons() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.addView(getMonoButton(), LayoutHelper.createLinear(-2, 60, 1.0f, AndroidUtilities.m104dp(8), 0, AndroidUtilities.m104dp(2), AndroidUtilities.m104dp(8)));
        linearLayout.addView(getSpoilerButton(), LayoutHelper.createLinear(-2, 60, 1.0f, AndroidUtilities.m104dp(2), 0, AndroidUtilities.m104dp(8), AndroidUtilities.m104dp(8)));
        return linearLayout;
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        super.setTranslationY(f);
        this.listener.onTranslationYChanged(f);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        ViewExtKt.setMargins(getTitleLink(), AndroidUtilities.m104dp(50), AndroidUtilities.m104dp(20), 0, 0);
        LinearLayout linkContainer = getLinkContainer();
        ViewGroup.LayoutParams layoutParams = getLinkContainer().getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        int i3 = marginLayoutParams != null ? marginLayoutParams.leftMargin : 0;
        int m104dp = AndroidUtilities.m104dp(50);
        ViewGroup.LayoutParams layoutParams2 = getLinkContainer().getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : null;
        ViewExtKt.setMargins(linkContainer, i3, m104dp, marginLayoutParams2 != null ? marginLayoutParams2.rightMargin : 0, 0);
        ViewExtKt.setMargins(getTitleFormat(), AndroidUtilities.m104dp(50), 0, 0, AndroidUtilities.m104dp(163));
        ViewExtKt.setMargins(getSmallButtons(), 0, 0, 0, AndroidUtilities.m104dp(90));
        ViewExtKt.setMargins(getBigButtons(), 0, 0, 0, AndroidUtilities.m104dp(20));
        super.onMeasure(i, i2);
    }

    /* compiled from: FormattingMessagesKeyboardContainer.kt */
    /* renamed from: com.iMe.ui.formatting_messages.FormattingMessagesKeyboardContainer$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<Integer> getListTextStyleSpanFlags() {
            return FormattingMessagesKeyboardContainer.listTextStyleSpanFlags;
        }
    }

    static {
        List<Integer> mutableListOf;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(1, 2, 4, 8, 16, 256);
        listTextStyleSpanFlags = mutableListOf;
    }

    private final void updateTextColor(List<? extends TextView> list) {
        boolean z;
        for (TextView textView : list) {
            textView.setAlpha(textView.isEnabled() ? 1.0f : 0.5f);
            if (textView.isEnabled()) {
                FormattingTextController formattingTextController = this.formattingTextController;
                Object tag = textView.getTag();
                Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type kotlin.Int");
                if (formattingTextController.searchTag(((Integer) tag).intValue())) {
                    z = true;
                    updateBackgroundButton(textView, z);
                }
            }
            z = false;
            updateBackgroundButton(textView, z);
        }
    }
}
