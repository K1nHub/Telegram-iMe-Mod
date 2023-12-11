package org.telegram.p043ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.ChatMessageCell;
import org.telegram.p043ui.Components.AnimatedEmojiSpan;
import org.telegram.p043ui.Components.ChatActivityEnterView;
import org.telegram.p043ui.Components.EmptyStubSpan;
import org.telegram.p043ui.MessageEnterTransitionContainer;
/* renamed from: org.telegram.ui.TextMessageEnterTransition */
/* loaded from: classes5.dex */
public class TextMessageEnterTransition implements MessageEnterTransitionContainer.Transition {
    private AnimatedEmojiSpan.EmojiGroupedSpans animatedEmojiStack;
    private ValueAnimator animator;
    boolean changeColor;
    private ChatActivity chatActivity;
    MessageEnterTransitionContainer container;
    boolean crossfade;
    Bitmap crossfadeTextBitmap;
    float crossfadeTextOffset;
    MessageObject currentMessageObject;
    boolean drawBitmaps;
    private float drawableFromBottom;
    float drawableFromTop;
    ChatActivityEnterView enterView;
    int fromColor;
    Drawable fromMessageDrawable;
    private float fromStartX;
    private float fromStartY;
    private Matrix gradientMatrix;
    private Paint gradientPaint;
    private LinearGradient gradientShader;
    boolean hasReply;
    StaticLayout layout;
    private ViewGroup listView;
    private int messageId;
    ChatMessageCell messageView;
    float progress;
    int replayFromColor;
    int replayObjectFromColor;
    float replyFromStartWidth;
    float replyFromStartX;
    float replyFromStartY;
    float replyNameDx;
    private final Theme.ResourcesProvider resourcesProvider;
    private float[] roundRectRadii;
    StaticLayout rtlLayout;
    private float scaleFrom;
    private float scaleY;
    Bitmap textLayoutBitmap;
    Bitmap textLayoutBitmapRtl;
    MessageObject.TextLayoutBlock textLayoutBlock;
    float textX;
    float textY;
    int toColor;
    float toXOffset;
    float toXOffsetRtl;
    Paint bitmapPaint = new Paint(1);
    boolean initBitmaps = false;
    private AnimationNotificationsLocker notificationsLocker = new AnimationNotificationsLocker();
    private final RectF replySelectorRect = new RectF();
    private final RectF messageReplySelectorRect = new RectF();

    public TextMessageEnterTransition(final ChatMessageCell chatMessageCell, final ChatActivity chatActivity, ViewGroup viewGroup, final MessageEnterTransitionContainer messageEnterTransitionContainer, Theme.ResourcesProvider resourcesProvider) {
        int i;
        int i2;
        int i3;
        Theme.MessageDrawable currentBackgroundDrawable;
        Object[] spans;
        TextPaint textPaint;
        this.drawBitmaps = false;
        this.resourcesProvider = resourcesProvider;
        int i4 = UserConfig.selectedAccount;
        if (chatMessageCell.getMessageObject().textLayoutBlocks == null || chatMessageCell.getMessageObject().textLayoutBlocks.size() > 1 || chatMessageCell.getMessageObject().textLayoutBlocks.isEmpty() || chatMessageCell.getMessageObject().textLayoutBlocks.get(0).textLayout.getLineCount() > 10) {
            return;
        }
        this.messageView = chatMessageCell;
        this.listView = viewGroup;
        this.container = messageEnterTransitionContainer;
        this.chatActivity = chatActivity;
        this.enterView = chatActivity.getChatActivityEnterView();
        final ChatActivityEnterView chatActivityEnterView = chatActivity.getChatActivityEnterView();
        if (chatActivityEnterView == null || chatActivityEnterView.getEditField() == null || chatActivityEnterView.getEditField().getLayout() == null) {
            return;
        }
        chatActivityEnterView.getRecordCircle();
        this.bitmapPaint.setFilterBitmap(true);
        this.currentMessageObject = chatMessageCell.getMessageObject();
        if (!chatMessageCell.getTransitionParams().wasDraw) {
            chatMessageCell.draw(new Canvas());
        }
        chatMessageCell.setEnterTransitionInProgress(true);
        Editable editText = chatActivityEnterView.getEditText();
        CharSequence charSequence = chatMessageCell.getMessageObject().messageText;
        this.crossfade = false;
        int height = chatActivityEnterView.getEditField().getLayout().getHeight();
        TextPaint textPaint2 = Theme.chat_msgTextPaint;
        int m104dp = AndroidUtilities.m104dp(20);
        if (chatMessageCell.getMessageObject().getEmojiOnlyCount() != 0) {
            boolean z = chatMessageCell.getMessageObject().emojiOnlyCount == chatMessageCell.getMessageObject().animatedEmojiCount;
            switch (Math.max(chatMessageCell.getMessageObject().emojiOnlyCount, chatMessageCell.getMessageObject().animatedEmojiCount)) {
                case 0:
                case 1:
                case 2:
                    TextPaint[] textPaintArr = Theme.chat_msgTextPaintEmoji;
                    if (z) {
                        textPaint = textPaintArr[0];
                        break;
                    } else {
                        textPaint = textPaintArr[2];
                        break;
                    }
                case 3:
                    TextPaint[] textPaintArr2 = Theme.chat_msgTextPaintEmoji;
                    if (z) {
                        textPaint = textPaintArr2[1];
                        break;
                    } else {
                        textPaint = textPaintArr2[3];
                        break;
                    }
                case 4:
                    TextPaint[] textPaintArr3 = Theme.chat_msgTextPaintEmoji;
                    if (z) {
                        textPaint = textPaintArr3[2];
                        break;
                    } else {
                        textPaint = textPaintArr3[4];
                        break;
                    }
                case 5:
                    TextPaint[] textPaintArr4 = Theme.chat_msgTextPaintEmoji;
                    if (z) {
                        textPaint = textPaintArr4[3];
                        break;
                    } else {
                        textPaint = textPaintArr4[5];
                        break;
                    }
                case 6:
                    TextPaint[] textPaintArr5 = Theme.chat_msgTextPaintEmoji;
                    if (z) {
                        textPaint = textPaintArr5[4];
                        break;
                    } else {
                        textPaint = textPaintArr5[5];
                        break;
                    }
                default:
                    textPaint = Theme.chat_msgTextPaintEmoji[5];
                    break;
            }
            textPaint2 = textPaint;
            if (textPaint2 != null) {
                m104dp = (int) (textPaint2.getTextSize() + AndroidUtilities.m104dp(4));
            }
        }
        boolean z2 = (charSequence instanceof Spannable) && (spans = ((Spannable) charSequence).getSpans(0, charSequence.length(), Object.class)) != null && spans.length > 0;
        if (editText.length() != charSequence.length() || z2) {
            this.crossfade = true;
            int[] iArr = new int[1];
            CharSequence trim = AndroidUtilities.trim(editText, iArr);
            if (iArr[0] > 0) {
                int lineTop = chatActivityEnterView.getEditField().getLayout().getLineTop(chatActivityEnterView.getEditField().getLayout().getLineForOffset(iArr[0]));
                height = chatActivityEnterView.getEditField().getLayout().getLineBottom(chatActivityEnterView.getEditField().getLayout().getLineForOffset(iArr[0] + trim.length())) - lineTop;
                i = lineTop;
            } else {
                i = 0;
            }
            AnimatedEmojiSpan.cloneSpans(charSequence);
            charSequence = Emoji.replaceEmoji((CharSequence) editText, textPaint2.getFontMetricsInt(), m104dp, false);
        } else {
            i = 0;
        }
        this.scaleFrom = chatActivityEnterView.getEditField().getTextSize() / textPaint2.getTextSize();
        int lineCount = chatActivityEnterView.getEditField().getLayout().getLineCount();
        int width = (int) (chatActivityEnterView.getEditField().getLayout().getWidth() / this.scaleFrom);
        if (Build.VERSION.SDK_INT >= 24) {
            this.layout = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), textPaint2, width).setBreakStrategy(1).setHyphenationFrequency(0).setAlignment(Layout.Alignment.ALIGN_NORMAL).build();
        } else {
            this.layout = new StaticLayout(charSequence, textPaint2, width, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        }
        this.animatedEmojiStack = AnimatedEmojiSpan.update(2, (View) null, this.animatedEmojiStack, this.layout);
        float y = chatActivityEnterView.getY() + chatActivityEnterView.getEditField().getY() + ((View) chatActivityEnterView.getEditField().getParent()).getY() + ((View) chatActivityEnterView.getEditField().getParent().getParent()).getY();
        this.fromStartX = chatActivityEnterView.getX() + chatActivityEnterView.getEditField().getX() + ((View) chatActivityEnterView.getEditField().getParent()).getX() + ((View) chatActivityEnterView.getEditField().getParent().getParent()).getX();
        this.fromStartY = ((AndroidUtilities.m104dp(10) + y) - chatActivityEnterView.getEditField().getScrollY()) + i;
        this.toXOffset = BitmapDescriptorFactory.HUE_RED;
        float f = Float.MAX_VALUE;
        for (int i5 = 0; i5 < this.layout.getLineCount(); i5++) {
            float lineLeft = this.layout.getLineLeft(i5);
            if (lineLeft < f) {
                f = lineLeft;
            }
        }
        if (f != Float.MAX_VALUE) {
            this.toXOffset = f;
        }
        this.scaleY = height / (this.layout.getHeight() * this.scaleFrom);
        this.drawableFromTop = AndroidUtilities.m104dp(4) + y;
        if (this.enterView.isTopViewVisible()) {
            this.drawableFromTop -= AndroidUtilities.m104dp(12);
        }
        this.drawableFromBottom = y + chatActivityEnterView.getEditField().getMeasuredHeight();
        MessageObject.TextLayoutBlock textLayoutBlock = chatMessageCell.getMessageObject().textLayoutBlocks.get(0);
        this.textLayoutBlock = textLayoutBlock;
        StaticLayout staticLayout = textLayoutBlock.textLayout;
        int i6 = Theme.key_chat_messageTextOut;
        double calculateLuminance = ColorUtils.calculateLuminance(getThemedColor(i6));
        int i7 = Theme.key_chat_messagePanelText;
        if (Math.abs(calculateLuminance - ColorUtils.calculateLuminance(getThemedColor(i7))) > 0.20000000298023224d) {
            this.crossfade = true;
            this.changeColor = true;
        }
        this.fromColor = getThemedColor(i7);
        this.toColor = getThemedColor(i6);
        if (staticLayout.getLineCount() == this.layout.getLineCount()) {
            lineCount = staticLayout.getLineCount();
            int i8 = 0;
            i2 = 0;
            i3 = 0;
            while (true) {
                if (i8 < lineCount) {
                    if (isRtlLine(this.layout, i8)) {
                        i3++;
                    } else {
                        i2++;
                    }
                    if (staticLayout.getLineEnd(i8) != this.layout.getLineEnd(i8)) {
                        this.crossfade = true;
                    } else {
                        i8++;
                    }
                }
            }
        } else {
            this.crossfade = true;
            i2 = 0;
            i3 = 0;
        }
        if (!this.crossfade && i3 > 0 && i2 > 0) {
            SpannableString spannableString = new SpannableString(charSequence);
            SpannableString spannableString2 = new SpannableString(charSequence);
            float f2 = Float.MAX_VALUE;
            for (int i9 = 0; i9 < lineCount; i9++) {
                if (isRtlLine(this.layout, i9)) {
                    spannableString.setSpan(new EmptyStubSpan(), this.layout.getLineStart(i9), this.layout.getLineEnd(i9), 0);
                    float lineLeft2 = this.layout.getLineLeft(i9);
                    f2 = lineLeft2 < f2 ? lineLeft2 : f2;
                } else {
                    spannableString2.setSpan(new EmptyStubSpan(), this.layout.getLineStart(i9), this.layout.getLineEnd(i9), 0);
                }
            }
            if (Build.VERSION.SDK_INT >= 24) {
                this.layout = StaticLayout.Builder.obtain(spannableString, 0, spannableString.length(), textPaint2, width).setBreakStrategy(1).setHyphenationFrequency(0).setAlignment(Layout.Alignment.ALIGN_NORMAL).build();
                this.rtlLayout = StaticLayout.Builder.obtain(spannableString2, 0, spannableString2.length(), textPaint2, width).setBreakStrategy(1).setHyphenationFrequency(0).setAlignment(Layout.Alignment.ALIGN_NORMAL).build();
            } else {
                TextPaint textPaint3 = textPaint2;
                this.layout = new StaticLayout(spannableString, textPaint3, width, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                this.rtlLayout = new StaticLayout(spannableString2, textPaint3, width, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            }
        }
        this.toXOffsetRtl = this.layout.getWidth() - chatMessageCell.getMessageObject().textLayoutBlocks.get(0).textLayout.getWidth();
        try {
            if (this.drawBitmaps) {
                this.textLayoutBitmap = Bitmap.createBitmap(this.layout.getWidth(), this.layout.getHeight(), Bitmap.Config.ARGB_8888);
                this.layout.draw(new Canvas(this.textLayoutBitmap));
                StaticLayout staticLayout2 = this.rtlLayout;
                if (staticLayout2 != null) {
                    this.textLayoutBitmapRtl = Bitmap.createBitmap(staticLayout2.getWidth(), this.rtlLayout.getHeight(), Bitmap.Config.ARGB_8888);
                    this.rtlLayout.draw(new Canvas(this.textLayoutBitmapRtl));
                }
                if (this.crossfade) {
                    if (chatMessageCell.getMeasuredHeight() < viewGroup.getMeasuredHeight()) {
                        this.crossfadeTextOffset = BitmapDescriptorFactory.HUE_RED;
                        this.crossfadeTextBitmap = Bitmap.createBitmap(chatMessageCell.getMeasuredWidth(), chatMessageCell.getMeasuredHeight(), Bitmap.Config.ARGB_8888);
                    } else {
                        this.crossfadeTextOffset = chatMessageCell.getTop();
                        this.crossfadeTextBitmap = Bitmap.createBitmap(chatMessageCell.getMeasuredWidth(), viewGroup.getMeasuredHeight(), Bitmap.Config.ARGB_8888);
                    }
                }
            }
        } catch (Exception unused) {
            this.drawBitmaps = false;
        }
        boolean z3 = (chatMessageCell.getMessageObject().getReplyMsgId() == 0 || chatMessageCell.replyNameLayout == null) ? false : true;
        this.hasReply = z3;
        if (z3) {
            SimpleTextView replyNameTextView = chatActivity.getReplyNameTextView();
            this.replyFromStartX = replyNameTextView.getX() + ((View) replyNameTextView.getParent()).getX();
            this.replyFromStartWidth = ((View) replyNameTextView.getParent()).getWidth();
            this.replyFromStartY = replyNameTextView.getY() + ((View) replyNameTextView.getParent().getParent()).getY() + ((View) replyNameTextView.getParent().getParent().getParent()).getY();
            SimpleTextView replyObjectTextView = chatActivity.getReplyObjectTextView();
            replyObjectTextView.getY();
            ((View) replyObjectTextView.getParent().getParent()).getY();
            ((View) replyObjectTextView.getParent().getParent().getParent()).getY();
            this.replayFromColor = chatActivity.getReplyNameTextView().getTextColor();
            this.replayObjectFromColor = chatActivity.getReplyObjectTextView().getTextColor();
            this.drawableFromTop -= AndroidUtilities.m104dp(46);
        }
        this.gradientMatrix = new Matrix();
        Paint paint = new Paint(1);
        this.gradientPaint = paint;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
        LinearGradient linearGradient = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m104dp(12), (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, 0, -16777216, Shader.TileMode.CLAMP);
        this.gradientShader = linearGradient;
        this.gradientPaint.setShader(linearGradient);
        this.messageId = chatMessageCell.getMessageObject().stableId;
        chatActivityEnterView.getEditField().setAlpha(BitmapDescriptorFactory.HUE_RED);
        chatActivityEnterView.setTextTransitionIsRunning(true);
        StaticLayout staticLayout3 = chatMessageCell.replyNameLayout;
        if (staticLayout3 != null && staticLayout3.getText().length() > 1 && chatMessageCell.replyNameLayout.getPrimaryHorizontal(0) != BitmapDescriptorFactory.HUE_RED) {
            this.replyNameDx = chatMessageCell.replyNameLayout.getWidth() - chatMessageCell.replyNameLayout.getLineWidth(0);
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.animator = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.TextMessageEnterTransition$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                TextMessageEnterTransition.this.lambda$new$0(chatActivityEnterView, messageEnterTransitionContainer, valueAnimator);
            }
        });
        this.animator.setInterpolator(new LinearInterpolator());
        this.animator.setDuration(250L);
        messageEnterTransitionContainer.addTransition(this);
        this.notificationsLocker.lock();
        this.animator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.TextMessageEnterTransition.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                TextMessageEnterTransition.this.notificationsLocker.unlock();
                messageEnterTransitionContainer.removeTransition(TextMessageEnterTransition.this);
                chatMessageCell.setEnterTransitionInProgress(false);
                chatMessageCell.getTransitionParams().lastDrawingBackgroundRect.set(chatMessageCell.getBackgroundDrawableLeft(), chatMessageCell.getBackgroundDrawableTop(), chatMessageCell.getBackgroundDrawableRight(), chatMessageCell.getBackgroundDrawableBottom());
                chatActivityEnterView.setTextTransitionIsRunning(false);
                chatActivityEnterView.getEditField().setAlpha(1.0f);
                chatActivity.getReplyNameTextView().setAlpha(1.0f);
                chatActivity.getReplyObjectTextView().setAlpha(1.0f);
                AnimatedEmojiSpan.release((View) null, TextMessageEnterTransition.this.animatedEmojiStack);
            }
        });
        if (SharedConfig.getDevicePerformanceClass() != 2 || (currentBackgroundDrawable = chatMessageCell.getCurrentBackgroundDrawable(true)) == null) {
            return;
        }
        this.fromMessageDrawable = currentBackgroundDrawable.getTransitionDrawable(getThemedColor(Theme.key_chat_messagePanelBackground));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(ChatActivityEnterView chatActivityEnterView, MessageEnterTransitionContainer messageEnterTransitionContainer, ValueAnimator valueAnimator) {
        this.progress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        chatActivityEnterView.getEditField().setAlpha(this.progress);
        messageEnterTransitionContainer.invalidate();
    }

    public void start() {
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.start();
        }
    }

    private boolean isRtlLine(Layout layout, int i) {
        return layout.getLineRight(i) == ((float) layout.getWidth()) && layout.getLineLeft(i) != BitmapDescriptorFactory.HUE_RED;
    }

    /* JADX WARN: Code restructure failed: missing block: B:107:0x0474, code lost:
        if (android.text.TextUtils.isEmpty(r6.caption) != false) goto L250;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0490, code lost:
        if ((org.telegram.messenger.MessageObject.getMedia(r49.currentMessageObject.replyMessageObject.messageOwner) instanceof org.telegram.tgnet.TLRPC$TL_messageMediaInvoice) != false) goto L250;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x040d, code lost:
        if (android.text.TextUtils.isEmpty(r5.caption) != false) goto L231;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0429, code lost:
        if ((org.telegram.messenger.MessageObject.getMedia(r49.currentMessageObject.replyMessageObject.messageOwner) instanceof org.telegram.tgnet.TLRPC$TL_messageMediaInvoice) != false) goto L231;
     */
    @Override // org.telegram.p043ui.MessageEnterTransitionContainer.Transition
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDraw(android.graphics.Canvas r50) {
        /*
            Method dump skipped, instructions count: 3090
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.TextMessageEnterTransition.onDraw(android.graphics.Canvas):void");
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }
}
