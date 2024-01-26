package org.telegram.p043ui.Components.voip;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.transition.ChangeBounds;
import android.transition.Fade;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.transition.TransitionValues;
import android.transition.Visibility;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashMap;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.StaticLayoutEx;
/* renamed from: org.telegram.ui.Components.voip.VoIPNotificationsLayout */
/* loaded from: classes6.dex */
public class VoIPNotificationsLayout extends LinearLayout {
    VoIPBackgroundProvider backgroundProvider;
    boolean lockAnimation;
    Runnable onViewsUpdated;
    TextPaint textPaint;
    TransitionSet transitionSet;
    ArrayList<NotificationView> viewToAdd;
    ArrayList<NotificationView> viewToRemove;
    HashMap<String, NotificationView> viewsByTag;
    boolean wasChanged;

    public VoIPNotificationsLayout(Context context, VoIPBackgroundProvider voIPBackgroundProvider) {
        super(context);
        this.viewsByTag = new HashMap<>();
        this.viewToAdd = new ArrayList<>();
        this.viewToRemove = new ArrayList<>();
        this.textPaint = new TextPaint();
        setOrientation(1);
        this.backgroundProvider = voIPBackgroundProvider;
        TransitionSet transitionSet = new TransitionSet();
        this.transitionSet = transitionSet;
        transitionSet.addTransition(new Fade(2).setDuration(150L)).addTransition(new ChangeBounds().setDuration(200L)).addTransition(new Visibility(this) { // from class: org.telegram.ui.Components.voip.VoIPNotificationsLayout.1
            @Override // android.transition.Visibility
            public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
                AnimatorSet animatorSet = new AnimatorSet();
                view.setAlpha(BitmapDescriptorFactory.HUE_RED);
                view.setScaleY(0.6f);
                view.setScaleX(0.6f);
                animatorSet.playTogether(ObjectAnimator.ofFloat(view, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f), ObjectAnimator.ofFloat(view, View.SCALE_X, 0.6f, 1.0f), ObjectAnimator.ofFloat(view, View.SCALE_Y, 0.6f, 1.0f));
                animatorSet.setInterpolator(CubicBezierInterpolator.EASE_OUT_BACK);
                return animatorSet;
            }

            @Override // android.transition.Visibility
            public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
                AnimatorSet animatorSet = new AnimatorSet();
                if (view instanceof NotificationView) {
                    ((NotificationView) view).ignoreShader = true;
                }
                animatorSet.playTogether(ObjectAnimator.ofFloat(view, View.ALPHA, 0.7f, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(view, View.SCALE_X, 1.0f, 0.6f), ObjectAnimator.ofFloat(view, View.SCALE_Y, 1.0f, 0.6f));
                animatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
                return animatorSet;
            }
        }.setDuration(200L));
        this.transitionSet.setOrdering(0);
        this.textPaint.setTextSize(AndroidUtilities.m107dp(14));
    }

    public void addNotification(int i, String str, String str2, boolean z) {
        if (this.viewsByTag.get(str2) != null) {
            return;
        }
        NotificationView notificationView = new NotificationView(getContext(), this.backgroundProvider, i);
        notificationView.tag = str2;
        notificationView.setText(str);
        notificationView.iconView.setImageResource(i);
        this.viewsByTag.put(str2, notificationView);
        if (this.lockAnimation) {
            this.viewToAdd.add(notificationView);
            return;
        }
        this.wasChanged = true;
        addView(notificationView, LayoutHelper.createLinear(-2, -2, 1, 4, 0, 0, 4));
    }

    public CharSequence ellipsize(CharSequence charSequence) {
        return charSequence == null ? "" : TextUtils.ellipsize(charSequence, this.textPaint, AndroidUtilities.m107dp(300), TextUtils.TruncateAt.END);
    }

    public void removeNotification(String str) {
        NotificationView remove = this.viewsByTag.remove(str);
        this.backgroundProvider.detach(remove);
        if (remove != null) {
            if (this.lockAnimation) {
                if (this.viewToAdd.remove(remove)) {
                    return;
                }
                this.viewToRemove.add(remove);
                return;
            }
            this.wasChanged = true;
            removeView(remove);
        }
    }

    private void lock() {
        this.lockAnimation = true;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.voip.VoIPNotificationsLayout$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                VoIPNotificationsLayout.this.lambda$lock$0();
            }
        }, 700L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$lock$0() {
        this.lockAnimation = false;
        runDelayed();
    }

    private void runDelayed() {
        if (this.viewToAdd.isEmpty() && this.viewToRemove.isEmpty()) {
            return;
        }
        if (getParent() != null) {
            TransitionManager.beginDelayedTransition(this, this.transitionSet);
        }
        int i = 0;
        while (i < this.viewToAdd.size()) {
            NotificationView notificationView = this.viewToAdd.get(i);
            int i2 = 0;
            while (true) {
                if (i2 >= this.viewToRemove.size()) {
                    break;
                } else if (notificationView.tag.equals(this.viewToRemove.get(i2).tag)) {
                    this.viewToAdd.remove(i);
                    this.viewToRemove.remove(i2);
                    i--;
                    break;
                } else {
                    i2++;
                }
            }
            i++;
        }
        for (int i3 = 0; i3 < this.viewToAdd.size(); i3++) {
            addView(this.viewToAdd.get(i3), LayoutHelper.createLinear(-2, -2, 1, 4, 0, 0, 4));
        }
        for (int i4 = 0; i4 < this.viewToRemove.size(); i4++) {
            removeView(this.viewToRemove.get(i4));
        }
        this.viewsByTag.clear();
        for (int i5 = 0; i5 < getChildCount(); i5++) {
            NotificationView notificationView2 = (NotificationView) getChildAt(i5);
            this.viewsByTag.put(notificationView2.tag, notificationView2);
        }
        this.viewToAdd.clear();
        this.viewToRemove.clear();
        lock();
        Runnable runnable = this.onViewsUpdated;
        if (runnable != null) {
            runnable.run();
        }
    }

    public void beforeLayoutChanges() {
        this.wasChanged = false;
        if (this.lockAnimation || getParent() == null) {
            return;
        }
        TransitionManager.beginDelayedTransition(this, this.transitionSet);
    }

    public void animateLayoutChanges() {
        if (this.wasChanged) {
            lock();
        }
        this.wasChanged = false;
    }

    public int getChildsHight() {
        int childCount = getChildCount();
        return (childCount > 0 ? AndroidUtilities.m107dp(16) : 0) + (childCount * AndroidUtilities.m107dp(32));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.voip.VoIPNotificationsLayout$NotificationView */
    /* loaded from: classes6.dex */
    public static class NotificationView extends FrameLayout {
        private final VoIPBackgroundProvider backgroundProvider;
        private final RectF bgRect;
        ImageView iconView;
        boolean ignoreShader;
        public String tag;
        TextView textView;

        public NotificationView(Context context, VoIPBackgroundProvider voIPBackgroundProvider, int i) {
            super(context);
            this.bgRect = new RectF();
            setFocusable(true);
            setFocusableInTouchMode(true);
            this.backgroundProvider = voIPBackgroundProvider;
            voIPBackgroundProvider.attach(this);
            ImageView imageView = new ImageView(context);
            this.iconView = imageView;
            addView(imageView, LayoutHelper.createFrame(24, 24, 16, 8, 2, 8, 2));
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setTextColor(-1);
            this.textView.setTextSize(1, 14.0f);
            addView(this.textView, LayoutHelper.createFrame(-2, -2, 16, i == 0 ? 14 : 36, 2, 14, 2));
        }

        public void setText(CharSequence charSequence) {
            int m107dp = AndroidUtilities.displaySize.x - AndroidUtilities.m107dp(120);
            StaticLayout createStaticLayout = StaticLayoutEx.createStaticLayout(charSequence, this.textView.getPaint(), m107dp, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false, TextUtils.TruncateAt.END, m107dp, 10);
            int i = 0;
            for (int i2 = 0; i2 < createStaticLayout.getLineCount(); i2++) {
                i = (int) Math.max(i, Math.ceil(createStaticLayout.getLineWidth(i2)));
            }
            this.textView.setMaxWidth(i);
            this.textView.setText(charSequence);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            this.bgRect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight());
            this.backgroundProvider.setDarkTranslation(getX() + ((View) getParent()).getX(), getY() + ((View) getParent()).getY());
            int alpha = this.backgroundProvider.getDarkPaint(this.ignoreShader).getAlpha();
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), alpha, 31);
            this.backgroundProvider.getDarkPaint(this.ignoreShader).setAlpha(255);
            canvas.drawRoundRect(this.bgRect, AndroidUtilities.m107dp(16), AndroidUtilities.m107dp(16), this.backgroundProvider.getDarkPaint(this.ignoreShader));
            this.backgroundProvider.getDarkPaint(this.ignoreShader).setAlpha(alpha);
            if (this.backgroundProvider.isReveal()) {
                int alpha2 = this.backgroundProvider.getRevealDarkPaint().getAlpha();
                this.backgroundProvider.getRevealDarkPaint().setAlpha(255);
                canvas.drawRoundRect(this.bgRect, AndroidUtilities.m107dp(16), AndroidUtilities.m107dp(16), this.backgroundProvider.getRevealDarkPaint());
                this.backgroundProvider.getRevealDarkPaint().setAlpha(alpha2);
            }
            canvas.restore();
            super.dispatchDraw(canvas);
        }
    }

    public void setOnViewsUpdated(Runnable runnable) {
        this.onViewsUpdated = runnable;
    }
}
