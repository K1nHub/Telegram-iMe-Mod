package com.iMe.fork.p023ui.view;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.iMe.fork.enums.TemplatesSortingType;
import com.iMe.storage.domain.model.templates.TemplateModel;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.SharedConfig;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.BotCommandsMenuView;
import org.telegram.p043ui.Components.LayoutHelper;
/* compiled from: TemplateCell.kt */
/* renamed from: com.iMe.fork.ui.view.TemplateCell */
/* loaded from: classes3.dex */
public final class TemplateCell extends LinearLayout {
    private final Lazy avatarView$delegate;
    private final Lazy goToMessageButton$delegate;
    private final Lazy sendButton$delegate;
    private final Lazy subtitleTextView$delegate;
    private TemplateModel template;
    private final Lazy titleContainer$delegate;
    private final Lazy titleTextView$delegate;

    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TemplateCell(Context context) {
        super(context);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<BackupImageView>() { // from class: com.iMe.fork.ui.view.TemplateCell$avatarView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final BackupImageView invoke() {
                BackupImageView initAvatarView;
                initAvatarView = TemplateCell.this.initAvatarView();
                return initAvatarView;
            }
        });
        this.avatarView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<LinearLayout>() { // from class: com.iMe.fork.ui.view.TemplateCell$titleContainer$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final LinearLayout invoke() {
                LinearLayout initTitleContainer;
                initTitleContainer = TemplateCell.this.initTitleContainer();
                return initTitleContainer;
            }
        });
        this.titleContainer$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<TextView>() { // from class: com.iMe.fork.ui.view.TemplateCell$titleTextView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextView invoke() {
                TextView initTitleTextView;
                initTitleTextView = TemplateCell.this.initTitleTextView();
                return initTitleTextView;
            }
        });
        this.titleTextView$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<TextView>() { // from class: com.iMe.fork.ui.view.TemplateCell$subtitleTextView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextView invoke() {
                TextView initSubtitleTextView;
                initSubtitleTextView = TemplateCell.this.initSubtitleTextView();
                return initSubtitleTextView;
            }
        });
        this.subtitleTextView$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<ImageView>() { // from class: com.iMe.fork.ui.view.TemplateCell$goToMessageButton$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ImageView invoke() {
                ImageView initGoToMessageButton;
                initGoToMessageButton = TemplateCell.this.initGoToMessageButton();
                return initGoToMessageButton;
            }
        });
        this.goToMessageButton$delegate = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new Function0<ImageView>() { // from class: com.iMe.fork.ui.view.TemplateCell$sendButton$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ImageView invoke() {
                ImageView initSendButton;
                initSendButton = TemplateCell.this.initSendButton();
                return initSendButton;
            }
        });
        this.sendButton$delegate = lazy6;
        int m104dp = AndroidUtilities.m104dp(6);
        setPadding(m104dp, m104dp, m104dp, m104dp);
        setGravity(16);
        addView(getAvatarView(), LayoutHelper.createLinear(40, 40, 16, 6, 0, 0, 0));
        addView(getTitleContainer(), LayoutHelper.createLinear(0, -2, 1.0f, 16, 16, 0, 6, 0));
        addView(getGoToMessageButton(), LayoutHelper.createLinear(40, 40, 16, 0, 0, 6, 0));
        addView(getSendButton(), LayoutHelper.createLinear(40, 40));
    }

    public final TemplateModel getTemplate() {
        return this.template;
    }

    public final void setTemplate(TemplateModel templateModel) {
        this.template = templateModel;
    }

    private final BackupImageView getAvatarView() {
        return (BackupImageView) this.avatarView$delegate.getValue();
    }

    private final LinearLayout getTitleContainer() {
        return (LinearLayout) this.titleContainer$delegate.getValue();
    }

    private final TextView getTitleTextView() {
        return (TextView) this.titleTextView$delegate.getValue();
    }

    private final TextView getSubtitleTextView() {
        return (TextView) this.subtitleTextView$delegate.getValue();
    }

    private final ImageView getGoToMessageButton() {
        return (ImageView) this.goToMessageButton$delegate.getValue();
    }

    private final ImageView getSendButton() {
        return (ImageView) this.sendButton$delegate.getValue();
    }

    public final void bind(final TemplateModel template, final BotCommandsMenuView.BotCommandsAdapter.TemplatesDelegate templatesDelegate) {
        Intrinsics.checkNotNullParameter(template, "template");
        Intrinsics.checkNotNullParameter(templatesDelegate, "templatesDelegate");
        this.template = template;
        BackupImageView avatarView = getAvatarView();
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        avatarDrawable.setInfo(template.getMessageId(), template.getName(), null);
        Unit unit = Unit.INSTANCE;
        avatarView.setForUserOrChat(null, avatarDrawable);
        getTitleTextView().setText(template.getName());
        TextView subtitleTextView = getSubtitleTextView();
        if (SharedConfig.selectedTemplatesSortingType != TemplatesSortingType.USAGE) {
            ViewExtKt.visible$default(subtitleTextView, false, 1, null);
            subtitleTextView.setText(LocaleController.getInternalString(C3634R.string.chat_template_subtitle_created_at) + ' ' + LocaleController.formatDateCallLog(template.getCreationDate() / 1000));
        } else {
            subtitleTextView.setVisibility(template.getUsageRating() != 0 ? 0 : 8);
            subtitleTextView.setText(LocaleController.getInternalString(C3634R.string.chat_template_subtitle_sent) + ' ' + LocaleController.formatPluralString("Times", template.getUsageRating(), new Object[0]));
        }
        getGoToMessageButton().setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.view.TemplateCell$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TemplateCell.bind$lambda$2(BotCommandsMenuView.BotCommandsAdapter.TemplatesDelegate.this, template, view);
            }
        });
        getSendButton().setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.view.TemplateCell$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TemplateCell.bind$lambda$3(BotCommandsMenuView.BotCommandsAdapter.TemplatesDelegate.this, template, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$2(BotCommandsMenuView.BotCommandsAdapter.TemplatesDelegate templatesDelegate, TemplateModel template, View view) {
        Intrinsics.checkNotNullParameter(templatesDelegate, "$templatesDelegate");
        Intrinsics.checkNotNullParameter(template, "$template");
        templatesDelegate.didPressGoToMessage((int) template.getMessageId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$3(BotCommandsMenuView.BotCommandsAdapter.TemplatesDelegate templatesDelegate, TemplateModel template, View view) {
        Intrinsics.checkNotNullParameter(templatesDelegate, "$templatesDelegate");
        Intrinsics.checkNotNullParameter(template, "$template");
        templatesDelegate.didPressSendMessage(template, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BackupImageView initAvatarView() {
        return new BackupImageView(getContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LinearLayout initTitleContainer() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.addView(getTitleTextView(), LayoutHelper.createLinear(-2, -2));
        linearLayout.addView(getSubtitleTextView());
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initTitleTextView() {
        TextView textView = new TextView(getContext());
        ViewExtKt.withMediumTypeface(textView);
        ViewExtKt.singleLine(textView);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setTextSize(16.0f);
        textView.setMaxHeight(AndroidUtilities.m104dp(20));
        textView.setIncludeFontPadding(false);
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initSubtitleTextView() {
        TextView textView = new TextView(getContext());
        textView.setTextSize(15.0f);
        textView.setMaxHeight(AndroidUtilities.m104dp(20));
        textView.setIncludeFontPadding(false);
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText));
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ImageView initGoToMessageButton() {
        ImageView imageView = new ImageView(getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector)));
        imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chat_messagePanelIcons), PorterDuff.Mode.MULTIPLY));
        imageView.setImageResource(C3634R.C3636drawable.msg_message);
        return imageView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ImageView initSendButton() {
        ImageView imageView = new ImageView(getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector)));
        imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chat_messagePanelSend), PorterDuff.Mode.MULTIPLY));
        imageView.setImageResource(C3634R.C3636drawable.ic_send);
        return imageView;
    }

    /* compiled from: TemplateCell.kt */
    /* renamed from: com.iMe.fork.ui.view.TemplateCell$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
