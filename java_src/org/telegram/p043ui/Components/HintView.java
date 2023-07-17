package org.telegram.p043ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.ChatMessageCell;
import org.telegram.p043ui.Components.HintView;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Components.HintView */
/* loaded from: classes6.dex */
public class HintView extends FrameLayout {
    private AnimatorSet animatorSet;
    private ImageView arrowImageView;
    private int bottomOffset;
    private int currentType;
    private View currentView;
    private float extraTranslationY;
    private Runnable hideRunnable;
    private ImageView imageView;
    private boolean isTopArrow;
    private ChatMessageCell messageCell;
    private String overrideText;
    private final Theme.ResourcesProvider resourcesProvider;
    private long showingDuration;
    private int shownY;
    public TextView textView;
    private float translationY;

    public boolean showForView(View view, boolean z) {
        return showForView(view, z, true);
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
            this.textView.setMaxWidth(AndroidUtilities.m54dp(310));
        } else if (i == 4) {
            this.textView.setMaxWidth(AndroidUtilities.m54dp(280));
        } else {
            this.textView.setMaxWidth(AndroidUtilities.m54dp(250));
        }
        if (this.currentType == 3) {
            this.textView.setGravity(19);
            this.textView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m54dp(5), getThemedColor(Theme.key_chat_gifSaveHintBackground)));
            this.textView.setPadding(AndroidUtilities.m54dp(10), 0, AndroidUtilities.m54dp(10), 0);
            addView(this.textView, LayoutHelper.createFrame(-2, 30, 51, 0, z ? 6 : 0, 0, z ? 0 : 6));
        } else {
            this.textView.setGravity(51);
            this.textView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m54dp(6), getThemedColor(Theme.key_chat_gifSaveHintBackground)));
            this.textView.setPadding(AndroidUtilities.m54dp(this.currentType == 0 ? 54 : 8), AndroidUtilities.m54dp(7), AndroidUtilities.m54dp(8), AndroidUtilities.m54dp(8));
            addView(this.textView, LayoutHelper.createFrame(-2, -2, 51, 0, z ? 6 : 0, 0, z ? 0 : 6));
        }
        if (i == 0) {
            this.textView.setText(LocaleController.getString("AutoplayVideoInfo", C3417R.string.AutoplayVideoInfo));
            ImageView imageView = new ImageView(context);
            this.imageView = imageView;
            imageView.setImageResource(C3417R.C3419drawable.tooltip_sound);
            this.imageView.setScaleType(ImageView.ScaleType.CENTER);
            this.imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(i2), PorterDuff.Mode.MULTIPLY));
            addView(this.imageView, LayoutHelper.createFrame(38, 34, 51, 7, 7, 0, 0));
        }
        ImageView imageView2 = new ImageView(context);
        this.arrowImageView = imageView2;
        imageView2.setImageResource(z ? C3417R.C3419drawable.tooltip_arrow_up : C3417R.C3419drawable.tooltip_arrow);
        this.arrowImageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_chat_gifSaveHintBackground), PorterDuff.Mode.MULTIPLY));
        addView(this.arrowImageView, LayoutHelper.createFrame(14, 6, (z ? 48 : 80) | 3, 0, 0, 0, 0));
    }

    public void setBackgroundColor(int i, int i2) {
        this.textView.setTextColor(i2);
        this.arrowImageView.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
        TextView textView = this.textView;
        int i3 = this.currentType;
        textView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m54dp((i3 == 7 || i3 == 8) ? 6 : 3), i));
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
        int m54dp;
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
                m54dp = (int) (i5 + photoImage.getImageY());
                int imageHeight = (int) photoImage.getImageHeight();
                int i7 = m54dp + imageHeight;
                int measuredHeight = view.getMeasuredHeight();
                if (m54dp <= getMeasuredHeight() + AndroidUtilities.m54dp(10) || i7 > measuredHeight + (imageHeight / 4)) {
                    return false;
                }
                forwardNameCenterX = chatMessageCell.getNoSoundIconCenterX();
            } else if (i6 == 5) {
                Integer num = (Integer) obj;
                m54dp = i5 + i2;
                this.shownY = i2;
                if (num.intValue() == -1) {
                    this.textView.setText(LocaleController.getString("PollSelectOption", C3417R.string.PollSelectOption));
                } else if (chatMessageCell.getMessageObject().isQuiz()) {
                    if (num.intValue() == 0) {
                        this.textView.setText(LocaleController.getString("NoVotesQuiz", C3417R.string.NoVotesQuiz));
                    } else {
                        this.textView.setText(LocaleController.formatPluralString("Answer", num.intValue(), new Object[0]));
                    }
                } else if (num.intValue() == 0) {
                    this.textView.setText(LocaleController.getString("NoVotes", C3417R.string.NoVotes));
                } else {
                    this.textView.setText(LocaleController.formatPluralString("Vote", num.intValue(), new Object[0]));
                }
                measure(View.MeasureSpec.makeMeasureSpec(1000, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(1000, Integer.MIN_VALUE));
                forwardNameCenterX = i;
            } else {
                MessageObject messageObject = chatMessageCell.getMessageObject();
                String str = this.overrideText;
                if (str == null) {
                    this.textView.setText(LocaleController.getString("HidAccount", C3417R.string.HidAccount));
                } else {
                    this.textView.setText(str);
                }
                measure(View.MeasureSpec.makeMeasureSpec(1000, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(1000, Integer.MIN_VALUE));
                TLRPC$User currentUser = chatMessageCell.getCurrentUser();
                if (currentUser != null && currentUser.f1656id == 0) {
                    m54dp = i5 + ((chatMessageCell.getMeasuredHeight() - Math.max(0, chatMessageCell.getBottom() - view.getMeasuredHeight())) - AndroidUtilities.m54dp(50));
                } else {
                    m54dp = i5 + AndroidUtilities.m54dp(22);
                    if (!messageObject.isOutOwner() && chatMessageCell.isDrawNameLayout()) {
                        m54dp += AndroidUtilities.m54dp(20);
                    }
                    if (!messageObject.shouldDrawWithoutBackground() && chatMessageCell.isDrawTopic()) {
                        m54dp = (int) (m54dp + AndroidUtilities.m54dp(5) + chatMessageCell.getDrawTopicHeight());
                    }
                }
                if (!this.isTopArrow && m54dp <= getMeasuredHeight() + AndroidUtilities.m54dp(10)) {
                    return false;
                }
                forwardNameCenterX = chatMessageCell.getForwardNameCenterX();
            }
            int measuredWidth = view.getMeasuredWidth();
            if (this.isTopArrow) {
                float f = this.extraTranslationY;
                float m54dp2 = AndroidUtilities.m54dp(44);
                this.translationY = m54dp2;
                setTranslationY(f + m54dp2);
            } else {
                float f2 = this.extraTranslationY;
                float measuredHeight2 = m54dp - getMeasuredHeight();
                this.translationY = measuredHeight2;
                setTranslationY(f2 + measuredHeight2);
            }
            int left = chatMessageCell.getLeft() + forwardNameCenterX;
            int m54dp3 = AndroidUtilities.m54dp(19);
            if (this.currentType == 5) {
                int max = Math.max(0, (forwardNameCenterX - (getMeasuredWidth() / 2)) - AndroidUtilities.m55dp(19.1f));
                setTranslationX(max);
                m54dp3 += max;
            } else if (left > view.getMeasuredWidth() / 2) {
                int measuredWidth2 = (measuredWidth - getMeasuredWidth()) - AndroidUtilities.m54dp(38);
                setTranslationX(measuredWidth2);
                m54dp3 += measuredWidth2;
            } else {
                setTranslationX(BitmapDescriptorFactory.HUE_RED);
            }
            float left2 = ((chatMessageCell.getLeft() + forwardNameCenterX) - m54dp3) - (this.arrowImageView.getMeasuredWidth() / 2);
            this.arrowImageView.setTranslationX(left2);
            if (left > view.getMeasuredWidth() / 2) {
                if (left2 < AndroidUtilities.m54dp(10)) {
                    float m54dp4 = left2 - AndroidUtilities.m54dp(10);
                    setTranslationX(getTranslationX() + m54dp4);
                    this.arrowImageView.setTranslationX(left2 - m54dp4);
                }
            } else if (left2 > getMeasuredWidth() - AndroidUtilities.m54dp(24)) {
                float measuredWidth3 = (left2 - getMeasuredWidth()) + AndroidUtilities.m54dp(24);
                setTranslationX(measuredWidth3);
                this.arrowImageView.setTranslationX(left2 - measuredWidth3);
            } else if (left2 < AndroidUtilities.m54dp(10)) {
                float m54dp5 = left2 - AndroidUtilities.m54dp(10);
                setTranslationX(getTranslationX() + m54dp5);
                this.arrowImageView.setTranslationX(left2 - m54dp5);
            }
            this.messageCell = chatMessageCell;
            AnimatorSet animatorSet = this.animatorSet;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.animatorSet = null;
            }
            setTag(1);
            setVisibility(0);
            if (z) {
                AnimatorSet animatorSet2 = new AnimatorSet();
                this.animatorSet = animatorSet2;
                animatorSet2.playTogether(ObjectAnimator.ofFloat(this, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f));
                this.animatorSet.addListener(new C48161());
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
    public class C48161 extends AnimatorListenerAdapter {
        C48161() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            HintView.this.animatorSet = null;
            AndroidUtilities.runOnUIThread(HintView.this.hideRunnable = new Runnable() { // from class: org.telegram.ui.Components.HintView$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    HintView.C48161.this.lambda$onAnimationEnd$0();
                }
            }, HintView.this.currentType == 0 ? 10000L : ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAnimationEnd$0() {
            HintView.this.hide();
        }
    }

    public boolean showForView(View view, boolean z, boolean z2) {
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
        if (z) {
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.animatorSet = animatorSet2;
            animatorSet2.playTogether(ObjectAnimator.ofFloat(this, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f));
            this.animatorSet.addListener(new C48172(z2));
            this.animatorSet.setDuration(300L);
            this.animatorSet.start();
        } else {
            setAlpha(1.0f);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.HintView$2 */
    /* loaded from: classes6.dex */
    public class C48172 extends AnimatorListenerAdapter {
        final /* synthetic */ boolean val$autoHide;

        C48172(boolean z) {
            this.val$autoHide = z;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            HintView.this.animatorSet = null;
            if (this.val$autoHide) {
                AndroidUtilities.runOnUIThread(HintView.this.hideRunnable = new Runnable() { // from class: org.telegram.ui.Components.HintView$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        HintView.C48172.this.lambda$onAnimationEnd$0();
                    }
                }, HintView.this.showingDuration);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAnimationEnd$0() {
            HintView.this.hide();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:57:0x013b, code lost:
        if (r1 < 0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0159, code lost:
        if (r1 >= 0) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x015c, code lost:
        r10 = r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01a5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updatePosition(android.view.View r13) {
        /*
            Method dump skipped, instructions count: 491
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.HintView.updatePosition(android.view.View):void");
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
            animatorSet2.playTogether(ObjectAnimator.ofFloat(this, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
            this.animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.HintView.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    HintView.this.setVisibility(4);
                    HintView.this.currentView = null;
                    HintView.this.messageCell = null;
                    HintView.this.animatorSet = null;
                }
            });
            this.animatorSet.setDuration(300L);
            this.animatorSet.start();
            return;
        }
        setVisibility(4);
        this.currentView = null;
        this.messageCell = null;
        this.animatorSet = null;
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
}
