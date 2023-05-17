package org.telegram.p044ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
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
import org.telegram.PhoneFormat.C3207PhoneFormat;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3290R;
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
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.AnimatedEmojiDrawable;
import org.telegram.p044ui.Components.AvatarDrawable;
import org.telegram.p044ui.Components.CanvasButton;
import org.telegram.p044ui.Components.CheckBox2;
import org.telegram.p044ui.Components.CombinedDrawable;
import org.telegram.p044ui.Components.Premium.PremiumGradient;
import org.telegram.p044ui.Components.RecyclerListView;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$EmojiStatus;
import org.telegram.tgnet.TLRPC$EncryptedChat;
import org.telegram.tgnet.TLRPC$FileLocation;
import org.telegram.tgnet.TLRPC$TL_emojiStatus;
import org.telegram.tgnet.TLRPC$TL_emojiStatusUntil;
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
    private ImageReceiver avatarImage;
    private TLRPC$Chat chat;
    CheckBox2 checkBox;
    private ContactsController.Contact contact;
    private StaticLayout countLayout;
    private int countLeft;
    private int countTop;
    private int countWidth;
    private int currentAccount;
    private CharSequence currentName;
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
    private StaticLayout nameLayout;
    private int nameLeft;
    private int nameLockLeft;
    private int nameLockTop;
    private int nameTop;
    private int nameWidth;
    private Drawable promoSubscribeIcon;
    private int promoSubscribeIconLeft;
    private int promoSubscribeIconSize;
    private RectF rect;
    private Theme.ResourcesProvider resourcesProvider;
    private boolean savedMessages;
    private AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable statusDrawable;
    private StaticLayout statusLayout;
    private int statusLeft;
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

    public ProfileSearchCell(Context context) {
        this(context, null);
    }

    public ProfileSearchCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.currentAccount = UserConfig.selectedAccount;
        this.countTop = AndroidUtilities.m54dp(19);
        this.rect = new RectF();
        this.resourcesProvider = resourcesProvider;
        ImageReceiver imageReceiver = new ImageReceiver(this);
        this.avatarImage = imageReceiver;
        imageReceiver.setRoundRadius(AndroidUtilities.m54dp(23));
        this.avatarDrawable = new AvatarDrawable();
        CheckBox2 checkBox2 = new CheckBox2(context, 21, resourcesProvider);
        this.checkBox = checkBox2;
        checkBox2.setColor(-1, Theme.key_windowBackgroundWhite, Theme.key_checkboxCheck);
        this.checkBox.setDrawUnchecked(false);
        this.checkBox.setDrawBackgroundAsArc(3);
        addView(this.checkBox);
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this, AndroidUtilities.m54dp(20));
        this.statusDrawable = swapAnimatedEmojiDrawable;
        swapAnimatedEmojiDrawable.setCallback(this);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return this.statusDrawable == drawable || super.verifyDrawable(drawable);
    }

    public void setData(Object obj, TLRPC$EncryptedChat tLRPC$EncryptedChat, CharSequence charSequence, CharSequence charSequence2, boolean z, boolean z2) {
        this.currentName = charSequence;
        if (obj instanceof TLRPC$User) {
            this.user = (TLRPC$User) obj;
            this.chat = null;
            this.contact = null;
        } else if (obj instanceof TLRPC$Chat) {
            this.chat = (TLRPC$Chat) obj;
            this.user = null;
            this.contact = null;
        } else if (obj instanceof ContactsController.Contact) {
            this.contact = (ContactsController.Contact) obj;
            this.chat = null;
            this.user = null;
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
        this.statusDrawable.detach();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.avatarImage.onAttachedToWindow();
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
        this.statusDrawable.attach();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.emojiLoaded) {
            invalidate();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        CheckBox2 checkBox2 = this.checkBox;
        if (checkBox2 != null) {
            checkBox2.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(24), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(24), 1073741824));
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.m54dp(60) + (this.useSeparator ? 1 : 0));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.user == null && this.chat == null && this.encryptedChat == null && this.contact == null) {
            return;
        }
        if (this.checkBox != null) {
            int m54dp = LocaleController.isRTL ? (i3 - i) - AndroidUtilities.m54dp(42) : AndroidUtilities.m54dp(42);
            int m54dp2 = AndroidUtilities.m54dp(36);
            CheckBox2 checkBox2 = this.checkBox;
            checkBox2.layout(m54dp, m54dp2, checkBox2.getMeasuredWidth() + m54dp, this.checkBox.getMeasuredHeight() + m54dp2);
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
        int m54dp;
        String str2;
        String str3;
        this.drawNameLock = false;
        this.drawCheck = false;
        this.isShowPremiumStatusEnabled = false;
        this.isShowPremiumBadgeEnabled = false;
        if (this.encryptedChat != null) {
            this.drawNameLock = true;
            this.dialog_id = DialogObject.makeEncryptedDialogId(tLRPC$EncryptedChat.f1445id);
            if (!LocaleController.isRTL) {
                this.nameLockLeft = AndroidUtilities.m54dp(AndroidUtilities.leftBaseline);
                this.nameLeft = AndroidUtilities.m54dp(AndroidUtilities.leftBaseline + 4) + Theme.dialogs_lockDrawable.getIntrinsicWidth();
            } else {
                this.nameLockLeft = (getMeasuredWidth() - AndroidUtilities.m54dp(AndroidUtilities.leftBaseline + 2)) - Theme.dialogs_lockDrawable.getIntrinsicWidth();
                this.nameLeft = AndroidUtilities.m54dp(11);
            }
            this.nameLockTop = AndroidUtilities.m55dp(22.0f);
            updateStatus(false, null, false);
        } else {
            TLRPC$Chat tLRPC$Chat = this.chat;
            if (tLRPC$Chat != null) {
                this.dialog_id = -tLRPC$Chat.f1433id;
                this.drawCheck = tLRPC$Chat.verified;
                if (!LocaleController.isRTL) {
                    this.nameLeft = AndroidUtilities.m54dp(AndroidUtilities.leftBaseline);
                } else {
                    this.nameLeft = AndroidUtilities.m54dp(11);
                }
                updateStatus(this.drawCheck, null, false);
            } else {
                TLRPC$User tLRPC$User = this.user;
                if (tLRPC$User != null) {
                    this.dialog_id = tLRPC$User.f1574id;
                    if (!LocaleController.isRTL) {
                        this.nameLeft = AndroidUtilities.m54dp(AndroidUtilities.leftBaseline);
                    } else {
                        this.nameLeft = AndroidUtilities.m54dp(11);
                    }
                    this.nameLockTop = AndroidUtilities.m54dp(21);
                    this.drawCheck = this.user.verified;
                    this.isShowPremiumBadgeEnabled = ForkCommonController.getInstance(this.currentAccount).isShowPremiumBadgeEnabled();
                    this.isShowPremiumStatusEnabled = ForkCommonController.getInstance(this.currentAccount).isShowPremiumStatusEnabled();
                    if (!this.savedMessages && MessagesController.getInstance(this.currentAccount).isPremiumUser(this.user)) {
                        boolean z = this.isShowPremiumBadgeEnabled;
                    }
                    updateStatus(this.drawCheck, this.user, false);
                } else if (this.contact != null) {
                    if (!LocaleController.isRTL) {
                        this.nameLeft = AndroidUtilities.m54dp(AndroidUtilities.leftBaseline);
                    } else {
                        this.nameLeft = AndroidUtilities.m54dp(11);
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
            this.statusLeft = AndroidUtilities.m54dp(AndroidUtilities.leftBaseline);
        } else {
            this.statusLeft = AndroidUtilities.m54dp(11);
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
                    str3 = LocaleController.getString("SavedMessages", C3290R.string.SavedMessages);
                } else {
                    str3 = UserObject.getUserName(this.user);
                }
            }
            str4 = str3.replace('\n', ' ');
        }
        if (str4.length() == 0) {
            TLRPC$User tLRPC$User3 = this.user;
            if (tLRPC$User3 != null && (str2 = tLRPC$User3.phone) != null && str2.length() != 0) {
                str4 = C3207PhoneFormat.getInstance().format("+" + this.user.phone);
            } else {
                str4 = LocaleController.getString("HiddenName", C3290R.string.HiddenName);
            }
        }
        if (this.encryptedChat != null) {
            textPaint = Theme.dialogs_searchNameEncryptedPaint;
        } else {
            textPaint = Theme.dialogs_searchNamePaint;
        }
        TextPaint textPaint2 = textPaint;
        if (!LocaleController.isRTL) {
            measuredWidth = (getMeasuredWidth() - this.nameLeft) - AndroidUtilities.m54dp(14);
            this.nameWidth = measuredWidth;
        } else {
            measuredWidth = (getMeasuredWidth() - this.nameLeft) - AndroidUtilities.m54dp(AndroidUtilities.leftBaseline);
            this.nameWidth = measuredWidth;
        }
        if (this.drawNameLock) {
            this.nameWidth -= AndroidUtilities.m54dp(6) + Theme.dialogs_lockDrawable.getIntrinsicWidth();
        }
        if (this.contact != null) {
            TextPaint textPaint3 = Theme.dialogs_countTextPaint;
            int i = C3290R.string.Invite;
            int measureText = (int) (textPaint3.measureText(LocaleController.getString(i)) + 1.0f);
            this.actionLayout = new StaticLayout(LocaleController.getString(i), Theme.dialogs_countTextPaint, measureText, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            if (!LocaleController.isRTL) {
                this.actionLeft = ((getMeasuredWidth() - measureText) - AndroidUtilities.m54dp(19)) - AndroidUtilities.m54dp(16);
            } else {
                this.actionLeft = AndroidUtilities.m54dp(19) + AndroidUtilities.m54dp(16);
                this.nameLeft += measureText;
                this.statusLeft += measureText;
            }
            this.nameWidth -= AndroidUtilities.m54dp(32) + measureText;
        }
        this.nameWidth -= getPaddingLeft() + getPaddingRight();
        int paddingLeft = measuredWidth - (getPaddingLeft() + getPaddingRight());
        if (this.promoSubscribeIcon != null) {
            this.nameWidth -= this.promoSubscribeIconSize;
            if (!LocaleController.isRTL) {
                this.promoSubscribeIconLeft = (getMeasuredWidth() - this.promoSubscribeIconSize) - AndroidUtilities.m54dp(19);
            } else {
                this.countLeft = AndroidUtilities.m54dp(19);
                this.nameLeft += this.promoSubscribeIconSize;
            }
        }
        if (this.drawCount) {
            int dialogUnreadCount = MessagesController.getInstance(this.currentAccount).getDialogUnreadCount(MessagesController.getInstance(this.currentAccount).dialogs_dict.get(this.dialog_id));
            if (dialogUnreadCount != 0) {
                this.lastUnreadCount = dialogUnreadCount;
                String format = String.format(Locale.US, "%d", Integer.valueOf(dialogUnreadCount));
                this.countWidth = Math.max(AndroidUtilities.m54dp(12), (int) Math.ceil(Theme.dialogs_countTextPaint.measureText(format)));
                this.countLayout = new StaticLayout(format, Theme.dialogs_countTextPaint, this.countWidth, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                int m54dp2 = this.countWidth + AndroidUtilities.m54dp(18);
                this.nameWidth -= m54dp2;
                paddingLeft -= m54dp2;
                if (!LocaleController.isRTL) {
                    this.countLeft = (getMeasuredWidth() - this.countWidth) - AndroidUtilities.m54dp(19);
                } else {
                    this.countLeft = AndroidUtilities.m54dp(19);
                    this.nameLeft += m54dp2;
                    this.statusLeft += m54dp2;
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
        CharSequence ellipsize = TextUtils.ellipsize(str4, textPaint2, this.nameWidth - AndroidUtilities.m54dp(12), TextUtils.TruncateAt.END);
        if (ellipsize != null) {
            ellipsize = Emoji.replaceEmoji(ellipsize, textPaint2.getFontMetricsInt(), AndroidUtilities.m54dp(20), false);
        }
        this.nameLayout = new StaticLayout(ellipsize, textPaint2, this.nameWidth, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        TextPaint textPaint4 = Theme.dialogs_offlinePaint;
        TLRPC$Chat tLRPC$Chat3 = this.chat;
        if (tLRPC$Chat3 == null || this.subLabel != null) {
            CharSequence charSequence = this.subLabel;
            if (charSequence != null) {
                str = charSequence;
            } else {
                TLRPC$User tLRPC$User4 = this.user;
                if (tLRPC$User4 == null) {
                    str = null;
                } else if (MessagesController.isSupportUser(tLRPC$User4)) {
                    str = LocaleController.getString("SupportStatus", C3290R.string.SupportStatus);
                } else {
                    TLRPC$User tLRPC$User5 = this.user;
                    if (tLRPC$User5.bot) {
                        str = LocaleController.getString("Bot", C3290R.string.Bot);
                    } else {
                        long j = tLRPC$User5.f1574id;
                        if (j == 333000 || j == 777000) {
                            str = LocaleController.getString("ServiceNotifications", C3290R.string.ServiceNotifications);
                        } else {
                            if (this.isOnline == null) {
                                this.isOnline = new boolean[1];
                            }
                            boolean[] zArr = this.isOnline;
                            zArr[0] = false;
                            str = LocaleController.formatUserStatus(this.currentAccount, tLRPC$User5, zArr);
                            if (this.isOnline[0]) {
                                textPaint4 = Theme.dialogs_onlinePaint;
                            }
                            TLRPC$User tLRPC$User6 = this.user;
                            if (tLRPC$User6 != null && (tLRPC$User6.f1574id == UserConfig.getInstance(this.currentAccount).getClientUserId() || ((tLRPC$UserStatus = this.user.status) != null && tLRPC$UserStatus.expires > ConnectionsManager.getInstance(this.currentAccount).getCurrentTime()))) {
                                textPaint4 = Theme.dialogs_onlinePaint;
                                str = LocaleController.getString("Online", C3290R.string.Online);
                            }
                        }
                    }
                }
            }
            if (this.savedMessages || UserObject.isReplyUser(this.user)) {
                this.nameTop = AndroidUtilities.m54dp(20);
                str = null;
            }
        } else {
            if (this.albumMode) {
                str = LocaleController.getInternalString(C3290R.string.cloud_album).toLowerCase();
            } else {
                if (ChatObject.isChannel(tLRPC$Chat3)) {
                    TLRPC$Chat tLRPC$Chat4 = this.chat;
                    if (!tLRPC$Chat4.megagroup) {
                        int i2 = tLRPC$Chat4.participants_count;
                        if (i2 != 0) {
                            str = LocaleController.formatPluralStringComma("Subscribers", i2);
                        } else if (!ChatObject.isPublic(tLRPC$Chat4)) {
                            str = LocaleController.getString("ChannelPrivate", C3290R.string.ChannelPrivate).toLowerCase();
                        } else {
                            str = LocaleController.getString("ChannelPublic", C3290R.string.ChannelPublic).toLowerCase();
                        }
                    }
                }
                TLRPC$Chat tLRPC$Chat5 = this.chat;
                int i3 = tLRPC$Chat5.participants_count;
                if (i3 != 0) {
                    str = LocaleController.formatPluralStringComma("Members", i3);
                } else if (tLRPC$Chat5.has_geo) {
                    str = LocaleController.getString("MegaLocation", C3290R.string.MegaLocation);
                } else if (!ChatObject.isPublic(tLRPC$Chat5)) {
                    str = LocaleController.getString("MegaPrivate", C3290R.string.MegaPrivate).toLowerCase();
                } else {
                    str = LocaleController.getString("MegaPublic", C3290R.string.MegaPublic).toLowerCase();
                }
            }
            this.nameTop = AndroidUtilities.m54dp(19);
        }
        if (!TextUtils.isEmpty(str)) {
            this.statusLayout = new StaticLayout(TextUtils.ellipsize(str, textPaint4, paddingLeft - AndroidUtilities.m54dp(12), TextUtils.TruncateAt.END), textPaint4, paddingLeft, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            this.nameTop = AndroidUtilities.m54dp(9);
            this.nameLockTop -= AndroidUtilities.m54dp(10);
        } else {
            this.nameTop = AndroidUtilities.m54dp(20);
            this.statusLayout = null;
        }
        if (LocaleController.isRTL) {
            m54dp = (getMeasuredWidth() - AndroidUtilities.m54dp(57)) - getPaddingRight();
        } else {
            m54dp = AndroidUtilities.m54dp(11) + getPaddingLeft();
        }
        this.avatarImage.setImageCoords(m54dp, AndroidUtilities.m54dp(7), AndroidUtilities.m54dp(46), AndroidUtilities.m54dp(46));
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

    public void updateStatus(boolean z, TLRPC$User tLRPC$User, boolean z2) {
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.statusDrawable;
        swapAnimatedEmojiDrawable.center = LocaleController.isRTL;
        if (z) {
            swapAnimatedEmojiDrawable.set(new CombinedDrawable(Theme.dialogs_verifiedDrawable, Theme.dialogs_verifiedCheckDrawable, 0, 0), z2);
            this.statusDrawable.setColor(null);
            return;
        }
        if (this.isShowPremiumStatusEnabled && tLRPC$User != null && !this.savedMessages) {
            TLRPC$EmojiStatus tLRPC$EmojiStatus = tLRPC$User.emoji_status;
            if ((tLRPC$EmojiStatus instanceof TLRPC$TL_emojiStatusUntil) && ((TLRPC$TL_emojiStatusUntil) tLRPC$EmojiStatus).until > ((int) (System.currentTimeMillis() / 1000))) {
                this.statusDrawable.set(((TLRPC$TL_emojiStatusUntil) tLRPC$User.emoji_status).document_id, z2);
                this.statusDrawable.setColor(Integer.valueOf(Theme.getColor(Theme.key_chats_verifiedBackground, this.resourcesProvider)));
                return;
            }
        }
        if (this.isShowPremiumStatusEnabled && tLRPC$User != null && !this.savedMessages) {
            TLRPC$EmojiStatus tLRPC$EmojiStatus2 = tLRPC$User.emoji_status;
            if (tLRPC$EmojiStatus2 instanceof TLRPC$TL_emojiStatus) {
                this.statusDrawable.set(((TLRPC$TL_emojiStatus) tLRPC$EmojiStatus2).document_id, z2);
                this.statusDrawable.setColor(Integer.valueOf(Theme.getColor(Theme.key_chats_verifiedBackground, this.resourcesProvider)));
                return;
            }
        }
        if (this.isShowPremiumBadgeEnabled && tLRPC$User != null && !this.savedMessages && MessagesController.getInstance(this.currentAccount).isPremiumUser(tLRPC$User)) {
            this.statusDrawable.set(PremiumGradient.getInstance().premiumStarDrawableMini, z2);
            this.statusDrawable.setColor(Integer.valueOf(Theme.getColor(Theme.key_chats_verifiedBackground, this.resourcesProvider)));
            return;
        }
        this.statusDrawable.set((Drawable) null, z2);
        this.statusDrawable.setColor(Integer.valueOf(Theme.getColor(Theme.key_chats_verifiedBackground, this.resourcesProvider)));
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void update(int r17) {
        /*
            Method dump skipped, instructions count: 536
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ProfileSearchCell.update(int):void");
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int lineRight;
        if (this.user == null && this.chat == null && this.encryptedChat == null && this.contact == null) {
            return;
        }
        if (this.useSeparator) {
            if (LocaleController.isRTL) {
                canvas.drawLine(BitmapDescriptorFactory.HUE_RED, getMeasuredHeight() - 1, getMeasuredWidth() - AndroidUtilities.m54dp(AndroidUtilities.leftBaseline), getMeasuredHeight() - 1, Theme.dividerPaint);
            } else {
                canvas.drawLine(AndroidUtilities.m54dp(AndroidUtilities.leftBaseline), getMeasuredHeight() - 1, getMeasuredWidth(), getMeasuredHeight() - 1, Theme.dividerPaint);
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
                    lineRight = (this.nameLeft - AndroidUtilities.m54dp(3)) - this.statusDrawable.getIntrinsicWidth();
                } else {
                    lineRight = (int) ((((this.nameLeft + this.nameWidth) - Math.ceil(this.nameLayout.getLineWidth(0))) - AndroidUtilities.m54dp(3)) - this.statusDrawable.getIntrinsicWidth());
                }
            } else {
                lineRight = (int) (this.nameLeft + this.nameLayout.getLineRight(0) + AndroidUtilities.m54dp(6));
            }
            BaseCell.setDrawableBounds(this.statusDrawable, lineRight, this.nameTop + ((this.nameLayout.getHeight() - this.statusDrawable.getIntrinsicHeight()) / 2.0f));
            this.statusDrawable.draw(canvas);
        }
        if (this.statusLayout != null) {
            canvas.save();
            canvas.translate(this.statusLeft + this.sublabelOffsetX, AndroidUtilities.m54dp(33) + this.sublabelOffsetY);
            this.statusLayout.draw(canvas);
            canvas.restore();
        }
        if (this.countLayout != null) {
            int m55dp = this.countLeft - AndroidUtilities.m55dp(5.5f);
            this.rect.set(m55dp, this.countTop, m55dp + this.countWidth + AndroidUtilities.m54dp(11), this.countTop + AndroidUtilities.m54dp(23));
            RectF rectF = this.rect;
            float f = AndroidUtilities.density;
            canvas.drawRoundRect(rectF, f * 11.5f, f * 11.5f, MessagesController.getInstance(this.currentAccount).isDialogMuted(this.dialog_id, 0) ? Theme.dialogs_countGrayPaint : Theme.dialogs_countPaint);
            canvas.save();
            canvas.translate(this.countLeft, this.countTop + AndroidUtilities.m54dp(4));
            this.countLayout.draw(canvas);
            canvas.restore();
        }
        if (this.actionLayout != null) {
            this.actionButton.setColor(Theme.getColor(Theme.key_chats_unreadCounter), Theme.getColor(Theme.key_chats_unreadCounterText));
            RectF rectF2 = AndroidUtilities.rectTmp;
            int i = this.actionLeft;
            rectF2.set(i, this.countTop, i + this.actionLayout.getWidth(), this.countTop + AndroidUtilities.m54dp(23));
            rectF2.inset(-AndroidUtilities.m54dp(16), -AndroidUtilities.m54dp(4));
            this.actionButton.setRect(rectF2);
            this.actionButton.setRounded(true);
            this.actionButton.draw(canvas);
            canvas.save();
            canvas.translate(this.actionLeft, this.countTop + AndroidUtilities.m54dp(4));
            this.actionLayout.draw(canvas);
            canvas.restore();
        }
        this.avatarImage.draw(canvas);
        Drawable drawable = this.promoSubscribeIcon;
        if (drawable != null) {
            BaseCell.setDrawableBounds(drawable, this.promoSubscribeIconLeft, (getMeasuredHeight() - this.promoSubscribeIconSize) / 2);
            this.promoSubscribeIcon.draw(canvas);
        }
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
            sb.append(LocaleController.getString("AccDescrVerified", C3290R.string.AccDescrVerified));
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
        CanvasButton canvasButton = this.actionButton;
        if (canvasButton == null || !canvasButton.checkTouchEvent(motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }
}
