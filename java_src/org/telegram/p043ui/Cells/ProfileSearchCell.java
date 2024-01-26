package org.telegram.p043ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.content.ContextCompat;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.controller.ForkCommonController;
import java.util.Locale;
import org.telegram.PhoneFormat.C3544PhoneFormat;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimatedEmojiDrawable;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.CanvasButton;
import org.telegram.p043ui.Components.CheckBox2;
import org.telegram.p043ui.Components.CombinedDrawable;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.Premium.PremiumGradient;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Stories.StoriesUtilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$EncryptedChat;
import org.telegram.tgnet.TLRPC$FileLocation;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$UserStatus;
/* renamed from: org.telegram.ui.Cells.ProfileSearchCell */
/* loaded from: classes5.dex */
public class ProfileSearchCell extends BaseCell implements NotificationCenter.NotificationCenterDelegate {
    CanvasButton actionButton;
    private StaticLayout actionLayout;
    private int actionLeft;
    public boolean albumMode;
    private AvatarDrawable avatarDrawable;
    public ImageReceiver avatarImage;
    public StoriesUtilities.AvatarStoryParams avatarStoryParams;
    private TLRPC$Chat chat;
    CheckBox2 checkBox;
    private ContactsController.Contact contact;
    private StaticLayout countLayout;
    private int countLeft;
    private int countTop;
    private int countWidth;
    private int currentAccount;
    private CharSequence currentName;
    private boolean customPaints;
    private long dialog_id;
    private boolean drawCheck;
    private boolean drawCount;
    private boolean drawNameLock;
    private TLRPC$EncryptedChat encryptedChat;
    private boolean[] isOnline;
    private boolean isShowPremiumBadgeEnabled;
    private boolean isShowPremiumStatusEnabled;
    private TLRPC$FileLocation lastAvatar;
    private String lastName;
    private int lastStatus;
    private int lastUnreadCount;
    private Drawable lockDrawable;
    private StaticLayout nameLayout;
    private int nameLeft;
    private int nameLockLeft;
    private int nameLockTop;
    private TextPaint namePaint;
    private int nameTop;
    private int nameWidth;
    private boolean premiumBlocked;
    private final AnimatedFloat premiumBlockedT;
    private PremiumGradient.PremiumGradientTools premiumGradient;
    private Drawable promoSubscribeIcon;
    private int promoSubscribeIconLeft;
    private int promoSubscribeIconSize;
    private RectF rect;
    private Theme.ResourcesProvider resourcesProvider;
    private boolean savedMessages;
    private boolean showPremiumBlocked;
    private AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable statusDrawable;
    private StaticLayout statusLayout;
    private int statusLeft;
    private TextPaint statusPaint;
    private CharSequence subLabel;
    private int sublabelOffsetX;
    private int sublabelOffsetY;
    public boolean useSeparator;
    private TLRPC$User user;

    public void setPromoSubscribeIcon(int i) {
        Drawable drawable = ContextCompat.getDrawable(getContext(), i);
        this.promoSubscribeIcon = drawable;
        if (drawable != null) {
            this.promoSubscribeIconSize = drawable.getIntrinsicWidth();
        }
    }

    public boolean isPointInsideAvatar(float f, float f2) {
        ImageReceiver imageReceiver = this.avatarImage;
        return imageReceiver != null && imageReceiver.isInsideImage(f, f2);
    }

    public ProfileSearchCell(Context context) {
        this(context, null);
    }

    public ProfileSearchCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.currentAccount = UserConfig.selectedAccount;
        this.countTop = AndroidUtilities.m107dp(19);
        this.premiumBlockedT = new AnimatedFloat(this, 0L, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.avatarStoryParams = new StoriesUtilities.AvatarStoryParams(false);
        this.rect = new RectF();
        this.resourcesProvider = resourcesProvider;
        ImageReceiver imageReceiver = new ImageReceiver(this);
        this.avatarImage = imageReceiver;
        imageReceiver.setRoundRadius(AndroidUtilities.m107dp(23));
        this.avatarDrawable = new AvatarDrawable();
        CheckBox2 checkBox2 = new CheckBox2(context, 21, resourcesProvider);
        this.checkBox = checkBox2;
        checkBox2.setColor(-1, Theme.key_windowBackgroundWhite, Theme.key_checkboxCheck);
        this.checkBox.setDrawUnchecked(false);
        this.checkBox.setDrawBackgroundAsArc(3);
        addView(this.checkBox);
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this, AndroidUtilities.m107dp(20));
        this.statusDrawable = swapAnimatedEmojiDrawable;
        swapAnimatedEmojiDrawable.setCallback(this);
    }

    public ProfileSearchCell showPremiumBlock(boolean z) {
        this.showPremiumBlocked = z;
        return this;
    }

    public ProfileSearchCell useCustomPaints() {
        this.customPaints = true;
        return this;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return this.statusDrawable == drawable || super.verifyDrawable(drawable);
    }

    public void setData(Object obj, TLRPC$EncryptedChat tLRPC$EncryptedChat, CharSequence charSequence, CharSequence charSequence2, boolean z, boolean z2) {
        this.currentName = charSequence;
        boolean z3 = true;
        if (obj instanceof TLRPC$User) {
            TLRPC$User tLRPC$User = (TLRPC$User) obj;
            this.user = tLRPC$User;
            this.chat = null;
            this.contact = null;
            if (!this.showPremiumBlocked || tLRPC$User == null || !MessagesController.getInstance(this.currentAccount).isUserPremiumBlocked(this.user.f1751id)) {
                z3 = false;
            }
            this.premiumBlocked = z3;
        } else if (obj instanceof TLRPC$Chat) {
            this.chat = (TLRPC$Chat) obj;
            this.user = null;
            this.contact = null;
            this.premiumBlocked = false;
        } else if (obj instanceof ContactsController.Contact) {
            ContactsController.Contact contact = (ContactsController.Contact) obj;
            this.contact = contact;
            this.chat = null;
            this.user = null;
            if (!this.showPremiumBlocked || contact == null || contact.user == null || !MessagesController.getInstance(this.currentAccount).isUserPremiumBlocked(this.contact.user.f1751id)) {
                z3 = false;
            }
            this.premiumBlocked = z3;
        }
        this.encryptedChat = tLRPC$EncryptedChat;
        this.subLabel = charSequence2;
        this.drawCount = z;
        this.savedMessages = z2;
        update(0);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.avatarImage.onDetachedFromWindow();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
        if (this.showPremiumBlocked) {
            NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.userIsPremiumBlockedUpadted);
        }
        this.statusDrawable.detach();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.avatarImage.onAttachedToWindow();
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
        if (this.showPremiumBlocked) {
            NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.userIsPremiumBlockedUpadted);
        }
        this.statusDrawable.attach();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        ContactsController.Contact contact;
        if (i == NotificationCenter.emojiLoaded) {
            invalidate();
        } else if (i == NotificationCenter.userIsPremiumBlockedUpadted) {
            boolean z = this.premiumBlocked;
            boolean z2 = this.showPremiumBlocked && ((this.user != null && MessagesController.getInstance(this.currentAccount).isUserPremiumBlocked(this.user.f1751id)) || !((contact = this.contact) == null || contact.user == null || !MessagesController.getInstance(this.currentAccount).isUserPremiumBlocked(this.contact.user.f1751id)));
            this.premiumBlocked = z2;
            if (z2 != z) {
                invalidate();
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        CheckBox2 checkBox2 = this.checkBox;
        if (checkBox2 != null) {
            checkBox2.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(24), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(24), 1073741824));
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.m107dp(60) + (this.useSeparator ? 1 : 0));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.user == null && this.chat == null && this.encryptedChat == null && this.contact == null) {
            return;
        }
        if (this.checkBox != null) {
            int m107dp = LocaleController.isRTL ? (i3 - i) - AndroidUtilities.m107dp(42) : AndroidUtilities.m107dp(42);
            int m107dp2 = AndroidUtilities.m107dp(36);
            CheckBox2 checkBox2 = this.checkBox;
            checkBox2.layout(m107dp, m107dp2, checkBox2.getMeasuredWidth() + m107dp, this.checkBox.getMeasuredHeight() + m107dp2);
        }
        if (z) {
            buildLayout();
        }
    }

    public TLRPC$User getUser() {
        return this.user;
    }

    public TLRPC$Chat getChat() {
        return this.chat;
    }

    public void setSublabelOffset(int i, int i2) {
        this.sublabelOffsetX = i;
        this.sublabelOffsetY = i2;
    }

    public void buildLayout() {
        TLRPC$EncryptedChat tLRPC$EncryptedChat;
        TextPaint textPaint;
        int measuredWidth;
        String str;
        TLRPC$UserStatus tLRPC$UserStatus;
        int m107dp;
        String str2;
        String str3;
        this.drawNameLock = false;
        this.drawCheck = false;
        this.isShowPremiumStatusEnabled = false;
        this.isShowPremiumBadgeEnabled = false;
        if (this.encryptedChat != null) {
            this.drawNameLock = true;
            this.dialog_id = DialogObject.makeEncryptedDialogId(tLRPC$EncryptedChat.f1614id);
            if (!LocaleController.isRTL) {
                this.nameLockLeft = AndroidUtilities.m107dp(AndroidUtilities.leftBaseline);
                this.nameLeft = AndroidUtilities.m107dp(AndroidUtilities.leftBaseline + 4) + Theme.dialogs_lockDrawable.getIntrinsicWidth();
            } else {
                this.nameLockLeft = (getMeasuredWidth() - AndroidUtilities.m107dp(AndroidUtilities.leftBaseline + 2)) - Theme.dialogs_lockDrawable.getIntrinsicWidth();
                this.nameLeft = AndroidUtilities.m107dp(11);
            }
            this.nameLockTop = AndroidUtilities.m108dp(22.0f);
            updateStatus(false, null, null, false);
        } else {
            TLRPC$Chat tLRPC$Chat = this.chat;
            if (tLRPC$Chat != null) {
                this.dialog_id = -tLRPC$Chat.f1602id;
                this.drawCheck = tLRPC$Chat.verified;
                if (!LocaleController.isRTL) {
                    this.nameLeft = AndroidUtilities.m107dp(AndroidUtilities.leftBaseline);
                } else {
                    this.nameLeft = AndroidUtilities.m107dp(11);
                }
                updateStatus(this.drawCheck, null, this.chat, false);
            } else {
                TLRPC$User tLRPC$User = this.user;
                if (tLRPC$User != null) {
                    this.dialog_id = tLRPC$User.f1751id;
                    if (!LocaleController.isRTL) {
                        this.nameLeft = AndroidUtilities.m107dp(AndroidUtilities.leftBaseline);
                    } else {
                        this.nameLeft = AndroidUtilities.m107dp(11);
                    }
                    this.nameLockTop = AndroidUtilities.m107dp(21);
                    this.drawCheck = this.user.verified;
                    this.isShowPremiumBadgeEnabled = ForkCommonController.getInstance(this.currentAccount).isShowPremiumBadgeEnabled();
                    this.isShowPremiumStatusEnabled = ForkCommonController.getInstance(this.currentAccount).isShowPremiumStatusEnabled();
                    if (!this.savedMessages && MessagesController.getInstance(this.currentAccount).isPremiumUser(this.user)) {
                        boolean z = this.isShowPremiumBadgeEnabled;
                    }
                    updateStatus(this.drawCheck, this.user, null, false);
                } else if (this.contact != null) {
                    this.dialog_id = 0L;
                    if (!LocaleController.isRTL) {
                        this.nameLeft = AndroidUtilities.m107dp(AndroidUtilities.leftBaseline);
                    } else {
                        this.nameLeft = AndroidUtilities.m107dp(11);
                    }
                    if (this.actionButton == null) {
                        CanvasButton canvasButton = new CanvasButton(this);
                        this.actionButton = canvasButton;
                        canvasButton.setDelegate(new Runnable() { // from class: org.telegram.ui.Cells.ProfileSearchCell$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                ProfileSearchCell.this.lambda$buildLayout$0();
                            }
                        });
                    }
                }
            }
        }
        if (!LocaleController.isRTL) {
            this.statusLeft = AndroidUtilities.m107dp(AndroidUtilities.leftBaseline);
        } else {
            this.statusLeft = AndroidUtilities.m107dp(11);
        }
        String str4 = this.currentName;
        if (str4 == null) {
            TLRPC$Chat tLRPC$Chat2 = this.chat;
            if (tLRPC$Chat2 != null) {
                str3 = tLRPC$Chat2.title;
            } else {
                TLRPC$User tLRPC$User2 = this.user;
                if (tLRPC$User2 == null) {
                    str3 = "";
                } else if (this.albumMode && UserObject.isUserSelf(tLRPC$User2)) {
                    str3 = LocaleController.getString("SavedMessages", C3632R.string.SavedMessages);
                } else {
                    str3 = UserObject.getUserName(this.user);
                }
            }
            str4 = str3.replace('\n', ' ');
        }
        if (str4.length() == 0) {
            TLRPC$User tLRPC$User3 = this.user;
            if (tLRPC$User3 != null && (str2 = tLRPC$User3.phone) != null && str2.length() != 0) {
                str4 = C3544PhoneFormat.getInstance().format("+" + this.user.phone);
            } else {
                str4 = LocaleController.getString("HiddenName", C3632R.string.HiddenName);
            }
        }
        if (this.customPaints) {
            if (this.namePaint == null) {
                TextPaint textPaint2 = new TextPaint(1);
                this.namePaint = textPaint2;
                textPaint2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            }
            this.namePaint.setTextSize(AndroidUtilities.m107dp(16));
            if (this.encryptedChat != null) {
                this.namePaint.setColor(Theme.getColor(Theme.key_chats_secretName, this.resourcesProvider));
            } else {
                this.namePaint.setColor(Theme.getColor(Theme.key_chats_name, this.resourcesProvider));
            }
            textPaint = this.namePaint;
        } else if (this.encryptedChat != null) {
            textPaint = Theme.dialogs_searchNameEncryptedPaint;
        } else {
            textPaint = Theme.dialogs_searchNamePaint;
        }
        TextPaint textPaint3 = textPaint;
        if (!LocaleController.isRTL) {
            measuredWidth = (getMeasuredWidth() - this.nameLeft) - AndroidUtilities.m107dp(14);
            this.nameWidth = measuredWidth;
        } else {
            measuredWidth = (getMeasuredWidth() - this.nameLeft) - AndroidUtilities.m107dp(AndroidUtilities.leftBaseline);
            this.nameWidth = measuredWidth;
        }
        if (this.drawNameLock) {
            this.nameWidth -= AndroidUtilities.m107dp(6) + Theme.dialogs_lockDrawable.getIntrinsicWidth();
        }
        if (this.contact != null) {
            TextPaint textPaint4 = Theme.dialogs_countTextPaint;
            int i = C3632R.string.Invite;
            int measureText = (int) (textPaint4.measureText(LocaleController.getString(i)) + 1.0f);
            this.actionLayout = new StaticLayout(LocaleController.getString(i), Theme.dialogs_countTextPaint, measureText, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            if (!LocaleController.isRTL) {
                this.actionLeft = ((getMeasuredWidth() - measureText) - AndroidUtilities.m107dp(19)) - AndroidUtilities.m107dp(16);
            } else {
                this.actionLeft = AndroidUtilities.m107dp(19) + AndroidUtilities.m107dp(16);
                this.nameLeft += measureText;
                this.statusLeft += measureText;
            }
            this.nameWidth -= AndroidUtilities.m107dp(32) + measureText;
        }
        this.nameWidth -= getPaddingLeft() + getPaddingRight();
        int paddingLeft = measuredWidth - (getPaddingLeft() + getPaddingRight());
        if (this.promoSubscribeIcon != null) {
            this.nameWidth -= this.promoSubscribeIconSize;
            if (!LocaleController.isRTL) {
                this.promoSubscribeIconLeft = (getMeasuredWidth() - this.promoSubscribeIconSize) - AndroidUtilities.m107dp(19);
            } else {
                this.countLeft = AndroidUtilities.m107dp(19);
                this.nameLeft += this.promoSubscribeIconSize;
            }
        }
        if (this.drawCount) {
            int dialogUnreadCount = MessagesController.getInstance(this.currentAccount).getDialogUnreadCount(MessagesController.getInstance(this.currentAccount).dialogs_dict.get(this.dialog_id));
            if (dialogUnreadCount != 0) {
                this.lastUnreadCount = dialogUnreadCount;
                String format = String.format(Locale.US, "%d", Integer.valueOf(dialogUnreadCount));
                this.countWidth = Math.max(AndroidUtilities.m107dp(12), (int) Math.ceil(Theme.dialogs_countTextPaint.measureText(format)));
                this.countLayout = new StaticLayout(format, Theme.dialogs_countTextPaint, this.countWidth, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                int m107dp2 = this.countWidth + AndroidUtilities.m107dp(18);
                this.nameWidth -= m107dp2;
                paddingLeft -= m107dp2;
                if (!LocaleController.isRTL) {
                    this.countLeft = (getMeasuredWidth() - this.countWidth) - AndroidUtilities.m107dp(19);
                } else {
                    this.countLeft = AndroidUtilities.m107dp(19);
                    this.nameLeft += m107dp2;
                    this.statusLeft += m107dp2;
                }
            } else {
                this.lastUnreadCount = 0;
                this.countLayout = null;
            }
        } else {
            this.lastUnreadCount = 0;
            this.countLayout = null;
        }
        if (this.nameWidth < 0) {
            this.nameWidth = 0;
        }
        CharSequence ellipsize = TextUtils.ellipsize(str4, textPaint3, this.nameWidth - AndroidUtilities.m107dp(12), TextUtils.TruncateAt.END);
        if (ellipsize != null) {
            ellipsize = Emoji.replaceEmoji(ellipsize, textPaint3.getFontMetricsInt(), AndroidUtilities.m107dp(20), false);
        }
        this.nameLayout = new StaticLayout(ellipsize, textPaint3, this.nameWidth, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        TextPaint textPaint5 = Theme.dialogs_offlinePaint;
        TLRPC$Chat tLRPC$Chat3 = this.chat;
        if (tLRPC$Chat3 == null || this.subLabel != null) {
            str = this.subLabel;
            if (str == null) {
                TLRPC$User tLRPC$User4 = this.user;
                if (tLRPC$User4 == null) {
                    str = null;
                } else if (MessagesController.isSupportUser(tLRPC$User4)) {
                    str = LocaleController.getString("SupportStatus", C3632R.string.SupportStatus);
                } else {
                    TLRPC$User tLRPC$User5 = this.user;
                    if (tLRPC$User5.bot) {
                        str = LocaleController.getString("Bot", C3632R.string.Bot);
                    } else {
                        long j = tLRPC$User5.f1751id;
                        if (j == 333000 || j == 777000) {
                            str = LocaleController.getString("ServiceNotifications", C3632R.string.ServiceNotifications);
                        } else {
                            if (this.isOnline == null) {
                                this.isOnline = new boolean[1];
                            }
                            boolean[] zArr = this.isOnline;
                            zArr[0] = false;
                            str = LocaleController.formatUserStatus(this.currentAccount, tLRPC$User5, zArr);
                            if (this.isOnline[0]) {
                                textPaint5 = Theme.dialogs_onlinePaint;
                            }
                            TLRPC$User tLRPC$User6 = this.user;
                            if (tLRPC$User6 != null && (tLRPC$User6.f1751id == UserConfig.getInstance(this.currentAccount).getClientUserId() || ((tLRPC$UserStatus = this.user.status) != null && tLRPC$UserStatus.expires > ConnectionsManager.getInstance(this.currentAccount).getCurrentTime()))) {
                                textPaint5 = Theme.dialogs_onlinePaint;
                                str = LocaleController.getString("Online", C3632R.string.Online);
                            }
                        }
                    }
                }
            }
            if (this.savedMessages || UserObject.isReplyUser(this.user)) {
                this.nameTop = AndroidUtilities.m107dp(20);
                str = null;
            }
        } else {
            if (this.albumMode) {
                str = LocaleController.getInternalString(C3632R.string.cloud_album).toLowerCase();
            } else {
                if (ChatObject.isChannel(tLRPC$Chat3)) {
                    TLRPC$Chat tLRPC$Chat4 = this.chat;
                    if (!tLRPC$Chat4.megagroup) {
                        int i2 = tLRPC$Chat4.participants_count;
                        if (i2 != 0) {
                            str = LocaleController.formatPluralStringComma("Subscribers", i2);
                        } else if (!ChatObject.isPublic(tLRPC$Chat4)) {
                            str = LocaleController.getString("ChannelPrivate", C3632R.string.ChannelPrivate).toLowerCase();
                        } else {
                            str = LocaleController.getString("ChannelPublic", C3632R.string.ChannelPublic).toLowerCase();
                        }
                    }
                }
                TLRPC$Chat tLRPC$Chat5 = this.chat;
                int i3 = tLRPC$Chat5.participants_count;
                if (i3 != 0) {
                    str = LocaleController.formatPluralStringComma("Members", i3);
                } else if (tLRPC$Chat5.has_geo) {
                    str = LocaleController.getString("MegaLocation", C3632R.string.MegaLocation);
                } else if (!ChatObject.isPublic(tLRPC$Chat5)) {
                    str = LocaleController.getString("MegaPrivate", C3632R.string.MegaPrivate).toLowerCase();
                } else {
                    str = LocaleController.getString("MegaPublic", C3632R.string.MegaPublic).toLowerCase();
                }
            }
            this.nameTop = AndroidUtilities.m107dp(19);
        }
        if (this.customPaints) {
            if (this.statusPaint == null) {
                this.statusPaint = new TextPaint(1);
            }
            this.statusPaint.setTextSize(AndroidUtilities.m107dp(15));
            if (textPaint5 == Theme.dialogs_offlinePaint) {
                this.statusPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText3, this.resourcesProvider));
            } else if (textPaint5 == Theme.dialogs_onlinePaint) {
                this.statusPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText3, this.resourcesProvider));
            }
            textPaint5 = this.statusPaint;
        }
        if (!TextUtils.isEmpty(str)) {
            this.statusLayout = new StaticLayout(TextUtils.ellipsize(str, textPaint5, paddingLeft - AndroidUtilities.m107dp(12), TextUtils.TruncateAt.END), textPaint5, paddingLeft, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            this.nameTop = AndroidUtilities.m107dp(9);
            this.nameLockTop -= AndroidUtilities.m107dp(10);
        } else {
            this.nameTop = AndroidUtilities.m107dp(20);
            this.statusLayout = null;
        }
        if (LocaleController.isRTL) {
            m107dp = (getMeasuredWidth() - AndroidUtilities.m107dp(57)) - getPaddingRight();
        } else {
            m107dp = AndroidUtilities.m107dp(11) + getPaddingLeft();
        }
        this.avatarStoryParams.originalAvatarRect.set(m107dp, AndroidUtilities.m107dp(7), m107dp + AndroidUtilities.m107dp(46), AndroidUtilities.m107dp(7) + AndroidUtilities.m107dp(46));
        if (LocaleController.isRTL) {
            if (this.nameLayout.getLineCount() > 0 && this.nameLayout.getLineLeft(0) == BitmapDescriptorFactory.HUE_RED) {
                double ceil = Math.ceil(this.nameLayout.getLineWidth(0));
                int i4 = this.nameWidth;
                if (ceil < i4) {
                    this.nameLeft = (int) (this.nameLeft + (i4 - ceil));
                }
            }
            StaticLayout staticLayout = this.statusLayout;
            if (staticLayout != null && staticLayout.getLineCount() > 0 && this.statusLayout.getLineLeft(0) == BitmapDescriptorFactory.HUE_RED) {
                double ceil2 = Math.ceil(this.statusLayout.getLineWidth(0));
                double d = paddingLeft;
                if (ceil2 < d) {
                    this.statusLeft = (int) (this.statusLeft + (d - ceil2));
                }
            }
        } else {
            if (this.nameLayout.getLineCount() > 0 && this.nameLayout.getLineRight(0) == this.nameWidth) {
                double ceil3 = Math.ceil(this.nameLayout.getLineWidth(0));
                int i5 = this.nameWidth;
                if (ceil3 < i5) {
                    this.nameLeft = (int) (this.nameLeft - (i5 - ceil3));
                }
            }
            StaticLayout staticLayout2 = this.statusLayout;
            if (staticLayout2 != null && staticLayout2.getLineCount() > 0 && this.statusLayout.getLineRight(0) == paddingLeft) {
                double ceil4 = Math.ceil(this.statusLayout.getLineWidth(0));
                double d2 = paddingLeft;
                if (ceil4 < d2) {
                    this.statusLeft = (int) (this.statusLeft - (d2 - ceil4));
                }
            }
        }
        this.nameLeft += getPaddingLeft();
        this.statusLeft += getPaddingLeft();
        this.nameLockLeft += getPaddingLeft();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildLayout$0() {
        if (getParent() instanceof RecyclerListView) {
            RecyclerListView recyclerListView = (RecyclerListView) getParent();
            recyclerListView.getOnItemClickListener().onItemClick(this, recyclerListView.getChildAdapterPosition(this));
            return;
        }
        callOnClick();
    }

    public void updateStatus(boolean z, TLRPC$User tLRPC$User, TLRPC$Chat tLRPC$Chat, boolean z2) {
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.statusDrawable;
        swapAnimatedEmojiDrawable.center = LocaleController.isRTL;
        if (z) {
            swapAnimatedEmojiDrawable.set(new CombinedDrawable(Theme.dialogs_verifiedDrawable, Theme.dialogs_verifiedCheckDrawable, 0, 0), z2);
            this.statusDrawable.setColor(null);
        } else if (this.isShowPremiumStatusEnabled && tLRPC$User != null && !this.savedMessages && DialogObject.getEmojiStatusDocumentId(tLRPC$User.emoji_status) != 0) {
            this.statusDrawable.set(DialogObject.getEmojiStatusDocumentId(tLRPC$User.emoji_status), z2);
            this.statusDrawable.setColor(Integer.valueOf(Theme.getColor(Theme.key_chats_verifiedBackground, this.resourcesProvider)));
        } else if (tLRPC$Chat != null && !this.savedMessages && DialogObject.getEmojiStatusDocumentId(tLRPC$Chat.emoji_status) != 0) {
            this.statusDrawable.set(DialogObject.getEmojiStatusDocumentId(tLRPC$Chat.emoji_status), z2);
            this.statusDrawable.setColor(Integer.valueOf(Theme.getColor(Theme.key_chats_verifiedBackground, this.resourcesProvider)));
        } else if (this.isShowPremiumBadgeEnabled && tLRPC$User != null && !this.savedMessages && MessagesController.getInstance(this.currentAccount).isPremiumUser(tLRPC$User)) {
            this.statusDrawable.set(PremiumGradient.getInstance().premiumStarDrawableMini, z2);
            this.statusDrawable.setColor(Integer.valueOf(Theme.getColor(Theme.key_chats_verifiedBackground, this.resourcesProvider)));
        } else {
            this.statusDrawable.set((Drawable) null, z2);
            this.statusDrawable.setColor(Integer.valueOf(Theme.getColor(Theme.key_chats_verifiedBackground, this.resourcesProvider)));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void update(int r17) {
        /*
            Method dump skipped, instructions count: 553
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ProfileSearchCell.update(int):void");
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int lineRight;
        Theme.ResourcesProvider resourcesProvider;
        if (this.user == null && this.chat == null && this.encryptedChat == null && this.contact == null) {
            return;
        }
        if (this.useSeparator) {
            Paint paint = null;
            if (this.customPaints && (resourcesProvider = this.resourcesProvider) != null) {
                paint = resourcesProvider.getPaint("paintDivider");
            }
            if (paint == null) {
                paint = Theme.dividerPaint;
            }
            Paint paint2 = paint;
            if (LocaleController.isRTL) {
                canvas.drawLine(BitmapDescriptorFactory.HUE_RED, getMeasuredHeight() - 1, getMeasuredWidth() - AndroidUtilities.m107dp(AndroidUtilities.leftBaseline), getMeasuredHeight() - 1, paint2);
            } else {
                canvas.drawLine(AndroidUtilities.m107dp(AndroidUtilities.leftBaseline), getMeasuredHeight() - 1, getMeasuredWidth(), getMeasuredHeight() - 1, paint2);
            }
        }
        if (this.drawNameLock) {
            BaseCell.setDrawableBounds(Theme.dialogs_lockDrawable, this.nameLockLeft, this.nameLockTop);
            Theme.dialogs_lockDrawable.draw(canvas);
        }
        if (this.nameLayout != null) {
            canvas.save();
            canvas.translate(this.nameLeft, this.nameTop);
            this.nameLayout.draw(canvas);
            canvas.restore();
            if (LocaleController.isRTL) {
                if (this.nameLayout.getLineLeft(0) == BitmapDescriptorFactory.HUE_RED) {
                    lineRight = (this.nameLeft - AndroidUtilities.m107dp(3)) - this.statusDrawable.getIntrinsicWidth();
                } else {
                    lineRight = (int) ((((this.nameLeft + this.nameWidth) - Math.ceil(this.nameLayout.getLineWidth(0))) - AndroidUtilities.m107dp(3)) - this.statusDrawable.getIntrinsicWidth());
                }
            } else {
                lineRight = (int) (this.nameLeft + this.nameLayout.getLineRight(0) + AndroidUtilities.m107dp(6));
            }
            BaseCell.setDrawableBounds(this.statusDrawable, lineRight, this.nameTop + ((this.nameLayout.getHeight() - this.statusDrawable.getIntrinsicHeight()) / 2.0f));
            this.statusDrawable.draw(canvas);
        }
        if (this.statusLayout != null) {
            canvas.save();
            canvas.translate(this.statusLeft + this.sublabelOffsetX, AndroidUtilities.m107dp(33) + this.sublabelOffsetY);
            this.statusLayout.draw(canvas);
            canvas.restore();
        }
        if (this.countLayout != null) {
            int m108dp = this.countLeft - AndroidUtilities.m108dp(5.5f);
            this.rect.set(m108dp, this.countTop, m108dp + this.countWidth + AndroidUtilities.m107dp(11), this.countTop + AndroidUtilities.m107dp(23));
            RectF rectF = this.rect;
            float f = AndroidUtilities.density;
            canvas.drawRoundRect(rectF, f * 11.5f, f * 11.5f, MessagesController.getInstance(this.currentAccount).isDialogMuted(this.dialog_id, 0L) ? Theme.dialogs_countGrayPaint : Theme.dialogs_countPaint);
            canvas.save();
            canvas.translate(this.countLeft, this.countTop + AndroidUtilities.m107dp(4));
            this.countLayout.draw(canvas);
            canvas.restore();
        }
        if (this.actionLayout != null) {
            this.actionButton.setColor(Theme.getColor(Theme.key_chats_unreadCounter), Theme.getColor(Theme.key_chats_unreadCounterText));
            RectF rectF2 = AndroidUtilities.rectTmp;
            int i = this.actionLeft;
            rectF2.set(i, this.countTop, i + this.actionLayout.getWidth(), this.countTop + AndroidUtilities.m107dp(23));
            rectF2.inset(-AndroidUtilities.m107dp(16), -AndroidUtilities.m107dp(4));
            this.actionButton.setRect(rectF2);
            this.actionButton.setRounded(true);
            this.actionButton.draw(canvas);
            canvas.save();
            canvas.translate(this.actionLeft, this.countTop + AndroidUtilities.m107dp(4));
            this.actionLayout.draw(canvas);
            canvas.restore();
        }
        TLRPC$User tLRPC$User = this.user;
        if (tLRPC$User != null) {
            StoriesUtilities.drawAvatarWithStory(tLRPC$User.f1751id, canvas, this.avatarImage, this.avatarStoryParams);
        } else {
            TLRPC$Chat tLRPC$Chat = this.chat;
            if (tLRPC$Chat != null) {
                StoriesUtilities.drawAvatarWithStory(-tLRPC$Chat.f1602id, canvas, this.avatarImage, this.avatarStoryParams);
            } else {
                this.avatarImage.setImageCoords(this.avatarStoryParams.originalAvatarRect);
                this.avatarImage.draw(canvas);
            }
        }
        float f2 = this.premiumBlockedT.set(this.premiumBlocked);
        if (f2 > BitmapDescriptorFactory.HUE_RED) {
            float centerY = this.avatarImage.getCenterY() + AndroidUtilities.m107dp(14);
            float centerX = this.avatarImage.getCenterX() + AndroidUtilities.m107dp(16);
            canvas.save();
            Theme.dialogs_onlineCirclePaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhite, this.resourcesProvider));
            canvas.drawCircle(centerX, centerY, AndroidUtilities.m108dp(11.33f) * f2, Theme.dialogs_onlineCirclePaint);
            if (this.premiumGradient == null) {
                this.premiumGradient = new PremiumGradient.PremiumGradientTools(Theme.key_premiumGradient1, Theme.key_premiumGradient2, -1, -1, -1, this.resourcesProvider);
            }
            this.premiumGradient.gradientMatrix((int) (centerX - AndroidUtilities.m107dp(10)), (int) (centerY - AndroidUtilities.m107dp(10)), (int) (AndroidUtilities.m107dp(10) + centerX), (int) (AndroidUtilities.m107dp(10) + centerY), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            canvas.drawCircle(centerX, centerY, AndroidUtilities.m107dp(10) * f2, this.premiumGradient.paint);
            if (this.lockDrawable == null) {
                Drawable mutate = getContext().getResources().getDrawable(C3632R.C3634drawable.msg_mini_lock2).mutate();
                this.lockDrawable = mutate;
                mutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
            }
            Drawable drawable = this.lockDrawable;
            drawable.setBounds((int) (centerX - (((drawable.getIntrinsicWidth() / 2.0f) * 0.875f) * f2)), (int) (centerY - (((this.lockDrawable.getIntrinsicHeight() / 2.0f) * 0.875f) * f2)), (int) (centerX + ((this.lockDrawable.getIntrinsicWidth() / 2.0f) * 0.875f * f2)), (int) (centerY + ((this.lockDrawable.getIntrinsicHeight() / 2.0f) * 0.875f * f2)));
            this.lockDrawable.setAlpha((int) (f2 * 255.0f));
            this.lockDrawable.draw(canvas);
            canvas.restore();
        }
        Drawable drawable2 = this.promoSubscribeIcon;
        if (drawable2 != null) {
            BaseCell.setDrawableBounds(drawable2, this.promoSubscribeIconLeft, (getMeasuredHeight() - this.promoSubscribeIconSize) / 2);
            this.promoSubscribeIcon.draw(canvas);
        }
    }

    public boolean isBlocked() {
        return this.premiumBlocked;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        StringBuilder sb = new StringBuilder();
        StaticLayout staticLayout = this.nameLayout;
        if (staticLayout != null) {
            sb.append(staticLayout.getText());
        }
        if (this.drawCheck) {
            sb.append(", ");
            sb.append(LocaleController.getString("AccDescrVerified", C3632R.string.AccDescrVerified));
            sb.append("\n");
        }
        if (this.statusLayout != null) {
            if (sb.length() > 0) {
                sb.append(", ");
            }
            sb.append(this.statusLayout.getText());
        }
        accessibilityNodeInfo.setText(sb.toString());
        if (this.checkBox.isChecked()) {
            accessibilityNodeInfo.setCheckable(true);
            accessibilityNodeInfo.setChecked(this.checkBox.isChecked());
            accessibilityNodeInfo.setClassName("android.widget.CheckBox");
        }
    }

    public long getDialogId() {
        return this.dialog_id;
    }

    public void setChecked(boolean z, boolean z2) {
        CheckBox2 checkBox2 = this.checkBox;
        if (checkBox2 == null) {
            return;
        }
        checkBox2.setChecked(z, z2);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!(this.user == null && this.chat == null) && this.avatarStoryParams.checkOnTouchEvent(motionEvent, this)) {
            return true;
        }
        CanvasButton canvasButton = this.actionButton;
        if (canvasButton == null || !canvasButton.checkTouchEvent(motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }
}
