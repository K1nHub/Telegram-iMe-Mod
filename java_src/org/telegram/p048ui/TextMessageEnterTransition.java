package org.telegram.p048ui;

import android.animation.ValueAnimator;
import android.graphics.Bitmap;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.StaticLayout;
import android.view.ViewGroup;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.UserConfig;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Cells.ChatMessageCell;
import org.telegram.p048ui.Components.AnimatedEmojiSpan;
import org.telegram.p048ui.Components.ChatActivityEnterView;
import org.telegram.p048ui.MessageEnterTransitionContainer;
/* renamed from: org.telegram.ui.TextMessageEnterTransition */
/* loaded from: classes5.dex */
public class TextMessageEnterTransition implements MessageEnterTransitionContainer.Transition {
    private AnimatedEmojiSpan.EmojiGroupedSpans animatedEmojiStack;
    private int animationIndex;
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
    float replyFromStartX;
    float replyFromStartY;
    float replyMessageDx;
    float replyNameDx;
    private Path replyRoundRect;
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
    private final int currentAccount = UserConfig.selectedAccount;

    /* JADX WARN: Can't wrap try/catch for region: R(42:15|(1:17)|18|(3:20|21|(1:24))|30|(3:32|(3:35|(33:38|39|40|(3:150|(1:152)(1:154)|153)(1:43)|44|(1:46)(1:149)|47|(4:50|(2:52|53)(1:55)|54|48)|56|57|(1:59)|60|(1:62)|63|(1:65)|66|(2:68|(1:(2:146|147)(4:70|(1:72)(1:145)|73|(2:76|77)(1:75))))(1:148)|78|(5:82|(3:84|(4:86|(1:88)|89|90)(2:92|93)|91)|94|95|(1:97)(1:98))|99|100|101|(4:103|(1:105)|106|(2:108|(1:110)(1:111)))|112|(1:143)(1:116)|117|(1:119)|120|(1:126)|127|(1:133)|134|(1:141)(2:138|139))(1:37)|33)|155)|156|40|(0)|150|(0)(0)|153|44|(0)(0)|47|(1:48)|56|57|(0)|60|(0)|63|(0)|66|(0)(0)|78|(5:82|(0)|94|95|(0)(0))|99|100|101|(0)|112|(1:114)|143|117|(0)|120|(3:122|124|126)|127|(3:129|131|133)|134|(2:136|141)(1:142)) */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x04b9, code lost:
        r24.drawBitmaps = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x03be  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x03f8  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x043d A[Catch: Exception -> 0x04b9, TryCatch #0 {Exception -> 0x04b9, blocks: (B:106:0x0439, B:108:0x043d, B:110:0x0461, B:111:0x047f, B:113:0x0483, B:115:0x048d, B:116:0x04a1), top: B:148:0x0439 }] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x04d1  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x029d  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0328  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0356  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0373  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TextMessageEnterTransition(final org.telegram.p048ui.Cells.ChatMessageCell r25, final org.telegram.p048ui.ChatActivity r26, android.view.ViewGroup r27, final org.telegram.p048ui.MessageEnterTransitionContainer r28, org.telegram.p048ui.ActionBar.Theme.ResourcesProvider r29) {
        /*
            Method dump skipped, instructions count: 1648
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.TextMessageEnterTransition.<init>(org.telegram.ui.Cells.ChatMessageCell, org.telegram.ui.ChatActivity, android.view.ViewGroup, org.telegram.ui.MessageEnterTransitionContainer, org.telegram.ui.ActionBar.Theme$ResourcesProvider):void");
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

    /* JADX WARN: Removed duplicated region for block: B:103:0x059a  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x03d0  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x03df  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0417  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0437  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x043f  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0446  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0471  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x04c2  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x04fb  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0511  */
    @Override // org.telegram.p048ui.MessageEnterTransitionContainer.Transition
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDraw(android.graphics.Canvas r44) {
        /*
            Method dump skipped, instructions count: 2348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.TextMessageEnterTransition.onDraw(android.graphics.Canvas):void");
    }

    private int getThemedColor(String str) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        Integer color = resourcesProvider != null ? resourcesProvider.getColor(str) : null;
        return color != null ? color.intValue() : Theme.getColor(str);
    }
}
