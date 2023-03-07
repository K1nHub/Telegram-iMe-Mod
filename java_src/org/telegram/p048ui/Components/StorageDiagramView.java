package org.telegram.p048ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.OvershootInterpolator;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.AnimatedTextView;
import org.telegram.p048ui.Storage.CacheModel;
/* renamed from: org.telegram.ui.Components.StorageDiagramView */
/* loaded from: classes6.dex */
public class StorageDiagramView extends View implements NotificationCenter.NotificationCenterDelegate {
    private float[] animateToPercentage;
    private int arcDrawingRadianOffset;
    private AvatarDrawable avatarDrawable;
    private ImageReceiver avatarImageReceiver;
    ValueAnimator backAnimator;
    CacheModel cacheModel;
    private String customCenterText;
    private int customSize;
    private ClearViewData[] data;
    private Long dialogId;
    CharSequence dialogText;
    StaticLayout dialogTextLayout;
    TextPaint dialogTextPaint;
    private float[] drawingPercentage;
    int enabledCount;
    float pressedProgress;
    private RectF rectF;
    private float singleProgress;
    private float[] startFromPercentage;
    AnimatedTextView.AnimatedTextDrawable text1;
    AnimatedTextView.AnimatedTextDrawable text2;
    ValueAnimator valueAnimator;

    /* JADX INFO: Access modifiers changed from: protected */
    public void onAvatarClick() {
    }

    public StorageDiagramView(Context context) {
        this(context, (AttributeSet) null);
    }

    public void setCustomCenterText(String str) {
        this.customCenterText = str;
        this.text1.setText(str, false, false);
    }

    public void setCustomSize(int i) {
        this.customSize = i;
    }

    public void setArcDrawingRadianOffset(int i) {
        this.arcDrawingRadianOffset = i;
        invalidate();
    }

    public StorageDiagramView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.rectF = new RectF();
        this.singleProgress = BitmapDescriptorFactory.HUE_RED;
        this.text1 = new AnimatedTextView.AnimatedTextDrawable(false, true, true);
        this.text2 = new AnimatedTextView.AnimatedTextDrawable(false, true, false);
        this.text1.setCallback(this);
        this.text2.setCallback(this);
    }

    public void setCacheModel(CacheModel cacheModel) {
        this.cacheModel = cacheModel;
    }

    public StorageDiagramView(Context context, long j) {
        this(context);
        this.dialogId = Long.valueOf(j);
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        this.avatarDrawable = avatarDrawable;
        avatarDrawable.setScaleSize(1.5f);
        ImageReceiver imageReceiver = new ImageReceiver();
        this.avatarImageReceiver = imageReceiver;
        imageReceiver.setParentView(this);
        if (j == Long.MAX_VALUE) {
            this.dialogText = LocaleController.getString("CacheOtherChats", C3158R.string.CacheOtherChats);
            this.avatarDrawable.setAvatarType(14);
            this.avatarImageReceiver.setForUserOrChat(null, this.avatarDrawable);
            return;
        }
        String dialogPhotoTitle = DialogObject.setDialogPhotoTitle(this.avatarImageReceiver, this.avatarDrawable, MessagesController.getInstance(UserConfig.selectedAccount).getUserOrChat(j));
        this.dialogText = dialogPhotoTitle;
        this.dialogText = Emoji.replaceEmoji(dialogPhotoTitle, null, AndroidUtilities.m50dp(6), false);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        if (this.dialogId != null) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(166), 1073741824));
            i4 = (View.MeasureSpec.getSize(i) - AndroidUtilities.m50dp(110)) / 2;
            this.rectF.set(AndroidUtilities.m50dp(3) + i4, AndroidUtilities.m50dp(3), AndroidUtilities.m50dp(107) + i4, AndroidUtilities.m50dp(107));
        } else {
            int i5 = this.customSize;
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i5 != 0 ? i5 + 6 : AndroidUtilities.m50dp(110), 1073741824);
            int i6 = this.customSize;
            super.onMeasure(makeMeasureSpec, View.MeasureSpec.makeMeasureSpec(i6 != 0 ? i6 + 6 : AndroidUtilities.m50dp(110), 1073741824));
            RectF rectF = this.rectF;
            float m50dp = AndroidUtilities.m50dp(3);
            float m50dp2 = AndroidUtilities.m50dp(3);
            int i7 = this.customSize;
            rectF.set(m50dp, m50dp2, i7 != 0 ? i7 - 3 : AndroidUtilities.m50dp(107), this.customSize != 0 ? i3 - 3 : AndroidUtilities.m50dp(107));
            i4 = 0;
        }
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.text1;
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        animatedTextDrawable.setAnimationProperties(0.18f, 0L, 300L, cubicBezierInterpolator);
        if (this.customCenterText != null) {
            this.text1.setTextSize(AndroidUtilities.m50dp(13));
        } else {
            this.text1.setTextSize(AndroidUtilities.m50dp(24));
        }
        this.text1.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.text2.setAnimationProperties(0.18f, 0L, 300L, cubicBezierInterpolator);
        if (this.dialogId != null) {
            this.text2.setTextSize(AndroidUtilities.m50dp(16));
            this.text1.setGravity(5);
            this.text2.setGravity(3);
        } else {
            this.text2.setTextSize(AndroidUtilities.m50dp(13));
            int textSize = (int) this.text1.getTextSize();
            int textSize2 = (int) this.text2.getTextSize();
            if (this.customCenterText != null) {
                textSize2 = 0;
            }
            int i8 = this.customSize;
            if (i8 == 0) {
                i8 = AndroidUtilities.m50dp(110);
            }
            int i9 = ((i8 - textSize) - textSize2) / 2;
            int i10 = textSize + i9;
            this.text1.setBounds(0, i9, getMeasuredWidth(), i10);
            this.text2.setBounds(0, AndroidUtilities.m50dp(2) + i10, getMeasuredWidth(), i10 + textSize2 + AndroidUtilities.m50dp(2));
            this.text1.setGravity(17);
            this.text2.setGravity(17);
        }
        if (this.dialogText != null) {
            if (this.dialogTextPaint == null) {
                this.dialogTextPaint = new TextPaint(1);
            }
            this.dialogTextPaint.setTextSize(AndroidUtilities.m50dp(13));
            int size = View.MeasureSpec.getSize(i) - AndroidUtilities.m50dp(60);
            this.dialogTextLayout = StaticLayoutEx.createStaticLayout2(this.dialogText, this.dialogTextPaint, size, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false, TextUtils.TruncateAt.END, size, 1);
        }
        ImageReceiver imageReceiver = this.avatarImageReceiver;
        if (imageReceiver != null) {
            imageReceiver.setImageCoords(i4 + AndroidUtilities.m50dp(10), AndroidUtilities.m50dp(10), AndroidUtilities.m50dp(90), AndroidUtilities.m50dp(90));
            this.avatarImageReceiver.setRoundRadius(AndroidUtilities.m50dp(45));
        }
        updateDescription();
    }

    public void setData(CacheModel cacheModel, ClearViewData[] clearViewDataArr) {
        this.data = clearViewDataArr;
        this.cacheModel = cacheModel;
        invalidate();
        this.drawingPercentage = new float[clearViewDataArr.length];
        this.animateToPercentage = new float[clearViewDataArr.length];
        this.startFromPercentage = new float[clearViewDataArr.length];
        update(false);
        if (this.enabledCount > 1) {
            this.singleProgress = BitmapDescriptorFactory.HUE_RED;
        } else {
            this.singleProgress = 1.0f;
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        double d;
        int i;
        if (this.data == null) {
            return;
        }
        if (this.avatarImageReceiver != null) {
            canvas.save();
            if (isPressed()) {
                float f = this.pressedProgress;
                if (f != 1.0f) {
                    float min = f + (Math.min(40.0f, 1000.0f / AndroidUtilities.screenRefreshRate) / 100.0f);
                    this.pressedProgress = min;
                    this.pressedProgress = Utilities.clamp(min, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                    invalidate();
                }
            }
            float f2 = ((1.0f - this.pressedProgress) * 0.15f) + 0.85f;
            canvas.scale(f2, f2, this.avatarImageReceiver.getCenterX(), this.avatarImageReceiver.getCenterY());
        }
        if (this.enabledCount > 1) {
            float f3 = this.singleProgress;
            if (f3 > BitmapDescriptorFactory.HUE_RED) {
                float f4 = (float) (f3 - 0.04d);
                this.singleProgress = f4;
                if (f4 < BitmapDescriptorFactory.HUE_RED) {
                    this.singleProgress = BitmapDescriptorFactory.HUE_RED;
                }
            }
        } else {
            float f5 = this.singleProgress;
            if (f5 < 1.0f) {
                float f6 = (float) (f5 + 0.04d);
                this.singleProgress = f6;
                if (f6 > 1.0f) {
                    this.singleProgress = 1.0f;
                }
            }
        }
        int i2 = 0;
        float f7 = BitmapDescriptorFactory.HUE_RED;
        while (true) {
            ClearViewData[] clearViewDataArr = this.data;
            d = 180.0d;
            i = 255;
            if (i2 >= clearViewDataArr.length) {
                break;
            }
            if (clearViewDataArr[i2] != null) {
                float[] fArr = this.drawingPercentage;
                if (fArr[i2] != BitmapDescriptorFactory.HUE_RED) {
                    float f8 = fArr[i2];
                    if (clearViewDataArr[i2].firstDraw) {
                        float f9 = ((-360.0f) * f8) + ((1.0f - this.singleProgress) * 10.0f);
                        float f10 = f9 > BitmapDescriptorFactory.HUE_RED ? BitmapDescriptorFactory.HUE_RED : f9;
                        clearViewDataArr[i2].paint.setColor(Theme.getColor(clearViewDataArr[i2].color));
                        this.data[i2].paint.setAlpha(255);
                        double width = this.rectF.width() / 2.0f;
                        if (Math.abs((float) (f10 * ((3.141592653589793d * width) / 180.0d))) <= 1.0f) {
                            float f11 = 360.0f * f7;
                            float centerX = this.rectF.centerX() + ((float) (Math.cos(Math.toRadians((this.arcDrawingRadianOffset - 90) - f11)) * width));
                            float centerY = this.rectF.centerY() + ((float) (width * Math.sin(Math.toRadians((this.arcDrawingRadianOffset - 90) - f11))));
                            if (Build.VERSION.SDK_INT >= 21) {
                                canvas.drawPoint(centerX, centerY, this.data[i2].paint);
                            } else {
                                this.data[i2].paint.setStyle(Paint.Style.FILL);
                                canvas.drawCircle(centerX, centerY, this.data[i2].paint.getStrokeWidth() / 2.0f, this.data[i2].paint);
                            }
                        } else {
                            this.data[i2].paint.setStyle(Paint.Style.STROKE);
                            canvas.drawArc(this.rectF, (this.arcDrawingRadianOffset - 90) - (360.0f * f7), f10, false, this.data[i2].paint);
                        }
                    }
                    f7 += f8;
                }
            }
            i2++;
        }
        int i3 = 0;
        float f12 = BitmapDescriptorFactory.HUE_RED;
        while (true) {
            ClearViewData[] clearViewDataArr2 = this.data;
            if (i3 >= clearViewDataArr2.length) {
                break;
            }
            if (clearViewDataArr2[i3] != null) {
                float[] fArr2 = this.drawingPercentage;
                if (fArr2[i3] != BitmapDescriptorFactory.HUE_RED) {
                    float f13 = fArr2[i3];
                    if (!clearViewDataArr2[i3].firstDraw) {
                        float f14 = (f13 * (-360.0f)) + ((1.0f - this.singleProgress) * 10.0f);
                        float f15 = f14 > BitmapDescriptorFactory.HUE_RED ? BitmapDescriptorFactory.HUE_RED : f14;
                        clearViewDataArr2[i3].paint.setColor(Theme.getColor(clearViewDataArr2[i3].color));
                        this.data[i3].paint.setAlpha(i);
                        double width2 = this.rectF.width() / 2.0f;
                        if (Math.abs((float) (f15 * ((width2 * 3.141592653589793d) / d))) <= 1.0f) {
                            float f16 = f12 * 360.0f;
                            float centerX2 = this.rectF.centerX() + ((float) (Math.cos(Math.toRadians((this.arcDrawingRadianOffset - 90) - f16)) * width2));
                            float centerY2 = this.rectF.centerY() + ((float) (width2 * Math.sin(Math.toRadians((this.arcDrawingRadianOffset - 90) - f16))));
                            if (Build.VERSION.SDK_INT >= 21) {
                                canvas.drawPoint(centerX2, centerY2, this.data[i3].paint);
                            } else {
                                this.data[i3].paint.setStyle(Paint.Style.FILL);
                                canvas.drawCircle(centerX2, centerY2, this.data[i3].paint.getStrokeWidth() / 2.0f, this.data[i3].paint);
                            }
                        } else {
                            this.data[i3].paint.setStyle(Paint.Style.STROKE);
                            canvas.drawArc(this.rectF, (this.arcDrawingRadianOffset - 90) - (f12 * 360.0f), f15, false, this.data[i3].paint);
                            f12 += f13;
                            i3++;
                            i = 255;
                            d = 180.0d;
                        }
                    }
                    f12 += f13;
                    i3++;
                    i = 255;
                    d = 180.0d;
                }
            }
            i3++;
            i = 255;
            d = 180.0d;
        }
        ImageReceiver imageReceiver = this.avatarImageReceiver;
        if (imageReceiver != null) {
            imageReceiver.draw(canvas);
            canvas.restore();
        }
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.text1;
        if (animatedTextDrawable != null) {
            animatedTextDrawable.setTextColor(Theme.getColor("dialogTextBlack"));
            this.text2.setTextColor(Theme.getColor("dialogTextBlack"));
            if (this.dialogId != null) {
                float currentWidth = this.text1.getCurrentWidth() + AndroidUtilities.m50dp(4) + this.text2.getCurrentWidth();
                float width3 = (getWidth() - currentWidth) / 2.0f;
                this.text1.setBounds(0, AndroidUtilities.m50dp(115), (int) (this.text1.getCurrentWidth() + width3), AndroidUtilities.m50dp(145));
                AnimatedTextView.AnimatedTextDrawable animatedTextDrawable2 = this.text2;
                animatedTextDrawable2.setBounds((int) ((width3 + currentWidth) - animatedTextDrawable2.getCurrentWidth()), AndroidUtilities.m50dp(118), getWidth(), AndroidUtilities.m50dp(148));
            }
            this.text1.draw(canvas);
            this.text2.draw(canvas);
        }
        if (this.dialogTextLayout != null) {
            canvas.save();
            canvas.translate(AndroidUtilities.m50dp(30), AndroidUtilities.m50dp(148) - ((this.dialogTextLayout.getHeight() - AndroidUtilities.m50dp(13)) / 2.0f));
            this.dialogTextPaint.setColor(Theme.getColor("dialogTextBlack"));
            this.dialogTextLayout.draw(canvas);
            canvas.restore();
        }
    }

    /* renamed from: org.telegram.ui.Components.StorageDiagramView$ClearViewData */
    /* loaded from: classes6.dex */
    public static class ClearViewData {
        public boolean clear;
        public String color;
        boolean firstDraw;
        Paint paint;
        public long size;
        public Double sizeAsDouble;

        public void setSizeAsDouble(Double d) {
            this.sizeAsDouble = d;
        }

        public void setStrokeWidth(float f) {
            this.paint.setStrokeWidth(f);
        }

        public void setSize(long j) {
            this.size = j;
        }

        public boolean isClear() {
            return this.clear;
        }

        public ClearViewData(StorageDiagramView storageDiagramView) {
            Paint paint = new Paint(1);
            this.paint = paint;
            this.clear = true;
            this.firstDraw = false;
            paint.setStyle(Paint.Style.STROKE);
            this.paint.setStrokeWidth(AndroidUtilities.m50dp(5));
            this.paint.setStrokeCap(Paint.Cap.ROUND);
            this.paint.setStrokeJoin(Paint.Join.ROUND);
        }

        public void setClear(boolean z) {
            if (this.clear != z) {
                this.clear = z;
                this.firstDraw = true;
            }
        }
    }

    public void update(boolean z) {
        final ClearViewData[] clearViewDataArr = this.data;
        if (clearViewDataArr == null) {
            return;
        }
        long j = 0;
        double d = 0.0d;
        long j2 = 0;
        for (int i = 0; i < clearViewDataArr.length; i++) {
            CacheModel cacheModel = this.cacheModel;
            long selectedFilesSize = cacheModel == null ? -1L : cacheModel.getSelectedFilesSize(i);
            if (clearViewDataArr[i] != null && (clearViewDataArr[i].clear || selectedFilesSize > 0)) {
                if (clearViewDataArr[i].sizeAsDouble != null) {
                    d += clearViewDataArr[i].sizeAsDouble.doubleValue();
                } else {
                    if (selectedFilesSize <= 0) {
                        selectedFilesSize = clearViewDataArr[i].size;
                    }
                    j2 += selectedFilesSize;
                }
            }
        }
        this.enabledCount = 0;
        int i2 = 0;
        float f = BitmapDescriptorFactory.HUE_RED;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        while (i2 < clearViewDataArr.length) {
            CacheModel cacheModel2 = this.cacheModel;
            long selectedFilesSize2 = cacheModel2 == null ? -1L : cacheModel2.getSelectedFilesSize(i2);
            if (clearViewDataArr[i2] != null && (clearViewDataArr[i2].clear || selectedFilesSize2 > j)) {
                this.enabledCount++;
            }
            if (clearViewDataArr[i2] == null || (!clearViewDataArr[i2].clear && selectedFilesSize2 <= j)) {
                this.animateToPercentage[i2] = 0.0f;
            } else {
                int i3 = (selectedFilesSize2 > j ? 1 : (selectedFilesSize2 == j ? 0 : -1));
                float f3 = ((float) (i3 > 0 ? selectedFilesSize2 : clearViewDataArr[i2].size)) / ((float) j2);
                if (clearViewDataArr[i2].sizeAsDouble != null) {
                    f3 = (float) (clearViewDataArr[i2].sizeAsDouble.doubleValue() / d);
                }
                if (f3 < 0.02777f) {
                    f3 = 0.02777f;
                }
                f += f3;
                if (f3 > f2 && (clearViewDataArr[i2].clear || i3 > 0)) {
                    f2 = f3;
                }
                this.animateToPercentage[i2] = f3;
            }
            i2++;
            j = 0;
        }
        if (f > 1.0f) {
            float f4 = 1.0f / f;
            for (int i4 = 0; i4 < clearViewDataArr.length; i4++) {
                if (clearViewDataArr[i4] != null) {
                    float[] fArr = this.animateToPercentage;
                    fArr[i4] = fArr[i4] * f4;
                }
            }
        }
        if (!z) {
            System.arraycopy(this.animateToPercentage, 0, this.drawingPercentage, 0, clearViewDataArr.length);
            return;
        }
        System.arraycopy(this.drawingPercentage, 0, this.startFromPercentage, 0, clearViewDataArr.length);
        ValueAnimator valueAnimator = this.valueAnimator;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.valueAnimator.cancel();
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.valueAnimator = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.StorageDiagramView$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                StorageDiagramView.this.lambda$update$0(clearViewDataArr, valueAnimator2);
            }
        });
        this.valueAnimator.addListener(new AnimatorListenerAdapter(this) { // from class: org.telegram.ui.Components.StorageDiagramView.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                int i5 = 0;
                while (true) {
                    ClearViewData[] clearViewDataArr2 = clearViewDataArr;
                    if (i5 >= clearViewDataArr2.length) {
                        return;
                    }
                    if (clearViewDataArr2[i5] != null) {
                        clearViewDataArr2[i5].firstDraw = false;
                    }
                    i5++;
                }
            }
        });
        this.valueAnimator.setDuration(450L);
        this.valueAnimator.setInterpolator(new FastOutSlowInInterpolator());
        this.valueAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$update$0(ClearViewData[] clearViewDataArr, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        for (int i = 0; i < clearViewDataArr.length; i++) {
            this.drawingPercentage[i] = (this.startFromPercentage[i] * (1.0f - floatValue)) + (this.animateToPercentage[i] * floatValue);
        }
        invalidate();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        Long l;
        boolean z = this.avatarImageReceiver != null && (l = this.dialogId) != null && l.longValue() != Long.MAX_VALUE && motionEvent.getX() > this.avatarImageReceiver.getImageX() && motionEvent.getX() <= this.avatarImageReceiver.getImageX2() && motionEvent.getY() > this.avatarImageReceiver.getImageY() && motionEvent.getY() <= this.avatarImageReceiver.getImageY2();
        if (motionEvent.getAction() == 0) {
            if (z) {
                setPressed(true);
                return true;
            }
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            if (z && motionEvent.getAction() != 3) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.StorageDiagramView$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        StorageDiagramView.this.onAvatarClick();
                    }
                }, 80L);
            }
            setPressed(false);
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        ValueAnimator valueAnimator;
        if (isPressed() != z) {
            super.setPressed(z);
            invalidate();
            if (z && (valueAnimator = this.backAnimator) != null) {
                valueAnimator.removeAllListeners();
                this.backAnimator.cancel();
            }
            if (z) {
                return;
            }
            float f = this.pressedProgress;
            if (f != BitmapDescriptorFactory.HUE_RED) {
                ValueAnimator ofFloat = ValueAnimator.ofFloat(f, BitmapDescriptorFactory.HUE_RED);
                this.backAnimator = ofFloat;
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.StorageDiagramView$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        StorageDiagramView.this.lambda$setPressed$1(valueAnimator2);
                    }
                });
                this.backAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.StorageDiagramView.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        StorageDiagramView.this.backAnimator = null;
                    }
                });
                this.backAnimator.setInterpolator(new OvershootInterpolator(2.0f));
                this.backAnimator.setDuration(350L);
                this.backAnimator.start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setPressed$1(ValueAnimator valueAnimator) {
        this.pressedProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    public long updateDescription() {
        String str = this.customCenterText;
        if (str != null) {
            this.text1.setText(str, true, false);
            this.text2.setText("", true, false);
            return 0L;
        }
        long calculateSize = calculateSize();
        String[] split = AndroidUtilities.formatFileSize(calculateSize).split(" ");
        if (split.length > 1) {
            int i = (calculateSize > 0L ? 1 : (calculateSize == 0L ? 0 : -1));
            this.text1.setText(i == 0 ? " " : split[0], true, false);
            this.text2.setText(i != 0 ? split[1] : " ", true, false);
        }
        return calculateSize;
    }

    public long calculateSize() {
        if (this.data == null) {
            return 0L;
        }
        long j = 0;
        for (int i = 0; i < this.data.length; i++) {
            CacheModel cacheModel = this.cacheModel;
            long selectedFilesSize = cacheModel == null ? -1L : cacheModel.getSelectedFilesSize(i);
            ClearViewData[] clearViewDataArr = this.data;
            if (clearViewDataArr[i] != null && (clearViewDataArr[i].clear || selectedFilesSize > 0)) {
                if (selectedFilesSize <= 0) {
                    selectedFilesSize = clearViewDataArr[i].size;
                }
                j += selectedFilesSize;
            }
        }
        return j;
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ImageReceiver imageReceiver = this.avatarImageReceiver;
        if (imageReceiver != null) {
            imageReceiver.onAttachedToWindow();
        }
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ImageReceiver imageReceiver = this.avatarImageReceiver;
        if (imageReceiver != null) {
            imageReceiver.onDetachedFromWindow();
        }
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.emojiLoaded) {
            invalidate();
        }
    }
}
