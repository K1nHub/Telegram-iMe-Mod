package org.telegram.p043ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.Toast;
import com.iMe.common.IdFabric$CustomType;
import com.iMe.fork.controller.ForkCommonController;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.NotificationsController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimatedEmojiDrawable;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.GroupCreateCheckBox;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.Premium.PremiumGradient;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Cells.DrawerUserCell */
/* loaded from: classes5.dex */
public class DrawerUserCell extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    private int accountNumber;
    private AvatarDrawable avatarDrawable;
    private GroupCreateCheckBox checkBox;
    private Toast currentMuteToast;
    private final int customType;
    private BackupImageView imageView;
    private ImageView muteButton;
    private RectF rect;
    private AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable status;
    private SimpleTextView textView;

    public DrawerUserCell(Context context) {
        this(context, 0);
    }

    private ForkCommonController getForkCommonController() {
        return ForkCommonController.getInstance(this.accountNumber);
    }

    private void addMuteButton() {
        ImageView imageView = new ImageView(getContext());
        this.muteButton = imageView;
        imageView.setImageResource(C3634R.C3636drawable.msg_unmute);
        this.muteButton.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        this.muteButton.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chats_menuItemIcon), PorterDuff.Mode.MULTIPLY));
        this.muteButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Cells.DrawerUserCell$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DrawerUserCell.this.lambda$addMuteButton$0(view);
            }
        });
        addView(this.muteButton, LayoutHelper.createFrame(42, 42, 8388629, 0, 0, 4, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addMuteButton$0(View view) {
        String string;
        getForkCommonController().setAccountMuted(!getForkCommonController().isAccountMuted());
        getForkCommonController().saveConfig();
        updateMuteButtonIcon();
        Toast toast = this.currentMuteToast;
        if (toast != null) {
            toast.cancel();
        }
        if (getForkCommonController().isAccountMuted()) {
            string = LocaleController.getString("NotificationsMutedHint", C3634R.string.NotificationsMutedHint);
        } else {
            string = LocaleController.getString("NotificationsUnmutedHint", C3634R.string.NotificationsUnmutedHint);
        }
        Toast makeText = Toast.makeText(ApplicationLoader.applicationContext, string, 0);
        this.currentMuteToast = makeText;
        makeText.show();
    }

    private void updateMuteButtonIcon() {
        ImageView imageView = this.muteButton;
        if (imageView != null) {
            imageView.setImageResource(getForkCommonController().isAccountMuted() ? C3634R.C3636drawable.msg_mute : C3634R.C3636drawable.msg_unmute);
        }
    }

    private boolean isActionBarAccountSwitchType() {
        return this.customType == IdFabric$CustomType.DRAWER_USER_CELL_ACTION_BAR_ACCOUNT_SWITCH;
    }

    public DrawerUserCell(Context context, int i) {
        super(context);
        this.rect = new RectF();
        this.customType = i;
        if (isActionBarAccountSwitchType()) {
            setPadding(0, AndroidUtilities.m104dp(4), 0, AndroidUtilities.m104dp(4));
        } else {
            addMuteButton();
        }
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        this.avatarDrawable = avatarDrawable;
        avatarDrawable.setTextSize(AndroidUtilities.m104dp(20));
        BackupImageView backupImageView = new BackupImageView(context);
        this.imageView = backupImageView;
        backupImageView.setRoundRadius(AndroidUtilities.m104dp(18));
        addView(this.imageView, LayoutHelper.createFrame(36, 36, 51, 14, 6, 0, 0));
        SimpleTextView simpleTextView = new SimpleTextView(context);
        this.textView = simpleTextView;
        simpleTextView.setPadding(0, AndroidUtilities.m104dp(4), 0, AndroidUtilities.m104dp(4));
        this.textView.setTextColor(Theme.getColor(Theme.key_chats_menuItemText));
        this.textView.setTextSize(15);
        this.textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.textView.setMaxLines(1);
        this.textView.setGravity(19);
        this.textView.setEllipsizeByGradient(24);
        addView(this.textView, LayoutHelper.createFrame(-1, -2, 19, 72, 0, (isActionBarAccountSwitchType() ? 0 : 42) + 14, 0));
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this.textView, AndroidUtilities.m104dp(20));
        this.status = swapAnimatedEmojiDrawable;
        this.textView.setRightDrawable(swapAnimatedEmojiDrawable);
        GroupCreateCheckBox groupCreateCheckBox = new GroupCreateCheckBox(context);
        this.checkBox = groupCreateCheckBox;
        groupCreateCheckBox.setChecked(true, false);
        this.checkBox.setCheckScale(0.9f);
        this.checkBox.setInnerRadDiff(AndroidUtilities.m105dp(1.5f));
        this.checkBox.setColorKeysOverrides(Theme.key_chats_unreadCounterText, Theme.key_chats_unreadCounter, Theme.key_chats_menuBackground);
        addView(this.checkBox, LayoutHelper.createFrame(18, 18, 51, 37, 27, 0, 0));
        setWillNotDraw(false);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m104dp(isActionBarAccountSwitchType() ? 56 : 48), 1073741824));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ImageView imageView = this.muteButton;
        if (imageView != null) {
            imageView.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector)));
        }
        this.textView.setTextColor(Theme.getColor(Theme.key_chats_menuItemText));
        this.status.attach();
        for (int i = 0; i < 5; i++) {
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.currentUserPremiumStatusChanged);
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.updateInterfaces);
        }
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.status.detach();
        for (int i = 0; i < 5; i++) {
            NotificationCenter.getInstance(i).removeObserver(this, NotificationCenter.currentUserPremiumStatusChanged);
            NotificationCenter.getInstance(i).removeObserver(this, NotificationCenter.updateInterfaces);
        }
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
        if (this.textView.getRightDrawable() instanceof AnimatedEmojiDrawable.WrapSizeDrawable) {
            Drawable drawable = ((AnimatedEmojiDrawable.WrapSizeDrawable) this.textView.getRightDrawable()).getDrawable();
            if (drawable instanceof AnimatedEmojiDrawable) {
                ((AnimatedEmojiDrawable) drawable).removeView(this.textView);
            }
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.currentUserPremiumStatusChanged) {
            int i3 = this.accountNumber;
            if (i2 == i3) {
                setAccount(i3);
            }
        } else if (i == NotificationCenter.emojiLoaded) {
            this.textView.invalidate();
        } else if (i != NotificationCenter.updateInterfaces || (((Integer) objArr[0]).intValue() & MessagesController.UPDATE_MASK_EMOJI_STATUS) <= 0) {
        } else {
            setAccount(this.accountNumber);
        }
    }

    public void setAccount(int i) {
        this.accountNumber = i;
        TLRPC$User currentUser = UserConfig.getInstance(i).getCurrentUser();
        if (currentUser == null) {
            return;
        }
        this.avatarDrawable.setInfo(currentUser);
        CharSequence formatName = ContactsController.formatName(currentUser.first_name, currentUser.last_name);
        try {
            formatName = Emoji.replaceEmoji(formatName, this.textView.getPaint().getFontMetricsInt(), AndroidUtilities.m104dp(20), false);
        } catch (Exception unused) {
        }
        this.textView.setText(formatName);
        boolean isShowPremiumBadgeEnabled = ForkCommonController.getInstance(i).isShowPremiumBadgeEnabled();
        boolean isShowPremiumStatusEnabled = ForkCommonController.getInstance(i).isShowPremiumStatusEnabled();
        Long emojiStatusDocumentId = UserObject.getEmojiStatusDocumentId(currentUser);
        if (isShowPremiumStatusEnabled && emojiStatusDocumentId != null) {
            this.textView.setDrawablePadding(AndroidUtilities.m104dp(4));
            this.status.set(emojiStatusDocumentId.longValue(), true);
            this.textView.setRightDrawableOutside(true);
        } else if (isShowPremiumBadgeEnabled && MessagesController.getInstance(i).isPremiumUser(currentUser)) {
            this.textView.setDrawablePadding(AndroidUtilities.m104dp(6));
            this.status.set(PremiumGradient.getInstance().premiumStarDrawableMini, true);
            this.textView.setRightDrawableOutside(true);
        } else {
            this.status.set((Drawable) null, true);
            this.textView.setRightDrawableOutside(false);
        }
        this.status.setColor(Integer.valueOf(Theme.getColor(Theme.key_chats_verifiedBackground)));
        this.imageView.getImageReceiver().setCurrentAccount(i);
        this.imageView.setForUserOrChat(currentUser, this.avatarDrawable);
        this.checkBox.setVisibility(i != UserConfig.selectedAccount ? 4 : 0);
        updateMuteButtonIcon();
    }

    public int getAccountNumber() {
        return this.accountNumber;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (UserConfig.getActivatedAccountsCount() <= 1 || !NotificationsController.getInstance(this.accountNumber).showBadgeNumber) {
            this.textView.setRightPadding(0);
            return;
        }
        int mainUnreadCount = MessagesStorage.getInstance(this.accountNumber).getMainUnreadCount();
        if (mainUnreadCount <= 0) {
            this.textView.setRightPadding(0);
            return;
        }
        String format = String.format("%d", Integer.valueOf(mainUnreadCount));
        int m105dp = AndroidUtilities.m105dp(isActionBarAccountSwitchType() ? 16.5f : 12.5f);
        int ceil = (int) Math.ceil(Theme.dialogs_countTextPaint.measureText(format));
        int max = Math.max(AndroidUtilities.m104dp(10), ceil);
        int measuredWidth = (getMeasuredWidth() - max) - AndroidUtilities.m104dp(25);
        if (this.muteButton != null) {
            measuredWidth -= AndroidUtilities.m104dp(42);
        }
        int m105dp2 = measuredWidth - AndroidUtilities.m105dp(5.5f);
        this.rect.set(m105dp2, m105dp, m105dp2 + max + AndroidUtilities.m104dp(14), AndroidUtilities.m104dp(23) + m105dp);
        RectF rectF = this.rect;
        float f = AndroidUtilities.density;
        canvas.drawRoundRect(rectF, f * 11.5f, f * 11.5f, Theme.dialogs_countPaint);
        RectF rectF2 = this.rect;
        canvas.drawText(format, rectF2.left + ((rectF2.width() - ceil) / 2.0f), m105dp + AndroidUtilities.m104dp(16), Theme.dialogs_countTextPaint);
        this.textView.setRightPadding(max + AndroidUtilities.m104dp(26));
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.addAction(16);
    }
}
