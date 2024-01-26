package org.telegram.p043ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserObject;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.Bulletin;
import org.telegram.p043ui.Components.Premium.PremiumButtonView;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.p043ui.PremiumPreviewFragment;
import org.telegram.p043ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_account_setGlobalPrivacySettings;
import org.telegram.tgnet.TLRPC$TL_account_setPrivacy;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_globalPrivacySettings;
import org.telegram.tgnet.TLRPC$TL_inputPrivacyKeyStatusTimestamp;
import org.telegram.tgnet.TLRPC$TL_inputPrivacyValueAllowAll;
import org.telegram.tgnet.TLRPC$TL_messages_getOutboxReadDate;
import org.telegram.tgnet.TLRPC$TL_outboxReadDate;
/* renamed from: org.telegram.ui.Components.MessagePrivateSeenView */
/* loaded from: classes6.dex */
public class MessagePrivateSeenView extends FrameLayout {
    private final int currentAccount;
    private final long dialogId;
    private final Runnable dismiss;
    public boolean isPremiumLocked;
    private final TextView loadingView;
    private final int messageId;
    float minWidth;
    private final TextView premiumTextView;
    private final Theme.ResourcesProvider resourcesProvider;
    private final LinearLayout valueLayout;
    private final TextView valueTextView;

    public MessagePrivateSeenView(Context context, MessageObject messageObject, Runnable runnable, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.isPremiumLocked = false;
        this.minWidth = -1.0f;
        this.currentAccount = messageObject.currentAccount;
        this.resourcesProvider = resourcesProvider;
        this.dismiss = runnable;
        this.dialogId = messageObject.getDialogId();
        this.messageId = messageObject.getId();
        ImageView imageView = new ImageView(context);
        addView(imageView, LayoutHelper.createFrame(24, 24, 19, 11, 0, 0, 0));
        Drawable mutate = ContextCompat.getDrawable(context, messageObject.isVoice() ? C3632R.C3634drawable.msg_played : C3632R.C3634drawable.msg_seen).mutate();
        mutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_actionBarDefaultSubmenuItemIcon, resourcesProvider), PorterDuff.Mode.MULTIPLY));
        imageView.setImageDrawable(mutate);
        TextView textView = new TextView(context);
        this.loadingView = textView;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("loading text ");
        spannableStringBuilder.setSpan(new LoadingSpan(textView, AndroidUtilities.m107dp(96), AndroidUtilities.m107dp(2), resourcesProvider), 0, spannableStringBuilder.length() - 1, 17);
        int i = Theme.key_dialogTextBlack;
        textView.setTextColor(Theme.multAlpha(Theme.getColor(i, resourcesProvider), 0.7f));
        textView.setText(spannableStringBuilder);
        textView.setTextSize(1, 13.0f);
        addView(textView, LayoutHelper.createFrame(96, -2, 19, 40, -1, 8, 0));
        LinearLayout linearLayout = new LinearLayout(context);
        this.valueLayout = linearLayout;
        linearLayout.setOrientation(0);
        linearLayout.setAlpha(BitmapDescriptorFactory.HUE_RED);
        addView(linearLayout, LayoutHelper.createFrame(-1, -2, 19, 38, 0, 8, 0));
        TextView textView2 = new TextView(context);
        this.valueTextView = textView2;
        textView2.setTextColor(Theme.getColor(i, resourcesProvider));
        textView2.setTextSize(1, 14.0f);
        linearLayout.addView(textView2, LayoutHelper.createLinear(-2, -2, 19, 0, -1, 0, 0));
        TextView textView3 = new TextView(context);
        this.premiumTextView = textView3;
        textView3.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m107dp(20), Theme.multAlpha(Theme.getColor(Theme.key_divider, resourcesProvider), 0.75f)));
        textView3.setTextColor(Theme.getColor(i, resourcesProvider));
        textView3.setTextSize(1, 11.0f);
        textView3.setPadding(AndroidUtilities.m108dp(5.33f), AndroidUtilities.m107dp(2), AndroidUtilities.m108dp(5.33f), AndroidUtilities.m108dp(2.33f));
        linearLayout.addView(textView3, LayoutHelper.createLinear(-2, -2, 19, 4, 0, 0, 0));
        request();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void request() {
        setOnClickListener(null);
        this.valueLayout.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.loadingView.setAlpha(1.0f);
        this.premiumTextView.setVisibility(0);
        TLRPC$TL_messages_getOutboxReadDate tLRPC$TL_messages_getOutboxReadDate = new TLRPC$TL_messages_getOutboxReadDate();
        tLRPC$TL_messages_getOutboxReadDate.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
        tLRPC$TL_messages_getOutboxReadDate.msg_id = this.messageId;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_messages_getOutboxReadDate, new RequestDelegate() { // from class: org.telegram.ui.Components.MessagePrivateSeenView$$ExternalSyntheticLambda8
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MessagePrivateSeenView.this.lambda$request$2(tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$request$2(final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.MessagePrivateSeenView$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                MessagePrivateSeenView.this.lambda$request$1(tLRPC$TL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$request$1(TLRPC$TL_error tLRPC$TL_error, TLObject tLObject) {
        if (tLRPC$TL_error != null) {
            if ("USER_PRIVACY_RESTRICTED".equals(tLRPC$TL_error.text)) {
                this.valueTextView.setText(LocaleController.getString(C3632R.string.PmReadUnknown));
                this.premiumTextView.setVisibility(8);
            } else if ("YOUR_PRIVACY_RESTRICTED".equals(tLRPC$TL_error.text)) {
                this.isPremiumLocked = true;
                this.valueTextView.setText(LocaleController.getString(C3632R.string.PmRead));
                this.premiumTextView.setText(LocaleController.getString(C3632R.string.PmReadShowWhen));
            } else {
                this.valueTextView.setText(LocaleController.getString("UnknownError"));
                this.premiumTextView.setVisibility(8);
                BulletinFactory.m66of(Bulletin.BulletinWindow.make(getContext()), this.resourcesProvider).showForError(tLRPC$TL_error);
            }
        } else if (tLObject instanceof TLRPC$TL_outboxReadDate) {
            this.valueTextView.setText(LocaleController.formatString(C3632R.string.PmReadAt, LocaleController.formatSeenDate(((TLRPC$TL_outboxReadDate) tLObject).date)));
            this.premiumTextView.setVisibility(8);
        }
        ViewPropertyAnimator alpha = this.valueLayout.animate().alpha(1.0f);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        alpha.setInterpolator(cubicBezierInterpolator).setDuration(320L).start();
        this.loadingView.animate().alpha(BitmapDescriptorFactory.HUE_RED).setInterpolator(cubicBezierInterpolator).setDuration(320L).start();
        if (this.isPremiumLocked) {
            setBackground(Theme.createRadSelectorDrawable(Theme.getColor(Theme.key_listSelector, this.resourcesProvider), 6, 0));
            setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePrivateSeenView$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MessagePrivateSeenView.this.lambda$request$0(view);
                }
            });
            return;
        }
        setBackground(null);
        setOnClickListener(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$request$0(View view) {
        showSheet(getContext(), this.currentAccount, this.dialogId, false, this.dismiss, new Runnable() { // from class: org.telegram.ui.Components.MessagePrivateSeenView$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                MessagePrivateSeenView.this.request();
            }
        }, this.resourcesProvider);
    }

    public static void showSheet(final Context context, final int i, long j, final boolean z, final Runnable runnable, final Runnable runnable2, final Theme.ResourcesProvider resourcesProvider) {
        int i2;
        final BottomSheet bottomSheet;
        final BottomSheet bottomSheet2 = new BottomSheet(context, false, resourcesProvider);
        bottomSheet2.fixNavigationBar(Theme.getColor(Theme.key_dialogBackground, resourcesProvider));
        boolean premiumFeaturesBlocked = MessagesController.getInstance(i).premiumFeaturesBlocked();
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(AndroidUtilities.m107dp(16), 0, AndroidUtilities.m107dp(16), 0);
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
        rLottieImageView.setAnimation(z ? C3632R.raw.large_lastseen : C3632R.raw.large_readtime, 70, 70);
        rLottieImageView.playAnimation();
        rLottieImageView.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
        rLottieImageView.setBackground(Theme.createCircleDrawable(AndroidUtilities.m107dp(80), Theme.getColor(Theme.key_featuredStickers_addButton, resourcesProvider)));
        linearLayout.addView(rLottieImageView, LayoutHelper.createLinear(80, 80, 1, 0, 16, 0, 16));
        TextView textView = new TextView(context);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setGravity(17);
        int i3 = Theme.key_dialogTextBlack;
        textView.setTextColor(Theme.getColor(i3, resourcesProvider));
        textView.setTextSize(1, 20.0f);
        textView.setText(LocaleController.getString(z ? C3632R.string.PremiumLastSeenHeader1 : C3632R.string.PremiumReadHeader1));
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 1, 12, 0, 12, 0));
        TextView textView2 = new TextView(context);
        textView2.setGravity(17);
        textView2.setTextColor(Theme.getColor(i3, resourcesProvider));
        textView2.setTextSize(1, 14.0f);
        String firstName = j > 0 ? UserObject.getFirstName(MessagesController.getInstance(i).getUser(Long.valueOf(j))) : "";
        if (z) {
            i2 = premiumFeaturesBlocked ? C3632R.string.PremiumLastSeenText1Locked : C3632R.string.PremiumLastSeenText1;
        } else {
            i2 = premiumFeaturesBlocked ? C3632R.string.PremiumReadText1Locked : C3632R.string.PremiumReadText1;
        }
        textView2.setText(AndroidUtilities.replaceTags(LocaleController.formatString(i2, firstName)));
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 1, 32, 9, 32, 19));
        final ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, resourcesProvider);
        buttonWithCounterView.setText(LocaleController.getString(z ? C3632R.string.PremiumLastSeenButton1 : C3632R.string.PremiumReadButton1), false);
        linearLayout.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48, 1));
        buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePrivateSeenView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MessagePrivateSeenView.lambda$showSheet$7(ButtonWithCounterView.this, z, i, bottomSheet2, runnable2, context, resourcesProvider, view);
            }
        });
        if (premiumFeaturesBlocked) {
            bottomSheet = bottomSheet2;
        } else {
            SimpleTextView simpleTextView = new SimpleTextView(context) { // from class: org.telegram.ui.Components.MessagePrivateSeenView.1
                private final Paint paint = new Paint(1);

                @Override // android.view.View
                protected void dispatchDraw(Canvas canvas) {
                    this.paint.setColor(Theme.getColor(Theme.key_dialogGrayLine, resourcesProvider));
                    this.paint.setStyle(Paint.Style.STROKE);
                    this.paint.setStrokeWidth(1.0f);
                    float height = getHeight() / 2.0f;
                    canvas.drawLine(BitmapDescriptorFactory.HUE_RED, height, ((getWidth() / 2.0f) - (getTextWidth() / 2.0f)) - AndroidUtilities.m107dp(8), height, this.paint);
                    canvas.drawLine((getWidth() / 2.0f) + (getTextWidth() / 2.0f) + AndroidUtilities.m107dp(8), height, getWidth(), height, this.paint);
                    super.dispatchDraw(canvas);
                }
            };
            simpleTextView.setGravity(17);
            simpleTextView.setAlignment(Layout.Alignment.ALIGN_CENTER);
            simpleTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
            simpleTextView.setText(" " + LocaleController.getString(C3632R.string.PremiumOr) + " ");
            simpleTextView.setTextSize(14);
            linearLayout.addView(simpleTextView, LayoutHelper.createLinear(270, -2, 1, 12, 17, 12, 17));
            TextView textView3 = new TextView(context);
            textView3.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            textView3.setGravity(17);
            textView3.setTextColor(Theme.getColor(i3, resourcesProvider));
            textView3.setTextSize(1, 20.0f);
            textView3.setText(LocaleController.getString(z ? C3632R.string.PremiumLastSeenHeader2 : C3632R.string.PremiumReadHeader2));
            linearLayout.addView(textView3, LayoutHelper.createLinear(-1, -2, 1, 12, 0, 12, 0));
            TextView textView4 = new TextView(context);
            textView4.setGravity(17);
            textView4.setTextColor(Theme.getColor(i3, resourcesProvider));
            textView4.setTextSize(1, 14.0f);
            textView4.setText(AndroidUtilities.replaceTags(LocaleController.formatString(z ? C3632R.string.PremiumLastSeenText2 : C3632R.string.PremiumReadText2, firstName)));
            linearLayout.addView(textView4, LayoutHelper.createLinear(-1, -2, 1, 32, 9, 32, 19));
            PremiumButtonView premiumButtonView = new PremiumButtonView(context, true, resourcesProvider);
            bottomSheet = bottomSheet2;
            premiumButtonView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePrivateSeenView$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MessagePrivateSeenView.lambda$showSheet$8(z, bottomSheet, runnable, view);
                }
            });
            premiumButtonView.setOverlayText(LocaleController.getString(z ? C3632R.string.PremiumLastSeenButton2 : C3632R.string.PremiumReadButton2), false, false);
            linearLayout.addView(premiumButtonView, LayoutHelper.createLinear(-1, 48, 1, 0, 0, 0, 4));
        }
        bottomSheet.setCustomView(linearLayout);
        bottomSheet.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showSheet$7(final ButtonWithCounterView buttonWithCounterView, boolean z, int i, final BottomSheet bottomSheet, final Runnable runnable, final Context context, final Theme.ResourcesProvider resourcesProvider, View view) {
        buttonWithCounterView.setLoading(true);
        if (z) {
            TLRPC$TL_account_setPrivacy tLRPC$TL_account_setPrivacy = new TLRPC$TL_account_setPrivacy();
            tLRPC$TL_account_setPrivacy.key = new TLRPC$TL_inputPrivacyKeyStatusTimestamp();
            tLRPC$TL_account_setPrivacy.rules.add(new TLRPC$TL_inputPrivacyValueAllowAll());
            ConnectionsManager.getInstance(i).sendRequest(tLRPC$TL_account_setPrivacy, new RequestDelegate() { // from class: org.telegram.ui.Components.MessagePrivateSeenView$$ExternalSyntheticLambda9
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    MessagePrivateSeenView.lambda$showSheet$4(ButtonWithCounterView.this, bottomSheet, runnable, tLObject, tLRPC$TL_error);
                }
            });
            return;
        }
        TLRPC$TL_account_setGlobalPrivacySettings tLRPC$TL_account_setGlobalPrivacySettings = new TLRPC$TL_account_setGlobalPrivacySettings();
        TLRPC$TL_globalPrivacySettings globalPrivacySettings = ContactsController.getInstance(i).getGlobalPrivacySettings();
        tLRPC$TL_account_setGlobalPrivacySettings.settings = globalPrivacySettings;
        if (globalPrivacySettings == null) {
            tLRPC$TL_account_setGlobalPrivacySettings.settings = new TLRPC$TL_globalPrivacySettings();
        }
        tLRPC$TL_account_setGlobalPrivacySettings.settings.hide_read_marks = false;
        ConnectionsManager.getInstance(i).sendRequest(tLRPC$TL_account_setGlobalPrivacySettings, new RequestDelegate() { // from class: org.telegram.ui.Components.MessagePrivateSeenView$$ExternalSyntheticLambda7
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MessagePrivateSeenView.lambda$showSheet$6(context, resourcesProvider, buttonWithCounterView, bottomSheet, runnable, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showSheet$4(final ButtonWithCounterView buttonWithCounterView, final BottomSheet bottomSheet, final Runnable runnable, TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.MessagePrivateSeenView$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                MessagePrivateSeenView.lambda$showSheet$3(TLRPC$TL_error.this, buttonWithCounterView, bottomSheet, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showSheet$3(TLRPC$TL_error tLRPC$TL_error, ButtonWithCounterView buttonWithCounterView, BottomSheet bottomSheet, Runnable runnable) {
        if (tLRPC$TL_error != null) {
            BulletinFactory.global().showForError(tLRPC$TL_error);
            return;
        }
        buttonWithCounterView.setLoading(false);
        bottomSheet.dismiss();
        BulletinFactory.global().createSimpleBulletin(C3632R.raw.chats_infotip, LocaleController.getString(C3632R.string.PremiumLastSeenSet)).show();
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showSheet$6(final Context context, final Theme.ResourcesProvider resourcesProvider, final ButtonWithCounterView buttonWithCounterView, final BottomSheet bottomSheet, final Runnable runnable, TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.MessagePrivateSeenView$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                MessagePrivateSeenView.lambda$showSheet$5(TLRPC$TL_error.this, context, resourcesProvider, buttonWithCounterView, bottomSheet, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showSheet$5(TLRPC$TL_error tLRPC$TL_error, Context context, Theme.ResourcesProvider resourcesProvider, ButtonWithCounterView buttonWithCounterView, BottomSheet bottomSheet, Runnable runnable) {
        if (tLRPC$TL_error != null) {
            BulletinFactory.m66of(Bulletin.BulletinWindow.make(context), resourcesProvider).showForError(tLRPC$TL_error);
            return;
        }
        buttonWithCounterView.setLoading(false);
        bottomSheet.dismiss();
        BulletinFactory.m66of(Bulletin.BulletinWindow.make(context), resourcesProvider).createSimpleBulletin(C3632R.raw.chats_infotip, LocaleController.getString(C3632R.string.PremiumReadSet)).show();
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showSheet$8(boolean z, BottomSheet bottomSheet, Runnable runnable, View view) {
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment != null) {
            lastFragment.presentFragment(new PremiumPreviewFragment(z ? "lastseen" : "readtime"));
            bottomSheet.dismiss();
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Bulletin.hideVisible();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        View view = (View) getParent();
        View.MeasureSpec.getSize(i);
        View.MeasureSpec.getMode(i);
        if (this.minWidth < BitmapDescriptorFactory.HUE_RED) {
            this.minWidth = BitmapDescriptorFactory.HUE_RED;
            float max = Math.max((float) BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m107dp(144));
            this.minWidth = max;
            float max2 = Math.max(max, AndroidUtilities.m107dp(48) + this.valueTextView.getPaint().measureText(LocaleController.getString(C3632R.string.PmReadUnknown)));
            this.minWidth = max2;
            TextPaint paint = this.valueTextView.getPaint();
            float max3 = Math.max(max2, AndroidUtilities.m107dp(64) + paint.measureText(LocaleController.getString(C3632R.string.PmRead) + this.premiumTextView.getPaint().measureText(LocaleController.getString(C3632R.string.PmReadShowWhen))));
            this.minWidth = max3;
            TextPaint paint2 = this.valueTextView.getPaint();
            int i3 = C3632R.string.PmReadAt;
            float max4 = Math.max(max3, AndroidUtilities.m107dp(48) + paint2.measureText(LocaleController.formatString(i3, LocaleController.formatString(C3632R.string.TodayAtFormattedWithToday, "99:99"))));
            this.minWidth = max4;
            float max5 = Math.max(max4, AndroidUtilities.m107dp(48) + this.valueTextView.getPaint().measureText(LocaleController.formatString(i3, LocaleController.formatString(C3632R.string.YesterdayAtFormatted, "99:99"))));
            this.minWidth = max5;
            this.minWidth = Math.max(max5, AndroidUtilities.m107dp(48) + this.valueTextView.getPaint().measureText(LocaleController.formatString(i3, LocaleController.formatString(C3632R.string.formatDateAtTime, "99.99.99", "99:99"))));
        }
        if (view != null && view.getWidth() > 0) {
            view.getWidth();
        }
        super.onMeasure(i, i2);
    }
}
