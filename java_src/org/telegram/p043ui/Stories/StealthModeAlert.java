package org.telegram.p043ui.Stories;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.text.Layout;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import java.util.Locale;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.Bulletin;
import org.telegram.p043ui.Components.BulletinFactory;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.Premium.PremiumButtonView;
import org.telegram.p043ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.p043ui.Components.ScaleStateListAnimator;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.p042tl.TL_stories$TL_storiesStealthMode;
import org.telegram.tgnet.p042tl.TL_stories$TL_stories_activateStealthMode;
/* renamed from: org.telegram.ui.Stories.StealthModeAlert */
/* loaded from: classes6.dex */
public class StealthModeAlert extends BottomSheet {
    private final PremiumButtonView button;
    boolean stealthModeIsActive;
    Runnable updateButtonRunnuble;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$1() {
    }

    public StealthModeAlert(Context context, final float f, final Theme.ResourcesProvider resourcesProvider) {
        super(context, false, resourcesProvider);
        this.updateButtonRunnuble = new Runnable() { // from class: org.telegram.ui.Stories.StealthModeAlert$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                StealthModeAlert.this.lambda$new$4();
            }
        };
        FrameLayout frameLayout = new FrameLayout(getContext()) { // from class: org.telegram.ui.Stories.StealthModeAlert.1
            @Override // android.view.ViewGroup, android.view.View
            protected void onAttachedToWindow() {
                super.onAttachedToWindow();
                Bulletin.addDelegate(((BottomSheet) StealthModeAlert.this).container, new Bulletin.Delegate() { // from class: org.telegram.ui.Stories.StealthModeAlert.1.1
                    @Override // org.telegram.p043ui.Components.Bulletin.Delegate
                    public /* synthetic */ boolean allowLayoutChanges() {
                        return Bulletin.Delegate.CC.$default$allowLayoutChanges(this);
                    }

                    @Override // org.telegram.p043ui.Components.Bulletin.Delegate
                    public /* synthetic */ boolean clipWithGradient(int i) {
                        return Bulletin.Delegate.CC.$default$clipWithGradient(this, i);
                    }

                    @Override // org.telegram.p043ui.Components.Bulletin.Delegate
                    public /* synthetic */ int getBottomOffset(int i) {
                        return Bulletin.Delegate.CC.$default$getBottomOffset(this, i);
                    }

                    @Override // org.telegram.p043ui.Components.Bulletin.Delegate
                    public /* synthetic */ void onBottomOffsetChange(float f2) {
                        Bulletin.Delegate.CC.$default$onBottomOffsetChange(this, f2);
                    }

                    @Override // org.telegram.p043ui.Components.Bulletin.Delegate
                    public /* synthetic */ void onHide(Bulletin bulletin) {
                        Bulletin.Delegate.CC.$default$onHide(this, bulletin);
                    }

                    @Override // org.telegram.p043ui.Components.Bulletin.Delegate
                    public /* synthetic */ void onShow(Bulletin bulletin) {
                        Bulletin.Delegate.CC.$default$onShow(this, bulletin);
                    }

                    @Override // org.telegram.p043ui.Components.Bulletin.Delegate
                    public int getTopOffset(int i) {
                        return (int) (f + AndroidUtilities.m104dp(58));
                    }
                });
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void onDetachedFromWindow() {
                super.onDetachedFromWindow();
                Bulletin.removeDelegate(((BottomSheet) StealthModeAlert.this).container);
            }
        };
        ImageView imageView = new ImageView(getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        imageView.setBackground(Theme.createCircleDrawable(AndroidUtilities.m104dp(80), Theme.getColor(Theme.key_featuredStickers_addButton)));
        imageView.setImageResource(C3634R.C3636drawable.large_stealth);
        frameLayout.addView(imageView, LayoutHelper.createFrame(80, 80, 1, 0, 18, 0, 0));
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        frameLayout.addView(linearLayout, LayoutHelper.createFrame(-1, -2, 0, 0, 116, 0, 0));
        TextView textView = new TextView(getContext());
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
        textView.setText(LocaleController.getString("StealthModeTitle", C3634R.string.StealthModeTitle));
        linearLayout.addView(textView, LayoutHelper.createLinear(-2, -2, 1));
        SimpleTextView simpleTextView = new SimpleTextView(getContext());
        simpleTextView.setTextSize(14);
        simpleTextView.setAlignment(Layout.Alignment.ALIGN_CENTER);
        simpleTextView.setMaxLines(100);
        simpleTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, resourcesProvider));
        if (UserConfig.getInstance(this.currentAccount).isPremium()) {
            simpleTextView.setText(LocaleController.getString("StealthModeHint", C3634R.string.StealthModeHint));
        } else {
            simpleTextView.setText(LocaleController.getString("StealthModePremiumHint", C3634R.string.StealthModePremiumHint));
        }
        linearLayout.addView(simpleTextView, LayoutHelper.createLinear(-2, -2, 1, 36, 10, 36, 0));
        ItemCell itemCell = new ItemCell(this, getContext());
        itemCell.imageView.setImageResource(C3634R.C3636drawable.msg_stealth_5min);
        itemCell.textView.setText(LocaleController.getString("HideRecentViews", C3634R.string.HideRecentViews));
        itemCell.description.setText(LocaleController.getString("HideRecentViewsDescription", C3634R.string.HideRecentViewsDescription));
        linearLayout.addView(itemCell, LayoutHelper.createLinear(-1, -2, 0, 0, 20, 0, 0));
        ItemCell itemCell2 = new ItemCell(this, getContext());
        itemCell2.imageView.setImageResource(C3634R.C3636drawable.msg_stealth_25min);
        itemCell2.textView.setText(LocaleController.getString("HideNextViews", C3634R.string.HideNextViews));
        itemCell2.description.setText(LocaleController.getString("HideNextViewsDescription", C3634R.string.HideNextViewsDescription));
        linearLayout.addView(itemCell2, LayoutHelper.createLinear(-1, -2, 0, 0, 10, 0, 0));
        PremiumButtonView premiumButtonView = new PremiumButtonView(context, AndroidUtilities.m104dp(8), true, resourcesProvider);
        this.button = premiumButtonView;
        premiumButtonView.drawGradient = false;
        premiumButtonView.overlayTextView.getDrawable().setSplitByWords(false);
        int i = C3634R.raw.unlock_icon;
        premiumButtonView.setIcon(i);
        ScaleStateListAnimator.apply(premiumButtonView);
        final TLRPC$User currentUser = UserConfig.getInstance(this.currentAccount).getCurrentUser();
        if (!currentUser.premium) {
            premiumButtonView.setIcon(i);
            premiumButtonView.setButton(LocaleController.getString("UnlockStealthMode", C3634R.string.UnlockStealthMode), new View.OnClickListener() { // from class: org.telegram.ui.Stories.StealthModeAlert$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StealthModeAlert.this.lambda$new$0(view);
                }
            });
        } else {
            updateButton(false);
        }
        linearLayout.addView(premiumButtonView, LayoutHelper.createLinear(-1, 48, 80, 14, 24, 14, 16));
        setCustomView(frameLayout);
        premiumButtonView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.StealthModeAlert$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StealthModeAlert.this.lambda$new$3(currentUser, resourcesProvider, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        dismiss();
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment != null) {
            lastFragment.showDialog(new PremiumFeatureBottomSheet(lastFragment, 14, false));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(TLRPC$User tLRPC$User, Theme.ResourcesProvider resourcesProvider, View view) {
        if (!tLRPC$User.premium) {
            dismiss();
            BaseFragment lastFragment = LaunchActivity.getLastFragment();
            if (lastFragment != null) {
                lastFragment.showDialog(new PremiumFeatureBottomSheet(lastFragment, 14, false));
            }
        } else if (this.stealthModeIsActive) {
            dismiss();
        } else {
            StoriesController storiesController = MessagesController.getInstance(this.currentAccount).getStoriesController();
            TL_stories$TL_storiesStealthMode stealthMode = storiesController.getStealthMode();
            if (stealthMode == null || ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() > stealthMode.cooldown_until_date) {
                TL_stories$TL_stories_activateStealthMode tL_stories$TL_stories_activateStealthMode = new TL_stories$TL_stories_activateStealthMode();
                tL_stories$TL_stories_activateStealthMode.future = true;
                tL_stories$TL_stories_activateStealthMode.past = true;
                TL_stories$TL_storiesStealthMode tL_stories$TL_storiesStealthMode = new TL_stories$TL_storiesStealthMode();
                tL_stories$TL_storiesStealthMode.flags |= 3;
                tL_stories$TL_storiesStealthMode.cooldown_until_date = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() + MessagesController.getInstance(this.currentAccount).stealthModeCooldown;
                tL_stories$TL_storiesStealthMode.active_until_date = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() + MessagesController.getInstance(this.currentAccount).stealthModeFuture;
                storiesController.setStealthMode(tL_stories$TL_storiesStealthMode);
                ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stories$TL_stories_activateStealthMode, new RequestDelegate() { // from class: org.telegram.ui.Stories.StealthModeAlert$$ExternalSyntheticLambda4
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                        StealthModeAlert.lambda$new$2(tLObject, tLRPC$TL_error);
                    }
                });
                this.containerView.performHapticFeedback(3);
                dismiss();
                showStealthModeEnabledBulletin();
            } else if (this.stealthModeIsActive) {
                dismiss();
            } else {
                BulletinFactory m63of = BulletinFactory.m63of(this.container, resourcesProvider);
                if (m63of != null) {
                    m63of.createErrorBulletin(AndroidUtilities.replaceTags(LocaleController.getString("StealthModeCooldownHint", C3634R.string.StealthModeCooldownHint))).show(true);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$2(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StealthModeAlert$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                StealthModeAlert.lambda$new$1();
            }
        });
    }

    public static void showStealthModeEnabledBulletin() {
        BulletinFactory global;
        StoryViewer storyViewer = LaunchActivity.getLastFragment().storyViewer;
        if (storyViewer != null) {
            global = BulletinFactory.m63of(storyViewer.windowView, storyViewer.getResourceProvider());
        } else {
            global = BulletinFactory.global();
        }
        if (global != null) {
            global.createSimpleLargeBulletin(C3634R.C3636drawable.msg_stories_stealth2, LocaleController.getString("StealthModeOn", C3634R.string.StealthModeOn), LocaleController.getString("StealthModeOnHint", C3634R.string.StealthModeOnHint)).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4() {
        if (isShowing()) {
            updateButton(true);
        }
    }

    private void updateButton(boolean z) {
        TL_stories$TL_storiesStealthMode stealthMode = MessagesController.getInstance(this.currentAccount).getStoriesController().getStealthMode();
        if (stealthMode != null && ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() < stealthMode.active_until_date) {
            this.stealthModeIsActive = true;
            this.button.setOverlayText(LocaleController.getString("StealthModeIsActive", C3634R.string.StealthModeIsActive), true, z);
            this.button.overlayTextView.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText));
            return;
        }
        if (stealthMode != null) {
            int currentTime = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime();
            int i = stealthMode.cooldown_until_date;
            if (currentTime <= i) {
                long currentTime2 = i - ConnectionsManager.getInstance(this.currentAccount).getCurrentTime();
                int i2 = (int) (currentTime2 % 60);
                long j = currentTime2 / 60;
                StringBuilder sb = new StringBuilder();
                Locale locale = Locale.ENGLISH;
                sb.append(String.format(locale, "%02d", Integer.valueOf((int) (j / 60))));
                sb.append(String.format(locale, ":%02d", Integer.valueOf((int) (j % 60))));
                sb.append(String.format(locale, ":%02d", Integer.valueOf(i2)));
                this.button.setOverlayText(LocaleController.formatString("AvailableIn", C3634R.string.AvailableIn, sb.toString()), true, z);
                this.button.overlayTextView.setTextColor(ColorUtils.setAlphaComponent(Theme.getColor(Theme.key_featuredStickers_buttonText), 125));
                AndroidUtilities.cancelRunOnUIThread(this.updateButtonRunnuble);
                AndroidUtilities.runOnUIThread(this.updateButtonRunnuble, 1000L);
                return;
            }
        }
        this.button.setOverlayText(LocaleController.getString("EnableStealthMode", C3634R.string.EnableStealthMode), true, z);
        this.button.overlayTextView.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText));
    }

    /* renamed from: org.telegram.ui.Stories.StealthModeAlert$ItemCell */
    /* loaded from: classes6.dex */
    private class ItemCell extends FrameLayout {
        TextView description;
        ImageView imageView;
        TextView textView;

        public ItemCell(StealthModeAlert stealthModeAlert, Context context) {
            super(context);
            ImageView imageView = new ImageView(context);
            this.imageView = imageView;
            imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_featuredStickers_addButton), PorterDuff.Mode.MULTIPLY));
            addView(this.imageView, LayoutHelper.createFrame(28, 28, 0, 25, 12, 16, 0));
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, ((BottomSheet) stealthModeAlert).resourcesProvider));
            this.textView.setTextSize(1, 14.0f);
            addView(this.textView, LayoutHelper.createFrame(-1, -2, 0, 68, 8, 16, 0));
            TextView textView2 = new TextView(context);
            this.description = textView2;
            textView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, ((BottomSheet) stealthModeAlert).resourcesProvider));
            this.description.setTextSize(1, 14.0f);
            addView(this.description, LayoutHelper.createFrame(-1, -2, 0, 68, 28, 16, 8));
        }
    }
}
