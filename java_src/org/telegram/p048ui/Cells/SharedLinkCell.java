package org.telegram.p048ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Region;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.List;
import java.util.Stack;
import java.util.concurrent.atomic.AtomicReference;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.AnimatedEmojiSpan;
import org.telegram.p048ui.Components.CheckBox2;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.LetterDrawable;
import org.telegram.p048ui.Components.LinkSpanDrawable;
import org.telegram.p048ui.Components.spoilers.SpoilerEffect;
import org.telegram.tgnet.TLRPC$WebPage;
/* renamed from: org.telegram.ui.Cells.SharedLinkCell */
/* loaded from: classes5.dex */
public class SharedLinkCell extends FrameLayout {
    private StaticLayout captionLayout;
    private TextPaint captionTextPaint;
    private int captionY;
    private CheckBox2 checkBox;
    private boolean checkingForLongPress;
    private StaticLayout dateLayout;
    private int dateLayoutX;
    private SharedLinkCellDelegate delegate;
    private TextPaint description2TextPaint;
    private int description2Y;
    private StaticLayout descriptionLayout;
    private StaticLayout descriptionLayout2;
    private List<SpoilerEffect> descriptionLayout2Spoilers;
    private List<SpoilerEffect> descriptionLayoutSpoilers;
    private TextPaint descriptionTextPaint;
    private int descriptionY;
    private boolean drawLinkImageView;
    private StaticLayout fromInfoLayout;
    private AnimatedEmojiSpan.EmojiGroupedSpans fromInfoLayoutEmojis;
    private int fromInfoLayoutY;
    private LetterDrawable letterDrawable;
    private ImageReceiver linkImageView;
    private ArrayList<StaticLayout> linkLayout;
    private boolean linkPreviewPressed;
    private SparseArray<List<SpoilerEffect>> linkSpoilers;
    private int linkY;
    ArrayList<CharSequence> links;
    private LinkSpanDrawable.LinkCollector linksCollector;
    private MessageObject message;
    private boolean needDivider;
    private AtomicReference<Layout> patchedDescriptionLayout;
    private AtomicReference<Layout> patchedDescriptionLayout2;
    private Path path;
    private CheckForLongPress pendingCheckForLongPress;
    private CheckForTap pendingCheckForTap;
    private int pressCount;
    private LinkSpanDrawable pressedLink;
    private int pressedLinkIndex;
    private Theme.ResourcesProvider resourcesProvider;
    private SpoilerEffect spoilerPressed;
    private int spoilerTypePressed;
    private Stack<SpoilerEffect> spoilersPool;
    private StaticLayout titleLayout;
    private TextPaint titleTextPaint;
    private int titleY;
    private int viewType;

    /* renamed from: org.telegram.ui.Cells.SharedLinkCell$SharedLinkCellDelegate */
    /* loaded from: classes5.dex */
    public interface SharedLinkCellDelegate {
        boolean canPerformActions();

        void needOpenWebView(TLRPC$WebPage tLRPC$WebPage, MessageObject messageObject);

        void onLinkPress(String str, boolean z);
    }

    static /* synthetic */ int access$104(SharedLinkCell sharedLinkCell) {
        int i = sharedLinkCell.pressCount + 1;
        sharedLinkCell.pressCount = i;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Cells.SharedLinkCell$CheckForTap */
    /* loaded from: classes5.dex */
    public final class CheckForTap implements Runnable {
        private CheckForTap() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SharedLinkCell.this.pendingCheckForLongPress == null) {
                SharedLinkCell sharedLinkCell = SharedLinkCell.this;
                sharedLinkCell.pendingCheckForLongPress = new CheckForLongPress();
            }
            SharedLinkCell.this.pendingCheckForLongPress.currentPressCount = SharedLinkCell.access$104(SharedLinkCell.this);
            SharedLinkCell sharedLinkCell2 = SharedLinkCell.this;
            sharedLinkCell2.postDelayed(sharedLinkCell2.pendingCheckForLongPress, ViewConfiguration.getLongPressTimeout() - ViewConfiguration.getTapTimeout());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Cells.SharedLinkCell$CheckForLongPress */
    /* loaded from: classes5.dex */
    public class CheckForLongPress implements Runnable {
        public int currentPressCount;

        CheckForLongPress() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SharedLinkCell.this.checkingForLongPress && SharedLinkCell.this.getParent() != null && this.currentPressCount == SharedLinkCell.this.pressCount) {
                SharedLinkCell.this.checkingForLongPress = false;
                SharedLinkCell.this.performHapticFeedback(0);
                if (SharedLinkCell.this.pressedLinkIndex >= 0) {
                    SharedLinkCellDelegate sharedLinkCellDelegate = SharedLinkCell.this.delegate;
                    SharedLinkCell sharedLinkCell = SharedLinkCell.this;
                    sharedLinkCellDelegate.onLinkPress(sharedLinkCell.links.get(sharedLinkCell.pressedLinkIndex).toString(), true);
                }
                MotionEvent obtain = MotionEvent.obtain(0L, 0L, 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
                SharedLinkCell.this.onTouchEvent(obtain);
                obtain.recycle();
            }
        }
    }

    protected void startCheckLongPress() {
        if (this.checkingForLongPress) {
            return;
        }
        this.checkingForLongPress = true;
        if (this.pendingCheckForTap == null) {
            this.pendingCheckForTap = new CheckForTap();
        }
        postDelayed(this.pendingCheckForTap, ViewConfiguration.getTapTimeout());
    }

    protected void cancelCheckLongPress() {
        this.checkingForLongPress = false;
        CheckForLongPress checkForLongPress = this.pendingCheckForLongPress;
        if (checkForLongPress != null) {
            removeCallbacks(checkForLongPress);
        }
        CheckForTap checkForTap = this.pendingCheckForTap;
        if (checkForTap != null) {
            removeCallbacks(checkForTap);
        }
    }

    public SharedLinkCell(Context context, int i) {
        this(context, i, null);
    }

    public SharedLinkCell(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.checkingForLongPress = false;
        this.pendingCheckForLongPress = null;
        this.pressCount = 0;
        this.pendingCheckForTap = null;
        this.linksCollector = new LinkSpanDrawable.LinkCollector(this);
        this.links = new ArrayList<>();
        this.linkLayout = new ArrayList<>();
        this.linkSpoilers = new SparseArray<>();
        this.descriptionLayoutSpoilers = new ArrayList();
        this.descriptionLayout2Spoilers = new ArrayList();
        this.spoilersPool = new Stack<>();
        this.path = new Path();
        this.spoilerTypePressed = -1;
        this.titleY = AndroidUtilities.m50dp(10);
        this.descriptionY = AndroidUtilities.m50dp(30);
        this.patchedDescriptionLayout = new AtomicReference<>();
        this.description2Y = AndroidUtilities.m50dp(30);
        this.patchedDescriptionLayout2 = new AtomicReference<>();
        this.captionY = AndroidUtilities.m50dp(30);
        this.fromInfoLayoutY = AndroidUtilities.m50dp(30);
        this.resourcesProvider = resourcesProvider;
        this.viewType = i;
        setFocusable(true);
        TextPaint textPaint = new TextPaint(1);
        this.titleTextPaint = textPaint;
        textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.titleTextPaint.setColor(Theme.getColor("windowBackgroundWhiteBlackText", resourcesProvider));
        this.descriptionTextPaint = new TextPaint(1);
        this.titleTextPaint.setTextSize(AndroidUtilities.m50dp(14));
        this.descriptionTextPaint.setTextSize(AndroidUtilities.m50dp(14));
        setWillNotDraw(false);
        ImageReceiver imageReceiver = new ImageReceiver(this);
        this.linkImageView = imageReceiver;
        imageReceiver.setRoundRadius(AndroidUtilities.m50dp(4));
        this.letterDrawable = new LetterDrawable(resourcesProvider, 0);
        CheckBox2 checkBox2 = new CheckBox2(context, 21, resourcesProvider);
        this.checkBox = checkBox2;
        checkBox2.setVisibility(4);
        this.checkBox.setColor(null, "windowBackgroundWhite", "checkboxCheck");
        this.checkBox.setDrawUnchecked(false);
        this.checkBox.setDrawBackgroundAsArc(2);
        CheckBox2 checkBox22 = this.checkBox;
        boolean z = LocaleController.isRTL;
        addView(checkBox22, LayoutHelper.createFrame(24, 24, (z ? 5 : 3) | 48, z ? 0 : 44, 44, z ? 44 : 0, 0));
        if (i == 1) {
            TextPaint textPaint2 = new TextPaint(1);
            this.description2TextPaint = textPaint2;
            textPaint2.setTextSize(AndroidUtilities.m50dp(13));
        }
        TextPaint textPaint3 = new TextPaint(1);
        this.captionTextPaint = textPaint3;
        textPaint3.setTextSize(AndroidUtilities.m50dp(13));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:122:0x02a0  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0304  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x035c  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0361  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x036d  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0370  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0478  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0498  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x0566  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0571  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x058a  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x0609  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x060e  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x06a7  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x06b5  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x06d6  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x01fc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:281:0x0308 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:285:0x0374 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:289:0x03c0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r7v43, types: [android.text.SpannableStringBuilder, android.text.Spannable] */
    /* JADX WARN: Type inference failed for: r7v64, types: [android.text.SpannableStringBuilder, android.text.Spannable] */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r28, int r29) {
        /*
            Method dump skipped, instructions count: 1831
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.SharedLinkCell.onMeasure(int, int):void");
    }

    public void setLink(MessageObject messageObject, boolean z) {
        this.needDivider = z;
        resetPressedLink();
        this.message = messageObject;
        requestLayout();
    }

    public ImageReceiver getLinkImageView() {
        return this.linkImageView;
    }

    public void setDelegate(SharedLinkCellDelegate sharedLinkCellDelegate) {
        this.delegate = sharedLinkCellDelegate;
    }

    public MessageObject getMessage() {
        return this.message;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.drawLinkImageView) {
            this.linkImageView.onDetachedFromWindow();
        }
        AnimatedEmojiSpan.release(this, this.fromInfoLayoutEmojis);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.drawLinkImageView) {
            this.linkImageView.onAttachedToWindow();
        }
        this.fromInfoLayoutEmojis = AnimatedEmojiSpan.update(0, this, this.fromInfoLayoutEmojis, this.fromInfoLayout);
    }

    /* JADX WARN: Code restructure failed: missing block: B:89:0x0177, code lost:
        r6 = r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0220  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r17) {
        /*
            Method dump skipped, instructions count: 562
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.SharedLinkCell.onTouchEvent(android.view.MotionEvent):boolean");
    }

    private void startSpoilerRipples(int i, int i2, int i3) {
        int m50dp = AndroidUtilities.m50dp(LocaleController.isRTL ? 8 : AndroidUtilities.leftBaseline);
        resetPressedLink();
        this.spoilerPressed.setOnRippleEndCallback(new Runnable() { // from class: org.telegram.ui.Cells.SharedLinkCell$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                SharedLinkCell.this.lambda$startSpoilerRipples$1();
            }
        });
        int i4 = i - m50dp;
        float sqrt = (float) Math.sqrt(Math.pow(getWidth(), 2.0d) + Math.pow(getHeight(), 2.0d));
        float f = BitmapDescriptorFactory.HUE_RED;
        int i5 = this.spoilerTypePressed;
        if (i5 == 0) {
            for (int i6 = 0; i6 < this.linkLayout.size(); i6++) {
                StaticLayout staticLayout = this.linkLayout.get(i6);
                f += staticLayout.getLineBottom(staticLayout.getLineCount() - 1);
                for (SpoilerEffect spoilerEffect : this.linkSpoilers.get(i6)) {
                    spoilerEffect.startRipple(i4, ((i2 - getYOffsetForType(0)) - i3) + f, sqrt);
                }
            }
        } else if (i5 == 1) {
            for (SpoilerEffect spoilerEffect2 : this.descriptionLayoutSpoilers) {
                spoilerEffect2.startRipple(i4, i2 - getYOffsetForType(1), sqrt);
            }
        } else if (i5 == 2) {
            for (SpoilerEffect spoilerEffect3 : this.descriptionLayout2Spoilers) {
                spoilerEffect3.startRipple(i4, i2 - getYOffsetForType(2), sqrt);
            }
        }
        for (int i7 = 0; i7 <= 2; i7++) {
            if (i7 != this.spoilerTypePressed) {
                if (i7 == 0) {
                    for (int i8 = 0; i8 < this.linkLayout.size(); i8++) {
                        StaticLayout staticLayout2 = this.linkLayout.get(i8);
                        staticLayout2.getLineBottom(staticLayout2.getLineCount() - 1);
                        for (SpoilerEffect spoilerEffect4 : this.linkSpoilers.get(i8)) {
                            spoilerEffect4.startRipple(spoilerEffect4.getBounds().centerX(), spoilerEffect4.getBounds().centerY(), sqrt);
                        }
                    }
                } else if (i7 == 1) {
                    for (SpoilerEffect spoilerEffect5 : this.descriptionLayoutSpoilers) {
                        spoilerEffect5.startRipple(spoilerEffect5.getBounds().centerX(), spoilerEffect5.getBounds().centerY(), sqrt);
                    }
                } else if (i7 == 2) {
                    for (SpoilerEffect spoilerEffect6 : this.descriptionLayout2Spoilers) {
                        spoilerEffect6.startRipple(spoilerEffect6.getBounds().centerX(), spoilerEffect6.getBounds().centerY(), sqrt);
                    }
                }
            }
        }
        this.spoilerTypePressed = -1;
        this.spoilerPressed = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startSpoilerRipples$1() {
        post(new Runnable() { // from class: org.telegram.ui.Cells.SharedLinkCell$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                SharedLinkCell.this.lambda$startSpoilerRipples$0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startSpoilerRipples$0() {
        this.message.isSpoilersRevealed = true;
        this.linkSpoilers.clear();
        this.descriptionLayoutSpoilers.clear();
        this.descriptionLayout2Spoilers.clear();
        invalidate();
    }

    private int getYOffsetForType(int i) {
        if (i != 1) {
            if (i != 2) {
                return this.linkY;
            }
            return this.description2Y;
        }
        return this.descriptionY;
    }

    public String getLink(int i) {
        if (i < 0 || i >= this.links.size()) {
            return null;
        }
        return this.links.get(i).toString();
    }

    protected void resetPressedLink() {
        this.linksCollector.clear(true);
        this.pressedLinkIndex = -1;
        this.pressedLink = null;
        this.linkPreviewPressed = false;
        cancelCheckLongPress();
        invalidate();
    }

    public void setChecked(boolean z, boolean z2) {
        if (this.checkBox.getVisibility() != 0) {
            this.checkBox.setVisibility(0);
        }
        this.checkBox.setChecked(z, z2);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        StaticLayout staticLayout;
        if (this.viewType == 1) {
            this.description2TextPaint.setColor(Theme.getColor("windowBackgroundWhiteGrayText3", this.resourcesProvider));
        }
        if (this.dateLayout != null) {
            canvas.save();
            canvas.translate(AndroidUtilities.m50dp(LocaleController.isRTL ? 8 : AndroidUtilities.leftBaseline) + (LocaleController.isRTL ? 0 : this.dateLayoutX), this.titleY);
            this.dateLayout.draw(canvas);
            canvas.restore();
        }
        if (this.titleLayout != null) {
            canvas.save();
            float m50dp = AndroidUtilities.m50dp(LocaleController.isRTL ? 8 : AndroidUtilities.leftBaseline);
            if (LocaleController.isRTL) {
                m50dp += this.dateLayout == null ? BitmapDescriptorFactory.HUE_RED : staticLayout.getWidth() + AndroidUtilities.m50dp(4);
            }
            canvas.translate(m50dp, this.titleY);
            this.titleLayout.draw(canvas);
            canvas.restore();
        }
        if (this.captionLayout != null) {
            this.captionTextPaint.setColor(Theme.getColor("windowBackgroundWhiteBlackText", this.resourcesProvider));
            canvas.save();
            canvas.translate(AndroidUtilities.m50dp(LocaleController.isRTL ? 8 : AndroidUtilities.leftBaseline), this.captionY);
            this.captionLayout.draw(canvas);
            canvas.restore();
        }
        if (this.descriptionLayout != null) {
            this.descriptionTextPaint.setColor(Theme.getColor("windowBackgroundWhiteBlackText", this.resourcesProvider));
            canvas.save();
            canvas.translate(AndroidUtilities.m50dp(LocaleController.isRTL ? 8 : AndroidUtilities.leftBaseline), this.descriptionY);
            SpoilerEffect.renderWithRipple(this, false, this.descriptionTextPaint.getColor(), -AndroidUtilities.m50dp(2), this.patchedDescriptionLayout, this.descriptionLayout, this.descriptionLayoutSpoilers, canvas, false);
            canvas.restore();
        }
        if (this.descriptionLayout2 != null) {
            this.descriptionTextPaint.setColor(Theme.getColor("windowBackgroundWhiteBlackText", this.resourcesProvider));
            canvas.save();
            canvas.translate(AndroidUtilities.m50dp(LocaleController.isRTL ? 8 : AndroidUtilities.leftBaseline), this.description2Y);
            SpoilerEffect.renderWithRipple(this, false, this.descriptionTextPaint.getColor(), -AndroidUtilities.m50dp(2), this.patchedDescriptionLayout2, this.descriptionLayout2, this.descriptionLayout2Spoilers, canvas, false);
            canvas.restore();
        }
        if (!this.linkLayout.isEmpty()) {
            this.descriptionTextPaint.setColor(Theme.getColor("windowBackgroundWhiteLinkText", this.resourcesProvider));
            int i = 0;
            for (int i2 = 0; i2 < this.linkLayout.size(); i2++) {
                StaticLayout staticLayout2 = this.linkLayout.get(i2);
                List<SpoilerEffect> list = this.linkSpoilers.get(i2);
                if (staticLayout2.getLineCount() > 0) {
                    canvas.save();
                    canvas.translate(AndroidUtilities.m50dp(LocaleController.isRTL ? 8 : AndroidUtilities.leftBaseline), this.linkY + i);
                    this.path.rewind();
                    if (list != null) {
                        for (SpoilerEffect spoilerEffect : list) {
                            Rect bounds = spoilerEffect.getBounds();
                            this.path.addRect(bounds.left, bounds.top, bounds.right, bounds.bottom, Path.Direction.CW);
                        }
                    }
                    canvas.save();
                    canvas.clipPath(this.path, Region.Op.DIFFERENCE);
                    staticLayout2.draw(canvas);
                    canvas.restore();
                    canvas.save();
                    canvas.clipPath(this.path);
                    this.path.rewind();
                    if (list != null && !list.isEmpty()) {
                        list.get(0).getRipplePath(this.path);
                    }
                    canvas.clipPath(this.path);
                    staticLayout2.draw(canvas);
                    canvas.restore();
                    if (list != null) {
                        for (SpoilerEffect spoilerEffect2 : list) {
                            spoilerEffect2.draw(canvas);
                        }
                    }
                    canvas.restore();
                    i += staticLayout2.getLineBottom(staticLayout2.getLineCount() - 1);
                }
            }
            if (this.linksCollector.draw(canvas)) {
                invalidate();
            }
        }
        if (this.fromInfoLayout != null) {
            canvas.save();
            canvas.translate(AndroidUtilities.m50dp(LocaleController.isRTL ? 8 : AndroidUtilities.leftBaseline), this.fromInfoLayoutY);
            this.fromInfoLayout.draw(canvas);
            AnimatedEmojiSpan.drawAnimatedEmojis(canvas, this.fromInfoLayout, this.fromInfoLayoutEmojis, BitmapDescriptorFactory.HUE_RED, null, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f);
            canvas.restore();
        }
        this.letterDrawable.draw(canvas);
        if (this.drawLinkImageView) {
            this.linkImageView.draw(canvas);
        }
        if (this.needDivider) {
            if (LocaleController.isRTL) {
                canvas.drawLine(BitmapDescriptorFactory.HUE_RED, getMeasuredHeight() - 1, getMeasuredWidth() - AndroidUtilities.m50dp(AndroidUtilities.leftBaseline), getMeasuredHeight() - 1, Theme.dividerPaint);
            } else {
                canvas.drawLine(AndroidUtilities.m50dp(AndroidUtilities.leftBaseline), getMeasuredHeight() - 1, getMeasuredWidth(), getMeasuredHeight() - 1, Theme.dividerPaint);
            }
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        StringBuilder sb = new StringBuilder();
        StaticLayout staticLayout = this.titleLayout;
        if (staticLayout != null) {
            sb.append(staticLayout.getText());
        }
        if (this.descriptionLayout != null) {
            sb.append(", ");
            sb.append(this.descriptionLayout.getText());
        }
        if (this.descriptionLayout2 != null) {
            sb.append(", ");
            sb.append(this.descriptionLayout2.getText());
        }
        accessibilityNodeInfo.setText(sb.toString());
        if (this.checkBox.isChecked()) {
            accessibilityNodeInfo.setChecked(true);
            accessibilityNodeInfo.setCheckable(true);
        }
    }
}
