package org.telegram.p043ui.Cells;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.VelocityTracker;
import androidx.core.graphics.ColorUtils;
import com.google.android.exoplayer2.extractor.p015ts.TsExtractor;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.ButtonBounce;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.LoadingDrawable;
import org.telegram.p043ui.Components.Scroller;
import org.telegram.p043ui.Components.StaticLayoutEx;
import org.telegram.p043ui.Components.Text;
import org.telegram.tgnet.TLRPC$Chat;
/* renamed from: org.telegram.ui.Cells.ChannelRecommendationsCell */
/* loaded from: classes5.dex */
public class ChannelRecommendationsCell {
    private ChatMessageCell cell;
    private float channelsScrollWidth;
    public long chatId;
    private final ButtonBounce closeBounce;
    private int currentAccount;
    private long dialogId;
    private Text headerText;
    private final AnimatedFloat loadingAlpha;
    private LoadingDrawable loadingDrawable;
    private Runnable longPressRunnable;
    private ChannelBlock longPressedBlock;

    /* renamed from: lx */
    private float f1796lx;
    private boolean maybeScrolling;
    private MessageObject msg;
    private float scrollX;
    private final Scroller scroller;
    private boolean scrolling;
    private StaticLayout serviceText;
    private int serviceTextHeight;
    private float serviceTextLeft;
    private float serviceTextRight;
    private VelocityTracker velocityTracker;
    private final TextPaint serviceTextPaint = new TextPaint(1);
    private final Paint backgroundPaint = new Paint(1);
    private final Path backgroundPath = new Path();
    private float lastBackgroundPathExpandT = -1.0f;
    private int blockWidth = AndroidUtilities.m107dp(66);
    private final ArrayList<ChannelBlock> channels = new ArrayList<>();
    private final Path loadingPath = new Path();
    private final RectF backgroundBounds = new RectF();
    private final RectF closeBounds = new RectF();
    private final Paint closePaint = new Paint(1);
    private boolean loading = true;

    public ChannelRecommendationsCell(ChatMessageCell chatMessageCell) {
        this.cell = chatMessageCell;
        this.scroller = new Scroller(chatMessageCell.getContext());
        this.closeBounce = new ButtonBounce(chatMessageCell);
        this.loadingAlpha = new AnimatedFloat(chatMessageCell, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
    }

    public void setMessageObject(MessageObject messageObject) {
        StaticLayout staticLayout;
        int i;
        int i2;
        this.currentAccount = messageObject.currentAccount;
        this.msg = messageObject;
        this.dialogId = messageObject.getDialogId();
        MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-this.dialogId));
        this.chatId = -this.dialogId;
        this.serviceTextPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.serviceTextPaint.setTextSize(AndroidUtilities.m107dp(14));
        this.serviceTextPaint.setColor(this.cell.getThemedColor(Theme.key_chat_serviceText));
        this.serviceText = new StaticLayout(LocaleController.getString(C3632R.string.ChannelJoined), this.serviceTextPaint, this.msg.getMaxMessageTextWidth(), Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        this.serviceTextLeft = staticLayout.getWidth();
        this.serviceTextRight = BitmapDescriptorFactory.HUE_RED;
        for (int i3 = 0; i3 < this.serviceText.getLineCount(); i3++) {
            this.serviceTextLeft = Math.min(this.serviceTextLeft, this.serviceText.getLineLeft(i3));
            this.serviceTextRight = Math.max(this.serviceTextRight, this.serviceText.getLineRight(i3));
        }
        this.serviceTextHeight = this.serviceText.getHeight();
        this.closePaint.setStyle(Paint.Style.STROKE);
        this.closePaint.setStrokeCap(Paint.Cap.ROUND);
        this.closePaint.setStrokeJoin(Paint.Join.ROUND);
        this.closePaint.setColor(this.cell.getThemedColor(Theme.key_dialogEmptyImage));
        this.cell.totalHeight = AndroidUtilities.m108dp(14.66f) + this.serviceTextHeight;
        if (this.headerText == null) {
            this.headerText = new Text(LocaleController.getString(C3632R.string.SimilarChannels), 14.0f, AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM)).hackClipBounds();
        }
        for (int i4 = 0; i4 < this.channels.size(); i4++) {
            this.channels.get(i4).detach();
        }
        this.channels.clear();
        MessagesController.ChannelRecommendations channelRecommendations = MessagesController.getInstance(this.currentAccount).getChannelRecommendations(-this.dialogId);
        ArrayList arrayList = (channelRecommendations == null || channelRecommendations.chats == null) ? new ArrayList() : new ArrayList(channelRecommendations.chats);
        int i5 = 0;
        while (i5 < arrayList.size()) {
            if (!ChatObject.isNotInChat((TLRPC$Chat) arrayList.get(i5))) {
                arrayList.remove(i5);
                i5--;
            }
            i5++;
        }
        boolean z = arrayList.isEmpty() || (!UserConfig.getInstance(this.currentAccount).isPremium() && arrayList.size() == 1);
        this.loading = z;
        if (!z) {
            int size = arrayList.size();
            if (!UserConfig.getInstance(this.currentAccount).isPremium() && channelRecommendations.more > 0) {
                size = Math.min(size - 1, MessagesController.getInstance(this.currentAccount).recommendedChannelsLimitDefault);
            }
            int min = Math.min(size, 10);
            for (int i6 = 0; i6 < min; i6++) {
                this.channels.add(new ChannelBlock(this.currentAccount, this.cell, (TLRPC$Chat) arrayList.get(i6)));
            }
            if (min < arrayList.size()) {
                TLRPC$Chat[] tLRPC$ChatArr = new TLRPC$Chat[3];
                TLRPC$Chat tLRPC$Chat = null;
                tLRPC$ChatArr[0] = (min < 0 || min >= arrayList.size()) ? null : (TLRPC$Chat) arrayList.get(min);
                tLRPC$ChatArr[1] = (min < 0 || (i2 = min + 1) >= arrayList.size()) ? null : (TLRPC$Chat) arrayList.get(i2);
                if (min >= 0 && (i = min + 2) < arrayList.size()) {
                    tLRPC$Chat = (TLRPC$Chat) arrayList.get(i);
                }
                tLRPC$ChatArr[2] = tLRPC$Chat;
                this.channels.add(new ChannelBlock(this.currentAccount, this.cell, tLRPC$ChatArr, (arrayList.size() + channelRecommendations.more) - min));
            }
        }
        if (isExpanded()) {
            this.cell.totalHeight += AndroidUtilities.m107dp(144);
            this.backgroundPaint.setColor(this.cell.getThemedColor(Theme.key_chat_inBubble));
        }
        float size2 = (this.blockWidth * this.channels.size()) + (AndroidUtilities.m107dp(9) * (this.channels.size() - 1));
        this.channelsScrollWidth = size2;
        this.scrollX = Utilities.clamp(this.scrollX, size2, (float) BitmapDescriptorFactory.HUE_RED);
    }

    public boolean isExpanded() {
        return this.msg.channelJoinedExpanded && this.channels.size() > 0;
    }

    public void update() {
        MessageObject messageObject = this.msg;
        if (messageObject == null) {
            return;
        }
        setMessageObject(messageObject);
        this.cell.invalidateOutbounds();
    }

    public void onAttachedToWindow() {
        for (int i = 0; i < this.channels.size(); i++) {
            this.channels.get(i).attach();
        }
    }

    public void onDetachedFromWindow() {
        for (int i = 0; i < this.channels.size(); i++) {
            this.channels.get(i).detach();
        }
    }

    public void draw(Canvas canvas) {
        float f;
        float f2;
        int m107dp;
        if (this.msg == null || this.cell == null) {
            return;
        }
        computeScroll();
        if (this.serviceText != null) {
            canvas.save();
            float width = (this.cell.getWidth() - this.serviceText.getWidth()) / 2.0f;
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set((this.serviceTextLeft + width) - AndroidUtilities.m108dp(8.66f), AndroidUtilities.m107dp(4), this.serviceTextRight + width + AndroidUtilities.m108dp(8.66f), AndroidUtilities.m108dp(10.66f) + this.serviceTextHeight);
            this.cell.drawServiceBackground(canvas, rectF, AndroidUtilities.m107dp(11), 1.0f);
            canvas.translate(width, AndroidUtilities.m108dp(7.33f));
            this.serviceText.draw(canvas);
            canvas.restore();
            f = AndroidUtilities.m108dp(10.66f) + this.serviceTextHeight + BitmapDescriptorFactory.HUE_RED;
        } else {
            f = 0.0f;
        }
        if (this.cell.transitionParams.animateRecommendationsExpanded) {
            if (isExpanded()) {
                f2 = this.cell.transitionParams.animateChangeProgress;
            } else {
                f2 = 1.0f - this.cell.transitionParams.animateChangeProgress;
            }
        } else {
            f2 = isExpanded() ? 1.0f : 0.0f;
        }
        float clamp = Utilities.clamp((f2 - 0.3f) / 0.7f, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
        if (clamp > BitmapDescriptorFactory.HUE_RED) {
            int width2 = this.cell.getWidth() - AndroidUtilities.m107dp(18);
            this.blockWidth = (int) (width2 > AndroidUtilities.m107dp(441) ? AndroidUtilities.m107dp(66) : Math.max((width2 / 4.5f) - AndroidUtilities.m107dp(9), AndroidUtilities.m107dp(66)));
            this.channelsScrollWidth = (m107dp * this.channels.size()) + (AndroidUtilities.m107dp(9) * (this.channels.size() - 1));
            int min = (int) Math.min(width2, this.blockWidth * 6.5f);
            this.backgroundBounds.set((this.cell.getWidth() - min) / 2.0f, AndroidUtilities.m107dp(10) + f, (this.cell.getWidth() + min) / 2.0f, f + AndroidUtilities.m107dp((int) TsExtractor.TS_STREAM_TYPE_DTS));
            this.scrollX = Utilities.clamp(this.scrollX, this.channelsScrollWidth - (this.backgroundBounds.width() - AndroidUtilities.m107dp(14)), (float) BitmapDescriptorFactory.HUE_RED);
            checkBackgroundPath(clamp);
            canvas.save();
            float f3 = (0.6f * clamp) + 0.4f;
            canvas.scale(f3, f3, this.backgroundBounds.centerX(), this.backgroundBounds.top - AndroidUtilities.m107dp(6));
            this.backgroundPaint.setAlpha((int) (clamp * 255.0f));
            this.backgroundPaint.setShadowLayer(AndroidUtilities.dpf2(1.0f), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dpf2(0.33f), ColorUtils.setAlphaComponent(-16777216, (int) (27.0f * clamp)));
            canvas.drawPath(this.backgroundPath, this.backgroundPaint);
            canvas.clipPath(this.backgroundPath);
            Text text = this.headerText;
            if (text != null) {
                text.draw(canvas, AndroidUtilities.m107dp(17) + this.backgroundBounds.left, AndroidUtilities.m107dp(20) + this.backgroundBounds.top, this.cell.getThemedColor(Theme.key_windowBackgroundWhiteBlackText), clamp);
            }
            float f4 = this.loadingAlpha.set(this.loading);
            float m107dp2 = (this.backgroundBounds.left + AndroidUtilities.m107dp(7)) - this.scrollX;
            float m107dp3 = this.blockWidth + AndroidUtilities.m107dp(9);
            int floor = (int) Math.floor(((this.backgroundBounds.left - min) - m107dp2) / m107dp3);
            int ceil = (int) Math.ceil((this.backgroundBounds.right - m107dp2) / m107dp3);
            if (f4 < 1.0f) {
                for (int max = Math.max(0, floor); max < Math.min(ceil + 1, this.channels.size()); max++) {
                    ChannelBlock channelBlock = this.channels.get(max);
                    canvas.save();
                    canvas.translate((max * m107dp3) + m107dp2, this.backgroundBounds.bottom - ChannelBlock.height());
                    float f5 = (1.0f - f4) * clamp;
                    channelBlock.draw(canvas, this.blockWidth, f5);
                    channelBlock.drawText(canvas, this.blockWidth, f5);
                    canvas.restore();
                }
            }
            if (f4 > BitmapDescriptorFactory.HUE_RED) {
                this.loadingPath.rewind();
                for (int max2 = Math.max(0, floor); max2 < ceil; max2++) {
                    ChannelBlock.fillPath(this.loadingPath, this.blockWidth, (max2 * m107dp3) + m107dp2);
                }
                if (this.loadingDrawable == null) {
                    LoadingDrawable loadingDrawable = new LoadingDrawable();
                    this.loadingDrawable = loadingDrawable;
                    loadingDrawable.usePath(this.loadingPath);
                    this.loadingDrawable.setAppearByGradient(false);
                }
                int themedColor = this.cell.getThemedColor(Theme.key_windowBackgroundWhiteBlackText);
                this.loadingDrawable.setColors(Theme.multAlpha(themedColor, 0.05f), Theme.multAlpha(themedColor, 0.15f), Theme.multAlpha(themedColor, 0.1f), Theme.multAlpha(themedColor, 0.3f));
                this.loadingDrawable.setGradientScale(1.5f);
                this.loadingDrawable.setAlpha((int) (f4 * 255.0f));
                canvas.save();
                canvas.translate(BitmapDescriptorFactory.HUE_RED, this.backgroundBounds.bottom - ChannelBlock.height());
                this.loadingDrawable.draw(canvas);
                canvas.restore();
            }
            float scale = this.closeBounce.getScale(0.02f);
            float m107dp4 = this.backgroundBounds.right - AndroidUtilities.m107dp(20);
            float m107dp5 = this.backgroundBounds.top + AndroidUtilities.m107dp(20);
            canvas.save();
            canvas.scale(scale, scale, m107dp4, m107dp5);
            this.closePaint.setStrokeWidth(AndroidUtilities.m108dp(1.33f));
            canvas.drawLine(m107dp4 - AndroidUtilities.m107dp(4), m107dp5 - AndroidUtilities.m107dp(4), m107dp4 + AndroidUtilities.m107dp(4), m107dp5 + AndroidUtilities.m107dp(4), this.closePaint);
            canvas.drawLine(m107dp4 - AndroidUtilities.m107dp(4), m107dp5 + AndroidUtilities.m107dp(4), m107dp4 + AndroidUtilities.m107dp(4), m107dp5 - AndroidUtilities.m107dp(4), this.closePaint);
            this.closeBounds.set(m107dp4 - AndroidUtilities.m107dp(12), m107dp5 - AndroidUtilities.m107dp(12), m107dp4 + AndroidUtilities.m107dp(12), m107dp5 + AndroidUtilities.m107dp(12));
            canvas.restore();
            canvas.restore();
        }
    }

    private void checkBackgroundPath(float f) {
        if (Math.abs(f - this.lastBackgroundPathExpandT) < 0.001f) {
            return;
        }
        float m108dp = AndroidUtilities.m108dp(16.66f) * 2.0f;
        float f2 = this.backgroundBounds.bottom;
        this.backgroundPath.rewind();
        RectF rectF = AndroidUtilities.rectTmp;
        RectF rectF2 = this.backgroundBounds;
        float f3 = rectF2.left;
        float f4 = rectF2.top;
        rectF.set(f3, f4, f3 + m108dp, f4 + m108dp);
        this.backgroundPath.arcTo(rectF, -90.0f, -90.0f);
        float f5 = this.backgroundBounds.left;
        float f6 = f2 - m108dp;
        rectF.set(f5, f6, f5 + m108dp, f2);
        this.backgroundPath.arcTo(rectF, -180.0f, -90.0f);
        float f7 = this.backgroundBounds.right;
        rectF.set(f7 - m108dp, f6, f7, f2);
        this.backgroundPath.arcTo(rectF, -270.0f, -90.0f);
        RectF rectF3 = this.backgroundBounds;
        float f8 = rectF3.right;
        float f9 = rectF3.top;
        rectF.set(f8 - m108dp, f9, f8, m108dp + f9);
        this.backgroundPath.arcTo(rectF, BitmapDescriptorFactory.HUE_RED, -90.0f);
        this.backgroundPath.lineTo(this.backgroundBounds.centerX() + AndroidUtilities.m107dp(8), this.backgroundBounds.top);
        this.backgroundPath.lineTo(this.backgroundBounds.centerX(), this.backgroundBounds.top - AndroidUtilities.m107dp(6));
        this.backgroundPath.lineTo(this.backgroundBounds.centerX() - AndroidUtilities.m107dp(8), this.backgroundBounds.top);
        this.backgroundPath.close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Cells.ChannelRecommendationsCell$ChannelBlock */
    /* loaded from: classes5.dex */
    public static class ChannelBlock {
        public final AvatarDrawable[] avatarDrawable;
        public final ImageReceiver[] avatarImageReceiver;
        public final ButtonBounce bounce;
        private final ChatMessageCell cell;
        public final TLRPC$Chat chat;
        public final boolean isLock;
        private final CharSequence name;
        private StaticLayout nameText;
        private final TextPaint nameTextPaint;
        private final Paint subscribersBackgroundDimPaint;
        private final Paint subscribersBackgroundPaint;
        private int subscribersBackgroundPaintBitmapHeight;
        private int subscribersBackgroundPaintBitmapWidth;
        private Matrix subscribersBackgroundPaintMatrix;
        private BitmapShader subscribersBackgroundPaintShader;
        private boolean subscribersColorSet;
        private boolean subscribersColorSetFromThumb;
        private final Drawable subscribersDrawable;
        private final Paint subscribersStrokePaint;
        private final Text subscribersText;

        public static int height() {
            return AndroidUtilities.m107dp(99);
        }

        public static int avatarSize() {
            return AndroidUtilities.m107dp(54);
        }

        public ChannelBlock(int i, final ChatMessageCell chatMessageCell, TLRPC$Chat[] tLRPC$ChatArr, int i2) {
            this.nameTextPaint = new TextPaint(1);
            this.subscribersStrokePaint = new Paint(1);
            this.subscribersBackgroundPaint = new Paint(1);
            this.subscribersBackgroundDimPaint = new Paint(1);
            this.cell = chatMessageCell;
            this.chat = tLRPC$ChatArr[0];
            this.bounce = new ButtonBounce(this, chatMessageCell) { // from class: org.telegram.ui.Cells.ChannelRecommendationsCell.ChannelBlock.1
                @Override // org.telegram.p043ui.Components.ButtonBounce
                public void invalidate() {
                    chatMessageCell.invalidateOutbounds();
                }
            };
            this.avatarImageReceiver = new ImageReceiver[3];
            this.avatarDrawable = new AvatarDrawable[3];
            for (int i3 = 0; i3 < 3; i3++) {
                this.avatarImageReceiver[i3] = new ImageReceiver(chatMessageCell);
                this.avatarImageReceiver[i3].setParentView(chatMessageCell);
                this.avatarImageReceiver[i3].setRoundRadius(avatarSize());
                this.avatarDrawable[i3] = new AvatarDrawable();
                if (i3 < tLRPC$ChatArr.length && tLRPC$ChatArr[i3] != null) {
                    this.avatarDrawable[i3].setInfo(i, tLRPC$ChatArr[i3]);
                    this.avatarImageReceiver[i3].setForUserOrChat(tLRPC$ChatArr[i3], this.avatarDrawable[i3]);
                } else {
                    final Paint paint = new Paint(1);
                    final int blendOver = Theme.blendOver(chatMessageCell.getThemedColor(Theme.key_chat_inBubble), Theme.multAlpha(chatMessageCell.getThemedColor(Theme.key_windowBackgroundWhiteGrayText), 0.5f));
                    paint.setColor(blendOver);
                    this.avatarImageReceiver[i3].setImageBitmap(new Drawable(this) { // from class: org.telegram.ui.Cells.ChannelRecommendationsCell.ChannelBlock.2
                        @Override // android.graphics.drawable.Drawable
                        public int getOpacity() {
                            return -2;
                        }

                        @Override // android.graphics.drawable.Drawable
                        public void draw(Canvas canvas) {
                            canvas.drawCircle(getBounds().centerX(), getBounds().centerY(), getBounds().width() / 2.0f, paint);
                        }

                        @Override // android.graphics.drawable.Drawable
                        public void setAlpha(int i4) {
                            paint.setAlpha(Theme.multAlpha(blendOver, i4 / 255.0f));
                        }

                        @Override // android.graphics.drawable.Drawable
                        public void setColorFilter(ColorFilter colorFilter) {
                            paint.setColorFilter(colorFilter);
                        }
                    });
                }
            }
            if (chatMessageCell.isCellAttachedToWindow()) {
                attach();
            }
            this.nameTextPaint.setTextSize(AndroidUtilities.m107dp(11));
            boolean isPremium = UserConfig.getInstance(chatMessageCell.currentAccount).isPremium();
            this.name = LocaleController.getString(isPremium ? C3632R.string.MoreSimilar : C3632R.string.UnlockSimilar);
            this.subscribersStrokePaint.setStyle(Paint.Style.STROKE);
            this.isLock = true;
            this.subscribersDrawable = isPremium ? null : chatMessageCell.getContext().getResources().getDrawable(C3632R.C3634drawable.mini_switch_lock).mutate();
            TLRPC$Chat tLRPC$Chat = this.chat;
            if (tLRPC$Chat == null || tLRPC$Chat.participants_count <= 1) {
                this.subscribersText = null;
                return;
            }
            this.subscribersText = new Text("+" + i2, 9.33f, AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        }

        private void checkNameText(int i) {
            StaticLayout staticLayout = this.nameText;
            if (staticLayout == null || staticLayout.getWidth() != i) {
                if (Build.VERSION.SDK_INT >= 23) {
                    CharSequence charSequence = this.name;
                    this.nameText = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.nameTextPaint, i).setMaxLines(2).setEllipsize(TextUtils.TruncateAt.END).setBreakStrategy(0).setAlignment(Layout.Alignment.ALIGN_CENTER).build();
                    return;
                }
                this.nameText = StaticLayoutEx.createStaticLayout(this.name, this.nameTextPaint, i, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false, TextUtils.TruncateAt.END, i - AndroidUtilities.m107dp(16), 2, false);
            }
        }

        public ChannelBlock(int i, final ChatMessageCell chatMessageCell, TLRPC$Chat tLRPC$Chat) {
            int i2;
            TextPaint textPaint = new TextPaint(1);
            this.nameTextPaint = textPaint;
            this.subscribersStrokePaint = new Paint(1);
            this.subscribersBackgroundPaint = new Paint(1);
            this.subscribersBackgroundDimPaint = new Paint(1);
            this.cell = chatMessageCell;
            this.chat = tLRPC$Chat;
            this.bounce = new ButtonBounce(this, chatMessageCell) { // from class: org.telegram.ui.Cells.ChannelRecommendationsCell.ChannelBlock.3
                @Override // org.telegram.p043ui.Components.ButtonBounce
                public void invalidate() {
                    chatMessageCell.invalidateOutbounds();
                }
            };
            this.avatarImageReceiver = r2;
            ImageReceiver[] imageReceiverArr = {new ImageReceiver(chatMessageCell)};
            imageReceiverArr[0].setParentView(chatMessageCell);
            imageReceiverArr[0].setRoundRadius(avatarSize());
            if (chatMessageCell.isCellAttachedToWindow()) {
                attach();
            }
            this.avatarDrawable = r3;
            AvatarDrawable[] avatarDrawableArr = {new AvatarDrawable()};
            avatarDrawableArr[0].setInfo(i, tLRPC$Chat);
            imageReceiverArr[0].setForUserOrChat(tLRPC$Chat, avatarDrawableArr[0]);
            textPaint.setTextSize(AndroidUtilities.m107dp(11));
            String str = tLRPC$Chat != null ? tLRPC$Chat.title : "";
            try {
                str = Emoji.replaceEmoji(str, textPaint.getFontMetricsInt(), false);
            } catch (Exception unused) {
            }
            this.name = str;
            this.subscribersStrokePaint.setStyle(Paint.Style.STROKE);
            this.isLock = false;
            this.subscribersDrawable = chatMessageCell.getContext().getResources().getDrawable(C3632R.C3634drawable.mini_reply_user).mutate();
            if (tLRPC$Chat == null || (i2 = tLRPC$Chat.participants_count) <= 1) {
                this.subscribersText = null;
            } else {
                this.subscribersText = new Text(LocaleController.formatShortNumber(i2, null), 9.33f, AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            }
        }

        public void drawText(Canvas canvas, int i, float f) {
            TextPaint textPaint;
            canvas.save();
            float scale = this.bounce.getScale(0.075f);
            float f2 = i;
            canvas.scale(scale, scale, f2 / 2.0f, height() / 2.0f);
            checkNameText(i);
            if (this.nameText != null) {
                canvas.save();
                canvas.translate((i - this.nameText.getWidth()) / 2.0f, AndroidUtilities.m108dp(66.33f));
                if (this.avatarImageReceiver.length <= 1) {
                    this.nameTextPaint.setColor(this.cell.getThemedColor(Theme.key_chat_messageTextIn));
                } else {
                    this.nameTextPaint.setColor(this.cell.getThemedColor(Theme.key_windowBackgroundWhiteGrayText));
                }
                this.nameTextPaint.setAlpha((int) (textPaint.getAlpha() * f));
                this.nameText.draw(canvas);
                canvas.restore();
            }
            Text text = this.subscribersText;
            if (text != null) {
                text.ellipsize(i - AndroidUtilities.m107dp(32));
                float m107dp = (f2 - (AndroidUtilities.m107dp(this.subscribersDrawable != null ? 17 : 8) + this.subscribersText.getWidth())) / 2.0f;
                float m108dp = AndroidUtilities.m108dp(4.165f) + avatarSize();
                Drawable drawable = this.subscribersDrawable;
                if (drawable != null) {
                    boolean z = this.isLock;
                    float f3 = BitmapDescriptorFactory.HUE_RED;
                    int width = (int) ((z ? this.subscribersText.getWidth() + AndroidUtilities.m108dp(1.33f) : 0.0f) + m107dp + AndroidUtilities.m107dp(3));
                    int intrinsicHeight = (int) (m108dp - ((this.subscribersDrawable.getIntrinsicHeight() / 2.0f) * 0.625f));
                    if (this.isLock) {
                        f3 = this.subscribersText.getWidth() + AndroidUtilities.m108dp(1.33f);
                    }
                    drawable.setBounds(width, intrinsicHeight, (int) (f3 + m107dp + AndroidUtilities.m107dp(3) + (this.subscribersDrawable.getIntrinsicWidth() * 0.625f)), (int) (((this.subscribersDrawable.getIntrinsicHeight() / 2.0f) * 0.625f) + m108dp));
                    this.subscribersDrawable.draw(canvas);
                }
                this.subscribersText.draw(canvas, m107dp + AndroidUtilities.m108dp(!this.isLock ? 12.66f : 4.0f), m108dp, -1, f);
            }
            canvas.restore();
        }

        public void draw(Canvas canvas, int i, float f) {
            float[] fArr;
            float[] fArr2;
            canvas.save();
            float scale = this.bounce.getScale(0.075f);
            float f2 = i;
            float f3 = f2 / 2.0f;
            canvas.scale(scale, scale, f3, height() / 2.0f);
            this.subscribersStrokePaint.setStrokeWidth(AndroidUtilities.m108dp(2.66f));
            this.subscribersStrokePaint.setColor(this.cell.getThemedColor(Theme.key_chat_inBubble));
            for (int length = this.avatarImageReceiver.length - 1; length >= 0; length--) {
                float m107dp = (f3 - ((AndroidUtilities.m107dp(7) * (this.avatarImageReceiver.length - 1)) / 2.0f)) + (AndroidUtilities.m107dp(7) * length);
                float m107dp2 = AndroidUtilities.m107dp(10) + (avatarSize() / 2.0f);
                if (this.avatarImageReceiver.length > 1) {
                    canvas.drawCircle(m107dp, m107dp2, avatarSize() / 2.0f, this.subscribersStrokePaint);
                }
                this.avatarImageReceiver[length].setImageCoords(m107dp - (avatarSize() / 2.0f), m107dp2 - (avatarSize() / 2.0f), avatarSize(), avatarSize());
                this.avatarImageReceiver[length].setAlpha(f);
                this.avatarImageReceiver[length].draw(canvas);
            }
            Text text = this.subscribersText;
            if (text != null) {
                text.ellipsize(i - AndroidUtilities.m107dp(32));
                float m107dp3 = AndroidUtilities.m107dp(this.subscribersDrawable != null ? 17 : 8) + this.subscribersText.getWidth();
                float m107dp4 = AndroidUtilities.m107dp(10) + avatarSize() + AndroidUtilities.m107dp(1);
                AndroidUtilities.rectTmp.set((f2 - m107dp3) / 2.0f, m107dp4 - AndroidUtilities.m108dp(14.33f), (f2 + m107dp3) / 2.0f, m107dp4);
                boolean z = this.subscribersColorSet;
                if (!z && this.isLock) {
                    this.subscribersBackgroundPaint.setColor(Theme.blendOver(this.cell.getThemedColor(Theme.key_chat_inBubble), Theme.multAlpha(this.cell.getThemedColor(Theme.key_windowBackgroundWhiteGrayText), 0.85f)));
                    this.subscribersColorSet = true;
                } else if (!z && (this.avatarImageReceiver[0].getStaticThumb() instanceof BitmapDrawable)) {
                    Bitmap bitmap = ((BitmapDrawable) this.avatarImageReceiver[0].getStaticThumb()).getBitmap();
                    try {
                        fArr2 = new float[3];
                        ColorUtils.colorToHSL(bitmap.getPixel(bitmap.getWidth() / 2, bitmap.getHeight() - 2), fArr2);
                    } catch (Exception e) {
                        FileLog.m102e(e);
                    }
                    if (fArr2[1] > 0.05f && fArr2[1] < 0.95f && fArr2[2] > 0.02f && fArr2[2] < 0.98f) {
                        fArr2[1] = 0.25f;
                        fArr2[2] = Theme.isCurrentThemeDark() ? 0.35f : 0.65f;
                        this.subscribersBackgroundPaint.setColor(ColorUtils.HSLToColor(fArr2));
                        this.subscribersColorSet = true;
                    }
                    fArr2[1] = 0.0f;
                    fArr2[2] = Theme.isCurrentThemeDark() ? 0.38f : 0.7f;
                    this.subscribersBackgroundPaint.setColor(ColorUtils.HSLToColor(fArr2));
                    this.subscribersColorSet = true;
                } else if (!this.subscribersColorSet && !this.subscribersColorSetFromThumb) {
                    try {
                        fArr = new float[3];
                        ColorUtils.colorToHSL(ColorUtils.blendARGB(this.avatarDrawable[0].getColor(), this.avatarDrawable[0].getColor2(), 0.5f), fArr);
                    } catch (Exception e2) {
                        FileLog.m102e(e2);
                    }
                    if (fArr[1] > 0.05f && fArr[1] < 0.95f) {
                        fArr[1] = Utilities.clamp(fArr[1] - 0.06f, 0.4f, (float) BitmapDescriptorFactory.HUE_RED);
                        fArr[2] = Utilities.clamp(fArr[2] - 0.08f, 0.5f, 0.2f);
                        this.subscribersBackgroundPaint.setColor(ColorUtils.HSLToColor(fArr));
                        this.subscribersColorSetFromThumb = true;
                    }
                    fArr[2] = Utilities.clamp(fArr[2] - 0.1f, 0.6f, 0.3f);
                    this.subscribersBackgroundPaint.setColor(ColorUtils.HSLToColor(fArr));
                    this.subscribersColorSetFromThumb = true;
                }
                if (this.subscribersBackgroundPaintShader != null) {
                    this.subscribersBackgroundPaintMatrix.reset();
                    this.subscribersBackgroundPaintMatrix.postScale(avatarSize() / this.subscribersBackgroundPaintBitmapWidth, avatarSize() / this.subscribersBackgroundPaintBitmapHeight);
                    RectF rectF = AndroidUtilities.rectTmp;
                    this.subscribersBackgroundPaintMatrix.postTranslate(f3 - (avatarSize() / 2.0f), rectF.bottom - avatarSize());
                    this.subscribersBackgroundPaintShader.setLocalMatrix(this.subscribersBackgroundPaintMatrix);
                    canvas.drawRoundRect(rectF, AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(8), this.subscribersBackgroundPaint);
                    canvas.drawRoundRect(rectF, AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(8), this.subscribersBackgroundDimPaint);
                } else {
                    canvas.drawRoundRect(AndroidUtilities.rectTmp, AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(8), this.subscribersBackgroundPaint);
                }
                RectF rectF2 = AndroidUtilities.rectTmp;
                rectF2.inset((-AndroidUtilities.m107dp(1)) / 2.0f, (-AndroidUtilities.m107dp(1)) / 2.0f);
                this.subscribersStrokePaint.setStrokeWidth(AndroidUtilities.m107dp(1));
                canvas.drawRoundRect(rectF2, AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(8), this.subscribersStrokePaint);
            }
            canvas.restore();
        }

        public static void fillPath(Path path, int i, float f) {
            float f2 = i;
            path.addCircle((f2 / 2.0f) + f, AndroidUtilities.m107dp(10) + (avatarSize() / 2.0f), avatarSize() / 2.0f, Path.Direction.CW);
            float f3 = 0.4f * f2;
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(((f2 - f3) / 2.0f) + f, AndroidUtilities.m107dp(69), ((f3 + f2) / 2.0f) + f, AndroidUtilities.m107dp(79));
            path.addRoundRect(rectF, AndroidUtilities.m107dp(3), AndroidUtilities.m107dp(3), Path.Direction.CW);
            float f4 = 0.35f * f2;
            rectF.set(((f2 - f4) / 2.0f) + f, AndroidUtilities.m107dp(83), f + ((f2 + f4) / 2.0f), AndroidUtilities.m107dp(91));
            path.addRoundRect(rectF, AndroidUtilities.m108dp(2.5f), AndroidUtilities.m108dp(2.5f), Path.Direction.CW);
        }

        public void attach() {
            int i = 0;
            while (true) {
                ImageReceiver[] imageReceiverArr = this.avatarImageReceiver;
                if (i >= imageReceiverArr.length) {
                    return;
                }
                imageReceiverArr[i].onAttachedToWindow();
                i++;
            }
        }

        public void detach() {
            int i = 0;
            while (true) {
                ImageReceiver[] imageReceiverArr = this.avatarImageReceiver;
                if (i >= imageReceiverArr.length) {
                    return;
                }
                imageReceiverArr[i].onDetachedFromWindow();
                i++;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00e5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean checkTouchEvent(android.view.MotionEvent r18) {
        /*
            Method dump skipped, instructions count: 455
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChannelRecommendationsCell.checkTouchEvent(android.view.MotionEvent):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkTouchEvent$0(ChannelBlock channelBlock) {
        ChannelBlock channelBlock2 = this.longPressedBlock;
        if (channelBlock == channelBlock2) {
            channelBlock2.bounce.setPressed(false);
            ChannelBlock channelBlock3 = this.longPressedBlock;
            if (channelBlock3.isLock) {
                if (this.cell.getDelegate() != null) {
                    this.cell.getDelegate().didPressMoreChannelRecommendations(this.cell);
                }
            } else {
                didClickChannel(channelBlock3.chat, true);
            }
        }
        this.longPressedBlock = null;
        this.longPressRunnable = null;
        this.scrolling = false;
        this.maybeScrolling = false;
        this.closeBounce.setPressed(false);
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.velocityTracker = null;
        }
    }

    public void didClickClose() {
        if (this.cell.getDelegate() != null) {
            this.cell.getDelegate().didPressChannelRecommendationsClose(this.cell);
        }
    }

    public void didClickChannel(TLRPC$Chat tLRPC$Chat, boolean z) {
        if (this.cell.getDelegate() != null) {
            this.cell.getDelegate().didPressChannelRecommendation(this.cell, tLRPC$Chat, z);
        }
    }

    private void unselectBlocks() {
        for (int i = 0; i < this.channels.size(); i++) {
            this.channels.get(i).bounce.setPressed(false);
        }
    }

    public void computeScroll() {
        if (this.scroller.computeScrollOffset()) {
            float currX = this.scroller.getCurrX();
            this.scrollX = currX;
            this.scrollX = Utilities.clamp(currX, this.channelsScrollWidth - (this.backgroundBounds.width() - AndroidUtilities.m107dp(14)), (float) BitmapDescriptorFactory.HUE_RED);
            this.cell.invalidateOutbounds();
        }
    }

    private void scroll(float f) {
        this.scrollX = Utilities.clamp(this.scrollX + f, this.channelsScrollWidth - (this.backgroundBounds.width() - AndroidUtilities.m107dp(14)), (float) BitmapDescriptorFactory.HUE_RED);
        this.cell.invalidateOutbounds();
    }
}
