package org.fork.p046ui.dialog;

import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.p010os.BundleKt;
import com.smedialink.common.TelegramPreferenceKeys;
import com.smedialink.storage.data.utils.extentions.SharedPrefferencesExtKt;
import com.smedialink.utils.extentions.common.ViewExtKt;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.TuplesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import org.fork.enums.AppLaunchCountAction;
import org.fork.enums.PromoSubscribeChat;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Cells.ProfileSearchCell;
import org.telegram.p048ui.ChatActivity;
import org.telegram.p048ui.Components.CheckBoxSquare;
import org.telegram.p048ui.Components.FlickerLoadingView;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.LaunchActivity;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$TL_contacts_resolveUsername;
import org.telegram.tgnet.TLRPC$TL_contacts_resolvedPeer;
import org.telegram.tgnet.TLRPC$TL_error;
/* compiled from: PromoSubscribeAlert.kt */
/* renamed from: org.fork.ui.dialog.PromoSubscribeAlert */
/* loaded from: classes4.dex */
public final class PromoSubscribeAlert extends AlertDialog.Builder {
    private final int accountNum;
    private final LaunchActivity activity;
    private final Lazy chatsView$delegate;
    private final Lazy loadingView$delegate;
    private final Lazy notShowAgainCheckBox$delegate;
    private final Lazy notShowAgainCheckBoxContainer$delegate;
    private final Lazy skipButton$delegate;
    private final Lazy subtitleTextView$delegate;
    private final Lazy titleTextView$delegate;

    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PromoSubscribeAlert(LaunchActivity activity, int i) {
        super(activity);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        Lazy lazy7;
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.activity = activity;
        this.accountNum = i;
        lazy = LazyKt__LazyJVMKt.lazy(new PromoSubscribeAlert$titleTextView$2(this));
        this.titleTextView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new PromoSubscribeAlert$subtitleTextView$2(this));
        this.subtitleTextView$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new PromoSubscribeAlert$loadingView$2(this));
        this.loadingView$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new PromoSubscribeAlert$chatsView$2(this));
        this.chatsView$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new PromoSubscribeAlert$notShowAgainCheckBoxContainer$2(this));
        this.notShowAgainCheckBoxContainer$delegate = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new PromoSubscribeAlert$notShowAgainCheckBox$2(this));
        this.notShowAgainCheckBox$delegate = lazy6;
        lazy7 = LazyKt__LazyJVMKt.lazy(new PromoSubscribeAlert$skipButton$2(this));
        this.skipButton$delegate = lazy7;
        setTopHeight(166);
        setTopImage(C3301R.C3303drawable.fork_promo_subscribe_dialog_icon, Theme.getColor("windowBackgroundGray"));
        int m51dp = AndroidUtilities.m51dp(30.0f);
        setTopImagePaddings(0, m51dp, AndroidUtilities.m51dp(16.0f), m51dp);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.addView(getTitleTextView());
        linearLayout.addView(getSubtitleTextView(), LayoutHelper.createLinear(-2, -2, 17, 0, 4, 0, 16));
        FrameLayout frameLayout = new FrameLayout(linearLayout.getContext());
        frameLayout.addView(getLoadingView());
        frameLayout.addView(getChatsView());
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, -2, 17, 22, 0, 22, 0));
        linearLayout.addView(getNotShowAgainCheckBoxContainer(), LayoutHelper.createLinear(-2, -2, 17, 0, 16, 0, 16));
        linearLayout.addView(getSkipButton(), LayoutHelper.createLinear(-1, 44, 17, 44, 0, 44, 10));
        setView(linearLayout);
        setOnBackButtonListener(new DialogInterface.OnClickListener() { // from class: org.fork.ui.dialog.PromoSubscribeAlert$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                PromoSubscribeAlert._init_$lambda$2(PromoSubscribeAlert.this, dialogInterface, i2);
            }
        });
        resolvePromoUsernames();
    }

    private final TextView getTitleTextView() {
        return (TextView) this.titleTextView$delegate.getValue();
    }

    private final TextView getSubtitleTextView() {
        return (TextView) this.subtitleTextView$delegate.getValue();
    }

    private final LinearLayout getLoadingView() {
        return (LinearLayout) this.loadingView$delegate.getValue();
    }

    private final LinearLayout getChatsView() {
        return (LinearLayout) this.chatsView$delegate.getValue();
    }

    private final LinearLayout getNotShowAgainCheckBoxContainer() {
        return (LinearLayout) this.notShowAgainCheckBoxContainer$delegate.getValue();
    }

    private final CheckBoxSquare getNotShowAgainCheckBox() {
        return (CheckBoxSquare) this.notShowAgainCheckBox$delegate.getValue();
    }

    private final TextView getSkipButton() {
        return (TextView) this.skipButton$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$2(PromoSubscribeAlert this$0, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.checkNotShowAgainCheckBox();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initTitleTextView() {
        TextView textView = new TextView(getContext());
        textView.setText(LocaleController.getInternalString(C3301R.string.dialog_promo_subscribe_title));
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setGravity(17);
        textView.setTextColor(Theme.getColor("dialogTextBlack"));
        textView.setTextSize(1, 17.0f);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initSubtitleTextView() {
        TextView textView = new TextView(getContext());
        textView.setText(LocaleController.getInternalString(C3301R.string.dialog_promo_subscribe_subtitle));
        textView.setTextColor(Theme.getColor("dialogTextGray3"));
        textView.setTextSize(1, 14.0f);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LinearLayout initLoadingView() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        int length = PromoSubscribeChat.values().length;
        for (int i = 0; i < length; i++) {
            FlickerLoadingView flickerLoadingView = new FlickerLoadingView(linearLayout.getContext());
            flickerLoadingView.setIsSingleCell(true);
            flickerLoadingView.showDate(false);
            flickerLoadingView.setViewType(100);
            linearLayout.addView(flickerLoadingView);
        }
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LinearLayout initChatsView() {
        PromoSubscribeChat[] values;
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        for (PromoSubscribeChat promoSubscribeChat : PromoSubscribeChat.values()) {
            ProfileSearchCell profileSearchCell = new ProfileSearchCell(linearLayout.getContext());
            profileSearchCell.setBackground(Theme.getSelectorDrawable(false));
            profileSearchCell.setTag(promoSubscribeChat);
            profileSearchCell.setPromoSubscribeIcon(promoSubscribeChat.getRightIconResId());
            profileSearchCell.setOnClickListener(new View.OnClickListener() { // from class: org.fork.ui.dialog.PromoSubscribeAlert$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PromoSubscribeAlert.initChatsView$lambda$11$lambda$10$lambda$9$lambda$8(PromoSubscribeAlert.this, view);
                }
            });
            linearLayout.addView(profileSearchCell);
        }
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initChatsView$lambda$11$lambda$10$lambda$9$lambda$8(PromoSubscribeAlert this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.checkNotShowAgainCheckBox();
        this$0.getDismissRunnable().run();
        LaunchActivity launchActivity = this$0.activity;
        Object tag = view.getTag();
        Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type org.fork.enums.PromoSubscribeChat");
        launchActivity.lambda$runLinkRequest$86(new ChatActivity(BundleKt.bundleOf(TuplesKt.m99to("chat_id", Long.valueOf(-((PromoSubscribeChat) tag).getId())))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LinearLayout initNotShowAgainCheckBoxContainer() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setGravity(17);
        linearLayout.addView(getNotShowAgainCheckBox(), LayoutHelper.createLinear(18, 18));
        TextView textView = new TextView(linearLayout.getContext());
        textView.setText(LocaleController.getInternalString(C3301R.string.common_not_show_again));
        textView.setGravity(19);
        textView.setTextColor(Theme.getColor("dialogTextBlack"));
        textView.setTextSize(1, 16.0f);
        linearLayout.addView(textView, LayoutHelper.createLinear(-2, -2, 51, 17, 0, 0, 0));
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: org.fork.ui.dialog.PromoSubscribeAlert$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PromoSubscribeAlert.initNotShowAgainCheckBoxContainer$lambda$14$lambda$13(PromoSubscribeAlert.this, view);
            }
        });
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initNotShowAgainCheckBoxContainer$lambda$14$lambda$13(PromoSubscribeAlert this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getNotShowAgainCheckBox().setChecked(!this$0.getNotShowAgainCheckBox().isChecked(), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CheckBoxSquare initNotShowAgainCheckBox() {
        return new CheckBoxSquare(getContext(), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initSkipButton() {
        TextView textView = new TextView(getContext());
        String string = LocaleController.getString("Close", C3301R.string.Close);
        Intrinsics.checkNotNullExpressionValue(string, "getString(\"Close\", R.string.Close)");
        String upperCase = string.toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        textView.setText(upperCase);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setGravity(17);
        textView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m51dp(6.0f), Theme.getColor("featuredStickers_addButton"), Theme.getColor("featuredStickers_addButtonPressed")));
        textView.setTextSize(1, 14.0f);
        textView.setTextColor(Theme.getColor("featuredStickers_buttonText"));
        textView.setOnClickListener(new View.OnClickListener() { // from class: org.fork.ui.dialog.PromoSubscribeAlert$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PromoSubscribeAlert.initSkipButton$lambda$16$lambda$15(PromoSubscribeAlert.this, view);
            }
        });
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initSkipButton$lambda$16$lambda$15(PromoSubscribeAlert this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.checkNotShowAgainCheckBox();
        this$0.getDismissRunnable().run();
    }

    private final void checkNotShowAgainCheckBox() {
        SharedPreferences checkNotShowAgainCheckBox$lambda$17 = MessagesController.getGlobalMainSettings();
        if (getNotShowAgainCheckBox().isChecked()) {
            Intrinsics.checkNotNullExpressionValue(checkNotShowAgainCheckBox$lambda$17, "checkNotShowAgainCheckBox$lambda$17");
            SharedPrefferencesExtKt.putInt(checkNotShowAgainCheckBox$lambda$17, AppLaunchCountAction.PROMO_SUBSCRIBE_DIALOG.getPrefKey(), 0);
            return;
        }
        int i = checkNotShowAgainCheckBox$lambda$17.getInt(TelegramPreferenceKeys.Global.promoSubscribeDialogShowCountLeft(), TelegramPreferenceKeys.Global.Default.promoSubscribeDialogShowCountLeft());
        Intrinsics.checkNotNullExpressionValue(checkNotShowAgainCheckBox$lambda$17, "checkNotShowAgainCheckBox$lambda$17");
        SharedPrefferencesExtKt.putInt(checkNotShowAgainCheckBox$lambda$17, TelegramPreferenceKeys.Global.promoSubscribeDialogShowCountLeft(), i - 1);
    }

    private final void resolvePromoUsernames() {
        PromoSubscribeChat[] values;
        ViewExtKt.gone(getChatsView());
        ViewExtKt.visible(getLoadingView());
        final Ref$IntRef ref$IntRef = new Ref$IntRef();
        ref$IntRef.element = PromoSubscribeChat.values().length;
        for (PromoSubscribeChat promoSubscribeChat : PromoSubscribeChat.values()) {
            TLRPC$TL_contacts_resolveUsername tLRPC$TL_contacts_resolveUsername = new TLRPC$TL_contacts_resolveUsername();
            tLRPC$TL_contacts_resolveUsername.username = promoSubscribeChat.getUsername();
            ConnectionsManager.getInstance(this.accountNum).sendRequest(tLRPC$TL_contacts_resolveUsername, new RequestDelegate() { // from class: org.fork.ui.dialog.PromoSubscribeAlert$$ExternalSyntheticLambda5
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    PromoSubscribeAlert.resolvePromoUsernames$lambda$20$lambda$19(PromoSubscribeAlert.this, ref$IntRef, tLObject, tLRPC$TL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void resolvePromoUsernames$lambda$20$lambda$19(final PromoSubscribeAlert this$0, Ref$IntRef counter, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(counter, "$counter");
        if (tLRPC$TL_error == null && (tLObject instanceof TLRPC$TL_contacts_resolvedPeer)) {
            MessagesController.getInstance(this$0.accountNum).putChats(((TLRPC$TL_contacts_resolvedPeer) tLObject).chats, false);
            int i = counter.element - 1;
            counter.element = i;
            if (i == 0) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.fork.ui.dialog.PromoSubscribeAlert$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        PromoSubscribeAlert.resolvePromoUsernames$lambda$20$lambda$19$lambda$18(PromoSubscribeAlert.this);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void resolvePromoUsernames$lambda$20$lambda$19$lambda$18(PromoSubscribeAlert this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.endLoading();
    }

    private final void endLoading() {
        ViewExtKt.gone(getLoadingView());
        LinearLayout chatsView = getChatsView();
        int childCount = chatsView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = chatsView.getChildAt(i);
            Intrinsics.checkNotNullExpressionValue(childAt, "getChildAt(index)");
            Intrinsics.checkNotNull(childAt, "null cannot be cast to non-null type org.telegram.ui.Cells.ProfileSearchCell");
            ProfileSearchCell profileSearchCell = (ProfileSearchCell) childAt;
            Object tag = profileSearchCell.getTag();
            Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type org.fork.enums.PromoSubscribeChat");
            PromoSubscribeChat promoSubscribeChat = (PromoSubscribeChat) tag;
            TLRPC$Chat chat = MessagesController.getInstance(this.accountNum).getChat(Long.valueOf(-promoSubscribeChat.getId()));
            String internalString = LocaleController.getInternalString(promoSubscribeChat.getDescriptionResId());
            Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(promo.descriptionResId)");
            String lowerCase = internalString.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
            profileSearchCell.setData(chat, null, null, lowerCase, false, false);
            boolean z = true;
            if (i >= PromoSubscribeChat.values().length - 1) {
                z = false;
            }
            profileSearchCell.useSeparator = z;
        }
        ViewExtKt.visible(getChatsView());
    }

    /* compiled from: PromoSubscribeAlert.kt */
    /* renamed from: org.fork.ui.dialog.PromoSubscribeAlert$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
