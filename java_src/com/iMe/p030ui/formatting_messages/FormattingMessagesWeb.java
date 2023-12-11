package com.iMe.p030ui.formatting_messages;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.controller.FormattingTextController;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.ChatActivityEnterView;
import org.telegram.p043ui.Components.EditTextCaption;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.TextStyleSpan;
/* compiled from: FormattingMessagesWeb.kt */
/* renamed from: com.iMe.ui.formatting_messages.FormattingMessagesWeb */
/* loaded from: classes3.dex */
public final class FormattingMessagesWeb extends LinearLayout {
    private final Lazy boldButton$delegate;
    private final int buttonDefaultColor;
    private final int buttonPressedColor;
    private final int buttonTextColor;
    private final ChatActivityEnterView chatActivityEnterView;
    private final Lazy closeButton$delegate;
    private final Lazy containerButton$delegate;
    private final FormattingTextController formattingTextController;
    private final Lazy italicButton$delegate;
    private final Lazy linkButton$delegate;
    private final EditTextCaption messageEditText;
    private final Lazy monoButton$delegate;
    private final View separator;
    private final Lazy spoilerButton$delegate;
    private final Lazy strikeButton$delegate;
    private final int textColorPast;
    private final Lazy underlineButton$delegate;

    static {
        new Companion(null);
    }

    public final ChatActivityEnterView getChatActivityEnterView() {
        return this.chatActivityEnterView;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FormattingMessagesWeb(Context context, FormattingTextController formattingTextController, ChatActivityEnterView chatActivityEnterView) {
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
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(formattingTextController, "formattingTextController");
        Intrinsics.checkNotNullParameter(chatActivityEnterView, "chatActivityEnterView");
        this.formattingTextController = formattingTextController;
        this.chatActivityEnterView = chatActivityEnterView;
        this.messageEditText = chatActivityEnterView.getEditField();
        this.buttonTextColor = Theme.key_chats_nameMessage_threeLines;
        this.buttonDefaultColor = Theme.key_windowBackgroundGray;
        this.buttonPressedColor = Theme.key_featuredStickers_addButtonPressed;
        this.textColorPast = Theme.key_featuredStickers_addButton;
        View view = new View(context);
        this.separator = view;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<ImageView>() { // from class: com.iMe.ui.formatting_messages.FormattingMessagesWeb$closeButton$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ImageView invoke() {
                ImageView initCloseButton;
                initCloseButton = FormattingMessagesWeb.this.initCloseButton();
                return initCloseButton;
            }
        });
        this.closeButton$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<TextView>() { // from class: com.iMe.ui.formatting_messages.FormattingMessagesWeb$boldButton$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextView invoke() {
                TextView initBoldButton;
                initBoldButton = FormattingMessagesWeb.this.initBoldButton();
                return initBoldButton;
            }
        });
        this.boldButton$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<TextView>() { // from class: com.iMe.ui.formatting_messages.FormattingMessagesWeb$italicButton$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextView invoke() {
                TextView initItalicButton;
                initItalicButton = FormattingMessagesWeb.this.initItalicButton();
                return initItalicButton;
            }
        });
        this.italicButton$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<TextView>() { // from class: com.iMe.ui.formatting_messages.FormattingMessagesWeb$underlineButton$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextView invoke() {
                TextView initUnderlineButton;
                initUnderlineButton = FormattingMessagesWeb.this.initUnderlineButton();
                return initUnderlineButton;
            }
        });
        this.underlineButton$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<TextView>() { // from class: com.iMe.ui.formatting_messages.FormattingMessagesWeb$strikeButton$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextView invoke() {
                TextView initStrikeButton;
                initStrikeButton = FormattingMessagesWeb.this.initStrikeButton();
                return initStrikeButton;
            }
        });
        this.strikeButton$delegate = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new Function0<TextView>() { // from class: com.iMe.ui.formatting_messages.FormattingMessagesWeb$monoButton$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextView invoke() {
                TextView initMonoButton;
                initMonoButton = FormattingMessagesWeb.this.initMonoButton();
                return initMonoButton;
            }
        });
        this.monoButton$delegate = lazy6;
        lazy7 = LazyKt__LazyJVMKt.lazy(new Function0<ImageView>() { // from class: com.iMe.ui.formatting_messages.FormattingMessagesWeb$spoilerButton$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ImageView invoke() {
                ImageView initSpoilerButton;
                initSpoilerButton = FormattingMessagesWeb.this.initSpoilerButton();
                return initSpoilerButton;
            }
        });
        this.spoilerButton$delegate = lazy7;
        lazy8 = LazyKt__LazyJVMKt.lazy(new Function0<ImageView>() { // from class: com.iMe.ui.formatting_messages.FormattingMessagesWeb$linkButton$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ImageView invoke() {
                ImageView initLinkButton;
                initLinkButton = FormattingMessagesWeb.this.initLinkButton();
                return initLinkButton;
            }
        });
        this.linkButton$delegate = lazy8;
        lazy9 = LazyKt__LazyJVMKt.lazy(new Function0<LinearLayout>() { // from class: com.iMe.ui.formatting_messages.FormattingMessagesWeb$containerButton$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final LinearLayout invoke() {
                LinearLayout initContainerButton;
                initContainerButton = FormattingMessagesWeb.this.initContainerButton();
                return initContainerButton;
            }
        });
        this.containerButton$delegate = lazy9;
        updateColors();
        setOrientation(1);
        addView(view, LayoutHelper.createLinear(-1, 2, 48));
        addView(getContainerButton(), LayoutHelper.createLinear(-1, -1, 17));
        setupListeners();
    }

    private final ImageView getCloseButton() {
        return (ImageView) this.closeButton$delegate.getValue();
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

    private final ImageView getSpoilerButton() {
        return (ImageView) this.spoilerButton$delegate.getValue();
    }

    private final ImageView getLinkButton() {
        return (ImageView) this.linkButton$delegate.getValue();
    }

    private final LinearLayout getContainerButton() {
        return (LinearLayout) this.containerButton$delegate.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x0243 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0216 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateBackgroundButton(android.view.View r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 690
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.p030ui.formatting_messages.FormattingMessagesWeb.updateBackgroundButton(android.view.View, boolean):void");
    }

    public final void setEnabledView(boolean z) {
        getBoldButton().setEnabled(z);
        getItalicButton().setEnabled(z);
        getUnderlineButton().setEnabled(z);
        getStrikeButton().setEnabled(z);
        getMonoButton().setEnabled(z);
        getSpoilerButton().setEnabled(z);
        getLinkButton().setEnabled(z);
    }

    public final void updateColors() {
        List<? extends View> mutableListOf;
        setBackgroundColor(Theme.getColor(Theme.key_chat_messagePanelBackground));
        this.separator.setBackgroundColor(Theme.getColor(Theme.key_chat_replyPanelLine));
        getCloseButton().setColorFilter(Theme.getColor(this.buttonTextColor));
        getCloseButton().setBackground(Theme.createSimpleSelectorCircleDrawable(0, Theme.getColor(Theme.key_windowBackgroundGray), Theme.getColor(this.buttonPressedColor)));
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(getBoldButton(), getItalicButton(), getUnderlineButton(), getStrikeButton(), getLinkButton(), getSpoilerButton(), getMonoButton());
        updateTextColor(mutableListOf);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ImageView initCloseButton() {
        ImageView imageView = new ImageView(getContext());
        int m104dp = AndroidUtilities.m104dp(8);
        imageView.setPadding(m104dp, m104dp, m104dp, m104dp);
        imageView.setColorFilter(Theme.getColor(this.buttonTextColor));
        imageView.setImageResource(C3632R.C3634drawable.pip_close);
        return imageView;
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
        ViewExtKt.withMediumTypeface(textView);
        textView.setTextSize(1, 18.0f);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initMonoButton() {
        TextView textView = new TextView(getContext());
        textView.setTag(this.formattingTextController.getListTextStyleSpanFlags().get(2));
        textView.setGravity(17);
        textView.setText("M");
        ViewExtKt.withMediumTypeface(textView);
        textView.setTextSize(1, 18.0f);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ImageView initSpoilerButton() {
        ImageView imageView = new ImageView(getContext());
        imageView.setTag(this.formattingTextController.getListTextStyleSpanFlags().get(5));
        setGravity(16);
        int m104dp = AndroidUtilities.m104dp(12);
        imageView.setPadding(m104dp, m104dp, m104dp, m104dp);
        imageView.setImageResource(C3632R.C3634drawable.fork_wallet_crypto_cipher_eye);
        return imageView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ImageView initLinkButton() {
        ImageView imageView = new ImageView(getContext());
        imageView.setTag(6);
        int m104dp = AndroidUtilities.m104dp(12);
        imageView.setPadding(m104dp, m104dp, m104dp, m104dp);
        setGravity(16);
        imageView.setColorFilter(Theme.getColor(this.buttonTextColor));
        imageView.setImageResource(C3632R.C3634drawable.msg_link_folder);
        return imageView;
    }

    private final void setupListeners() {
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.iMe.ui.formatting_messages.FormattingMessagesWeb$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FormattingMessagesWeb.setupListeners$lambda$10(FormattingMessagesWeb.this, view);
            }
        };
        getBoldButton().setOnClickListener(onClickListener);
        getItalicButton().setOnClickListener(onClickListener);
        getUnderlineButton().setOnClickListener(onClickListener);
        getStrikeButton().setOnClickListener(onClickListener);
        getMonoButton().setOnClickListener(onClickListener);
        getSpoilerButton().setOnClickListener(onClickListener);
        getLinkButton().setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.formatting_messages.FormattingMessagesWeb$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FormattingMessagesWeb.setupListeners$lambda$11(FormattingMessagesWeb.this, view);
            }
        });
        getCloseButton().setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.formatting_messages.FormattingMessagesWeb$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FormattingMessagesWeb.setupListeners$lambda$12(FormattingMessagesWeb.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$10(FormattingMessagesWeb this$0, View it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FormattingTextController formattingTextController = this$0.formattingTextController;
        EditTextCaption editTextCaption = this$0.messageEditText;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        formattingTextController.replaceSpans(editTextCaption, it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$11(FormattingMessagesWeb this$0, View view) {
        String str;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditTextCaption editTextCaption = this$0.messageEditText;
        if (editTextCaption != null) {
            if (this$0.formattingTextController.getListSpansFlags().size() == 1) {
                if ((this$0.formattingTextController.getListSpansFlags().get(0).getUrl().length() > 0) && this$0.isEnabled()) {
                    str = this$0.formattingTextController.getListSpansFlags().get(0).getUrl();
                    editTextCaption.makeSelectedUrl(str, this$0.formattingTextController);
                }
            }
            str = "";
            editTextCaption.makeSelectedUrl(str, this$0.formattingTextController);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$12(FormattingMessagesWeb this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ChatActivityEnterView chatActivityEnterView = this$0.chatActivityEnterView;
        chatActivityEnterView.setShowFormattingButton(chatActivityEnterView.getSelectionLength() > 0);
        this$0.chatActivityEnterView.setFormattingMessagesContainerWebVisible(false);
        this$0.chatActivityEnterView.getDelegate().bottomPanelTranslationYChanged(BitmapDescriptorFactory.HUE_RED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LinearLayout initContainerButton() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.setGravity(17);
        linearLayout.addView(getCloseButton(), LayoutHelper.createLinear(-2, -2, AndroidUtilities.m104dp(1), 0, 0, 0));
        linearLayout.addView(getBoldButton(), LayoutHelper.createLinear(0, 48, 0.5f, AndroidUtilities.m104dp(1), 0, AndroidUtilities.m104dp(1), 0));
        LinearLayout.LayoutParams createLinear = LayoutHelper.createLinear(0, 48, 0.5f, 0, 0, AndroidUtilities.m104dp(1), 0);
        linearLayout.addView(getItalicButton(), createLinear);
        linearLayout.addView(getUnderlineButton(), createLinear);
        linearLayout.addView(getStrikeButton(), createLinear);
        linearLayout.addView(getMonoButton(), createLinear);
        linearLayout.addView(getSpoilerButton(), createLinear);
        linearLayout.addView(getLinkButton(), createLinear);
        return linearLayout;
    }

    /* compiled from: FormattingMessagesWeb.kt */
    /* renamed from: com.iMe.ui.formatting_messages.FormattingMessagesWeb$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x007d, code lost:
        if (r1 == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x009f, code lost:
        if (r1.searchTag(((java.lang.Integer) r3).intValue()) != false) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void updateTextColor(java.util.List<? extends android.view.View> r7) {
        /*
            r6 = this;
            java.util.Iterator r7 = r7.iterator()
        L4:
            boolean r0 = r7.hasNext()
            if (r0 == 0) goto La8
            java.lang.Object r0 = r7.next()
            android.view.View r0 = (android.view.View) r0
            boolean r1 = r0.isEnabled()
            if (r1 == 0) goto L19
            r1 = 1065353216(0x3f800000, float:1.0)
            goto L1b
        L19:
            r1 = 1056964608(0x3f000000, float:0.5)
        L1b:
            r0.setAlpha(r1)
            boolean r1 = r0 instanceof android.widget.TextView
            if (r1 == 0) goto L2f
            r1 = r0
            android.widget.TextView r1 = (android.widget.TextView) r1
            int r2 = r6.buttonTextColor
            int r2 = org.telegram.p043ui.ActionBar.Theme.getColor(r2)
            r1.setTextColor(r2)
            goto L3f
        L2f:
            boolean r1 = r0 instanceof android.widget.ImageView
            if (r1 == 0) goto L3f
            r1 = r0
            android.widget.ImageView r1 = (android.widget.ImageView) r1
            int r2 = r6.buttonTextColor
            int r2 = org.telegram.p043ui.ActionBar.Theme.getColor(r2)
            r1.setColorFilter(r2)
        L3f:
            java.lang.Object r1 = r0.getTag()
            java.lang.String r2 = "null cannot be cast to non-null type kotlin.Int"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1, r2)
            java.lang.Integer r1 = (java.lang.Integer) r1
            int r1 = r1.intValue()
            r3 = 6
            r4 = 1
            r5 = 0
            if (r1 != r3) goto L86
            boolean r1 = r0.isEnabled()
            if (r1 == 0) goto L80
            com.iMe.fork.controller.FormattingTextController r1 = r6.formattingTextController
            java.util.List r1 = r1.getListSpansFlags()
            boolean r2 = com.iMe.storage.data.utils.extentions.CollectionExtKt.isSingletonList(r1)
            if (r2 == 0) goto L7c
            java.lang.Object r1 = kotlin.collections.CollectionsKt.first(r1)
            com.iMe.fork.controller.FormattingTextController$TextStyle r1 = (com.iMe.fork.controller.FormattingTextController.TextStyle) r1
            java.lang.String r1 = r1.getUrl()
            int r1 = r1.length()
            if (r1 <= 0) goto L77
            r1 = r4
            goto L78
        L77:
            r1 = r5
        L78:
            if (r1 == 0) goto L7c
            r1 = r4
            goto L7d
        L7c:
            r1 = r5
        L7d:
            if (r1 == 0) goto L80
            goto L81
        L80:
            r4 = r5
        L81:
            r6.updateBackgroundButton(r0, r4)
            goto L4
        L86:
            boolean r1 = r0.isEnabled()
            if (r1 == 0) goto La2
            com.iMe.fork.controller.FormattingTextController r1 = r6.formattingTextController
            java.lang.Object r3 = r0.getTag()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3, r2)
            java.lang.Integer r3 = (java.lang.Integer) r3
            int r2 = r3.intValue()
            boolean r1 = r1.searchTag(r2)
            if (r1 == 0) goto La2
            goto La3
        La2:
            r4 = r5
        La3:
            r6.updateBackgroundButton(r0, r4)
            goto L4
        La8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.p030ui.formatting_messages.FormattingMessagesWeb.updateTextColor(java.util.List):void");
    }
}
