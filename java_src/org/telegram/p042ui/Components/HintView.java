package org.telegram.p042ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3630R;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.Cells.ChatMessageCell;
import org.telegram.p042ui.Components.HintView;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Components.HintView */
/* loaded from: classes6.dex */
public class HintView extends FrameLayout {
    private AnimatorSet animatorSet;
    private ImageView arrowImageView;
    private int backgroundColor;
    Paint backgroundPaint;
    private int bottomOffset;
    private int currentType;
    private View currentView;
    private boolean drawPath;
    private float extraTranslationY;
    private boolean hasCloseButton;
    private Runnable hideRunnable;
    private ImageView imageView;
    private boolean isTopArrow;
    private ChatMessageCell messageCell;
    private String overrideText;
    Path path;
    private final Theme.ResourcesProvider resourcesProvider;
    private long showingDuration;
    private int shownY;
    public TextView textView;
    private float translationY;
    private boolean useScale;
    VisibilityListener visibleListener;

    /* renamed from: org.telegram.ui.Components.HintView$VisibilityListener */
    /* loaded from: classes6.dex */
    public interface VisibilityListener {
        void onVisible(boolean z);
    }

    public void setHideRunnable(Runnable runnable) {
        this.hideRunnable = runnable;
    }

    public HintView(Context context, int i) {
        this(context, i, false, null);
    }

    public HintView(Context context, int i, boolean z) {
        this(context, i, z, null);
    }

    public HintView(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
        this(context, i, false, resourcesProvider);
    }

    public HintView(Context context, int i, boolean z, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.showingDuration = ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS;
        this.resourcesProvider = resourcesProvider;
        this.currentType = i;
        this.isTopArrow = z;
        CorrectlyMeasuringTextView correctlyMeasuringTextView = new CorrectlyMeasuringTextView(context);
        this.textView = correctlyMeasuringTextView;
        int i2 = Theme.key_chat_gifSaveHintText;
        correctlyMeasuringTextView.setTextColor(getThemedColor(i2));
        this.textView.setTextSize(1, 14.0f);
        this.textView.setMaxLines(2);
        if (i == 7 || i == 8 || i == 9) {
            this.textView.setMaxWidth(AndroidUtilities.m102dp(310));
        } else if (i == 4) {
            this.textView.setMaxWidth(AndroidUtilities.m102dp(280));
        } else {
            this.textView.setMaxWidth(AndroidUtilities.m102dp(250));
        }
        if (this.currentType == 3) {
            this.textView.setGravity(19);
            this.textView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m102dp(5), getThemedColor(Theme.key_chat_gifSaveHintBackground)));
            this.textView.setPadding(AndroidUtilities.m102dp(10), 0, AndroidUtilities.m102dp(10), 0);
            addView(this.textView, LayoutHelper.createFrame(-2, 30, 51, 0, z ? 6 : 0, 0, z ? 0 : 6));
        } else {
            this.textView.setGravity(51);
            this.textView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m102dp(6), getThemedColor(Theme.key_chat_gifSaveHintBackground)));
            this.textView.setPadding(AndroidUtilities.m102dp(this.currentType == 0 ? 54 : 8), AndroidUtilities.m102dp(7), AndroidUtilities.m102dp(8), AndroidUtilities.m102dp(8));
            addView(this.textView, LayoutHelper.createFrame(-2, -2, 51, 0, z ? 6 : 0, 0, z ? 0 : 6));
        }
        if (i == 0) {
            this.textView.setText(LocaleController.getString("AutoplayVideoInfo", C3630R.string.AutoplayVideoInfo));
            ImageView imageView = new ImageView(context);
            this.imageView = imageView;
            imageView.setImageResource(C3630R.C3632drawable.tooltip_sound);
            this.imageView.setScaleType(ImageView.ScaleType.CENTER);
            this.imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(i2), PorterDuff.Mode.MULTIPLY));
            addView(this.imageView, LayoutHelper.createFrame(38, 34, 51, 7, 7, 0, 0));
        }
        ImageView imageView2 = new ImageView(context);
        this.arrowImageView = imageView2;
        imageView2.setImageResource(z ? C3630R.C3632drawable.tooltip_arrow_up : C3630R.C3632drawable.tooltip_arrow);
        this.arrowImageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_chat_gifSaveHintBackground), PorterDuff.Mode.MULTIPLY));
        addView(this.arrowImageView, LayoutHelper.createFrame(14, 6, (z ? 48 : 80) | 3, 0, 0, 0, 0));
    }

    public void createCloseButton() {
        this.textView.setPadding(AndroidUtilities.m102dp(12), AndroidUtilities.m102dp(7), AndroidUtilities.m102dp(36), AndroidUtilities.m102dp(8));
        this.hasCloseButton = true;
        ImageView imageView = new ImageView(getContext());
        this.imageView = imageView;
        imageView.setImageResource(C3630R.C3632drawable.msg_mini_close_tooltip);
        this.imageView.setScaleType(ImageView.ScaleType.CENTER);
        this.imageView.setColorFilter(new PorterDuffColorFilter(ColorUtils.setAlphaComponent(getThemedColor(Theme.key_chat_gifSaveHintText), 125), PorterDuff.Mode.MULTIPLY));
        ImageView imageView2 = this.imageView;
        boolean z = this.isTopArrow;
        addView(imageView2, LayoutHelper.createFrame(34, 34, 21, 0, z ? 3 : 0, 0, z ? 0 : 3));
        setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.HintView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HintView.this.lambda$createCloseButton$0(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createCloseButton$0(View view) {
        hide(true);
    }

    public void setBackgroundColor(int i, int i2) {
        this.textView.setTextColor(i2);
        this.arrowImageView.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
        TextView textView = this.textView;
        int i3 = this.currentType;
        textView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m102dp((i3 == 7 || i3 == 8) ? 6 : 3), i));
    }

    public void setOverrideText(String str) {
        this.overrideText = str;
        this.textView.setText(str);
        ChatMessageCell chatMessageCell = this.messageCell;
        if (chatMessageCell != null) {
            this.messageCell = null;
            showForMessageCell(chatMessageCell, false);
        }
    }

    public void setExtraTranslationY(float f) {
        this.extraTranslationY = f;
        setTranslationY(f + this.translationY);
    }

    public float getBaseTranslationY() {
        return this.translationY;
    }

    public boolean showForMessageCell(ChatMessageCell chatMessageCell, boolean z) {
        return showForMessageCell(chatMessageCell, null, 0, 0, z);
    }

    public boolean showForMessageCell(ChatMessageCell chatMessageCell, Object obj, int i, int i2, boolean z) {
        int m102dp;
        int forwardNameCenterX;
        int i3 = this.currentType;
        if (!(i3 == 5 && i2 == this.shownY && this.messageCell == chatMessageCell) && (i3 == 5 || ((i3 != 0 || getTag() == null) && this.messageCell != chatMessageCell))) {
            Runnable runnable = this.hideRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                this.hideRunnable = null;
            }
            int[] iArr = new int[2];
            chatMessageCell.getLocationInWindow(iArr);
            int i4 = iArr[1];
            ((View) getParent()).getLocationInWindow(iArr);
            int i5 = i4 - iArr[1];
            View view = (View) chatMessageCell.getParent();
            int i6 = this.currentType;
            if (i6 == 0) {
                ImageReceiver photoImage = chatMessageCell.getPhotoImage();
                m102dp = (int) (i5 + photoImage.getImageY());
                int imageHeight = (int) photoImage.getImageHeight();
                int i7 = m102dp + imageHeight;
                int measuredHeight = view.getMeasuredHeight();
                if (m102dp <= getMeasuredHeight() + AndroidUtilities.m102dp(10) || i7 > measuredHeight + (imageHeight / 4)) {
                    return false;
                }
                forwardNameCenterX = chatMessageCell.getNoSoundIconCenterX();
                measure(View.MeasureSpec.makeMeasureSpec(1000, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(1000, Integer.MIN_VALUE));
            } else if (i6 == 5) {
                Integer num = (Integer) obj;
                m102dp = i5 + i2;
                this.shownY = i2;
                if (num.intValue() == -1) {
                    this.textView.setText(LocaleController.getString("PollSelectOption", C3630R.string.PollSelectOption));
                } else if (chatMessageCell.getMessageObject().isQuiz()) {
                    if (num.intValue() == 0) {
                        this.textView.setText(LocaleController.getString("NoVotesQuiz", C3630R.string.NoVotesQuiz));
                    } else {
                        this.textView.setText(LocaleController.formatPluralString("Answer", num.intValue(), new Object[0]));
                    }
                } else if (num.intValue() == 0) {
                    this.textView.setText(LocaleController.getString("NoVotes", C3630R.string.NoVotes));
                } else {
                    this.textView.setText(LocaleController.formatPluralString("Vote", num.intValue(), new Object[0]));
                }
                measure(View.MeasureSpec.makeMeasureSpec(1000, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(1000, Integer.MIN_VALUE));
                forwardNameCenterX = i;
            } else {
                MessageObject messageObject = chatMessageCell.getMessageObject();
                String str = this.overrideText;
                if (str == null) {
                    this.textView.setText(LocaleController.getString("HidAccount", C3630R.string.HidAccount));
                } else {
                    this.textView.setText(str);
                }
                measure(View.MeasureSpec.makeMeasureSpec(1000, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(1000, Integer.MIN_VALUE));
                TLRPC$User currentUser = chatMessageCell.getCurrentUser();
                if (currentUser != null && currentUser.f1762id == 0) {
                    m102dp = i5 + ((chatMessageCell.getMeasuredHeight() - Math.max(0, chatMessageCell.getBottom() - view.getMeasuredHeight())) - AndroidUtilities.m102dp(50));
                } else {
                    m102dp = i5 + AndroidUtilities.m102dp(22);
                    if (!messageObject.isOutOwner() && chatMessageCell.isDrawNameLayout()) {
                        m102dp += AndroidUtilities.m102dp(20);
                    }
                    if (!messageObject.shouldDrawWithoutBackground() && chatMessageCell.isDrawTopic()) {
                        m102dp = (int) (m102dp + AndroidUtilities.m102dp(5) + chatMessageCell.getDrawTopicHeight());
                    }
                }
                if (!this.isTopArrow && m102dp <= getMeasuredHeight() + AndroidUtilities.m102dp(10)) {
                    return false;
                }
                forwardNameCenterX = chatMessageCell.getForwardNameCenterX();
            }
            int measuredWidth = view.getMeasuredWidth();
            if (this.isTopArrow) {
                float f = this.extraTranslationY;
                float m102dp2 = AndroidUtilities.m102dp(44);
                this.translationY = m102dp2;
                setTranslationY(f + m102dp2);
            } else {
                float f2 = this.extraTranslationY;
                float measuredHeight2 = m102dp - getMeasuredHeight();
                this.translationY = measuredHeight2;
                setTranslationY(f2 + measuredHeight2);
            }
            int left = chatMessageCell.getLeft() + forwardNameCenterX;
            int m102dp3 = AndroidUtilities.m102dp(19);
            if (this.currentType == 5) {
                int max = Math.max(0, (forwardNameCenterX - (getMeasuredWidth() / 2)) - AndroidUtilities.m103dp(19.1f));
                setTranslationX(max);
                m102dp3 += max;
            } else if (left > view.getMeasuredWidth() / 2) {
                int measuredWidth2 = (measuredWidth - getMeasuredWidth()) - AndroidUtilities.m102dp(38);
                setTranslationX(measuredWidth2);
                m102dp3 += measuredWidth2;
            } else {
                setTranslationX(BitmapDescriptorFactory.HUE_RED);
            }
            float left2 = ((chatMessageCell.getLeft() + forwardNameCenterX) - m102dp3) - (this.arrowImageView.getMeasuredWidth() / 2);
            this.arrowImageView.setTranslationX(left2);
            if (left > view.getMeasuredWidth() / 2) {
                if (left2 < AndroidUtilities.m102dp(10)) {
                    float m102dp4 = left2 - AndroidUtilities.m102dp(10);
                    setTranslationX(getTranslationX() + m102dp4);
                    this.arrowImageView.setTranslationX(left2 - m102dp4);
                }
            } else if (left2 > getMeasuredWidth() - AndroidUtilities.m102dp(24)) {
                float measuredWidth3 = (left2 - getMeasuredWidth()) + AndroidUtilities.m102dp(24);
                setTranslationX(measuredWidth3);
                this.arrowImageView.setTranslationX(left2 - measuredWidth3);
            } else if (left2 < AndroidUtilities.m102dp(10)) {
                float m102dp5 = left2 - AndroidUtilities.m102dp(10);
                setTranslationX(getTranslationX() + m102dp5);
                this.arrowImageView.setTranslationX(left2 - m102dp5);
            }
            this.messageCell = chatMessageCell;
            AnimatorSet animatorSet = this.animatorSet;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.animatorSet = null;
            }
            setTag(1);
            setVisibility(0);
            VisibilityListener visibilityListener = this.visibleListener;
            if (visibilityListener != null) {
                visibilityListener.onVisible(true);
            }
            if (z) {
                AnimatorSet animatorSet2 = new AnimatorSet();
                this.animatorSet = animatorSet2;
                animatorSet2.playTogether(ObjectAnimator.ofFloat(this, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f));
                this.animatorSet.addListener(new C50921());
                this.animatorSet.setDuration(300L);
                this.animatorSet.start();
            } else {
                setAlpha(1.0f);
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.HintView$1 */
    /* loaded from: classes6.dex */
    public class C50921 extends AnimatorListenerAdapter {
        C50921() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            HintView.this.animatorSet = null;
            if (HintView.this.hasCloseButton) {
                return;
            }
            AndroidUtilities.runOnUIThread(HintView.this.hideRunnable = new Runnable() { // from class: org.telegram.ui.Components.HintView$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    HintView.C50921.this.lambda$onAnimationEnd$0();
                }
            }, HintView.this.currentType == 0 ? 10000L : ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAnimationEnd$0() {
            HintView.this.hide();
        }
    }

    public boolean showForView(View view, boolean z) {
        if (this.currentView == view || getTag() != null) {
            if (getTag() != null) {
                updatePosition(view);
            }
            return false;
        }
        Runnable runnable = this.hideRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.hideRunnable = null;
        }
        updatePosition(view);
        this.currentView = view;
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.animatorSet = null;
        }
        setTag(1);
        setVisibility(0);
        VisibilityListener visibilityListener = this.visibleListener;
        if (visibilityListener != null) {
            visibilityListener.onVisible(true);
        }
        if (z) {
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.animatorSet = animatorSet2;
            if (this.useScale) {
                setPivotX(this.arrowImageView.getX() + (this.arrowImageView.getMeasuredWidth() / 2.0f));
                setPivotY(this.arrowImageView.getY() + (this.arrowImageView.getMeasuredHeight() / 2.0f));
                this.animatorSet.playTogether(ObjectAnimator.ofFloat(this, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f), ObjectAnimator.ofFloat(this, View.SCALE_Y, 0.5f, 1.0f), ObjectAnimator.ofFloat(this, View.SCALE_X, 0.5f, 1.0f));
                this.animatorSet.setDuration(350L);
                this.animatorSet.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            } else {
                animatorSet2.playTogether(ObjectAnimator.ofFloat(this, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f));
                this.animatorSet.setDuration(300L);
            }
            this.animatorSet.addListener(new C50932());
            this.animatorSet.start();
        } else {
            setAlpha(1.0f);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.HintView$2 */
    /* loaded from: classes6.dex */
    public class C50932 extends AnimatorListenerAdapter {
        C50932() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            HintView.this.animatorSet = null;
            if (HintView.this.hasCloseButton) {
                return;
            }
            AndroidUtilities.runOnUIThread(HintView.this.hideRunnable = new Runnable() { // from class: org.telegram.ui.Components.HintView$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    HintView.C50932.this.lambda$onAnimationEnd$0();
                }
            }, HintView.this.showingDuration);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAnimationEnd$0() {
            HintView.this.hide();
        }
    }

    public void updatePosition() {
        View view = this.currentView;
        if (view == null) {
            return;
        }
        updatePosition(view);
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x013f, code lost:
        if (r1 < 0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x015d, code lost:
        if (r1 >= 0) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0160, code lost:
        r10 = r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01a9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updatePosition(android.view.View r13) {
        /*
            Method dump skipped, instructions count: 495
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Components.HintView.updatePosition(android.view.View):void");
    }

    public void hide() {
        hide(true);
    }

    public void hide(boolean z) {
        if (getTag() == null) {
            return;
        }
        setTag(null);
        Runnable runnable = this.hideRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.hideRunnable = null;
        }
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.animatorSet = null;
        }
        if (z) {
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.animatorSet = animatorSet2;
            if (this.useScale) {
                animatorSet2.playTogether(ObjectAnimator.ofFloat(this, View.ALPHA, 1.0f, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this, View.SCALE_Y, 1.0f, 0.5f), ObjectAnimator.ofFloat(this, View.SCALE_X, 1.0f, 0.5f));
                this.animatorSet.setDuration(150L);
                this.animatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
            } else {
                animatorSet2.playTogether(ObjectAnimator.ofFloat(this, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                this.animatorSet.setDuration(300L);
            }
            this.animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.HintView.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    HintView.this.setVisibility(4);
                    VisibilityListener visibilityListener = HintView.this.visibleListener;
                    if (visibilityListener != null) {
                        visibilityListener.onVisible(false);
                    }
                    HintView.this.currentView = null;
                    HintView.this.messageCell = null;
                    HintView.this.animatorSet = null;
                }
            });
            this.animatorSet.start();
            return;
        }
        setVisibility(4);
        VisibilityListener visibilityListener = this.visibleListener;
        if (visibilityListener != null) {
            visibilityListener.onVisible(false);
        }
        this.currentView = null;
        this.messageCell = null;
        this.animatorSet = null;
    }

    public boolean isShowing() {
        return getTag() != null;
    }

    public void setText(CharSequence charSequence) {
        this.textView.setText(charSequence);
    }

    public ChatMessageCell getMessageCell() {
        return this.messageCell;
    }

    public void setShowingDuration(long j) {
        this.showingDuration = j;
    }

    public void setBottomOffset(int i) {
        this.bottomOffset = i;
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    public void setUseScale(boolean z) {
        this.useScale = z;
    }

    public void setVisibleListener(VisibilityListener visibilityListener) {
        this.visibleListener = visibilityListener;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.drawPath && this.path != null) {
            if (this.backgroundPaint == null) {
                Paint paint = new Paint(1);
                this.backgroundPaint = paint;
                paint.setPathEffect(new CornerPathEffect(AndroidUtilities.dpf2(6.0f)));
                this.backgroundPaint.setColor(this.backgroundColor);
            }
            canvas.drawPath(this.path, this.backgroundPaint);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.drawPath) {
            int measuredHeight = getMeasuredHeight();
            int measuredWidth = getMeasuredWidth();
            float x = this.arrowImageView.getX() + (this.arrowImageView.getMeasuredWidth() / 2.0f);
            Path path = this.path;
            if (path == null) {
                this.path = new Path();
            } else {
                path.rewind();
            }
            if (this.isTopArrow) {
                this.path.moveTo(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m102dp(6));
                float f = measuredHeight;
                this.path.lineTo(BitmapDescriptorFactory.HUE_RED, f);
                float f2 = measuredWidth;
                this.path.lineTo(f2, f);
                this.path.lineTo(f2, AndroidUtilities.m102dp(6));
                this.path.lineTo(AndroidUtilities.m102dp(7) + x, AndroidUtilities.m102dp(6));
                this.path.lineTo(x, -AndroidUtilities.m102dp(2));
                this.path.lineTo(x - AndroidUtilities.m102dp(7), AndroidUtilities.m102dp(6));
                this.path.close();
                return;
            }
            this.path.moveTo(BitmapDescriptorFactory.HUE_RED, measuredHeight - AndroidUtilities.m102dp(6));
            this.path.lineTo(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            float f3 = measuredWidth;
            this.path.lineTo(f3, BitmapDescriptorFactory.HUE_RED);
            this.path.lineTo(f3, measuredHeight - AndroidUtilities.m102dp(6));
            this.path.lineTo(AndroidUtilities.m102dp(7) + x, measuredHeight - AndroidUtilities.m102dp(6));
            this.path.lineTo(x, AndroidUtilities.m102dp(2) + measuredHeight);
            this.path.lineTo(x - AndroidUtilities.m102dp(7), measuredHeight - AndroidUtilities.m102dp(6));
            this.path.close();
        }
    }
}
