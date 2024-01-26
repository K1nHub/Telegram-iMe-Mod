package org.telegram.p043ui.Components.Premium.boosts.cells.msg;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.StateSet;
import android.view.MotionEvent;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.ChatMessageCell;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.Premium.boosts.BoostDialogs;
import org.telegram.tgnet.TLRPC$Chat;
/* renamed from: org.telegram.ui.Components.Premium.boosts.cells.msg.GiveawayMessageCell */
/* loaded from: classes6.dex */
public class GiveawayMessageCell {
    private static final Map<Integer, String> monthsToEmoticon;
    private int additionPrizeHeight;
    private StaticLayout additionPrizeLayout;
    private AvatarDrawable[] avatarDrawables;
    private ImageReceiver[] avatarImageReceivers;
    private boolean[] avatarVisible;
    private int bottomHeight;
    private StaticLayout bottomLayout;
    private Paint chatBgPaint;
    private RectF chatRect;
    private TextPaint chatTextPaint;
    private float[] chatTitleWidths;
    private CharSequence[] chatTitles;
    private TLRPC$Chat[] chats;
    private Rect[] clickRect;
    private Paint clipRectPaint;
    private Rect containerRect;
    private RectF countRect;
    private Paint counterBgPaint;
    private String counterStr;
    private Rect counterTextBounds;
    private TextPaint counterTextPaint;
    private int countriesHeight;
    private StaticLayout countriesLayout;
    private TextPaint countriesTextPaint;
    private int diffTextWidth;
    private ImageReceiver giftReceiver;
    private Paint lineDividerPaint;
    private MessageObject messageObject;
    private boolean[] needNewRow;
    private final ChatMessageCell parentView;
    private int[] pressedState;
    private Paint saveLayerPaint;
    private int selectorColor;
    private Drawable selectorDrawable;
    private String textDivider;
    private TextPaint textDividerPaint;
    private float textDividerWidth;
    private TextPaint textPaint;
    private int titleHeight;
    private StaticLayout titleLayout;
    private int topHeight;
    private StaticLayout topLayout;
    private int measuredHeight = 0;
    private int measuredWidth = 0;
    private int pressedPos = -1;
    private boolean isButtonPressed = false;
    private boolean isContainerPressed = false;

    static {
        HashMap hashMap = new HashMap();
        monthsToEmoticon = hashMap;
        hashMap.put(1, "1⃣");
        hashMap.put(3, "2⃣");
        hashMap.put(6, "3⃣");
        hashMap.put(12, "4⃣");
        hashMap.put(24, "5⃣");
    }

    public GiveawayMessageCell(ChatMessageCell chatMessageCell) {
        this.parentView = chatMessageCell;
    }

    private void init() {
        if (this.counterTextPaint != null) {
            return;
        }
        this.counterTextPaint = new TextPaint(1);
        this.chatTextPaint = new TextPaint(1);
        this.textPaint = new TextPaint(1);
        this.textDividerPaint = new TextPaint(1);
        this.lineDividerPaint = new Paint(1);
        this.countriesTextPaint = new TextPaint(1);
        this.counterBgPaint = new Paint(1);
        this.chatBgPaint = new Paint(1);
        this.saveLayerPaint = new Paint();
        this.clipRectPaint = new Paint();
        this.countRect = new RectF();
        this.chatRect = new RectF();
        this.counterTextBounds = new Rect();
        this.containerRect = new Rect();
        this.pressedState = new int[]{16842910, 16842919};
        this.chatTitles = new CharSequence[10];
        this.chats = new TLRPC$Chat[10];
        this.chatTitleWidths = new float[10];
        this.needNewRow = new boolean[10];
        this.clickRect = new Rect[10];
        ImageReceiver imageReceiver = new ImageReceiver(this.parentView);
        this.giftReceiver = imageReceiver;
        imageReceiver.setAllowLoadingOnAttachedOnly(true);
        this.clipRectPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        this.counterTextPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.counterTextPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        this.counterTextPaint.setTextSize(AndroidUtilities.m107dp(12));
        this.counterTextPaint.setTextAlign(Paint.Align.CENTER);
        this.chatTextPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.chatTextPaint.setTextSize(AndroidUtilities.m107dp(13));
        this.countriesTextPaint.setTextSize(AndroidUtilities.m107dp(13));
        this.textPaint.setTextSize(AndroidUtilities.m107dp(14));
        this.textDividerPaint.setTextSize(AndroidUtilities.m107dp(14));
        this.textDividerPaint.setTextAlign(Paint.Align.CENTER);
    }

    public boolean checkMotionEvent(MotionEvent motionEvent) {
        MessageObject messageObject = this.messageObject;
        if (messageObject != null && messageObject.isGiveaway()) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (motionEvent.getAction() == 0) {
                int i = 0;
                while (true) {
                    Rect[] rectArr = this.clickRect;
                    if (i < rectArr.length) {
                        if (rectArr[i].contains(x, y)) {
                            this.pressedPos = i;
                            if (Build.VERSION.SDK_INT >= 21) {
                                this.selectorDrawable.setHotspot(x, y);
                            }
                            this.isButtonPressed = true;
                            setButtonPressed(true);
                            return true;
                        }
                        i++;
                    } else if (this.containerRect.contains(x, y)) {
                        this.isContainerPressed = true;
                        return true;
                    }
                }
            } else if (motionEvent.getAction() == 1) {
                if (this.isButtonPressed) {
                    if (this.parentView.getDelegate() != null) {
                        this.parentView.getDelegate().didPressGiveawayChatButton(this.parentView, this.pressedPos);
                    }
                    this.parentView.playSoundEffect(0);
                    setButtonPressed(false);
                    this.isButtonPressed = false;
                }
                if (this.isContainerPressed) {
                    this.isContainerPressed = false;
                    BoostDialogs.showBulletinAbout(this.messageObject);
                }
            } else if (motionEvent.getAction() != 2 && motionEvent.getAction() == 3) {
                if (this.isButtonPressed) {
                    setButtonPressed(false);
                }
                this.isButtonPressed = false;
                this.isContainerPressed = false;
            }
        }
        return false;
    }

    public void setButtonPressed(boolean z) {
        Drawable drawable;
        MessageObject messageObject = this.messageObject;
        if (messageObject == null || !messageObject.isGiveaway() || (drawable = this.selectorDrawable) == null) {
            return;
        }
        if (z) {
            drawable.setCallback(new Drawable.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.cells.msg.GiveawayMessageCell.1
                @Override // android.graphics.drawable.Drawable.Callback
                public void invalidateDrawable(Drawable drawable2) {
                    GiveawayMessageCell.this.parentView.invalidate();
                }

                @Override // android.graphics.drawable.Drawable.Callback
                public void scheduleDrawable(Drawable drawable2, Runnable runnable, long j) {
                    GiveawayMessageCell.this.parentView.invalidate();
                }

                @Override // android.graphics.drawable.Drawable.Callback
                public void unscheduleDrawable(Drawable drawable2, Runnable runnable) {
                    GiveawayMessageCell.this.parentView.invalidate();
                }
            });
            this.selectorDrawable.setState(this.pressedState);
            this.parentView.invalidate();
            return;
        }
        drawable.setState(StateSet.NOTHING);
        this.parentView.invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0376  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0387  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x03ec  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x040a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setMessageContent(org.telegram.messenger.MessageObject r21, int r22, int r23) {
        /*
            Method dump skipped, instructions count: 1251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.Premium.boosts.cells.msg.GiveawayMessageCell.setMessageContent(org.telegram.messenger.MessageObject, int, int):void");
    }

    private int getChatColor(TLRPC$Chat tLRPC$Chat, Theme.ResourcesProvider resourcesProvider) {
        if (this.messageObject.isOutOwner()) {
            return Theme.getColor(Theme.key_chat_outPreviewInstantText, resourcesProvider);
        }
        int colorId = ChatObject.getColorId(tLRPC$Chat);
        if (colorId < 7) {
            return Theme.getColor(Theme.keys_avatar_nameInMessage[colorId], resourcesProvider);
        }
        MessagesController.PeerColors peerColors = MessagesController.getInstance(UserConfig.selectedAccount).peerColors;
        MessagesController.PeerColor color = peerColors == null ? null : peerColors.getColor(colorId);
        if (color != null) {
            return color.getColor(0, resourcesProvider);
        }
        return Theme.getColor(Theme.keys_avatar_nameInMessage[0], resourcesProvider);
    }

    public void draw(Canvas canvas, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
        float f;
        boolean[] zArr;
        int i3;
        MessageObject messageObject = this.messageObject;
        if (messageObject == null || !messageObject.isGiveaway()) {
            return;
        }
        if (this.selectorDrawable == null) {
            int color = Theme.getColor(Theme.key_listSelector);
            this.selectorColor = color;
            this.selectorDrawable = Theme.createRadSelectorDrawable(color, 12, 12);
        }
        this.textPaint.setColor(Theme.chat_msgTextPaint.getColor());
        this.textDividerPaint.setColor(Theme.multAlpha(Theme.chat_msgTextPaint.getColor(), 0.45f));
        this.lineDividerPaint.setColor(Theme.multAlpha(Theme.chat_msgTextPaint.getColor(), 0.15f));
        this.countriesTextPaint.setColor(Theme.chat_msgTextPaint.getColor());
        if (this.messageObject.isOutOwner()) {
            TextPaint textPaint = this.chatTextPaint;
            int i4 = Theme.key_chat_outPreviewInstantText;
            textPaint.setColor(Theme.getColor(i4, resourcesProvider));
            this.counterBgPaint.setColor(Theme.getColor(i4, resourcesProvider));
            this.chatBgPaint.setColor(Theme.getColor(Theme.key_chat_outReplyLine, resourcesProvider));
        } else {
            TextPaint textPaint2 = this.chatTextPaint;
            int i5 = Theme.key_chat_inPreviewInstantText;
            textPaint2.setColor(Theme.getColor(i5, resourcesProvider));
            this.counterBgPaint.setColor(Theme.getColor(i5, resourcesProvider));
            this.chatBgPaint.setColor(Theme.getColor(Theme.key_chat_inReplyLine, resourcesProvider));
        }
        canvas.save();
        int m107dp = i2 - AndroidUtilities.m107dp(4);
        canvas.translate(m107dp, i);
        this.containerRect.set(m107dp, i, getMeasuredWidth() + m107dp, getMeasuredHeight() + i);
        canvas.saveLayer(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), this.saveLayerPaint, 31);
        this.giftReceiver.draw(canvas);
        float f2 = 2.0f;
        float measuredWidth = getMeasuredWidth() / 2.0f;
        float m107dp2 = AndroidUtilities.m107dp(106);
        int width = this.counterTextBounds.width() + AndroidUtilities.m107dp(12);
        int height = this.counterTextBounds.height() + AndroidUtilities.m107dp(10);
        this.countRect.set(measuredWidth - ((AndroidUtilities.m107dp(2) + width) / 2.0f), m107dp2 - ((height + AndroidUtilities.m107dp(2)) / 2.0f), ((width + AndroidUtilities.m107dp(2)) / 2.0f) + measuredWidth, ((AndroidUtilities.m107dp(2) + height) / 2.0f) + m107dp2);
        canvas.drawRoundRect(this.countRect, AndroidUtilities.m107dp(11), AndroidUtilities.m107dp(11), this.clipRectPaint);
        float f3 = width / 2.0f;
        float f4 = height / 2.0f;
        this.countRect.set(measuredWidth - f3, m107dp2 - f4, f3 + measuredWidth, m107dp2 + f4);
        canvas.drawRoundRect(this.countRect, AndroidUtilities.m107dp(10), AndroidUtilities.m107dp(10), this.counterBgPaint);
        canvas.drawText(this.counterStr, this.countRect.centerX(), this.countRect.centerY() + AndroidUtilities.m107dp(4), this.counterTextPaint);
        canvas.restore();
        canvas.translate(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m107dp(128));
        int m107dp3 = i + AndroidUtilities.m107dp(128);
        canvas.save();
        canvas.translate(this.diffTextWidth / 2.0f, BitmapDescriptorFactory.HUE_RED);
        this.titleLayout.draw(canvas);
        canvas.translate(BitmapDescriptorFactory.HUE_RED, this.titleHeight);
        int i6 = 16;
        if (this.additionPrizeLayout != null) {
            canvas.restore();
            canvas.save();
            float m107dp4 = (this.titleHeight + this.additionPrizeHeight) - AndroidUtilities.m107dp(6);
            float f5 = this.measuredWidth / 2.0f;
            canvas.drawText(this.textDivider, f5, m107dp4, this.textDividerPaint);
            canvas.drawLine(AndroidUtilities.m107dp(17), m107dp4 - AndroidUtilities.m107dp(4), (f5 - (this.textDividerWidth / 2.0f)) - AndroidUtilities.m107dp(6), m107dp4 - AndroidUtilities.m107dp(4), this.lineDividerPaint);
            canvas.drawLine(f5 + (this.textDividerWidth / 2.0f) + AndroidUtilities.m107dp(6), m107dp4 - AndroidUtilities.m107dp(4), this.measuredWidth - AndroidUtilities.m107dp(16), m107dp4 - AndroidUtilities.m107dp(4), this.lineDividerPaint);
            canvas.translate((this.measuredWidth - this.additionPrizeLayout.getWidth()) / 2.0f, this.titleHeight);
            this.additionPrizeLayout.draw(canvas);
            canvas.restore();
            canvas.save();
            canvas.translate(this.diffTextWidth / 2.0f, this.additionPrizeHeight + this.titleHeight);
        }
        this.topLayout.draw(canvas);
        canvas.restore();
        canvas.translate(BitmapDescriptorFactory.HUE_RED, this.topHeight + AndroidUtilities.m107dp(6));
        int i7 = 0;
        int i8 = 0;
        int m107dp5 = m107dp3 + this.topHeight + AndroidUtilities.m107dp(6);
        while (true) {
            boolean[] zArr2 = this.avatarVisible;
            if (i7 >= zArr2.length) {
                break;
            }
            if (zArr2[i7]) {
                canvas.save();
                int i9 = i7;
                float f6 = BitmapDescriptorFactory.HUE_RED;
                do {
                    f6 += this.chatTitleWidths[i9] + AndroidUtilities.m107dp(40);
                    i9++;
                    zArr = this.avatarVisible;
                    if (i9 >= zArr.length || this.needNewRow[i9]) {
                        break;
                    }
                } while (zArr[i9]);
                float f7 = measuredWidth - (f6 / f2);
                canvas.translate(f7, BitmapDescriptorFactory.HUE_RED);
                int i10 = i7;
                int i11 = ((int) f7) + m107dp;
                while (true) {
                    int chatColor = getChatColor(this.chats[i10], resourcesProvider);
                    int i12 = this.pressedPos;
                    i3 = (i12 < 0 || i12 != i10) ? i8 : chatColor;
                    this.chatTextPaint.setColor(chatColor);
                    this.chatBgPaint.setColor(chatColor);
                    this.chatBgPaint.setAlpha(25);
                    this.avatarImageReceivers[i10].draw(canvas);
                    CharSequence[] charSequenceArr = this.chatTitles;
                    int i13 = i11;
                    int i14 = i10;
                    canvas.drawText(charSequenceArr[i10], 0, charSequenceArr[i10].length(), AndroidUtilities.m107dp(30), AndroidUtilities.m107dp(i6), this.chatTextPaint);
                    this.chatRect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.chatTitleWidths[i14] + AndroidUtilities.m107dp(40), AndroidUtilities.m107dp(24));
                    canvas.drawRoundRect(this.chatRect, AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(12), this.chatBgPaint);
                    float f8 = i13;
                    this.clickRect[i14].set(i13, m107dp5, (int) (this.chatRect.width() + f8), AndroidUtilities.m107dp(24) + m107dp5);
                    canvas.translate(this.chatRect.width() + AndroidUtilities.m107dp(6), BitmapDescriptorFactory.HUE_RED);
                    i11 = (int) (f8 + this.chatRect.width() + AndroidUtilities.m107dp(6));
                    i10 = i14 + 1;
                    boolean[] zArr3 = this.avatarVisible;
                    if (i10 >= zArr3.length || this.needNewRow[i10] || !zArr3[i10]) {
                        break;
                    }
                    i8 = i3;
                    i6 = 16;
                }
                canvas.restore();
                canvas.translate(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m107dp(30));
                m107dp5 += AndroidUtilities.m107dp(30);
                i7 = i10;
                i8 = i3;
            } else {
                i7++;
            }
            i6 = 16;
            f2 = 2.0f;
        }
        if (this.countriesLayout != null) {
            canvas.save();
            canvas.translate((this.measuredWidth - this.countriesLayout.getWidth()) / 2.0f, AndroidUtilities.m107dp(4));
            this.countriesLayout.draw(canvas);
            canvas.restore();
            f = BitmapDescriptorFactory.HUE_RED;
            canvas.translate(BitmapDescriptorFactory.HUE_RED, this.countriesHeight);
        } else {
            f = BitmapDescriptorFactory.HUE_RED;
        }
        canvas.translate(f, AndroidUtilities.m107dp(6));
        canvas.save();
        canvas.translate(this.diffTextWidth / 2.0f, f);
        this.bottomLayout.draw(canvas);
        canvas.restore();
        canvas.restore();
        if (this.pressedPos >= 0) {
            int multAlpha = Theme.multAlpha(i8, Theme.isCurrentThemeDark() ? 0.12f : 0.1f);
            if (this.selectorColor != multAlpha) {
                Drawable drawable = this.selectorDrawable;
                this.selectorColor = multAlpha;
                Theme.setSelectorDrawableColor(drawable, multAlpha, true);
            }
            this.selectorDrawable.setBounds(this.clickRect[this.pressedPos]);
            this.selectorDrawable.draw(canvas);
        }
    }

    public void onDetachedFromWindow() {
        ImageReceiver imageReceiver = this.giftReceiver;
        if (imageReceiver != null) {
            imageReceiver.onDetachedFromWindow();
        }
        ImageReceiver[] imageReceiverArr = this.avatarImageReceivers;
        if (imageReceiverArr != null) {
            for (ImageReceiver imageReceiver2 : imageReceiverArr) {
                imageReceiver2.onDetachedFromWindow();
            }
        }
    }

    public void onAttachedToWindow() {
        ImageReceiver imageReceiver = this.giftReceiver;
        if (imageReceiver != null) {
            imageReceiver.onAttachedToWindow();
        }
        ImageReceiver[] imageReceiverArr = this.avatarImageReceivers;
        if (imageReceiverArr != null) {
            for (ImageReceiver imageReceiver2 : imageReceiverArr) {
                imageReceiver2.onAttachedToWindow();
            }
        }
    }

    public int getMeasuredHeight() {
        return this.measuredHeight;
    }

    public int getMeasuredWidth() {
        return this.measuredWidth;
    }

    private void createImages() {
        if (this.avatarImageReceivers != null) {
            return;
        }
        this.avatarImageReceivers = new ImageReceiver[10];
        this.avatarDrawables = new AvatarDrawable[10];
        this.avatarVisible = new boolean[10];
        int i = 0;
        while (true) {
            ImageReceiver[] imageReceiverArr = this.avatarImageReceivers;
            if (i >= imageReceiverArr.length) {
                return;
            }
            imageReceiverArr[i] = new ImageReceiver(this.parentView);
            this.avatarImageReceivers[i].setAllowLoadingOnAttachedOnly(true);
            this.avatarImageReceivers[i].setRoundRadius(AndroidUtilities.m107dp(12));
            this.avatarDrawables[i] = new AvatarDrawable();
            this.avatarDrawables[i].setTextSize(AndroidUtilities.m107dp(18));
            this.clickRect[i] = new Rect();
            i++;
        }
    }

    private void checkArraysLimits(int i) {
        ImageReceiver[] imageReceiverArr = this.avatarImageReceivers;
        if (imageReceiverArr.length < i) {
            int length = imageReceiverArr.length;
            this.avatarImageReceivers = (ImageReceiver[]) Arrays.copyOf(imageReceiverArr, i);
            this.avatarDrawables = (AvatarDrawable[]) Arrays.copyOf(this.avatarDrawables, i);
            this.avatarVisible = Arrays.copyOf(this.avatarVisible, i);
            this.chatTitles = (CharSequence[]) Arrays.copyOf(this.chatTitles, i);
            this.chatTitleWidths = Arrays.copyOf(this.chatTitleWidths, i);
            this.needNewRow = Arrays.copyOf(this.needNewRow, i);
            this.clickRect = (Rect[]) Arrays.copyOf(this.clickRect, i);
            this.chats = (TLRPC$Chat[]) Arrays.copyOf(this.chats, i);
            for (int i2 = length - 1; i2 < i; i2++) {
                this.avatarImageReceivers[i2] = new ImageReceiver(this.parentView);
                this.avatarImageReceivers[i2].setAllowLoadingOnAttachedOnly(true);
                this.avatarImageReceivers[i2].setRoundRadius(AndroidUtilities.m107dp(12));
                this.avatarDrawables[i2] = new AvatarDrawable();
                this.avatarDrawables[i2].setTextSize(AndroidUtilities.m107dp(18));
                this.clickRect[i2] = new Rect();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x008e, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setGiftImage(org.telegram.messenger.MessageObject r13) {
        /*
            r12 = this;
            org.telegram.tgnet.TLRPC$Message r13 = r13.messageOwner
            org.telegram.tgnet.TLRPC$MessageMedia r13 = r13.media
            org.telegram.tgnet.TLRPC$TL_messageMediaGiveaway r13 = (org.telegram.tgnet.TLRPC$TL_messageMediaGiveaway) r13
            int r0 = org.telegram.messenger.UserConfig.selectedAccount
            org.telegram.messenger.UserConfig r0 = org.telegram.messenger.UserConfig.getInstance(r0)
            java.lang.String r0 = r0.premiumGiftsStickerPack
            if (r0 != 0) goto L1a
            int r13 = org.telegram.messenger.UserConfig.selectedAccount
            org.telegram.messenger.MediaDataController r13 = org.telegram.messenger.MediaDataController.getInstance(r13)
            r13.checkPremiumGiftStickers()
            return
        L1a:
            int r1 = org.telegram.messenger.UserConfig.selectedAccount
            org.telegram.messenger.MediaDataController r1 = org.telegram.messenger.MediaDataController.getInstance(r1)
            org.telegram.tgnet.TLRPC$TL_messages_stickerSet r1 = r1.getStickerSetByName(r0)
            if (r1 != 0) goto L30
            int r1 = org.telegram.messenger.UserConfig.selectedAccount
            org.telegram.messenger.MediaDataController r1 = org.telegram.messenger.MediaDataController.getInstance(r1)
            org.telegram.tgnet.TLRPC$TL_messages_stickerSet r1 = r1.getStickerSetByEmojiOrName(r0)
        L30:
            r7 = r1
            r1 = 0
            r2 = 0
            if (r7 == 0) goto La3
            int r13 = r13.months
            java.util.Map<java.lang.Integer, java.lang.String> r3 = org.telegram.p043ui.Components.Premium.boosts.cells.msg.GiveawayMessageCell.monthsToEmoticon
            java.lang.Integer r13 = java.lang.Integer.valueOf(r13)
            java.lang.Object r13 = r3.get(r13)
            java.lang.String r13 = (java.lang.String) r13
            java.util.ArrayList<org.telegram.tgnet.TLRPC$TL_stickerPack> r3 = r7.packs
            java.util.Iterator r3 = r3.iterator()
        L49:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L90
            java.lang.Object r4 = r3.next()
            org.telegram.tgnet.TLRPC$TL_stickerPack r4 = (org.telegram.tgnet.TLRPC$TL_stickerPack) r4
            java.lang.String r5 = r4.emoticon
            boolean r5 = java.util.Objects.equals(r5, r13)
            if (r5 == 0) goto L8e
            java.util.ArrayList<java.lang.Long> r4 = r4.documents
            java.util.Iterator r4 = r4.iterator()
        L63:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L8e
            java.lang.Object r5 = r4.next()
            java.lang.Long r5 = (java.lang.Long) r5
            long r5 = r5.longValue()
            java.util.ArrayList<org.telegram.tgnet.TLRPC$Document> r8 = r7.documents
            java.util.Iterator r8 = r8.iterator()
        L79:
            boolean r9 = r8.hasNext()
            if (r9 == 0) goto L8c
            java.lang.Object r9 = r8.next()
            org.telegram.tgnet.TLRPC$Document r9 = (org.telegram.tgnet.TLRPC$Document) r9
            long r10 = r9.f1610id
            int r10 = (r10 > r5 ? 1 : (r10 == r5 ? 0 : -1))
            if (r10 != 0) goto L79
            r2 = r9
        L8c:
            if (r2 == 0) goto L63
        L8e:
            if (r2 == 0) goto L49
        L90:
            if (r2 != 0) goto La3
            java.util.ArrayList<org.telegram.tgnet.TLRPC$Document> r13 = r7.documents
            boolean r13 = r13.isEmpty()
            if (r13 != 0) goto La3
            java.util.ArrayList<org.telegram.tgnet.TLRPC$Document> r13 = r7.documents
            java.lang.Object r13 = r13.get(r1)
            r2 = r13
            org.telegram.tgnet.TLRPC$Document r2 = (org.telegram.tgnet.TLRPC$Document) r2
        La3:
            if (r2 == 0) goto Lc7
            java.util.ArrayList<org.telegram.tgnet.TLRPC$PhotoSize> r13 = r2.thumbs
            int r0 = org.telegram.p043ui.ActionBar.Theme.key_emptyListPlaceholder
            r1 = 1045220557(0x3e4ccccd, float:0.2)
            org.telegram.messenger.SvgHelper$SvgDrawable r5 = org.telegram.messenger.DocumentObject.getSvgThumb(r13, r0, r1)
            if (r5 == 0) goto Lb7
            r13 = 512(0x200, float:7.175E-43)
            r5.overrideWidthAndHeight(r13, r13)
        Lb7:
            org.telegram.messenger.ImageReceiver r13 = r12.giftReceiver
            org.telegram.messenger.ImageLocation r3 = org.telegram.messenger.ImageLocation.getForDocument(r2)
            r8 = 1
            java.lang.String r4 = "160_160_firstframe"
            java.lang.String r6 = "tgs"
            r2 = r13
            r2.setImage(r3, r4, r5, r6, r7, r8)
            goto Ld5
        Lc7:
            int r13 = org.telegram.messenger.UserConfig.selectedAccount
            org.telegram.messenger.MediaDataController r13 = org.telegram.messenger.MediaDataController.getInstance(r13)
            if (r7 != 0) goto Ld1
            r2 = 1
            goto Ld2
        Ld1:
            r2 = r1
        Ld2:
            r13.loadStickersByEmojiOrName(r0, r1, r2)
        Ld5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.Premium.boosts.cells.msg.GiveawayMessageCell.setGiftImage(org.telegram.messenger.MessageObject):void");
    }
}
