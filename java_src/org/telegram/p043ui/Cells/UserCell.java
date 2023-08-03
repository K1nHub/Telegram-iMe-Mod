package org.telegram.p043ui.Cells;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.utils.helper.GlideHelper;
import java.util.Objects;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3419R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimatedEmojiDrawable;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.CheckBox;
import org.telegram.p043ui.Components.CheckBoxSquare;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.p043ui.NotificationsSettingsActivity;
import org.telegram.p043ui.Stories.StoriesListPlaceProvider;
import org.telegram.p043ui.Stories.StoriesUtilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$EncryptedChat;
import org.telegram.tgnet.TLRPC$FileLocation;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Cells.UserCell */
/* loaded from: classes5.dex */
public class UserCell extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    private TextView addButton;
    private TextView adminTextView;
    private AvatarDrawable avatarDrawable;
    public BackupImageView avatarImageView;
    private CheckBox checkBox;
    private CheckBoxSquare checkBoxBig;
    private int currentAccount;
    private int currentDrawable;
    private int currentId;
    private CharSequence currentName;
    private Object currentObject;
    private CharSequence currentStatus;
    protected long dialogId;
    private AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable emojiStatus;
    private ImageView imageView;
    private TLRPC$FileLocation lastAvatar;
    private String lastName;
    private int lastStatus;
    private SimpleTextView nameTextView;
    public boolean needDivider;
    private Drawable premiumDrawable;
    private Theme.ResourcesProvider resourcesProvider;
    private boolean selfAsSavedMessages;
    private int statusColor;
    private int statusOnlineColor;
    private SimpleTextView statusTextView;
    private boolean storiable;
    public StoriesUtilities.AvatarStoryParams storyParams;

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    public void changeCheckBoxMargins() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.checkBox.getLayoutParams();
        layoutParams.setMargins(layoutParams.leftMargin, AndroidUtilities.m72dp(36), layoutParams.rightMargin, layoutParams.bottomMargin);
    }

    public void setAvatar(String str) {
        Context context = getContext();
        final BackupImageView backupImageView = this.avatarImageView;
        Objects.requireNonNull(backupImageView);
        GlideHelper.loadImageAsBitmap(context, str, new Callbacks$Callback1() { // from class: org.telegram.ui.Cells.UserCell$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                BackupImageView.this.setImageBitmap((Bitmap) obj);
            }
        }, true);
    }

    public void hideNameDrawable() {
        this.nameTextView.setRightDrawable((Drawable) null);
    }

    public void openStory(long j, Runnable runnable) {
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment != null) {
            lastFragment.getOrCreateStoryViewer().doOnAnimationReady(runnable);
            lastFragment.getOrCreateStoryViewer().open(getContext(), j, StoriesListPlaceProvider.m24of((RecyclerListView) getParent()));
        }
    }

    public UserCell(Context context, int i, int i2, boolean z) {
        this(context, i, i2, z, false, null);
    }

    public UserCell(Context context, int i, int i2, boolean z, Theme.ResourcesProvider resourcesProvider) {
        this(context, i, i2, z, false, resourcesProvider);
    }

    public UserCell(Context context, int i, int i2, boolean z, boolean z2) {
        this(context, i, i2, z, z2, null);
    }

    public UserCell(Context context, int i, int i2, boolean z, boolean z2, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        int i3;
        int i4;
        int i5;
        this.currentAccount = UserConfig.selectedAccount;
        this.storyParams = new StoriesUtilities.AvatarStoryParams(false) { // from class: org.telegram.ui.Cells.UserCell.1
            @Override // org.telegram.p043ui.Stories.StoriesUtilities.AvatarStoryParams
            public void openStory(long j, Runnable runnable) {
                UserCell.this.openStory(j, runnable);
            }
        };
        this.resourcesProvider = resourcesProvider;
        if (z2) {
            TextView textView = new TextView(context);
            this.addButton = textView;
            textView.setGravity(17);
            this.addButton.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText, resourcesProvider));
            this.addButton.setTextSize(1, 14.0f);
            this.addButton.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.addButton.setBackgroundDrawable(Theme.AdaptiveRipple.filledRectByKey(Theme.key_featuredStickers_addButton, 4.0f));
            this.addButton.setText(LocaleController.getString("Add", C3419R.string.Add));
            this.addButton.setPadding(AndroidUtilities.m72dp(17), 0, AndroidUtilities.m72dp(17), 0);
            View view = this.addButton;
            boolean z3 = LocaleController.isRTL;
            addView(view, LayoutHelper.createFrame(-2, 28, (z3 ? 3 : 5) | 48, z3 ? 14 : 0, 15, z3 ? 0 : 14, 0));
            i3 = (int) Math.ceil((this.addButton.getPaint().measureText(this.addButton.getText().toString()) + AndroidUtilities.m72dp(48)) / AndroidUtilities.density);
        } else {
            i3 = 0;
        }
        this.statusColor = Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, resourcesProvider);
        this.statusOnlineColor = Theme.getColor(Theme.key_windowBackgroundWhiteBlueText, resourcesProvider);
        this.avatarDrawable = new AvatarDrawable();
        BackupImageView backupImageView = new BackupImageView(context) { // from class: org.telegram.ui.Cells.UserCell.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p043ui.Components.BackupImageView, android.view.View
            public void onDraw(Canvas canvas) {
                if (UserCell.this.storiable) {
                    UserCell.this.storyParams.originalAvatarRect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
                    UserCell userCell = UserCell.this;
                    StoriesUtilities.drawAvatarWithStory(userCell.dialogId, canvas, this.imageReceiver, userCell.storyParams);
                    return;
                }
                super.onDraw(canvas);
            }

            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (UserCell.this.storyParams.checkOnTouchEvent(motionEvent, this)) {
                    return true;
                }
                return super.onTouchEvent(motionEvent);
            }
        };
        this.avatarImageView = backupImageView;
        backupImageView.setRoundRadius(AndroidUtilities.m72dp(24));
        View view2 = this.avatarImageView;
        boolean z4 = LocaleController.isRTL;
        addView(view2, LayoutHelper.createFrame(46, 46, (z4 ? 5 : 3) | 48, z4 ? 0 : i + 7, 6, z4 ? i + 7 : 0, 0));
        setClipChildren(false);
        SimpleTextView simpleTextView = new SimpleTextView(context);
        this.nameTextView = simpleTextView;
        simpleTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
        this.nameTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.nameTextView.setTextSize(16);
        this.nameTextView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
        View view3 = this.nameTextView;
        boolean z5 = LocaleController.isRTL;
        int i6 = (z5 ? 5 : 3) | 48;
        if (z5) {
            i4 = (i2 == 2 ? 18 : 0) + 28 + i3;
        } else {
            i4 = i + 64;
        }
        if (z5) {
            i5 = i + 64;
        } else {
            i5 = (i2 != 2 ? 0 : 18) + 28 + i3;
        }
        addView(view3, LayoutHelper.createFrame(-1, 20, i6, i4, 10, i5, 0));
        this.emojiStatus = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this.nameTextView, AndroidUtilities.m72dp(20));
        SimpleTextView simpleTextView2 = new SimpleTextView(context);
        this.statusTextView = simpleTextView2;
        simpleTextView2.setTextSize(15);
        this.statusTextView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
        View view4 = this.statusTextView;
        boolean z6 = LocaleController.isRTL;
        addView(view4, LayoutHelper.createFrame(-1, 20, (z6 ? 5 : 3) | 48, z6 ? i3 + 28 : i + 64, 32, z6 ? i + 64 : i3 + 28, 0));
        ImageView imageView = new ImageView(context);
        this.imageView = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        this.imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon, resourcesProvider), PorterDuff.Mode.MULTIPLY));
        this.imageView.setVisibility(8);
        View view5 = this.imageView;
        boolean z7 = LocaleController.isRTL;
        addView(view5, LayoutHelper.createFrame(-2, -2, (z7 ? 5 : 3) | 16, z7 ? 0 : 16, 0, z7 ? 16 : 0, 0));
        if (i2 == 2) {
            CheckBoxSquare checkBoxSquare = new CheckBoxSquare(context, false);
            this.checkBoxBig = checkBoxSquare;
            boolean z8 = LocaleController.isRTL;
            addView(checkBoxSquare, LayoutHelper.createFrame(18, 18, (z8 ? 3 : 5) | 16, z8 ? 19 : 0, 0, z8 ? 0 : 19, 0));
        } else if (i2 == 1) {
            CheckBox checkBox = new CheckBox(context, C3419R.C3421drawable.round_check2);
            this.checkBox = checkBox;
            checkBox.setVisibility(4);
            this.checkBox.setColor(Theme.getColor(Theme.key_checkbox, resourcesProvider), Theme.getColor(Theme.key_checkboxCheck, resourcesProvider));
            View view6 = this.checkBox;
            boolean z9 = LocaleController.isRTL;
            addView(view6, LayoutHelper.createFrame(22, 22, (z9 ? 5 : 3) | 48, z9 ? 0 : i + 37, 40, z9 ? i + 37 : 0, 0));
        }
        if (z) {
            TextView textView2 = new TextView(context);
            this.adminTextView = textView2;
            textView2.setTextSize(1, 14.0f);
            this.adminTextView.setTextColor(Theme.getColor(Theme.key_profile_creatorIcon, resourcesProvider));
            View view7 = this.adminTextView;
            boolean z10 = LocaleController.isRTL;
            addView(view7, LayoutHelper.createFrame(-2, -2, (z10 ? 3 : 5) | 48, z10 ? 23 : 0, 10, z10 ? 0 : 23, 0));
        }
        setFocusable(true);
    }

    public void setAvatarPadding(int i) {
        int i2;
        int i3;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.avatarImageView.getLayoutParams();
        layoutParams.leftMargin = AndroidUtilities.m72dp(LocaleController.isRTL ? 0 : i + 7);
        layoutParams.rightMargin = AndroidUtilities.m72dp(LocaleController.isRTL ? i + 7 : 0);
        this.avatarImageView.setLayoutParams(layoutParams);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.nameTextView.getLayoutParams();
        if (LocaleController.isRTL) {
            i2 = (this.checkBoxBig != null ? 18 : 0) + 28;
        } else {
            i2 = i + 64;
        }
        layoutParams2.leftMargin = AndroidUtilities.m72dp(i2);
        if (LocaleController.isRTL) {
            i3 = i + 64;
        } else {
            i3 = (this.checkBoxBig == null ? 0 : 18) + 28;
        }
        layoutParams2.rightMargin = AndroidUtilities.m72dp(i3);
        FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.statusTextView.getLayoutParams();
        layoutParams3.leftMargin = AndroidUtilities.m72dp(LocaleController.isRTL ? 28 : i + 64);
        layoutParams3.rightMargin = AndroidUtilities.m72dp(LocaleController.isRTL ? i + 64 : 28);
        CheckBox checkBox = this.checkBox;
        if (checkBox != null) {
            FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) checkBox.getLayoutParams();
            layoutParams4.leftMargin = AndroidUtilities.m72dp(LocaleController.isRTL ? 0 : i + 37);
            layoutParams4.rightMargin = AndroidUtilities.m72dp(LocaleController.isRTL ? i + 37 : 0);
        }
    }

    public void setAddButtonVisible(boolean z) {
        TextView textView = this.addButton;
        if (textView == null) {
            return;
        }
        textView.setVisibility(z ? 0 : 8);
    }

    public void setAdminRole(String str) {
        TextView textView = this.adminTextView;
        if (textView == null) {
            return;
        }
        textView.setVisibility(str != null ? 0 : 8);
        this.adminTextView.setText(str);
        if (str != null) {
            CharSequence text = this.adminTextView.getText();
            int ceil = (int) Math.ceil(this.adminTextView.getPaint().measureText(text, 0, text.length()));
            this.nameTextView.setPadding(LocaleController.isRTL ? AndroidUtilities.m72dp(6) + ceil : 0, 0, !LocaleController.isRTL ? ceil + AndroidUtilities.m72dp(6) : 0, 0);
            return;
        }
        this.nameTextView.setPadding(0, 0, 0, 0);
    }

    public CharSequence getName() {
        return this.nameTextView.getText();
    }

    public void setData(Object obj, CharSequence charSequence, CharSequence charSequence2, int i) {
        setData(obj, null, charSequence, charSequence2, i, false);
    }

    public void setData(Object obj, CharSequence charSequence, CharSequence charSequence2, int i, boolean z) {
        setData(obj, null, charSequence, charSequence2, i, z);
    }

    public void setData(Object obj, TLRPC$EncryptedChat tLRPC$EncryptedChat, CharSequence charSequence, CharSequence charSequence2, int i, boolean z) {
        if (obj == null && charSequence == null && charSequence2 == null) {
            this.currentStatus = null;
            this.currentName = null;
            this.storiable = false;
            this.currentObject = null;
            this.nameTextView.setText("");
            this.statusTextView.setText("");
            this.avatarImageView.setImageDrawable(null);
            return;
        }
        this.currentStatus = charSequence2;
        if (charSequence != null) {
            try {
                SimpleTextView simpleTextView = this.nameTextView;
                if (simpleTextView != null) {
                    charSequence = Emoji.replaceEmoji(charSequence, simpleTextView.getPaint().getFontMetricsInt(), AndroidUtilities.m72dp(18), false);
                }
            } catch (Exception unused) {
            }
        }
        this.currentName = charSequence;
        this.storiable = !(obj instanceof String);
        this.currentObject = obj;
        this.currentDrawable = i;
        this.needDivider = z;
        setWillNotDraw(!z);
        update(0);
    }

    public Object getCurrentObject() {
        return this.currentObject;
    }

    public void setException(NotificationsSettingsActivity.NotificationException notificationException, CharSequence charSequence, boolean z) {
        String string;
        TLRPC$User user;
        if (notificationException.story) {
            int i = notificationException.notify;
            if (i <= 0 && notificationException.auto) {
                string = LocaleController.getString("NotificationEnabledAutomatically");
            } else if (i <= 0) {
                string = LocaleController.getString("NotificationEnabled");
            } else {
                string = LocaleController.getString("NotificationDisabled");
            }
        } else {
            boolean z2 = notificationException.hasCustom;
            int i2 = notificationException.notify;
            int i3 = notificationException.muteUntil;
            boolean z3 = true;
            if (i2 != 3 || i3 == Integer.MAX_VALUE) {
                if (i2 != 0 && i2 != 1) {
                    z3 = false;
                }
                if (z3 && z2) {
                    string = LocaleController.getString("NotificationsCustom", C3419R.string.NotificationsCustom);
                } else {
                    string = z3 ? LocaleController.getString("NotificationsUnmuted", C3419R.string.NotificationsUnmuted) : LocaleController.getString("NotificationsMuted", C3419R.string.NotificationsMuted);
                }
            } else {
                int currentTime = i3 - ConnectionsManager.getInstance(this.currentAccount).getCurrentTime();
                if (currentTime <= 0) {
                    if (z2) {
                        string = LocaleController.getString("NotificationsCustom", C3419R.string.NotificationsCustom);
                    } else {
                        string = LocaleController.getString("NotificationsUnmuted", C3419R.string.NotificationsUnmuted);
                    }
                } else if (currentTime < 3600) {
                    string = LocaleController.formatString("WillUnmuteIn", C3419R.string.WillUnmuteIn, LocaleController.formatPluralString("Minutes", currentTime / 60, new Object[0]));
                } else if (currentTime < 86400) {
                    string = LocaleController.formatString("WillUnmuteIn", C3419R.string.WillUnmuteIn, LocaleController.formatPluralString("Hours", (int) Math.ceil((currentTime / 60.0f) / 60.0f), new Object[0]));
                } else {
                    string = currentTime < 31536000 ? LocaleController.formatString("WillUnmuteIn", C3419R.string.WillUnmuteIn, LocaleController.formatPluralString("Days", (int) Math.ceil(((currentTime / 60.0f) / 60.0f) / 24.0f), new Object[0])) : null;
                }
            }
            if (string == null) {
                string = LocaleController.getString("NotificationsOff", C3419R.string.NotificationsOff);
            }
            if (notificationException.auto) {
                string = string + ", Auto";
            }
        }
        String str = string;
        if (DialogObject.isEncryptedDialog(notificationException.did)) {
            TLRPC$EncryptedChat encryptedChat = MessagesController.getInstance(this.currentAccount).getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(notificationException.did)));
            if (encryptedChat == null || (user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(encryptedChat.user_id))) == null) {
                return;
            }
            setData(user, encryptedChat, charSequence, str, 0, false);
        } else if (DialogObject.isUserDialog(notificationException.did)) {
            TLRPC$User user2 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(notificationException.did));
            if (user2 != null) {
                setData(user2, null, charSequence, str, 0, z);
            }
        } else {
            TLRPC$Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-notificationException.did));
            if (chat != null) {
                setData(chat, null, charSequence, str, 0, z);
            }
        }
    }

    public void setNameTypeface(Typeface typeface) {
        this.nameTextView.setTypeface(typeface);
    }

    public void setCurrentId(int i) {
        this.currentId = i;
    }

    public void setChecked(boolean z, boolean z2) {
        CheckBox checkBox = this.checkBox;
        if (checkBox != null) {
            if (checkBox.getVisibility() != 0) {
                this.checkBox.setVisibility(0);
            }
            this.checkBox.setChecked(z, z2);
            return;
        }
        CheckBoxSquare checkBoxSquare = this.checkBoxBig;
        if (checkBoxSquare != null) {
            if (checkBoxSquare.getVisibility() != 0) {
                this.checkBoxBig.setVisibility(0);
            }
            this.checkBoxBig.setChecked(z, z2);
        }
    }

    public void setCheckDisabled(boolean z) {
        CheckBoxSquare checkBoxSquare = this.checkBoxBig;
        if (checkBoxSquare != null) {
            checkBoxSquare.setDisabled(z);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m72dp(58) + (this.needDivider ? 1 : 0), 1073741824));
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        CheckBoxSquare checkBoxSquare = this.checkBoxBig;
        if (checkBoxSquare != null) {
            checkBoxSquare.invalidate();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0305  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x030c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void update(int r17) {
        /*
            Method dump skipped, instructions count: 1152
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.UserCell.update(int):void");
    }

    public void setSelfAsSavedMessages(boolean z) {
        this.selfAsSavedMessages = z;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.needDivider) {
            canvas.drawLine(LocaleController.isRTL ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.m72dp(68), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.m72dp(68) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        CheckBoxSquare checkBoxSquare = this.checkBoxBig;
        if (checkBoxSquare != null && checkBoxSquare.getVisibility() == 0) {
            accessibilityNodeInfo.setCheckable(true);
            accessibilityNodeInfo.setChecked(this.checkBoxBig.isChecked());
            accessibilityNodeInfo.setClassName("android.widget.CheckBox");
            return;
        }
        CheckBox checkBox = this.checkBox;
        if (checkBox == null || checkBox.getVisibility() != 0) {
            return;
        }
        accessibilityNodeInfo.setCheckable(true);
        accessibilityNodeInfo.setChecked(this.checkBox.isChecked());
        accessibilityNodeInfo.setClassName("android.widget.CheckBox");
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.emojiLoaded) {
            this.nameTextView.invalidate();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
        this.emojiStatus.attach();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
        this.emojiStatus.detach();
        this.storyParams.onDetachFromWindow();
    }

    public long getDialogId() {
        return this.dialogId;
    }
}
