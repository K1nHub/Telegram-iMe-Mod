package org.telegram.p043ui.Components;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.text.TextUtils;
import android.view.View;
import androidx.core.math.MathUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.ChatMessageCell;
import org.telegram.p043ui.Components.AnimatedEmojiDrawable;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatInvite;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$MessageFwdHeader;
import org.telegram.tgnet.TLRPC$MessageReplyHeader;
import org.telegram.tgnet.TLRPC$Peer;
import org.telegram.tgnet.TLRPC$TL_chatInvite;
import org.telegram.tgnet.TLRPC$TL_messageMediaContact;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Components.ReplyMessageLine */
/* loaded from: classes6.dex */
public class ReplyMessageLine {
    public int backgroundColor;
    public final AnimatedColor backgroundColorAnimated;
    private LoadingDrawable backgroundLoadingDrawable;
    public int color1;
    public final AnimatedColor color1Animated;
    public int color2;
    public final AnimatedFloat color2Alpha;
    public final AnimatedColor color2Animated;
    public int color3;
    public final AnimatedFloat color3Alpha;
    public final AnimatedColor color3Animated;
    private AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable emoji;
    private long emojiDocumentId;
    private boolean emojiLoaded;
    public final AnimatedFloat emojiLoadedT;
    private float emojiOffsetX;
    private float emojiOffsetY;
    public boolean hasColor2;
    public boolean hasColor3;
    private IconCoords[] iconCoords;
    private boolean lastHasColor3;
    private float lastHeight;
    private long lastLoadingTTime;
    private boolean loading;
    public final AnimatedFloat loadingStateT;
    private float loadingT;
    private float loadingTranslationT;
    public int nameColor;
    public final AnimatedColor nameColorAnimated;
    private final View parentView;
    private boolean reversedOut;
    public final AnimatedFloat switchStateT;
    private int wasColorId;
    private int wasMessageId;
    private final RectF rectF = new RectF();
    private final Path clipPath = new Path();
    private final Paint color1Paint = new Paint(1);
    private final Paint color2Paint = new Paint(1);
    private final Paint color3Paint = new Paint(1);
    public final float[] radii = new float[8];
    private final Path lineClipPath = new Path();
    private final Path backgroundPath = new Path();
    private final Paint backgroundPaint = new Paint();
    private Path color2Path = new Path();
    private Path color3Path = new Path();
    private int switchedCount = 0;

    public ReplyMessageLine(View view) {
        this.parentView = view;
        view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: org.telegram.ui.Components.ReplyMessageLine.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view2) {
                if (ReplyMessageLine.this.emoji != null) {
                    ReplyMessageLine.this.emoji.attach();
                }
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view2) {
                if (ReplyMessageLine.this.emoji != null) {
                    ReplyMessageLine.this.emoji.detach();
                }
            }
        });
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.backgroundColorAnimated = new AnimatedColor(view, 0L, 400L, cubicBezierInterpolator);
        this.color1Animated = new AnimatedColor(view, 0L, 400L, cubicBezierInterpolator);
        this.color2Animated = new AnimatedColor(view, 0L, 400L, cubicBezierInterpolator);
        this.color3Animated = new AnimatedColor(view, 0L, 400L, cubicBezierInterpolator);
        this.nameColorAnimated = new AnimatedColor(view, 0L, 400L, cubicBezierInterpolator);
        this.color2Alpha = new AnimatedFloat(view, 0L, 400L, cubicBezierInterpolator);
        this.color3Alpha = new AnimatedFloat(view, 0L, 400L, cubicBezierInterpolator);
        this.emojiLoadedT = new AnimatedFloat(view, 0L, 440L, cubicBezierInterpolator);
        this.loadingStateT = new AnimatedFloat(view, 0L, 320L, cubicBezierInterpolator);
        this.switchStateT = new AnimatedFloat(view, 0L, 320L, cubicBezierInterpolator);
    }

    public int getColor() {
        return this.reversedOut ? this.color2 : this.color1;
    }

    public int getBackgroundColor() {
        return this.backgroundColor;
    }

    public void setBackgroundColor(int i) {
        this.backgroundColor = i;
    }

    private void resolveColor(MessageObject messageObject, int i, Theme.ResourcesProvider resourcesProvider) {
        if (resourcesProvider != null) {
            resourcesProvider.isDark();
        } else {
            Theme.isCurrentThemeDark();
        }
        if (this.wasColorId != i) {
            int id = messageObject != null ? messageObject.getId() : 0;
            if (id == this.wasMessageId) {
                this.switchedCount++;
            }
            this.wasColorId = i;
            this.wasMessageId = id;
        }
        if (i >= 0 && i < 7) {
            int color = Theme.getColor(Theme.keys_avatar_nameInMessage[i], resourcesProvider);
            this.color3 = color;
            this.color2 = color;
            this.color1 = color;
            this.hasColor3 = false;
            this.hasColor2 = false;
            return;
        }
        MessagesController.PeerColors peerColors = MessagesController.getInstance(messageObject != null ? messageObject.currentAccount : UserConfig.selectedAccount).peerColors;
        MessagesController.PeerColor peerColor = null;
        if (peerColors != null && i >= 0) {
            peerColor = peerColors.getColor(i);
        }
        if (peerColor == null) {
            int color2 = Theme.getColor((messageObject == null || !messageObject.isOutOwner()) ? Theme.key_chat_inReplyLine : Theme.key_chat_outReplyLine, resourcesProvider);
            this.color3 = color2;
            this.color2 = color2;
            this.color1 = color2;
            this.hasColor3 = false;
            this.hasColor2 = false;
            return;
        }
        this.color1 = peerColor.getColor(0, resourcesProvider);
        this.color2 = peerColor.getColor(1, resourcesProvider);
        int color3 = peerColor.getColor(2, resourcesProvider);
        this.color3 = color3;
        int i2 = this.color2;
        int i3 = this.color1;
        this.hasColor2 = i2 != i3;
        boolean z = color3 != i3;
        this.hasColor3 = z;
        if (z) {
            this.color3 = i2;
            this.color2 = color3;
        }
    }

    public int check(MessageObject messageObject, TLRPC$User tLRPC$User, TLRPC$Chat tLRPC$Chat, Theme.ResourcesProvider resourcesProvider, int i) {
        int i2;
        TLRPC$Chat chat;
        int colorId;
        TLRPC$Message tLRPC$Message;
        TLRPC$MessageReplyHeader tLRPC$MessageReplyHeader;
        TLRPC$MessageFwdHeader tLRPC$MessageFwdHeader;
        MessageObject messageObject2;
        TLRPC$Message tLRPC$Message2;
        TLRPC$MessageFwdHeader tLRPC$MessageFwdHeader2;
        TLRPC$Peer tLRPC$Peer;
        int colorId2;
        TLRPC$ChatInvite tLRPC$ChatInvite;
        TLRPC$Chat tLRPC$Chat2;
        TLRPC$Chat tLRPC$Chat3;
        TLRPC$Message tLRPC$Message3;
        TLRPC$MessageFwdHeader tLRPC$MessageFwdHeader3;
        TLRPC$ChatInvite tLRPC$ChatInvite2;
        TLRPC$Message tLRPC$Message4;
        int i3;
        boolean isDark = resourcesProvider != null ? resourcesProvider.isDark() : Theme.isCurrentThemeDark();
        this.reversedOut = false;
        this.emojiDocumentId = 0L;
        if (messageObject == null) {
            this.hasColor3 = false;
            this.hasColor2 = false;
            int color = Theme.getColor(Theme.key_chat_inReplyLine, resourcesProvider);
            this.color3 = color;
            this.color2 = color;
            this.color1 = color;
            this.backgroundColor = Theme.multAlpha(color, isDark ? 0.12f : 0.1f);
            AnimatedColor animatedColor = this.nameColorAnimated;
            int color2 = Theme.getColor(Theme.key_chat_inReplyNameText, resourcesProvider);
            this.nameColor = color2;
            return animatedColor.set(color2);
        }
        if (i == 4 && (tLRPC$Message4 = messageObject.messageOwner) != null && MessageObject.getMedia(tLRPC$Message4) != null && (MessageObject.getMedia(messageObject.messageOwner) instanceof TLRPC$TL_messageMediaContact)) {
            long j = MessageObject.getMedia(messageObject.messageOwner).user_id;
            TLRPC$User user = j != 0 ? MessagesController.getInstance(messageObject.currentAccount).getUser(Long.valueOf(j)) : null;
            if (user != null) {
                i3 = UserObject.getColorId(user);
                this.emojiDocumentId = UserObject.getEmojiId(user);
            } else {
                i3 = 0;
            }
            resolveColor(messageObject, i3, resourcesProvider);
            this.backgroundColor = Theme.multAlpha(this.color1, 0.1f);
            this.nameColor = this.color1;
        } else if (i != 0 && (messageObject.overrideLinkColor >= 0 || (messageObject.messageOwner != null && (((messageObject.isFromUser() || DialogObject.isEncryptedDialog(messageObject.getDialogId())) && tLRPC$User != null) || ((messageObject.isFromChannel() && tLRPC$Chat != null) || ((messageObject.isSponsored() && (messageObject.sponsoredChatInvite instanceof TLRPC$TL_chatInvite)) || ((messageObject.isSponsored() && (tLRPC$ChatInvite2 = messageObject.sponsoredChatInvite) != null && tLRPC$ChatInvite2.chat != null) || ((tLRPC$Message3 = messageObject.messageOwner) != null && (tLRPC$MessageFwdHeader3 = tLRPC$Message3.fwd_from) != null && tLRPC$MessageFwdHeader3.from_id != null)))))))) {
            int i4 = messageObject.overrideLinkColor;
            if (i4 < 0) {
                if (messageObject.isSponsored()) {
                    TLRPC$ChatInvite tLRPC$ChatInvite3 = messageObject.sponsoredChatInvite;
                    if (tLRPC$ChatInvite3 instanceof TLRPC$TL_chatInvite) {
                        colorId2 = tLRPC$ChatInvite3.color;
                        if (i == 3 && (tLRPC$Chat3 = tLRPC$ChatInvite3.chat) != null) {
                            this.emojiDocumentId = ChatObject.getEmojiId(tLRPC$Chat3);
                        }
                        i4 = colorId2;
                    }
                }
                if (messageObject.isSponsored() && (tLRPC$ChatInvite = messageObject.sponsoredChatInvite) != null && (tLRPC$Chat2 = tLRPC$ChatInvite.chat) != null) {
                    i4 = ChatObject.getColorId(tLRPC$Chat2);
                    if (i == 3) {
                        this.emojiDocumentId = ChatObject.getEmojiId(messageObject.sponsoredChatInvite.chat);
                    }
                } else {
                    TLRPC$Message tLRPC$Message5 = messageObject.messageOwner;
                    if (tLRPC$Message5 != null && (tLRPC$MessageFwdHeader2 = tLRPC$Message5.fwd_from) != null && (tLRPC$Peer = tLRPC$MessageFwdHeader2.from_id) != null) {
                        long peerDialogId = DialogObject.getPeerDialogId(tLRPC$Peer);
                        if (peerDialogId < 0) {
                            TLRPC$Chat chat2 = MessagesController.getInstance(messageObject.currentAccount).getChat(Long.valueOf(-peerDialogId));
                            colorId2 = chat2 != null ? ChatObject.getColorId(chat2) : 5;
                            if (i == 3) {
                                this.emojiDocumentId = ChatObject.getEmojiId(chat2);
                            }
                        } else {
                            TLRPC$User user2 = MessagesController.getInstance(messageObject.currentAccount).getUser(Long.valueOf(peerDialogId));
                            colorId2 = user2 != null ? UserObject.getColorId(user2) : 5;
                            if (i == 3) {
                                this.emojiDocumentId = UserObject.getEmojiId(user2);
                            }
                        }
                        i4 = colorId2;
                    } else if (DialogObject.isEncryptedDialog(messageObject.getDialogId()) && tLRPC$User != null) {
                        TLRPC$User currentUser = messageObject.isOutOwner() ? UserConfig.getInstance(messageObject.currentAccount).getCurrentUser() : tLRPC$User;
                        if (currentUser == null) {
                            currentUser = tLRPC$User;
                        }
                        i4 = UserObject.getColorId(currentUser);
                        if (i == 3) {
                            this.emojiDocumentId = UserObject.getEmojiId(currentUser);
                        }
                    } else if (messageObject.isFromUser() && tLRPC$User != null) {
                        i4 = UserObject.getColorId(tLRPC$User);
                        if (i == 3) {
                            this.emojiDocumentId = UserObject.getEmojiId(tLRPC$User);
                        }
                    } else if (!messageObject.isFromChannel() || tLRPC$Chat == null) {
                        i4 = 0;
                    } else {
                        i4 = ChatObject.getColorId(tLRPC$Chat);
                        if (i == 3) {
                            this.emojiDocumentId = ChatObject.getEmojiId(tLRPC$Chat);
                        }
                    }
                }
            }
            resolveColor(messageObject, i4, resourcesProvider);
            this.backgroundColor = Theme.multAlpha(this.color1, 0.1f);
            this.nameColor = this.color1;
        } else if (i == 0 && (messageObject.overrideLinkColor >= 0 || ((tLRPC$Message = messageObject.messageOwner) != null && messageObject.replyMessageObject != null && (tLRPC$MessageReplyHeader = tLRPC$Message.reply_to) != null && (((tLRPC$MessageFwdHeader = tLRPC$MessageReplyHeader.reply_from) == null || TextUtils.isEmpty(tLRPC$MessageFwdHeader.from_name)) && (tLRPC$Message2 = (messageObject2 = messageObject.replyMessageObject).messageOwner) != null && tLRPC$Message2.from_id != null && (messageObject2.isFromUser() || DialogObject.isEncryptedDialog(messageObject.getDialogId()) || messageObject.replyMessageObject.isFromChannel()))))) {
            if (SharedConfig.isReplyColorsEnabled) {
                i2 = messageObject.overrideLinkColor;
                if (i2 < 0) {
                    if (DialogObject.isEncryptedDialog(messageObject.replyMessageObject.getDialogId())) {
                        TLRPC$User currentUser2 = messageObject.replyMessageObject.isOutOwner() ? UserConfig.getInstance(messageObject.replyMessageObject.currentAccount).getCurrentUser() : tLRPC$User;
                        if (currentUser2 != null) {
                            colorId = UserObject.getColorId(currentUser2);
                            this.emojiDocumentId = UserObject.getEmojiId(currentUser2);
                            i2 = colorId;
                        }
                        i2 = 0;
                    } else if (messageObject.replyMessageObject.isFromUser()) {
                        TLRPC$User user3 = MessagesController.getInstance(messageObject.currentAccount).getUser(Long.valueOf(messageObject.replyMessageObject.messageOwner.from_id.user_id));
                        if (user3 != null) {
                            colorId = UserObject.getColorId(user3);
                            this.emojiDocumentId = UserObject.getEmojiId(user3);
                            i2 = colorId;
                        }
                        i2 = 0;
                    } else {
                        if (messageObject.replyMessageObject.isFromChannel() && (chat = MessagesController.getInstance(messageObject.currentAccount).getChat(Long.valueOf(messageObject.replyMessageObject.messageOwner.from_id.channel_id))) != null) {
                            colorId = ChatObject.getColorId(chat);
                            this.emojiDocumentId = ChatObject.getEmojiId(chat);
                            i2 = colorId;
                        }
                        i2 = 0;
                    }
                }
            } else {
                i2 = -1;
            }
            resolveColor(messageObject.replyMessageObject, i2, resourcesProvider);
            this.backgroundColor = Theme.multAlpha(this.color1, 0.1f);
            this.nameColor = this.color1;
        } else {
            this.hasColor2 = false;
            this.hasColor3 = false;
            int color3 = Theme.getColor(Theme.key_chat_inReplyLine, resourcesProvider);
            this.color3 = color3;
            this.color2 = color3;
            this.color1 = color3;
            this.backgroundColor = Theme.multAlpha(color3, 0.1f);
            this.nameColor = Theme.getColor(Theme.key_chat_inReplyNameText, resourcesProvider);
        }
        if (messageObject.shouldDrawWithoutBackground()) {
            this.hasColor2 = false;
            this.hasColor3 = false;
            this.color3 = -1;
            this.color2 = -1;
            this.color1 = -1;
            this.backgroundColor = 0;
            this.nameColor = Theme.getColor(Theme.key_chat_stickerReplyNameText, resourcesProvider);
        } else if (messageObject.isOutOwner() || i == 2) {
            if (i == 2 && !messageObject.isOutOwner()) {
                int color4 = Theme.getColor(Theme.key_chat_inCodeBackground, resourcesProvider);
                this.color3 = color4;
                this.color2 = color4;
                this.color1 = color4;
            } else {
                int color5 = Theme.getColor((this.hasColor2 || this.hasColor3) ? Theme.key_chat_outReplyLine2 : Theme.key_chat_outReplyLine, resourcesProvider);
                this.color3 = color5;
                this.color2 = color5;
                this.color1 = color5;
            }
            if (this.hasColor3) {
                this.reversedOut = true;
                this.color1 = Theme.multAlpha(this.color1, 0.2f);
                this.color2 = Theme.multAlpha(this.color2, 0.5f);
            } else if (this.hasColor2) {
                this.reversedOut = true;
                this.color1 = Theme.multAlpha(this.color1, 0.35f);
            }
            this.backgroundColor = Theme.multAlpha(this.color3, isDark ? 0.12f : 0.1f);
            this.nameColor = Theme.getColor(Theme.key_chat_outReplyNameText, resourcesProvider);
        }
        if (i == 0 || i == 3 || i == 4) {
            long j2 = messageObject.overrideLinkEmoji;
            if (j2 != -1) {
                this.emojiDocumentId = j2;
            }
        }
        if (this.emojiDocumentId != 0 && this.emoji == null) {
            this.emoji = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this.parentView, false, AndroidUtilities.m107dp(20), 13);
            View view = this.parentView;
            if (!(view instanceof ChatMessageCell) ? view.isAttachedToWindow() : ((ChatMessageCell) view).isCellAttachedToWindow()) {
                this.emoji.attach();
            }
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.emoji;
        if (swapAnimatedEmojiDrawable != null && swapAnimatedEmojiDrawable.set(this.emojiDocumentId, true)) {
            this.emojiLoaded = false;
        }
        return this.nameColorAnimated.set(this.nameColor);
    }

    public void resetAnimation() {
        this.color1Animated.set(this.color1, true);
        this.color2Animated.set(this.color2, true);
        this.color2Alpha.set(this.hasColor2, true);
        this.nameColorAnimated.set(this.nameColor, true);
        this.backgroundColorAnimated.set(this.backgroundColor, true);
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.emoji;
        if (swapAnimatedEmojiDrawable != null) {
            swapAnimatedEmojiDrawable.resetAnimation();
        }
    }

    public void setLoading(boolean z) {
        LoadingDrawable loadingDrawable;
        if (!z && this.loading) {
            this.loadingT = BitmapDescriptorFactory.HUE_RED;
            LoadingDrawable loadingDrawable2 = this.backgroundLoadingDrawable;
            if (loadingDrawable2 != null) {
                loadingDrawable2.disappear();
            }
        } else if (z && !this.loading && (loadingDrawable = this.backgroundLoadingDrawable) != null) {
            loadingDrawable.resetDisappear();
            this.backgroundLoadingDrawable.reset();
        }
        this.loading = z;
    }

    private void incrementLoadingT() {
        long currentTimeMillis = System.currentTimeMillis();
        float f = this.loadingStateT.set(this.loading);
        this.loadingT += ((float) Math.min(30L, currentTimeMillis - this.lastLoadingTTime)) * f;
        this.loadingTranslationT += ((float) Math.min(30L, currentTimeMillis - this.lastLoadingTTime)) * f;
        this.lastLoadingTTime = currentTimeMillis;
    }

    public void drawLine(Canvas canvas, RectF rectF) {
        drawLine(canvas, rectF, 1.0f);
    }

    public void drawLine(Canvas canvas, RectF rectF, float f) {
        boolean z;
        float height;
        int m59m;
        canvas.save();
        this.clipPath.rewind();
        int floor = (int) Math.floor(SharedConfig.bubbleRadius / 3.0f);
        RectF rectF2 = this.rectF;
        float f2 = rectF.left;
        rectF2.set(f2, rectF.top, Math.max(AndroidUtilities.m107dp(3), AndroidUtilities.m107dp(floor * 2)) + f2, rectF.bottom);
        this.clipPath.addRoundRect(this.rectF, AndroidUtilities.m107dp(floor), AndroidUtilities.m107dp(floor), Path.Direction.CW);
        canvas.clipPath(this.clipPath);
        float f3 = rectF.left;
        canvas.clipRect(f3, rectF.top, AndroidUtilities.m107dp(3) + f3, rectF.bottom);
        this.color1Paint.setColor(Theme.multAlpha(this.color1Animated.set(this.color1), f));
        this.color2Paint.setColor(Theme.multAlpha(this.color2Animated.set(this.color2), f));
        this.color3Paint.setColor(Theme.multAlpha(this.color3Animated.set(this.color3), f));
        float f4 = this.loadingStateT.set(this.loading);
        if (f4 <= BitmapDescriptorFactory.HUE_RED || this.hasColor2) {
            z = false;
        } else {
            canvas.save();
            int alpha = this.color1Paint.getAlpha();
            this.color1Paint.setAlpha((int) (alpha * 0.3f));
            canvas.drawPaint(this.color1Paint);
            this.color1Paint.setAlpha(alpha);
            incrementLoadingT();
            float pow = ((float) Math.pow((this.loadingT / 240.0f) / 4.0f, 0.8500000238418579d)) * 4.0f;
            this.rectF.set(rectF.left, rectF.top + (rectF.height() * AndroidUtilities.lerp((float) BitmapDescriptorFactory.HUE_RED, 1.0f - CubicBezierInterpolator.EASE_IN.getInterpolation(MathUtils.clamp(((Math.max(pow, 0.5f) + 1.5f) % 3.5f) * 0.5f, (float) BitmapDescriptorFactory.HUE_RED, 1.0f)), f4)), rectF.left + AndroidUtilities.m107dp(6), rectF.top + (rectF.height() * AndroidUtilities.lerp(1.0f, 1.0f - CubicBezierInterpolator.EASE_OUT.getInterpolation(MathUtils.clamp((((pow + 1.5f) % 3.5f) - 1.5f) * 0.5f, (float) BitmapDescriptorFactory.HUE_RED, 1.0f)), f4)));
            this.lineClipPath.rewind();
            this.lineClipPath.addRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), Path.Direction.CW);
            canvas.clipPath(this.lineClipPath);
            z = true;
            this.parentView.invalidate();
        }
        canvas.drawPaint(this.color1Paint);
        float f5 = this.color2Alpha.set(this.hasColor2);
        if (f5 > BitmapDescriptorFactory.HUE_RED) {
            canvas.save();
            canvas.translate(rectF.left, rectF.top);
            incrementLoadingT();
            float f6 = this.color3Alpha.set(this.hasColor3);
            if (this.hasColor3) {
                height = rectF.height();
                m59m = ReplyMessageLine$$ExternalSyntheticBackport0.m59m((int) rectF.height(), AndroidUtilities.m108dp(18.99f));
            } else {
                height = rectF.height();
                m59m = ReplyMessageLine$$ExternalSyntheticBackport0.m59m((int) rectF.height(), AndroidUtilities.m108dp(12.66f));
            }
            canvas.translate(BitmapDescriptorFactory.HUE_RED, -(((((this.loadingTranslationT + this.switchStateT.set(this.switchedCount * 425)) + (this.reversedOut ? 100 : 0)) / 1000.0f) * AndroidUtilities.m107dp(30)) % (height - m59m)));
            checkColorPathes(rectF.height() * 2.0f);
            int alpha2 = this.color2Paint.getAlpha();
            this.color2Paint.setAlpha((int) (alpha2 * f5));
            canvas.drawPath(this.color2Path, this.color2Paint);
            this.color2Paint.setAlpha(alpha2);
            int alpha3 = this.color3Paint.getAlpha();
            this.color3Paint.setAlpha((int) (alpha3 * f6));
            canvas.drawPath(this.color3Path, this.color3Paint);
            this.color3Paint.setAlpha(alpha3);
            canvas.restore();
        }
        if (z) {
            canvas.restore();
        }
        canvas.restore();
    }

    public void drawBackground(Canvas canvas, RectF rectF, float f, float f2, float f3, float f4) {
        drawBackground(canvas, rectF, f, f2, f3, f4, false, false);
    }

    public void drawBackground(Canvas canvas, RectF rectF, float f, float f2, float f3, float f4, boolean z, boolean z2) {
        float[] fArr = this.radii;
        float max = Math.max(AndroidUtilities.m107dp((int) Math.floor(SharedConfig.bubbleRadius / 3.0f)), AndroidUtilities.m108dp(f));
        fArr[1] = max;
        fArr[0] = max;
        float[] fArr2 = this.radii;
        float m108dp = AndroidUtilities.m108dp(f2);
        fArr2[3] = m108dp;
        fArr2[2] = m108dp;
        float[] fArr3 = this.radii;
        float m108dp2 = AndroidUtilities.m108dp(f3);
        fArr3[5] = m108dp2;
        fArr3[4] = m108dp2;
        float[] fArr4 = this.radii;
        float max2 = Math.max(AndroidUtilities.m107dp((int) Math.floor(SharedConfig.bubbleRadius / 3.0f)), AndroidUtilities.m108dp(f3));
        fArr4[7] = max2;
        fArr4[6] = max2;
        drawBackground(canvas, rectF, f4, z, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.ReplyMessageLine$IconCoords */
    /* loaded from: classes6.dex */
    public static class IconCoords {

        /* renamed from: a */
        public float f1946a;

        /* renamed from: q */
        public boolean f1947q;

        /* renamed from: s */
        public float f1948s;

        /* renamed from: x */
        public float f1949x;

        /* renamed from: y */
        public float f1950y;

        public IconCoords(float f, float f2, float f3, float f4, boolean z) {
            this(f, f2, f3, f4);
            this.f1947q = z;
        }

        public IconCoords(float f, float f2, float f3, float f4) {
            this.f1949x = f;
            this.f1950y = f2;
            this.f1948s = f3;
            this.f1946a = f4;
        }
    }

    public ReplyMessageLine offsetEmoji(float f, float f2) {
        this.emojiOffsetX = f;
        this.emojiOffsetY = f2;
        return this;
    }

    public void drawBackground(Canvas canvas, RectF rectF, float f, boolean z, boolean z2) {
        if (!z2) {
            this.backgroundPath.rewind();
            this.backgroundPath.addRoundRect(rectF, this.radii, Path.Direction.CW);
            this.backgroundPaint.setColor(this.backgroundColorAnimated.set(this.backgroundColor));
            Paint paint = this.backgroundPaint;
            paint.setAlpha((int) (paint.getAlpha() * f));
            canvas.drawPath(this.backgroundPath, this.backgroundPaint);
        }
        if (this.emoji == null) {
            return;
        }
        float f2 = this.emojiLoadedT.set(isEmojiLoaded());
        if (f2 <= BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        int i = 0;
        if (this.iconCoords == null) {
            this.iconCoords = new IconCoords[]{new IconCoords(4.0f, -6.33f, 1.0f, 1.0f), new IconCoords(30.0f, 3.0f, 0.78f, 0.9f), new IconCoords(46.0f, -17.0f, 0.6f, 0.6f), new IconCoords(69.66f, -0.666f, 0.87f, 0.7f), new IconCoords(98.0f, -12.6f, 1.03f, 0.3f), new IconCoords(51.0f, 24.0f, 1.0f, 0.5f), new IconCoords(6.33f, 20.0f, 0.77f, 0.7f), new IconCoords(-19.0f, 12.0f, 0.8f, 0.6f, true), new IconCoords(-22.0f, 36.0f, 0.7f, 0.5f, true)};
        }
        canvas.save();
        canvas.clipRect(rectF);
        canvas.translate(this.emojiOffsetX, this.emojiOffsetY);
        float max = Math.max(rectF.right - AndroidUtilities.m107dp(15), rectF.centerX());
        if (z) {
            max -= AndroidUtilities.m107dp(12);
        }
        float min = Math.min(rectF.centerY(), rectF.top + AndroidUtilities.m107dp(21));
        this.emoji.setColor(Integer.valueOf(getColor()));
        this.emoji.setAlpha((int) (255.0f * f * (rectF.width() < ((float) AndroidUtilities.m107dp(140)) ? 0.3f : 0.5f)));
        while (true) {
            IconCoords[] iconCoordsArr = this.iconCoords;
            if (i < iconCoordsArr.length) {
                IconCoords iconCoords = iconCoordsArr[i];
                if (!iconCoords.f1947q || z) {
                    this.emoji.setAlpha((int) (iconCoords.f1946a * 76.5f));
                    float m108dp = max - AndroidUtilities.m108dp(iconCoords.f1949x);
                    float m108dp2 = AndroidUtilities.m108dp(iconCoords.f1950y) + min;
                    float m107dp = AndroidUtilities.m107dp(10) * iconCoords.f1948s * f2;
                    this.emoji.setBounds((int) (m108dp - m107dp), (int) (m108dp2 - m107dp), (int) (m108dp + m107dp), (int) (m108dp2 + m107dp));
                    this.emoji.draw(canvas);
                }
                i++;
            } else {
                canvas.restore();
                return;
            }
        }
    }

    private boolean isEmojiLoaded() {
        if (this.emojiLoaded) {
            return true;
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.emoji;
        if (swapAnimatedEmojiDrawable == null || !(swapAnimatedEmojiDrawable.getDrawable() instanceof AnimatedEmojiDrawable)) {
            return false;
        }
        AnimatedEmojiDrawable animatedEmojiDrawable = (AnimatedEmojiDrawable) this.emoji.getDrawable();
        if (animatedEmojiDrawable.getImageReceiver() == null || !animatedEmojiDrawable.getImageReceiver().hasImageLoaded()) {
            return false;
        }
        this.emojiLoaded = true;
        return true;
    }

    public void drawLoadingBackground(Canvas canvas, RectF rectF, float f, float f2, float f3, float f4) {
        LoadingDrawable loadingDrawable;
        float[] fArr = this.radii;
        float max = Math.max(AndroidUtilities.m107dp((int) Math.floor(SharedConfig.bubbleRadius / 3.0f)), AndroidUtilities.m108dp(f));
        fArr[1] = max;
        fArr[0] = max;
        float[] fArr2 = this.radii;
        float m108dp = AndroidUtilities.m108dp(f2);
        fArr2[3] = m108dp;
        fArr2[2] = m108dp;
        float[] fArr3 = this.radii;
        float m108dp2 = AndroidUtilities.m108dp(f3);
        fArr3[5] = m108dp2;
        fArr3[4] = m108dp2;
        float[] fArr4 = this.radii;
        float max2 = Math.max(AndroidUtilities.m107dp((int) Math.floor(SharedConfig.bubbleRadius / 3.0f)), AndroidUtilities.m108dp(f3));
        fArr4[7] = max2;
        fArr4[6] = max2;
        if (this.loading || ((loadingDrawable = this.backgroundLoadingDrawable) != null && loadingDrawable.isDisappearing())) {
            if (this.backgroundLoadingDrawable == null) {
                LoadingDrawable loadingDrawable2 = new LoadingDrawable();
                this.backgroundLoadingDrawable = loadingDrawable2;
                loadingDrawable2.setAppearByGradient(true);
                this.backgroundLoadingDrawable.setGradientScale(3.5f);
                this.backgroundLoadingDrawable.setSpeed(0.5f);
            }
            this.backgroundLoadingDrawable.setColors(Theme.multAlpha(this.color1, 0.1f), Theme.multAlpha(this.color1, 0.3f), Theme.multAlpha(this.color1, 0.3f), Theme.multAlpha(this.color1, 1.25f));
            this.backgroundLoadingDrawable.setBounds(rectF);
            this.backgroundLoadingDrawable.setRadii(this.radii);
            this.backgroundLoadingDrawable.strokePaint.setStrokeWidth(AndroidUtilities.m107dp(1));
            this.backgroundLoadingDrawable.setAlpha((int) (f4 * 255.0f));
            this.backgroundLoadingDrawable.draw(canvas);
            this.parentView.invalidate();
            return;
        }
        LoadingDrawable loadingDrawable3 = this.backgroundLoadingDrawable;
        if (loadingDrawable3 != null) {
            loadingDrawable3.reset();
        }
    }

    private void checkColorPathes(float f) {
        if (Math.abs(this.lastHeight - f) > 3.0f || this.lastHasColor3 != this.hasColor3) {
            float dpf2 = AndroidUtilities.dpf2(3.0f);
            float dpf22 = AndroidUtilities.dpf2(6.33f);
            float dpf23 = AndroidUtilities.dpf2(3.0f);
            float dpf24 = AndroidUtilities.dpf2(3.33f);
            float f2 = dpf24 + dpf23;
            this.color2Path.rewind();
            float f3 = f2;
            while (f3 < f) {
                float f4 = dpf2 + 1.0f;
                this.color2Path.moveTo(f4, f3 - 1.0f);
                float f5 = f3 + dpf22;
                this.color2Path.lineTo(f4, f5);
                this.color2Path.lineTo(BitmapDescriptorFactory.HUE_RED, f5 + dpf23);
                this.color2Path.lineTo(BitmapDescriptorFactory.HUE_RED, f3 + dpf23);
                this.color2Path.close();
                f3 += dpf22 + dpf23 + dpf24;
                if (this.hasColor3) {
                    f3 += dpf22;
                }
            }
            if (this.hasColor3) {
                this.color3Path.rewind();
                for (float f6 = f2 + dpf22; f6 < f; f6 += dpf22 + dpf23 + dpf24 + dpf22) {
                    float f7 = dpf2 + 1.0f;
                    this.color3Path.moveTo(f7, f6 - 1.0f);
                    float f8 = f6 + dpf22;
                    this.color3Path.lineTo(f7, f8);
                    this.color3Path.lineTo(BitmapDescriptorFactory.HUE_RED, f8 + dpf23);
                    this.color3Path.lineTo(BitmapDescriptorFactory.HUE_RED, f6 + dpf23);
                    this.color3Path.close();
                }
            }
            this.lastHeight = f;
            this.lastHasColor3 = this.hasColor3;
        }
    }
}
