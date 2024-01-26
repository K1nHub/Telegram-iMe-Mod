package org.telegram.p043ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.PremiumPreviewFragment;
/* renamed from: org.telegram.ui.Components.BottomPagerTabs */
/* loaded from: classes6.dex */
public class BottomPagerTabs extends View {
    private Utilities.Callback<Integer> onTabClick;
    private final BaseFragment parentFragment;
    private float progress;
    private final Theme.ResourcesProvider resourcesProvider;
    private boolean scrolling;
    private AnimatedFloat scrollingT;
    private final Paint selectPaint;
    private final Tab[] tabs;
    private boolean touchDown;
    private int value;

    public Tab[] createTabs() {
        return new Tab[0];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: org.telegram.ui.Components.BottomPagerTabs$Tab */
    /* loaded from: classes6.dex */
    public class Tab {
        private boolean active;
        final RectF clickRect;
        public int customEndFrameEnd;
        public int customEndFrameMid;
        public boolean customFrameInvert;
        final RLottieDrawable drawable;
        private int drawableColor;

        /* renamed from: i */
        final int f1826i;
        final StaticLayout layout;
        final float layoutLeft;
        final float layoutWidth;
        final AnimatedFloat nonscrollingT;
        final TextPaint paint;
        final Drawable ripple;

        public Tab(int i, int i2, CharSequence charSequence) {
            TextPaint textPaint = new TextPaint(1);
            this.paint = textPaint;
            this.clickRect = new RectF();
            this.nonscrollingT = new AnimatedFloat(BottomPagerTabs.this, 0L, 200L, CubicBezierInterpolator.EASE_OUT_QUINT);
            this.drawableColor = -1;
            this.f1826i = i;
            RLottieDrawable rLottieDrawable = new RLottieDrawable(i2, "" + i2, AndroidUtilities.m107dp(29), AndroidUtilities.m107dp(29));
            this.drawable = rLottieDrawable;
            rLottieDrawable.setMasterParent(BottomPagerTabs.this);
            rLottieDrawable.setAllowDecodeSingleFrame(true);
            rLottieDrawable.setPlayInDirectionOfCustomEndFrame(true);
            rLottieDrawable.setAutoRepeat(0);
            if ((BottomPagerTabs.this.parentFragment instanceof MediaActivity) && i == 2) {
                rLottieDrawable.setCustomEndFrame(rLottieDrawable.getFramesCount() - 2);
                rLottieDrawable.setCurrentFrame(rLottieDrawable.getFramesCount() - 2);
            }
            textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            textPaint.setTextSize(AndroidUtilities.m107dp(12));
            int i3 = Theme.key_windowBackgroundWhiteBlackText;
            textPaint.setColor(Theme.getColor(i3, BottomPagerTabs.this.resourcesProvider));
            StaticLayout staticLayout = new StaticLayout(charSequence, textPaint, AndroidUtilities.displaySize.x, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            this.layout = staticLayout;
            int lineCount = staticLayout.getLineCount();
            float f = BitmapDescriptorFactory.HUE_RED;
            this.layoutWidth = lineCount > 0 ? staticLayout.getLineWidth(0) : 0.0f;
            this.layoutLeft = staticLayout.getLineCount() > 0 ? staticLayout.getLineLeft(0) : f;
            this.ripple = Theme.createSelectorDrawable(Theme.multAlpha(Theme.getColor(i3, BottomPagerTabs.this.resourcesProvider), 0.1f), 7, AndroidUtilities.m107dp(16));
        }

        public void setActive(boolean z, boolean z2) {
            if (this.customFrameInvert) {
                z = !z;
            }
            if (this.active == z) {
                return;
            }
            if (!(BottomPagerTabs.this.parentFragment instanceof MediaActivity) || this.f1826i != 2 || !z) {
                if (BottomPagerTabs.this.tabs[this.f1826i].customEndFrameMid != 0) {
                    if (z) {
                        this.drawable.setCustomEndFrame(this.customEndFrameMid);
                        if (this.drawable.getCurrentFrame() >= this.customEndFrameEnd - 2) {
                            this.drawable.setCurrentFrame(0, false);
                        }
                        int currentFrame = this.drawable.getCurrentFrame();
                        int i = this.customEndFrameMid;
                        if (currentFrame <= i) {
                            this.drawable.start();
                        } else {
                            this.drawable.setCurrentFrame(i);
                        }
                    } else if (this.drawable.getCurrentFrame() >= this.customEndFrameMid - 1) {
                        this.drawable.setCustomEndFrame(this.customEndFrameEnd - 1);
                        this.drawable.start();
                    } else {
                        this.drawable.setCustomEndFrame(0);
                        this.drawable.setCurrentFrame(0);
                    }
                } else if (z) {
                    this.drawable.setCurrentFrame(0);
                    if (z2) {
                        this.drawable.start();
                    }
                }
            } else {
                this.drawable.setCurrentFrame(10);
                this.drawable.start();
            }
            this.active = z;
        }

        public void setColor(int i) {
            if ((BottomPagerTabs.this.parentFragment instanceof MediaActivity) && this.f1826i != 2 && !MessagesController.getInstance(UserConfig.selectedAccount).storiesEnabled()) {
                i = ColorUtils.setAlphaComponent(i, 127);
            }
            this.paint.setColor(i);
            if (this.drawableColor != i) {
                RLottieDrawable rLottieDrawable = this.drawable;
                this.drawableColor = i;
                rLottieDrawable.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN));
            }
        }
    }

    public BottomPagerTabs(Context context, Theme.ResourcesProvider resourcesProvider, BaseFragment baseFragment) {
        super(context);
        this.selectPaint = new Paint(1);
        this.scrollingT = new AnimatedFloat(this, 0L, 210L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.parentFragment = baseFragment;
        this.resourcesProvider = resourcesProvider;
        this.tabs = createTabs();
        setPadding(AndroidUtilities.m107dp(12), 0, AndroidUtilities.m107dp(12), 0);
        setProgress(BitmapDescriptorFactory.HUE_RED, false);
    }

    public void setScrolling(boolean z) {
        if (this.scrolling == z) {
            return;
        }
        this.scrolling = z;
        invalidate();
    }

    public void setProgress(float f) {
        setProgress(f, true);
    }

    private void setProgress(float f, boolean z) {
        float clamp = Utilities.clamp(f, this.tabs.length, (float) BitmapDescriptorFactory.HUE_RED);
        this.progress = clamp;
        this.value = Math.round(clamp);
        int i = 0;
        while (true) {
            Tab[] tabArr = this.tabs;
            if (i < tabArr.length) {
                tabArr[i].setActive(((float) Math.abs(this.value - i)) < (this.tabs[i].active ? 0.25f : 0.35f), z);
                i++;
            } else {
                invalidate();
                return;
            }
        }
    }

    public void setOnTabClick(Utilities.Callback<Integer> callback) {
        this.onTabClick = callback;
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Canvas canvas2;
        int paddingLeft;
        char c;
        float f;
        canvas.drawColor(Theme.getColor(Theme.key_windowBackgroundWhite, this.resourcesProvider));
        canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), AndroidUtilities.getShadowHeight(), Theme.dividerPaint);
        int width = ((getWidth() - getPaddingLeft()) - getPaddingRight()) / this.tabs.length;
        int min = Math.min(AndroidUtilities.m107dp(64), width);
        float f2 = this.scrollingT.set(this.scrolling);
        int i = 9;
        float f3 = 2.0f;
        if (f2 > BitmapDescriptorFactory.HUE_RED) {
            this.selectPaint.setColor(ColorUtils.setAlphaComponent(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider), (int) (((Math.abs((Math.floor(this.progress) + 0.5d) - this.progress) * 1.2000000476837158d) + 0.4000000059604645d) * 18.0d * f2)));
            float f4 = width;
            float f5 = f4 / 2.0f;
            float paddingLeft2 = getPaddingLeft() + AndroidUtilities.lerp((((float) Math.floor(this.progress)) * f4) + f5, (f4 * ((float) Math.ceil(this.progress))) + f5, this.progress - ((int) f));
            RectF rectF = AndroidUtilities.rectTmp;
            float f6 = min / 2.0f;
            rectF.set(paddingLeft2 - f6, AndroidUtilities.m107dp(9), paddingLeft2 + f6, AndroidUtilities.m107dp(41));
            canvas2 = canvas;
            canvas2.drawRoundRect(rectF, AndroidUtilities.m107dp(16), AndroidUtilities.m107dp(16), this.selectPaint);
        } else {
            canvas2 = canvas;
        }
        int i2 = 0;
        while (true) {
            Tab[] tabArr = this.tabs;
            if (i2 >= tabArr.length) {
                return;
            }
            Tab tab = tabArr[i2];
            tab.clickRect.set(getPaddingLeft() + (i2 * width), BitmapDescriptorFactory.HUE_RED, paddingLeft + width, getHeight());
            float min2 = 1.0f - Math.min(1.0f, Math.abs(this.progress - i2));
            int color = Theme.getColor(Theme.key_windowBackgroundWhiteGrayText6, this.resourcesProvider);
            int i3 = Theme.key_windowBackgroundWhiteBlackText;
            tab.setColor(ColorUtils.blendARGB(color, Theme.getColor(i3, this.resourcesProvider), min2));
            Rect rect = AndroidUtilities.rectTmp2;
            float f7 = min / f3;
            rect.set((int) (tab.clickRect.centerX() - f7), AndroidUtilities.m107dp(i), (int) (tab.clickRect.centerX() + f7), AndroidUtilities.m107dp(41));
            float f8 = tab.nonscrollingT.set(min2 > 0.6f);
            if (f2 < 1.0f) {
                this.selectPaint.setColor(ColorUtils.setAlphaComponent(Theme.getColor(i3, this.resourcesProvider), (int) (f8 * 18.0f * (1.0f - f2))));
                RectF rectF2 = AndroidUtilities.rectTmp;
                rectF2.set(rect);
                c = 16;
                canvas2.drawRoundRect(rectF2, AndroidUtilities.m107dp(16), AndroidUtilities.m107dp(16), this.selectPaint);
            } else {
                c = 16;
            }
            tab.ripple.setBounds(rect);
            tab.ripple.draw(canvas2);
            float m107dp = AndroidUtilities.m107dp(29) / 2.0f;
            rect.set((int) (tab.clickRect.centerX() - m107dp), (int) (AndroidUtilities.dpf2(24.66f) - m107dp), (int) (tab.clickRect.centerX() + m107dp), (int) (AndroidUtilities.dpf2(24.66f) + m107dp));
            tab.drawable.setBounds(rect);
            tab.drawable.draw(canvas2);
            canvas.save();
            canvas2.translate((tab.clickRect.centerX() - (tab.layoutWidth / 2.0f)) - tab.layoutLeft, AndroidUtilities.m107dp(50) - (tab.layout.getHeight() / 2.0f));
            tab.layout.draw(canvas2);
            canvas.restore();
            i2++;
            f3 = 2.0f;
            i = 9;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        Utilities.Callback<Integer> callback;
        if (motionEvent.getAction() == 0) {
            this.touchDown = true;
            return true;
        }
        if (motionEvent.getAction() == 1 || motionEvent.getAction() == 2) {
            int i = -1;
            float x = motionEvent.getX();
            int i2 = 0;
            while (true) {
                Tab[] tabArr = this.tabs;
                if (i2 >= tabArr.length) {
                    break;
                } else if (tabArr[i2].clickRect.left >= x || tabArr[i2].clickRect.right <= x) {
                    i2++;
                } else if ((this.parentFragment instanceof MediaActivity) && i2 != 2 && !MessagesController.getInstance(UserConfig.selectedAccount).storiesEnabled()) {
                    this.parentFragment.presentFragment(new PremiumPreviewFragment("stories"));
                    return false;
                } else {
                    if (motionEvent.getAction() != 1) {
                        if (this.touchDown) {
                            this.tabs[i2].ripple.setState(new int[0]);
                        }
                        this.tabs[i2].ripple.setState(new int[]{16842919, 16842910});
                    }
                    i = i2;
                }
            }
            for (int i3 = 0; i3 < this.tabs.length; i3++) {
                if (i3 != i || motionEvent.getAction() == 1) {
                    this.tabs[i3].ripple.setState(new int[0]);
                }
            }
            if (i >= 0 && this.value != i && (callback = this.onTabClick) != null) {
                callback.run(Integer.valueOf(i));
            }
            this.touchDown = false;
        } else if (motionEvent.getAction() == 3) {
            if (Build.VERSION.SDK_INT >= 21) {
                int i4 = 0;
                while (true) {
                    Tab[] tabArr2 = this.tabs;
                    if (i4 >= tabArr2.length) {
                        break;
                    }
                    tabArr2[i4].ripple.setState(new int[0]);
                    i4++;
                }
            }
            this.touchDown = false;
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.m107dp(64) + AndroidUtilities.getShadowHeight());
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        int i = 0;
        while (true) {
            Tab[] tabArr = this.tabs;
            if (i < tabArr.length) {
                if (tabArr[i].ripple == drawable) {
                    return true;
                }
                i++;
            } else {
                return super.verifyDrawable(drawable);
            }
        }
    }
}
