package org.telegram.p043ui.Components.voip;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import android.widget.Button;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.voip.AcceptDeclineView */
/* loaded from: classes6.dex */
public class AcceptDeclineView extends View {
    private Paint acceptCirclePaint;
    private FabBackgroundDrawable acceptDrawable;
    private StaticLayout acceptLayout;
    Rect acceptRect;
    private AcceptDeclineAccessibilityNodeProvider accessibilityNodeProvider;
    Drawable arrowDrawable;
    float arrowProgress;
    float bigRadius;
    private int buttonWidth;
    private Drawable callDrawable;
    private Drawable cancelDrawable;
    boolean captured;
    private FabBackgroundDrawable declineDrawable;
    private StaticLayout declineLayout;
    Rect declineRect;
    boolean expandBigRadius;
    boolean expandSmallRadius;
    Animator leftAnimator;
    boolean leftDrag;
    float leftOffsetX;
    Paint linePaint;
    Listener listener;
    float maxOffset;
    private StaticLayout retryLayout;
    boolean retryMod;
    Animator rightAnimator;
    float rigthOffsetX;
    Drawable rippleDrawable;
    private boolean screenWasWakeup;
    float smallRadius;
    boolean startDrag;
    float startX;
    float startY;
    float touchSlop;

    /* renamed from: org.telegram.ui.Components.voip.AcceptDeclineView$Listener */
    /* loaded from: classes6.dex */
    public interface Listener {
        void onAccept();

        void onDecline();
    }

    public AcceptDeclineView(Context context) {
        super(context);
        this.acceptCirclePaint = new Paint(1);
        this.expandSmallRadius = true;
        this.expandBigRadius = true;
        this.acceptRect = new Rect();
        this.declineRect = new Rect();
        this.linePaint = new Paint(1);
        this.touchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.buttonWidth = AndroidUtilities.m104dp(60);
        FabBackgroundDrawable fabBackgroundDrawable = new FabBackgroundDrawable();
        this.acceptDrawable = fabBackgroundDrawable;
        fabBackgroundDrawable.setColor(-12531895);
        FabBackgroundDrawable fabBackgroundDrawable2 = new FabBackgroundDrawable();
        this.declineDrawable = fabBackgroundDrawable2;
        fabBackgroundDrawable2.setColor(-1041108);
        FabBackgroundDrawable fabBackgroundDrawable3 = this.declineDrawable;
        int i = this.buttonWidth;
        fabBackgroundDrawable3.setBounds(0, 0, i, i);
        FabBackgroundDrawable fabBackgroundDrawable4 = this.acceptDrawable;
        int i2 = this.buttonWidth;
        fabBackgroundDrawable4.setBounds(0, 0, i2, i2);
        TextPaint textPaint = new TextPaint(1);
        textPaint.setTextSize(AndroidUtilities.m104dp(11));
        textPaint.setColor(-1);
        String string = LocaleController.getString("AcceptCall", C3632R.string.AcceptCall);
        String string2 = LocaleController.getString("DeclineCall", C3632R.string.DeclineCall);
        String string3 = LocaleController.getString("RetryCall", C3632R.string.RetryCall);
        this.acceptLayout = new StaticLayout(string, textPaint, (int) textPaint.measureText(string), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        this.declineLayout = new StaticLayout(string2, textPaint, (int) textPaint.measureText(string2), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        this.retryLayout = new StaticLayout(string3, textPaint, (int) textPaint.measureText(string3), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        this.callDrawable = ContextCompat.getDrawable(context, C3632R.C3634drawable.calls_decline).mutate();
        Drawable mutate = ContextCompat.getDrawable(context, C3632R.C3634drawable.ic_close_white).mutate();
        this.cancelDrawable = mutate;
        mutate.setColorFilter(new PorterDuffColorFilter(-16777216, PorterDuff.Mode.MULTIPLY));
        this.acceptCirclePaint.setColor(1061534797);
        Drawable createSimpleSelectorCircleDrawable = Theme.createSimpleSelectorCircleDrawable(AndroidUtilities.m104dp(52), 0, ColorUtils.setAlphaComponent(-1, 76));
        this.rippleDrawable = createSimpleSelectorCircleDrawable;
        createSimpleSelectorCircleDrawable.setCallback(this);
        this.arrowDrawable = ContextCompat.getDrawable(context, C3632R.C3634drawable.call_arrow_right);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.maxOffset = (getMeasuredWidth() / 2.0f) - ((this.buttonWidth / 2.0f) + AndroidUtilities.m104dp(46));
        int m104dp = (this.buttonWidth - AndroidUtilities.m104dp(28)) / 2;
        this.callDrawable.setBounds(m104dp, m104dp, AndroidUtilities.m104dp(28) + m104dp, AndroidUtilities.m104dp(28) + m104dp);
        this.cancelDrawable.setBounds(m104dp, m104dp, AndroidUtilities.m104dp(28) + m104dp, AndroidUtilities.m104dp(28) + m104dp);
        this.linePaint.setStrokeWidth(AndroidUtilities.m104dp(3));
        this.linePaint.setColor(-1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0016, code lost:
        if (r0 != 3) goto L12;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r12) {
        /*
            Method dump skipped, instructions count: 429
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.voip.AcceptDeclineView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTouchEvent$0(ValueAnimator valueAnimator) {
        this.leftOffsetX = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
        this.leftAnimator = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTouchEvent$1(ValueAnimator valueAnimator) {
        this.rigthOffsetX = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
        this.rightAnimator = null;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        if (!this.retryMod) {
            if (this.expandSmallRadius) {
                float m104dp = this.smallRadius + (AndroidUtilities.m104dp(2) * 0.04f);
                this.smallRadius = m104dp;
                if (m104dp > AndroidUtilities.m104dp(4)) {
                    this.smallRadius = AndroidUtilities.m104dp(4);
                    this.expandSmallRadius = false;
                }
            } else {
                float m104dp2 = this.smallRadius - (AndroidUtilities.m104dp(2) * 0.04f);
                this.smallRadius = m104dp2;
                if (m104dp2 < BitmapDescriptorFactory.HUE_RED) {
                    this.smallRadius = BitmapDescriptorFactory.HUE_RED;
                    this.expandSmallRadius = true;
                }
            }
            if (this.expandBigRadius) {
                float m104dp3 = this.bigRadius + (AndroidUtilities.m104dp(4) * 0.03f);
                this.bigRadius = m104dp3;
                if (m104dp3 > AndroidUtilities.m104dp(10)) {
                    this.bigRadius = AndroidUtilities.m104dp(10);
                    this.expandBigRadius = false;
                }
            } else {
                float m104dp4 = this.bigRadius - (AndroidUtilities.m104dp(5) * 0.03f);
                this.bigRadius = m104dp4;
                if (m104dp4 < AndroidUtilities.m104dp(5)) {
                    this.bigRadius = AndroidUtilities.m104dp(5);
                    this.expandBigRadius = true;
                }
            }
            invalidate();
        }
        float f2 = 0.6f;
        if (this.screenWasWakeup && !this.retryMod) {
            float f3 = this.arrowProgress + 0.010666667f;
            this.arrowProgress = f3;
            if (f3 > 1.0f) {
                this.arrowProgress = BitmapDescriptorFactory.HUE_RED;
            }
            int m104dp5 = (int) (AndroidUtilities.m104dp(40) + (this.buttonWidth / 2.0f));
            float m104dp6 = AndroidUtilities.m104dp(46) + this.buttonWidth + AndroidUtilities.m104dp(8);
            float measuredWidth = (getMeasuredWidth() / 2.0f) - AndroidUtilities.m104dp(8);
            float m104dp7 = AndroidUtilities.m104dp(10);
            float f4 = 0.13333333f;
            int i = 0;
            while (i < 3) {
                float f5 = i;
                float f6 = ((((measuredWidth - m104dp6) - m104dp7) / 3.0f) * f5) + m104dp6;
                int i2 = (int) f6;
                float f7 = f5 * f4;
                float f8 = this.arrowProgress;
                float f9 = 0.5f;
                if (f8 <= f7 || f8 >= f7 + f2) {
                    f = m104dp7;
                } else {
                    float f10 = (f8 - f7) / f2;
                    f = m104dp7;
                    if (f10 > 0.5d) {
                        f10 = 1.0f - f10;
                    }
                    f9 = f10 + 0.5f;
                }
                canvas.save();
                canvas.clipRect(this.leftOffsetX + AndroidUtilities.m104dp(46) + (this.buttonWidth / 2), BitmapDescriptorFactory.HUE_RED, getMeasuredHeight(), getMeasuredWidth() >> 1);
                this.arrowDrawable.setAlpha((int) (255.0f * f9));
                Drawable drawable = this.arrowDrawable;
                drawable.setBounds(i2, m104dp5 - (drawable.getIntrinsicHeight() / 2), this.arrowDrawable.getIntrinsicWidth() + i2, (this.arrowDrawable.getIntrinsicHeight() / 2) + m104dp5);
                this.arrowDrawable.draw(canvas);
                canvas.restore();
                int measuredWidth2 = (int) (getMeasuredWidth() - f6);
                canvas.save();
                canvas.clipRect(getMeasuredWidth() >> 1, BitmapDescriptorFactory.HUE_RED, ((this.rigthOffsetX + getMeasuredWidth()) - AndroidUtilities.m104dp(46)) - (this.buttonWidth / 2), getMeasuredHeight());
                canvas.rotate(180.0f, measuredWidth2 - (this.arrowDrawable.getIntrinsicWidth() / 2.0f), m104dp5);
                Drawable drawable2 = this.arrowDrawable;
                drawable2.setBounds(measuredWidth2 - drawable2.getIntrinsicWidth(), m104dp5 - (this.arrowDrawable.getIntrinsicHeight() / 2), measuredWidth2, (this.arrowDrawable.getIntrinsicHeight() / 2) + m104dp5);
                this.arrowDrawable.draw(canvas);
                canvas.restore();
                i++;
                m104dp7 = f;
                f2 = 0.6f;
                f4 = 0.13333333f;
            }
            invalidate();
        }
        this.bigRadius += AndroidUtilities.m104dp(8) * 0.005f;
        canvas.save();
        canvas.translate(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m104dp(40));
        canvas.save();
        canvas.translate(this.leftOffsetX + AndroidUtilities.m104dp(46), BitmapDescriptorFactory.HUE_RED);
        this.declineDrawable.draw(canvas);
        canvas.save();
        canvas.translate((this.buttonWidth / 2.0f) - (this.declineLayout.getWidth() / 2.0f), this.buttonWidth + AndroidUtilities.m104dp(8));
        this.declineLayout.draw(canvas);
        this.declineRect.set(AndroidUtilities.m104dp(46), AndroidUtilities.m104dp(40), AndroidUtilities.m104dp(46) + this.buttonWidth, AndroidUtilities.m104dp(40) + this.buttonWidth);
        canvas.restore();
        if (this.retryMod) {
            this.cancelDrawable.draw(canvas);
        } else {
            this.callDrawable.draw(canvas);
        }
        if (this.leftDrag) {
            this.rippleDrawable.setBounds(AndroidUtilities.m104dp(4), AndroidUtilities.m104dp(4), this.buttonWidth - AndroidUtilities.m104dp(4), this.buttonWidth - AndroidUtilities.m104dp(4));
            this.rippleDrawable.draw(canvas);
        }
        canvas.restore();
        canvas.save();
        canvas.translate(((this.rigthOffsetX + getMeasuredWidth()) - AndroidUtilities.m104dp(46)) - this.buttonWidth, BitmapDescriptorFactory.HUE_RED);
        if (!this.retryMod) {
            int i3 = this.buttonWidth;
            canvas.drawCircle(i3 / 2.0f, i3 / 2.0f, ((i3 / 2.0f) - AndroidUtilities.m104dp(4)) + this.bigRadius, this.acceptCirclePaint);
            int i4 = this.buttonWidth;
            canvas.drawCircle(i4 / 2.0f, i4 / 2.0f, ((i4 / 2.0f) - AndroidUtilities.m104dp(4)) + this.smallRadius, this.acceptCirclePaint);
        }
        this.acceptDrawable.draw(canvas);
        this.acceptRect.set((getMeasuredWidth() - AndroidUtilities.m104dp(46)) - this.buttonWidth, AndroidUtilities.m104dp(40), getMeasuredWidth() - AndroidUtilities.m104dp(46), AndroidUtilities.m104dp(40) + this.buttonWidth);
        if (this.retryMod) {
            canvas.save();
            canvas.translate((this.buttonWidth / 2.0f) - (this.retryLayout.getWidth() / 2.0f), this.buttonWidth + AndroidUtilities.m104dp(8));
            this.retryLayout.draw(canvas);
            canvas.restore();
        } else {
            canvas.save();
            canvas.translate((this.buttonWidth / 2.0f) - (this.acceptLayout.getWidth() / 2.0f), this.buttonWidth + AndroidUtilities.m104dp(8));
            this.acceptLayout.draw(canvas);
            canvas.restore();
        }
        canvas.save();
        canvas.translate(-AndroidUtilities.m104dp(1), AndroidUtilities.m104dp(1));
        canvas.rotate(-135.0f, this.callDrawable.getBounds().centerX(), this.callDrawable.getBounds().centerY());
        this.callDrawable.draw(canvas);
        canvas.restore();
        if (!this.leftDrag) {
            this.rippleDrawable.setBounds(AndroidUtilities.m104dp(4), AndroidUtilities.m104dp(4), this.buttonWidth - AndroidUtilities.m104dp(4), this.buttonWidth - AndroidUtilities.m104dp(4));
            this.rippleDrawable.draw(canvas);
        }
        canvas.restore();
        canvas.restore();
    }

    public void setListener(Listener listener) {
        this.listener = listener;
    }

    public void setRetryMod(boolean z) {
        this.retryMod = z;
        if (z) {
            this.declineDrawable.setColor(-1);
            this.screenWasWakeup = false;
            return;
        }
        this.declineDrawable.setColor(-1696188);
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        this.rippleDrawable.setState(getDrawableState());
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return this.rippleDrawable == drawable || super.verifyDrawable(drawable);
    }

    @Override // android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.rippleDrawable;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        AcceptDeclineAccessibilityNodeProvider acceptDeclineAccessibilityNodeProvider = this.accessibilityNodeProvider;
        if (acceptDeclineAccessibilityNodeProvider == null || !acceptDeclineAccessibilityNodeProvider.onHoverEvent(motionEvent)) {
            return super.onHoverEvent(motionEvent);
        }
        return true;
    }

    @Override // android.view.View
    public AccessibilityNodeProvider getAccessibilityNodeProvider() {
        if (this.accessibilityNodeProvider == null) {
            this.accessibilityNodeProvider = new AcceptDeclineAccessibilityNodeProvider(this, 2) { // from class: org.telegram.ui.Components.voip.AcceptDeclineView.1
                private final int[] coords = {0, 0};

                @Override // org.telegram.p043ui.Components.voip.AcceptDeclineView.AcceptDeclineAccessibilityNodeProvider
                protected CharSequence getVirtualViewText(int i) {
                    if (i != 0) {
                        if (i != 1 || AcceptDeclineView.this.declineLayout == null) {
                            return null;
                        }
                        return AcceptDeclineView.this.declineLayout.getText();
                    }
                    AcceptDeclineView acceptDeclineView = AcceptDeclineView.this;
                    if (acceptDeclineView.retryMod) {
                        if (acceptDeclineView.retryLayout != null) {
                            return AcceptDeclineView.this.retryLayout.getText();
                        }
                        return null;
                    } else if (acceptDeclineView.acceptLayout != null) {
                        return AcceptDeclineView.this.acceptLayout.getText();
                    } else {
                        return null;
                    }
                }

                @Override // org.telegram.p043ui.Components.voip.AcceptDeclineView.AcceptDeclineAccessibilityNodeProvider
                protected void getVirtualViewBoundsInScreen(int i, Rect rect) {
                    getVirtualViewBoundsInParent(i, rect);
                    AcceptDeclineView.this.getLocationOnScreen(this.coords);
                    int[] iArr = this.coords;
                    rect.offset(iArr[0], iArr[1]);
                }

                @Override // org.telegram.p043ui.Components.voip.AcceptDeclineView.AcceptDeclineAccessibilityNodeProvider
                protected void getVirtualViewBoundsInParent(int i, Rect rect) {
                    if (i == 0) {
                        rect.set(AcceptDeclineView.this.acceptRect);
                    } else if (i == 1) {
                        rect.set(AcceptDeclineView.this.declineRect);
                    } else {
                        rect.setEmpty();
                    }
                }

                @Override // org.telegram.p043ui.Components.voip.AcceptDeclineView.AcceptDeclineAccessibilityNodeProvider
                protected void onVirtualViewClick(int i) {
                    Listener listener = AcceptDeclineView.this.listener;
                    if (listener != null) {
                        if (i == 0) {
                            listener.onAccept();
                        } else if (i == 1) {
                            listener.onDecline();
                        }
                    }
                }
            };
        }
        return this.accessibilityNodeProvider;
    }

    public void setScreenWasWakeup(boolean z) {
        this.screenWasWakeup = z;
    }

    /* renamed from: org.telegram.ui.Components.voip.AcceptDeclineView$AcceptDeclineAccessibilityNodeProvider */
    /* loaded from: classes6.dex */
    public static abstract class AcceptDeclineAccessibilityNodeProvider extends AccessibilityNodeProvider {
        private final AccessibilityManager accessibilityManager;
        private final View hostView;
        private final int virtualViewsCount;
        private final Rect rect = new Rect();
        private int currentFocusedVirtualViewId = -1;

        protected abstract void getVirtualViewBoundsInParent(int i, Rect rect);

        protected abstract void getVirtualViewBoundsInScreen(int i, Rect rect);

        protected abstract CharSequence getVirtualViewText(int i);

        protected abstract void onVirtualViewClick(int i);

        protected AcceptDeclineAccessibilityNodeProvider(View view, int i) {
            this.hostView = view;
            this.virtualViewsCount = i;
            this.accessibilityManager = (AccessibilityManager) ContextCompat.getSystemService(view.getContext(), AccessibilityManager.class);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
            if (i == -1) {
                AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain(this.hostView);
                obtain.setPackageName(this.hostView.getContext().getPackageName());
                for (int i2 = 0; i2 < this.virtualViewsCount; i2++) {
                    obtain.addChild(this.hostView, i2);
                }
                return obtain;
            }
            AccessibilityNodeInfo obtain2 = AccessibilityNodeInfo.obtain(this.hostView, i);
            obtain2.setPackageName(this.hostView.getContext().getPackageName());
            int i3 = Build.VERSION.SDK_INT;
            if (i3 >= 21) {
                obtain2.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_CLICK);
            }
            obtain2.setText(getVirtualViewText(i));
            obtain2.setClassName(Button.class.getName());
            if (i3 >= 24) {
                obtain2.setImportantForAccessibility(true);
            }
            obtain2.setVisibleToUser(true);
            obtain2.setClickable(true);
            obtain2.setEnabled(true);
            obtain2.setParent(this.hostView);
            getVirtualViewBoundsInScreen(i, this.rect);
            obtain2.setBoundsInScreen(this.rect);
            return obtain2;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public boolean performAction(int i, int i2, Bundle bundle) {
            if (i == -1) {
                return this.hostView.performAccessibilityAction(i2, bundle);
            }
            if (i2 == 64) {
                sendAccessibilityEventForVirtualView(i, LiteMode.FLAG_CHAT_SCALE);
                return false;
            } else if (i2 == 16) {
                onVirtualViewClick(i);
                return true;
            } else {
                return false;
            }
        }

        public boolean onHoverEvent(MotionEvent motionEvent) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (motionEvent.getAction() == 9 || motionEvent.getAction() == 7) {
                for (int i = 0; i < this.virtualViewsCount; i++) {
                    getVirtualViewBoundsInParent(i, this.rect);
                    if (this.rect.contains(x, y)) {
                        if (i != this.currentFocusedVirtualViewId) {
                            this.currentFocusedVirtualViewId = i;
                            sendAccessibilityEventForVirtualView(i, LiteMode.FLAG_CHAT_SCALE);
                        }
                        return true;
                    }
                }
            } else if (motionEvent.getAction() == 10 && this.currentFocusedVirtualViewId != -1) {
                this.currentFocusedVirtualViewId = -1;
                return true;
            }
            return false;
        }

        private void sendAccessibilityEventForVirtualView(int i, int i2) {
            ViewParent parent;
            if (!this.accessibilityManager.isTouchExplorationEnabled() || (parent = this.hostView.getParent()) == null) {
                return;
            }
            AccessibilityEvent obtain = AccessibilityEvent.obtain(i2);
            obtain.setPackageName(this.hostView.getContext().getPackageName());
            obtain.setSource(this.hostView, i);
            parent.requestSendAccessibilityEvent(this.hostView, obtain);
        }
    }
}
