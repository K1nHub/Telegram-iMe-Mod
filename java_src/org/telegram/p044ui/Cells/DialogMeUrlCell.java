package org.telegram.p044ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3290R;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.AvatarDrawable;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatInvite;
import org.telegram.tgnet.TLRPC$RecentMeUrl;
import org.telegram.tgnet.TLRPC$TL_recentMeUrlChat;
import org.telegram.tgnet.TLRPC$TL_recentMeUrlChatInvite;
import org.telegram.tgnet.TLRPC$TL_recentMeUrlStickerSet;
import org.telegram.tgnet.TLRPC$TL_recentMeUrlUnknown;
import org.telegram.tgnet.TLRPC$TL_recentMeUrlUser;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Cells.DialogMeUrlCell */
/* loaded from: classes5.dex */
public class DialogMeUrlCell extends BaseCell {
    private AvatarDrawable avatarDrawable;
    private ImageReceiver avatarImage;
    private int avatarTop;
    private int currentAccount;
    private boolean drawNameLock;
    private boolean drawVerified;
    private boolean isSelected;
    private StaticLayout messageLayout;
    private int messageLeft;
    private int messageTop;
    private StaticLayout nameLayout;
    private int nameLeft;
    private int nameLockLeft;
    private int nameLockTop;
    private int nameMuteLeft;
    private TLRPC$RecentMeUrl recentMeUrl;
    public boolean useSeparator;

    @Override // org.telegram.p044ui.Cells.BaseCell, android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    public DialogMeUrlCell(Context context) {
        super(context);
        this.avatarImage = new ImageReceiver(this);
        this.avatarDrawable = new AvatarDrawable();
        this.messageTop = AndroidUtilities.m54dp(40);
        this.avatarTop = AndroidUtilities.m54dp(10);
        this.currentAccount = UserConfig.selectedAccount;
        Theme.createDialogsResources(context);
        this.avatarImage.setRoundRadius(AndroidUtilities.m54dp(26));
    }

    public void setRecentMeUrl(TLRPC$RecentMeUrl tLRPC$RecentMeUrl) {
        this.recentMeUrl = tLRPC$RecentMeUrl;
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.avatarImage.onDetachedFromWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.avatarImage.onAttachedToWindow();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.m54dp(72) + (this.useSeparator ? 1 : 0));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (z) {
            buildLayout();
        }
    }

    public void buildLayout() {
        String str;
        int measuredWidth;
        int m54dp;
        int measuredWidth2;
        TextPaint textPaint = Theme.dialogs_namePaint[0];
        TextPaint textPaint2 = Theme.dialogs_messagePaint[0];
        this.drawNameLock = false;
        this.drawVerified = false;
        TLRPC$RecentMeUrl tLRPC$RecentMeUrl = this.recentMeUrl;
        if (tLRPC$RecentMeUrl instanceof TLRPC$TL_recentMeUrlChat) {
            TLRPC$Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.recentMeUrl.chat_id));
            this.drawVerified = chat.verified;
            if (!LocaleController.isRTL) {
                this.nameLockLeft = AndroidUtilities.m54dp(AndroidUtilities.leftBaseline);
                this.nameLeft = AndroidUtilities.m54dp(AndroidUtilities.leftBaseline + 4);
            } else {
                this.nameLockLeft = getMeasuredWidth() - AndroidUtilities.m54dp(AndroidUtilities.leftBaseline);
                this.nameLeft = AndroidUtilities.m54dp(14);
            }
            str = chat.title;
            this.avatarDrawable.setInfo(chat);
            this.avatarImage.setForUserOrChat(chat, this.avatarDrawable, this.recentMeUrl);
        } else if (tLRPC$RecentMeUrl instanceof TLRPC$TL_recentMeUrlUser) {
            TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.recentMeUrl.user_id));
            if (!LocaleController.isRTL) {
                this.nameLeft = AndroidUtilities.m54dp(AndroidUtilities.leftBaseline);
            } else {
                this.nameLeft = AndroidUtilities.m54dp(14);
            }
            if (user != null) {
                if (user.bot) {
                    this.nameLockTop = AndroidUtilities.m55dp(16.5f);
                    if (!LocaleController.isRTL) {
                        this.nameLockLeft = AndroidUtilities.m54dp(AndroidUtilities.leftBaseline);
                        this.nameLeft = AndroidUtilities.m54dp(AndroidUtilities.leftBaseline + 4);
                    } else {
                        this.nameLockLeft = getMeasuredWidth() - AndroidUtilities.m54dp(AndroidUtilities.leftBaseline);
                        this.nameLeft = AndroidUtilities.m54dp(14);
                    }
                }
                this.drawVerified = user.verified;
            }
            str = UserObject.getUserName(user);
            this.avatarDrawable.setInfo(user);
            this.avatarImage.setForUserOrChat(user, this.avatarDrawable, this.recentMeUrl);
        } else if (tLRPC$RecentMeUrl instanceof TLRPC$TL_recentMeUrlStickerSet) {
            if (!LocaleController.isRTL) {
                this.nameLeft = AndroidUtilities.m54dp(AndroidUtilities.leftBaseline);
            } else {
                this.nameLeft = AndroidUtilities.m54dp(14);
            }
            str = this.recentMeUrl.set.set.title;
            this.avatarDrawable.setInfo(5L, str, null);
            this.avatarImage.setImage(ImageLocation.getForDocument(this.recentMeUrl.set.cover), null, this.avatarDrawable, null, this.recentMeUrl, 0);
        } else if (tLRPC$RecentMeUrl instanceof TLRPC$TL_recentMeUrlChatInvite) {
            if (!LocaleController.isRTL) {
                this.nameLeft = AndroidUtilities.m54dp(AndroidUtilities.leftBaseline);
            } else {
                this.nameLeft = AndroidUtilities.m54dp(14);
            }
            TLRPC$ChatInvite tLRPC$ChatInvite = this.recentMeUrl.chat_invite;
            TLRPC$Chat tLRPC$Chat = tLRPC$ChatInvite.chat;
            if (tLRPC$Chat != null) {
                this.avatarDrawable.setInfo(tLRPC$Chat);
                TLRPC$RecentMeUrl tLRPC$RecentMeUrl2 = this.recentMeUrl;
                TLRPC$Chat tLRPC$Chat2 = tLRPC$RecentMeUrl2.chat_invite.chat;
                String str2 = tLRPC$Chat2.title;
                this.drawVerified = tLRPC$Chat2.verified;
                this.avatarImage.setForUserOrChat(tLRPC$Chat2, this.avatarDrawable, tLRPC$RecentMeUrl2);
                str = str2;
            } else {
                String str3 = tLRPC$ChatInvite.title;
                this.avatarDrawable.setInfo(5L, str3, null);
                this.avatarImage.setImage(ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(this.recentMeUrl.chat_invite.photo.sizes, 50), this.recentMeUrl.chat_invite.photo), "50_50", this.avatarDrawable, null, this.recentMeUrl, 0);
                str = str3;
            }
            if (!LocaleController.isRTL) {
                this.nameLockLeft = AndroidUtilities.m54dp(AndroidUtilities.leftBaseline);
                this.nameLeft = AndroidUtilities.m54dp(AndroidUtilities.leftBaseline + 4);
            } else {
                this.nameLockLeft = getMeasuredWidth() - AndroidUtilities.m54dp(AndroidUtilities.leftBaseline);
                this.nameLeft = AndroidUtilities.m54dp(14);
            }
        } else if (tLRPC$RecentMeUrl instanceof TLRPC$TL_recentMeUrlUnknown) {
            if (!LocaleController.isRTL) {
                this.nameLeft = AndroidUtilities.m54dp(AndroidUtilities.leftBaseline);
            } else {
                this.nameLeft = AndroidUtilities.m54dp(14);
            }
            this.avatarImage.setImage(null, null, this.avatarDrawable, null, this.recentMeUrl, 0);
            str = "Url";
        } else {
            this.avatarImage.setImage(null, null, this.avatarDrawable, null, tLRPC$RecentMeUrl, 0);
            str = "";
        }
        String str4 = MessagesController.getInstance(this.currentAccount).linkPrefix + "/" + this.recentMeUrl.url;
        if (TextUtils.isEmpty(str)) {
            str = LocaleController.getString("HiddenName", C3290R.string.HiddenName);
        }
        if (!LocaleController.isRTL) {
            measuredWidth = getMeasuredWidth() - this.nameLeft;
            m54dp = AndroidUtilities.m54dp(14);
        } else {
            measuredWidth = getMeasuredWidth() - this.nameLeft;
            m54dp = AndroidUtilities.m54dp(AndroidUtilities.leftBaseline);
        }
        int i = measuredWidth - m54dp;
        if (this.drawNameLock) {
            i -= AndroidUtilities.m54dp(4) + Theme.dialogs_lockDrawable.getIntrinsicWidth();
        }
        if (this.drawVerified) {
            int m54dp2 = AndroidUtilities.m54dp(6) + Theme.dialogs_verifiedDrawable.getIntrinsicWidth();
            i -= m54dp2;
            if (LocaleController.isRTL) {
                this.nameLeft += m54dp2;
            }
        }
        int max = Math.max(AndroidUtilities.m54dp(12), i);
        try {
            this.nameLayout = new StaticLayout(TextUtils.ellipsize(str.replace('\n', ' '), textPaint, max - AndroidUtilities.m54dp(12), TextUtils.TruncateAt.END), textPaint, max, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        } catch (Exception e) {
            FileLog.m49e(e);
        }
        int measuredWidth3 = getMeasuredWidth() - AndroidUtilities.m54dp(AndroidUtilities.leftBaseline + 16);
        if (!LocaleController.isRTL) {
            this.messageLeft = AndroidUtilities.m54dp(AndroidUtilities.leftBaseline);
            measuredWidth2 = AndroidUtilities.m54dp(AndroidUtilities.isTablet() ? 13 : 9);
        } else {
            this.messageLeft = AndroidUtilities.m54dp(16);
            measuredWidth2 = getMeasuredWidth() - AndroidUtilities.m54dp(AndroidUtilities.isTablet() ? 65 : 61);
        }
        this.avatarImage.setImageCoords(measuredWidth2, this.avatarTop, AndroidUtilities.m54dp(52), AndroidUtilities.m54dp(52));
        int max2 = Math.max(AndroidUtilities.m54dp(12), measuredWidth3);
        try {
            this.messageLayout = new StaticLayout(TextUtils.ellipsize(str4, textPaint2, max2 - AndroidUtilities.m54dp(12), TextUtils.TruncateAt.END), textPaint2, max2, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        } catch (Exception e2) {
            FileLog.m49e(e2);
        }
        if (LocaleController.isRTL) {
            StaticLayout staticLayout = this.nameLayout;
            if (staticLayout != null && staticLayout.getLineCount() > 0) {
                float lineLeft = this.nameLayout.getLineLeft(0);
                double ceil = Math.ceil(this.nameLayout.getLineWidth(0));
                if (this.drawVerified) {
                    this.nameMuteLeft = (int) (((this.nameLeft + (max - ceil)) - AndroidUtilities.m54dp(6)) - Theme.dialogs_verifiedDrawable.getIntrinsicWidth());
                }
                if (lineLeft == BitmapDescriptorFactory.HUE_RED) {
                    double d = max;
                    if (ceil < d) {
                        this.nameLeft = (int) (this.nameLeft + (d - ceil));
                    }
                }
            }
            StaticLayout staticLayout2 = this.messageLayout;
            if (staticLayout2 == null || staticLayout2.getLineCount() <= 0 || this.messageLayout.getLineLeft(0) != BitmapDescriptorFactory.HUE_RED) {
                return;
            }
            double ceil2 = Math.ceil(this.messageLayout.getLineWidth(0));
            double d2 = max2;
            if (ceil2 < d2) {
                this.messageLeft = (int) (this.messageLeft + (d2 - ceil2));
                return;
            }
            return;
        }
        StaticLayout staticLayout3 = this.nameLayout;
        if (staticLayout3 != null && staticLayout3.getLineCount() > 0) {
            float lineRight = this.nameLayout.getLineRight(0);
            if (lineRight == max) {
                double ceil3 = Math.ceil(this.nameLayout.getLineWidth(0));
                double d3 = max;
                if (ceil3 < d3) {
                    this.nameLeft = (int) (this.nameLeft - (d3 - ceil3));
                }
            }
            if (this.drawVerified) {
                this.nameMuteLeft = (int) (this.nameLeft + lineRight + AndroidUtilities.m54dp(6));
            }
        }
        StaticLayout staticLayout4 = this.messageLayout;
        if (staticLayout4 == null || staticLayout4.getLineCount() <= 0 || this.messageLayout.getLineRight(0) != max2) {
            return;
        }
        double ceil4 = Math.ceil(this.messageLayout.getLineWidth(0));
        double d4 = max2;
        if (ceil4 < d4) {
            this.messageLeft = (int) (this.messageLeft - (d4 - ceil4));
        }
    }

    public void setDialogSelected(boolean z) {
        if (this.isSelected != z) {
            invalidate();
        }
        this.isSelected = z;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.isSelected) {
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), Theme.dialogs_tabletSeletedPaint);
        }
        if (this.drawNameLock) {
            BaseCell.setDrawableBounds(Theme.dialogs_lockDrawable, this.nameLockLeft, this.nameLockTop);
            Theme.dialogs_lockDrawable.draw(canvas);
        }
        if (this.nameLayout != null) {
            canvas.save();
            canvas.translate(this.nameLeft, AndroidUtilities.m54dp(13));
            this.nameLayout.draw(canvas);
            canvas.restore();
        }
        if (this.messageLayout != null) {
            canvas.save();
            canvas.translate(this.messageLeft, this.messageTop);
            try {
                this.messageLayout.draw(canvas);
            } catch (Exception e) {
                FileLog.m49e(e);
            }
            canvas.restore();
        }
        if (this.drawVerified) {
            BaseCell.setDrawableBounds(Theme.dialogs_verifiedDrawable, this.nameMuteLeft, AndroidUtilities.m55dp(16.5f));
            BaseCell.setDrawableBounds(Theme.dialogs_verifiedCheckDrawable, this.nameMuteLeft, AndroidUtilities.m55dp(16.5f));
            Theme.dialogs_verifiedDrawable.draw(canvas);
            Theme.dialogs_verifiedCheckDrawable.draw(canvas);
        }
        if (this.useSeparator) {
            if (LocaleController.isRTL) {
                canvas.drawLine(BitmapDescriptorFactory.HUE_RED, getMeasuredHeight() - 1, getMeasuredWidth() - AndroidUtilities.m54dp(AndroidUtilities.leftBaseline), getMeasuredHeight() - 1, Theme.dividerPaint);
            } else {
                canvas.drawLine(AndroidUtilities.m54dp(AndroidUtilities.leftBaseline), getMeasuredHeight() - 1, getMeasuredWidth(), getMeasuredHeight() - 1, Theme.dividerPaint);
            }
        }
        this.avatarImage.draw(canvas);
    }
}
