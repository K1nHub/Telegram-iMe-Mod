package org.telegram.p043ui.Stories.recorder;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.AnimatedTextView;
import org.telegram.p043ui.Components.BlobDrawable;
import org.telegram.p043ui.Components.BlurringShader;
import org.telegram.p043ui.Components.ButtonBounce;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.ItemOptions;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RLottieDrawable;
import org.telegram.p043ui.Components.SizeNotifierFrameLayout;
import org.telegram.p043ui.Components.Text;
import org.telegram.p043ui.Stories.recorder.CaptionContainerView;
/* renamed from: org.telegram.ui.Stories.recorder.CaptionStory */
/* loaded from: classes6.dex */
public class CaptionStory extends CaptionContainerView {
    public static final int[] periods = {21600, 43200, 86400, 172800};
    private float amplitude;
    private final AnimatedFloat animatedAmplitude;
    private final BlobDrawable bigWaveDrawable;
    private final Path boundsPath;
    private final AnimatedFloat cancel2T;
    private final RectF cancelBounds;
    private final AnimatedFloat cancelT;
    private Text cancelText;
    private boolean cancelling;
    private final Path circlePath;
    private RoundVideoRecorder currentRecorder;
    private final Runnable doneCancel;
    private Drawable flipButton;
    private float fromX;
    private float fromY;
    private boolean hasRoundVideo;
    private final AnimatedFloat lock2T;
    private final Paint lockBackgroundPaint;
    private final RectF lockBounds;
    private final AnimatedFloat lockCancelledT;
    private final Path lockHandle;
    private final Paint lockHandlePaint;
    private final Paint lockPaint;
    private float lockProgress;
    private final RectF lockRect;
    private final Paint lockShadowPaint;
    private final AnimatedFloat lockT;
    private boolean locked;
    private Utilities.Callback<Integer> onPeriodUpdate;
    private Utilities.Callback<Integer> onPremiumHintShow;
    public ImageView periodButton;
    public CaptionContainerView.PeriodDrawable periodDrawable;
    private int periodIndex;
    private ItemOptions periodPopup;
    private boolean periodVisible;
    private final RecordDot recordPaint;
    private boolean recordTouch;
    private boolean recording;
    public ImageView roundButton;
    private final Drawable roundDrawable;
    private final Paint roundPaint;
    private float slideProgress;
    private Paint slideToCancelArrowPaint;
    private Path slideToCancelArrowPath;
    private Text slideToCancelText;
    private long startTime;
    private boolean stopping;
    private final AnimatedTextView.AnimatedTextDrawable timerTextDrawable;
    private final BlobDrawable tinyWaveDrawable;
    private final Paint whitePaint;

    @Override // org.telegram.p043ui.Stories.recorder.CaptionContainerView
    public int additionalRightMargin() {
        return 36;
    }

    public boolean canRecord() {
        return false;
    }

    public int getTimelineHeight() {
        return 0;
    }

    public void putRecorder(RoundVideoRecorder roundVideoRecorder) {
    }

    public void removeRound() {
    }

    public CaptionStory(Context context, final FrameLayout frameLayout, SizeNotifierFrameLayout sizeNotifierFrameLayout, FrameLayout frameLayout2, final Theme.ResourcesProvider resourcesProvider, BlurringShader.BlurManager blurManager) {
        super(context, frameLayout, sizeNotifierFrameLayout, frameLayout2, resourcesProvider, blurManager);
        this.periodVisible = true;
        this.periodIndex = 0;
        this.recordPaint = new RecordDot(this);
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable(false, true, true);
        this.timerTextDrawable = animatedTextDrawable;
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
        animatedTextDrawable.setAnimationProperties(0.16f, 0L, 50L, cubicBezierInterpolator);
        animatedTextDrawable.setTextSize(AndroidUtilities.m107dp(15));
        animatedTextDrawable.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        animatedTextDrawable.setText("0:00.0");
        animatedTextDrawable.setTextColor(-1);
        Paint paint = new Paint(1);
        this.whitePaint = paint;
        Paint paint2 = new Paint(1);
        this.roundPaint = paint2;
        BlobDrawable blobDrawable = new BlobDrawable(11, LiteMode.FLAGS_CHAT);
        this.tinyWaveDrawable = blobDrawable;
        BlobDrawable blobDrawable2 = new BlobDrawable(12, LiteMode.FLAGS_CHAT);
        this.bigWaveDrawable = blobDrawable2;
        paint.setColor(-1);
        paint2.setColor(-15033089);
        blobDrawable.minRadius = AndroidUtilities.m107dp(47);
        blobDrawable.maxRadius = AndroidUtilities.m107dp(55);
        blobDrawable.generateBlob();
        blobDrawable2.minRadius = AndroidUtilities.m107dp(47);
        blobDrawable2.maxRadius = AndroidUtilities.m107dp(55);
        blobDrawable2.generateBlob();
        this.roundDrawable = getContext().getResources().getDrawable(C3632R.C3634drawable.input_video_pressed).mutate();
        this.animatedAmplitude = new AnimatedFloat(new Runnable() { // from class: org.telegram.ui.Stories.recorder.CaptionStory$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                CaptionStory.this.invalidateDrawOver2();
            }
        }, 0L, 200L, cubicBezierInterpolator);
        this.circlePath = new Path();
        this.boundsPath = new Path();
        this.lockBackgroundPaint = new Paint(1);
        this.lockShadowPaint = new Paint(1);
        this.lockPaint = new Paint(1);
        Paint paint3 = new Paint(1);
        this.lockHandlePaint = paint3;
        paint3.setStyle(Paint.Style.STROKE);
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.Stories.recorder.CaptionStory$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                CaptionStory.this.invalidateDrawOver2();
            }
        };
        CubicBezierInterpolator cubicBezierInterpolator2 = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.lockCancelledT = new AnimatedFloat(runnable, 350L, cubicBezierInterpolator2);
        this.lockBounds = new RectF();
        this.cancelBounds = new RectF();
        this.lockRect = new RectF();
        this.lockHandle = new Path();
        this.cancelT = new AnimatedFloat(this, 0L, 350L, cubicBezierInterpolator2);
        this.cancel2T = new AnimatedFloat(new Runnable() { // from class: org.telegram.ui.Stories.recorder.CaptionStory$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                CaptionStory.this.invalidateDrawOver2();
            }
        }, 0L, 420L, cubicBezierInterpolator2);
        this.lockT = new AnimatedFloat(this, 0L, 350L, cubicBezierInterpolator2);
        this.lock2T = new AnimatedFloat(new Runnable() { // from class: org.telegram.ui.Stories.recorder.CaptionStory$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                CaptionStory.this.invalidateDrawOver2();
            }
        }, 0L, 350L, cubicBezierInterpolator2);
        this.doneCancel = new Runnable() { // from class: org.telegram.ui.Stories.recorder.CaptionStory$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                CaptionStory.this.lambda$new$6();
            }
        };
        ImageView imageView = new ImageView(context);
        this.roundButton = imageView;
        new ButtonBounce(imageView);
        this.roundButton.setImageResource(C3632R.C3634drawable.input_video_story);
        this.roundButton.setBackground(Theme.createSelectorDrawable(1090519039, 1, AndroidUtilities.m107dp(18)));
        this.roundButton.setScaleType(ImageView.ScaleType.CENTER);
        addView(this.roundButton, LayoutHelper.createFrame(44, 44, 85, 0, 0, 11, 10));
        this.roundButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.CaptionStory$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CaptionStory.this.lambda$new$0(view);
            }
        });
        ImageView imageView2 = new ImageView(context);
        this.periodButton = imageView2;
        CaptionContainerView.PeriodDrawable periodDrawable = new CaptionContainerView.PeriodDrawable();
        this.periodDrawable = periodDrawable;
        imageView2.setImageDrawable(periodDrawable);
        this.periodButton.setBackground(Theme.createSelectorDrawable(1090519039, 1, AndroidUtilities.m107dp(18)));
        this.periodButton.setScaleType(ImageView.ScaleType.CENTER);
        setPeriod(86400, false);
        addView(this.periodButton, LayoutHelper.createFrame(44, 44, 85, 0, 0, 51, 10));
        this.periodButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.CaptionStory$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CaptionStory.this.lambda$new$5(frameLayout, resourcesProvider, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        showRemoveRoundAlert();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(FrameLayout frameLayout, Theme.ResourcesProvider resourcesProvider, View view) {
        String formatPluralString;
        ItemOptions itemOptions = this.periodPopup;
        if (itemOptions != null && itemOptions.isShown()) {
            return;
        }
        final Utilities.Callback callback = new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.CaptionStory$$ExternalSyntheticLambda8
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                CaptionStory.this.lambda$new$1((Integer) obj);
            }
        };
        boolean isPremium = UserConfig.getInstance(this.currentAccount).isPremium();
        final Utilities.Callback callback2 = isPremium ? null : new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.CaptionStory$$ExternalSyntheticLambda7
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                CaptionStory.this.lambda$new$2((Integer) obj);
            }
        };
        ItemOptions makeOptions = ItemOptions.makeOptions(frameLayout, resourcesProvider, this.periodButton);
        this.periodPopup = makeOptions;
        makeOptions.addText(LocaleController.getString("StoryPeriodHint"), 13);
        this.periodPopup.addGap();
        int i = 0;
        while (true) {
            int[] iArr = periods;
            if (i < iArr.length) {
                final int i2 = iArr[i];
                ItemOptions itemOptions2 = this.periodPopup;
                if (i2 == Integer.MAX_VALUE) {
                    formatPluralString = LocaleController.getString("StoryPeriodKeep");
                } else {
                    formatPluralString = LocaleController.formatPluralString("Hours", i2 / 3600, new Object[0]);
                }
                itemOptions2.add(0, formatPluralString, Theme.key_actionBarDefaultSubmenuItem, new Runnable() { // from class: org.telegram.ui.Stories.recorder.CaptionStory$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        CaptionStory.lambda$new$3(Utilities.Callback.this, i2);
                    }
                }).putPremiumLock((isPremium || i2 == 86400 || i2 == Integer.MAX_VALUE) ? null : new Runnable() { // from class: org.telegram.ui.Stories.recorder.CaptionStory$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        CaptionStory.lambda$new$4(Utilities.Callback.this, i2);
                    }
                });
                if (this.periodIndex == i) {
                    this.periodPopup.putCheck();
                }
                i++;
            } else {
                this.periodPopup.setDimAlpha(0).show();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(Integer num) {
        setPeriod(num.intValue());
        Utilities.Callback<Integer> callback = this.onPeriodUpdate;
        if (callback != null) {
            callback.run(num);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(Integer num) {
        Utilities.Callback<Integer> callback = this.onPremiumHintShow;
        if (callback != null) {
            callback.run(num);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$3(Utilities.Callback callback, int i) {
        callback.run(Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$4(Utilities.Callback callback, int i) {
        callback.run(Integer.valueOf(i));
    }

    private void checkFlipButton() {
        if (this.flipButton != null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            this.flipButton = (AnimatedVectorDrawable) ContextCompat.getDrawable(getContext(), C3632R.C3634drawable.avd_flip);
        } else {
            this.flipButton = getContext().getResources().getDrawable(C3632R.C3634drawable.vd_flip).mutate();
        }
    }

    public void setHasRoundVideo(boolean z) {
        this.roundButton.setImageResource(z ? C3632R.C3634drawable.input_video_story_remove : C3632R.C3634drawable.input_video_story);
        this.hasRoundVideo = z;
    }

    @Override // org.telegram.p043ui.Stories.recorder.CaptionContainerView
    public void drawOver(Canvas canvas, RectF rectF) {
        Paint paint;
        float f;
        float f2;
        Paint paint2;
        if (this.currentRecorder != null) {
            float f3 = this.cancelT.set(this.cancelling);
            float f4 = this.lockT.set(this.locked);
            if (this.startTime <= 0) {
                this.startTime = System.currentTimeMillis();
            }
            float sin = (((float) Math.sin((((float) (System.currentTimeMillis() - this.startTime)) / 900.0f) * 3.141592653589793d)) + 1.0f) / 2.0f;
            float m107dp = rectF.left + AndroidUtilities.m107dp(21);
            float m107dp2 = rectF.bottom - AndroidUtilities.m107dp(20);
            this.recordPaint.setBounds((int) (m107dp - AndroidUtilities.m107dp(12)), (int) (m107dp2 - AndroidUtilities.m107dp(12)), (int) (m107dp + AndroidUtilities.m107dp(12)), (int) (m107dp2 + AndroidUtilities.m107dp(12)));
            this.recordPaint.draw(canvas);
            this.timerTextDrawable.setBounds((int) ((rectF.left + AndroidUtilities.m108dp(33.3f)) - (AndroidUtilities.m107dp(10) * f3)), (int) ((rectF.bottom - AndroidUtilities.m107dp(20)) - AndroidUtilities.m107dp(9)), (int) (rectF.left + AndroidUtilities.m108dp(133.3f)), (int) ((rectF.bottom - AndroidUtilities.m107dp(20)) + AndroidUtilities.m107dp(9)));
            this.timerTextDrawable.setText(this.currentRecorder.sinceRecordingText());
            this.timerTextDrawable.setAlpha((int) ((1.0f - f3) * 255.0f));
            this.timerTextDrawable.draw(canvas);
            float f5 = 1.0f - f4;
            float f6 = (1.0f - this.slideProgress) * f5;
            Paint paint3 = this.captionBlur.getPaint(1.0f);
            if (paint3 != null) {
                paint = paint3;
                f = f6;
                canvas.saveLayerAlpha(rectF.left, rectF.top, rectF.right, rectF.bottom, 255, 31);
            } else {
                paint = paint3;
                f = f6;
            }
            if (f > BitmapDescriptorFactory.HUE_RED) {
                if (this.slideToCancelText == null) {
                    this.slideToCancelText = new Text(LocaleController.getString(C3632R.string.SlideToCancel2), 15.0f);
                }
                if (this.slideToCancelArrowPath == null) {
                    Path path = new Path();
                    this.slideToCancelArrowPath = path;
                    path.moveTo(AndroidUtilities.m108dp(3.83f), BitmapDescriptorFactory.HUE_RED);
                    this.slideToCancelArrowPath.lineTo(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m107dp(5));
                    this.slideToCancelArrowPath.lineTo(AndroidUtilities.m108dp(3.83f), AndroidUtilities.m107dp(10));
                    Paint paint4 = new Paint(1);
                    this.slideToCancelArrowPaint = paint4;
                    paint4.setStyle(Paint.Style.STROKE);
                    this.slideToCancelArrowPaint.setStrokeCap(Paint.Cap.ROUND);
                    this.slideToCancelArrowPaint.setStrokeJoin(Paint.Join.ROUND);
                }
                this.slideToCancelArrowPaint.setStrokeWidth(AndroidUtilities.m108dp(1.33f));
                this.slideToCancelText.ellipsize((int) ((rectF.width() - AndroidUtilities.m107dp(116)) - this.timerTextDrawable.getCurrentWidth()));
                float centerX = ((rectF.centerX() - ((AndroidUtilities.m108dp(11.33f) + this.slideToCancelText.getWidth()) / 2.0f)) - ((rectF.width() / 6.0f) * AndroidUtilities.lerp(this.slideProgress, 1.0f, f4))) - ((sin * AndroidUtilities.m107dp(6)) * (1.0f - this.slideProgress));
                paint2 = paint;
                int multAlpha = Theme.multAlpha(paint2 != null ? -1 : -2130706433, f);
                canvas.save();
                canvas.translate(centerX, rectF.centerY() - AndroidUtilities.m107dp(5));
                this.slideToCancelArrowPaint.setColor(multAlpha);
                canvas.drawPath(this.slideToCancelArrowPath, this.slideToCancelArrowPaint);
                canvas.restore();
                f2 = 15.0f;
                this.slideToCancelText.draw(canvas, centerX + AndroidUtilities.m108dp(11.33f), rectF.centerY(), multAlpha, 1.0f);
            } else {
                f2 = 15.0f;
                paint2 = paint;
            }
            if (f4 > BitmapDescriptorFactory.HUE_RED) {
                if (this.cancelText == null) {
                    this.cancelText = new Text(LocaleController.getString(C3632R.string.CancelRound), f2, AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                }
                this.cancelText.ellipsize((int) ((rectF.width() - AndroidUtilities.m107dp(116)) - this.timerTextDrawable.getCurrentWidth()));
                float centerX2 = (rectF.centerX() - (this.cancelText.getWidth() / 2.0f)) + ((rectF.width() / 4.0f) * f5);
                this.cancelText.draw(canvas, centerX2, rectF.centerY(), Theme.multAlpha(paint2 != null ? -1 : -2130706433, f4), 1.0f);
                this.cancelBounds.set(centerX2 - AndroidUtilities.m107dp(12), rectF.top, centerX2 + this.cancelText.getWidth() + AndroidUtilities.m107dp(12), rectF.bottom);
            }
            if (paint2 != null) {
                canvas.drawRect(rectF, paint2);
                canvas.restore();
            }
            invalidate();
        }
    }

    public void setAmplitude(double d) {
        this.amplitude = (float) (Math.min(1800.0d, d) / 1800.0d);
        invalidate();
    }

    @Override // org.telegram.p043ui.Stories.recorder.CaptionContainerView
    public void drawOver2(Canvas canvas, RectF rectF, float f) {
        Drawable drawable;
        if (f <= BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        float f2 = this.cancel2T.set(this.cancelling);
        float f3 = this.lock2T.set(this.locked);
        float f4 = this.animatedAmplitude.set(this.amplitude);
        float f5 = 1.0f - f2;
        float m107dp = (AndroidUtilities.m107dp(41) + (AndroidUtilities.m107dp(30) * f4 * (1.0f - this.slideProgress))) * f5 * f;
        float lerp = AndroidUtilities.lerp((rectF.right - AndroidUtilities.m107dp(20)) - (((getWidth() * 0.35f) * this.slideProgress) * (1.0f - f3)), rectF.left + AndroidUtilities.m107dp(20), f2);
        float m107dp2 = rectF.bottom - AndroidUtilities.m107dp(20);
        if (LiteMode.isEnabled(LiteMode.FLAGS_CHAT)) {
            this.tinyWaveDrawable.minRadius = AndroidUtilities.m107dp(47);
            this.tinyWaveDrawable.maxRadius = AndroidUtilities.m107dp(47) + (AndroidUtilities.m107dp(15) * BlobDrawable.FORM_SMALL_MAX);
            this.bigWaveDrawable.minRadius = AndroidUtilities.m107dp(50);
            this.bigWaveDrawable.maxRadius = AndroidUtilities.m107dp(50) + (AndroidUtilities.m107dp(12) * BlobDrawable.FORM_BIG_MAX);
            this.bigWaveDrawable.update(f4, 1.01f);
            this.tinyWaveDrawable.update(f4, 1.02f);
            this.bigWaveDrawable.paint.setColor(Theme.multAlpha(this.roundPaint.getColor(), 0.15f * f));
            canvas.save();
            float f6 = m107dp / this.bigWaveDrawable.minRadius;
            canvas.scale(f6, f6, lerp, m107dp2);
            BlobDrawable blobDrawable = this.bigWaveDrawable;
            blobDrawable.draw(lerp, m107dp2, canvas, blobDrawable.paint);
            canvas.restore();
            this.tinyWaveDrawable.paint.setColor(Theme.multAlpha(this.roundPaint.getColor(), 0.3f * f));
            canvas.save();
            float f7 = m107dp / this.tinyWaveDrawable.minRadius;
            canvas.scale(f7, f7, lerp, m107dp2);
            BlobDrawable blobDrawable2 = this.tinyWaveDrawable;
            blobDrawable2.draw(lerp, m107dp2, canvas, blobDrawable2.paint);
            canvas.restore();
        }
        float min = Math.min(m107dp, AndroidUtilities.m107dp(55));
        float f8 = f * 255.0f;
        this.roundPaint.setAlpha((int) f8);
        canvas.drawCircle(lerp, m107dp2, min, this.roundPaint);
        canvas.save();
        this.circlePath.rewind();
        this.circlePath.addCircle(lerp, m107dp2, min, Path.Direction.CW);
        canvas.clipPath(this.circlePath);
        this.roundDrawable.setBounds((int) (lerp - (((drawable.getIntrinsicWidth() / 2.0f) * f5) * (this.stopping ? f : 1.0f))), (int) (m107dp2 - (((this.roundDrawable.getIntrinsicHeight() / 2.0f) * f5) * (this.stopping ? f : 1.0f))), (int) (((this.roundDrawable.getIntrinsicWidth() / 2.0f) * f5 * (this.stopping ? f : 1.0f)) + lerp), (int) (((this.roundDrawable.getIntrinsicHeight() / 2.0f) * f5 * (this.stopping ? f : 1.0f)) + m107dp2));
        this.roundDrawable.setAlpha((int) (f5 * 255.0f * (this.stopping ? f : 1.0f)));
        this.roundDrawable.draw(canvas);
        if (f3 > BitmapDescriptorFactory.HUE_RED) {
            float dpf2 = (AndroidUtilities.dpf2(19.33f) / 2.0f) * f3 * f;
            RectF rectF2 = AndroidUtilities.rectTmp;
            rectF2.set(lerp - dpf2, m107dp2 - dpf2, lerp + dpf2, m107dp2 + dpf2);
            canvas.drawRoundRect(rectF2, AndroidUtilities.m108dp(5.33f), AndroidUtilities.m108dp(5.33f), this.whitePaint);
        }
        canvas.restore();
        drawLock(canvas, rectF, f);
        if (this.cancelling && (this.roundButton.getVisibility() == 4 || this.periodButton.getVisibility() == 4 || this.collapsedT.get() > BitmapDescriptorFactory.HUE_RED)) {
            canvas.saveLayerAlpha(rectF, (int) ((1.0f - this.keyboardT) * 255.0f), 31);
            this.boundsPath.rewind();
            this.boundsPath.addRoundRect(rectF, AndroidUtilities.m107dp(21), AndroidUtilities.m107dp(21), Path.Direction.CW);
            canvas.clipPath(this.boundsPath);
            if (this.roundButton.getVisibility() == 4 || this.collapsedT.get() > BitmapDescriptorFactory.HUE_RED) {
                canvas.save();
                canvas.translate(this.roundButton.getX() + (AndroidUtilities.m107dp(180) * f5), this.roundButton.getY());
                this.roundButton.draw(canvas);
                canvas.restore();
            }
            if (this.periodButton.getVisibility() == 4 || this.collapsedT.get() > BitmapDescriptorFactory.HUE_RED) {
                canvas.save();
                canvas.translate(this.periodButton.getX() + (AndroidUtilities.m107dp(180) * f5), this.periodButton.getY());
                this.periodButton.draw(canvas);
                canvas.restore();
            }
            canvas.restore();
        }
        checkFlipButton();
        this.flipButton.setAlpha((int) (f8 * f5));
        float timelineHeight = getTimelineHeight();
        this.flipButton.setBounds(((int) rectF.left) + AndroidUtilities.m107dp(4), (int) ((rectF.top - timelineHeight) - AndroidUtilities.m107dp(48)), (int) (rectF.left + AndroidUtilities.m107dp(40)), (int) ((rectF.top - timelineHeight) - AndroidUtilities.m107dp(12)));
        this.flipButton.draw(canvas);
    }

    private void drawLock(Canvas canvas, RectF rectF, float f) {
        float f2 = this.cancel2T.get();
        float f3 = this.lock2T.get();
        float lerp = AndroidUtilities.lerp(this.lockCancelledT.set(this.slideProgress < 0.4f), (float) BitmapDescriptorFactory.HUE_RED, f3) * (1.0f - f2) * f;
        float m107dp = rectF.right - AndroidUtilities.m107dp(20);
        float lerp2 = (AndroidUtilities.lerp(AndroidUtilities.m107dp(50), AndroidUtilities.m107dp(36), f3) * lerp) / 2.0f;
        float f4 = 1.0f - f3;
        float lerp3 = AndroidUtilities.lerp(((rectF.bottom - AndroidUtilities.m107dp(80)) - lerp2) - ((AndroidUtilities.m107dp(120) * this.lockProgress) * f4), rectF.bottom - AndroidUtilities.m107dp(20), 1.0f - lerp);
        float m107dp2 = (AndroidUtilities.m107dp(36) * lerp) / 2.0f;
        this.lockBounds.set(m107dp - m107dp2, lerp3 - lerp2, m107dp2 + m107dp, lerp2 + lerp3);
        float lerp4 = AndroidUtilities.lerp(AndroidUtilities.m107dp(18), AndroidUtilities.m107dp(14), f3);
        this.lockShadowPaint.setShadowLayer(AndroidUtilities.m107dp(1), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m108dp(0.66f), Theme.multAlpha(536870912, lerp));
        this.lockShadowPaint.setColor(0);
        canvas.drawRoundRect(this.lockBounds, lerp4, lerp4, this.lockShadowPaint);
        Paint paint = this.backgroundBlur.getPaint(lerp);
        if (paint == null) {
            this.lockBackgroundPaint.setColor(1073741824);
            this.lockBackgroundPaint.setAlpha((int) (64.0f * lerp));
            canvas.drawRoundRect(this.lockBounds, lerp4, lerp4, this.lockBackgroundPaint);
        } else {
            canvas.drawRoundRect(this.lockBounds, lerp4, lerp4, paint);
            this.backgroundPaint.setAlpha((int) (51.0f * lerp));
            canvas.drawRoundRect(this.lockBounds, lerp4, lerp4, this.backgroundPaint);
        }
        canvas.save();
        canvas.scale(lerp, lerp, m107dp, lerp3);
        this.lockPaint.setColor(Theme.multAlpha(-1, lerp));
        this.lockHandlePaint.setColor(Theme.multAlpha(-1, lerp * f4));
        float m107dp3 = lerp3 + (AndroidUtilities.m107dp(4) * f4);
        canvas.rotate(this.lockProgress * 12.0f * f4, m107dp, m107dp3);
        float lerp5 = AndroidUtilities.lerp(AndroidUtilities.m108dp(15.33f), AndroidUtilities.m107dp(13), f3) / 2.0f;
        float lerp6 = AndroidUtilities.lerp(AndroidUtilities.m108dp(12.66f), AndroidUtilities.m107dp(13), f3) / 2.0f;
        float f5 = m107dp3 - lerp6;
        this.lockRect.set(m107dp - lerp5, f5, lerp5 + m107dp, m107dp3 + lerp6);
        canvas.drawRoundRect(this.lockRect, AndroidUtilities.m108dp(3.66f), AndroidUtilities.m108dp(3.66f), this.lockPaint);
        if (f3 < 1.0f) {
            canvas.save();
            canvas.rotate(this.lockProgress * 12.0f * f4, m107dp, f5);
            canvas.translate(BitmapDescriptorFactory.HUE_RED, lerp6 * f3);
            canvas.scale(f4, f4, m107dp, f5);
            this.lockHandle.rewind();
            float m108dp = AndroidUtilities.m108dp(4.33f);
            float m108dp2 = f5 - AndroidUtilities.m108dp(3.66f);
            float f6 = m107dp + m108dp;
            this.lockHandle.moveTo(f6, AndroidUtilities.m108dp(3.66f) + m108dp2);
            this.lockHandle.lineTo(f6, m108dp2);
            RectF rectF2 = AndroidUtilities.rectTmp;
            float f7 = m107dp - m108dp;
            rectF2.set(f7, m108dp2 - m108dp, f6, m108dp + m108dp2);
            this.lockHandle.arcTo(rectF2, BitmapDescriptorFactory.HUE_RED, -180.0f, false);
            this.lockHandle.lineTo(f7, m108dp2 + (AndroidUtilities.m108dp(3.66f) * AndroidUtilities.lerp(AndroidUtilities.lerp(0.4f, (float) BitmapDescriptorFactory.HUE_RED, this.lockProgress), 1.0f, f3)));
            this.lockHandlePaint.setStrokeWidth(AndroidUtilities.m107dp(2));
            canvas.drawPath(this.lockHandle, this.lockHandlePaint);
            canvas.restore();
        }
        canvas.restore();
    }

    public void setPeriod(int i) {
        setPeriod(i, true);
    }

    public void setPeriodVisible(boolean z) {
        this.periodVisible = z;
        this.periodButton.setVisibility((!z || this.keyboardShown) ? 8 : 0);
    }

    public void setPeriod(int i, boolean z) {
        int i2 = 0;
        while (true) {
            int[] iArr = periods;
            if (i2 >= iArr.length) {
                i2 = 2;
                break;
            } else if (iArr[i2] == i) {
                break;
            } else {
                i2++;
            }
        }
        if (this.periodIndex == i2) {
            return;
        }
        this.periodIndex = i2;
        this.periodDrawable.setValue(i / 3600, false, z);
    }

    public void hidePeriodPopup() {
        ItemOptions itemOptions = this.periodPopup;
        if (itemOptions != null) {
            itemOptions.dismiss();
            this.periodPopup = null;
        }
    }

    public void setOnPeriodUpdate(Utilities.Callback<Integer> callback) {
        this.onPeriodUpdate = callback;
    }

    public void setOnPremiumHint(Utilities.Callback<Integer> callback) {
        this.onPremiumHintShow = callback;
    }

    @Override // org.telegram.p043ui.Stories.recorder.CaptionContainerView
    protected void beforeUpdateShownKeyboard(boolean z) {
        if (z) {
            return;
        }
        this.periodButton.setVisibility(this.periodVisible ? 0 : 8);
        this.roundButton.setVisibility(0);
    }

    @Override // org.telegram.p043ui.Stories.recorder.CaptionContainerView
    protected void onUpdateShowKeyboard(float f) {
        float f2 = 1.0f - f;
        this.periodButton.setAlpha(f2);
        this.roundButton.setAlpha(f2);
    }

    @Override // org.telegram.p043ui.Stories.recorder.CaptionContainerView
    protected void afterUpdateShownKeyboard(boolean z) {
        this.periodButton.setVisibility((z || !this.periodVisible) ? 8 : 0);
        this.roundButton.setVisibility(z ? 8 : 0);
        if (z) {
            this.periodButton.setVisibility(8);
        }
    }

    @Override // org.telegram.p043ui.Stories.recorder.CaptionContainerView
    protected int getCaptionPremiumLimit() {
        return MessagesController.getInstance(this.currentAccount).storyCaptionLengthLimitPremium;
    }

    @Override // org.telegram.p043ui.Stories.recorder.CaptionContainerView
    protected int getCaptionDefaultLimit() {
        return MessagesController.getInstance(this.currentAccount).storyCaptionLengthLimitDefault;
    }

    @Override // org.telegram.p043ui.Stories.recorder.CaptionContainerView, android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        RoundVideoRecorder roundVideoRecorder;
        Drawable drawable;
        if (this.recording && (roundVideoRecorder = this.currentRecorder) != null && roundVideoRecorder.cameraView != null && (drawable = this.flipButton) != null) {
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(drawable.getBounds());
            rectF.inset(-AndroidUtilities.m107dp(12), -AndroidUtilities.m107dp(12));
            int i = 0;
            while (true) {
                if (i >= motionEvent.getPointerCount()) {
                    break;
                } else if (AndroidUtilities.rectTmp.contains(motionEvent.getX(i), motionEvent.getY(i))) {
                    if (motionEvent.getAction() == 0 || motionEvent.getActionMasked() == 5) {
                        this.currentRecorder.cameraView.switchCamera();
                        if (Build.VERSION.SDK_INT >= 21) {
                            Drawable drawable2 = this.flipButton;
                            if (drawable2 instanceof AnimatedVectorDrawable) {
                                ((AnimatedVectorDrawable) drawable2).start();
                            }
                        }
                    }
                    if (!this.recordTouch) {
                        return true;
                    }
                } else {
                    i++;
                }
            }
        }
        RectF rectF2 = AndroidUtilities.rectTmp;
        rectF2.set(this.roundButton.getX(), this.roundButton.getY(), this.roundButton.getX() + this.roundButton.getMeasuredWidth(), this.roundButton.getY() + this.roundButton.getMeasuredHeight());
        if (this.recordTouch || (!this.hasRoundVideo && !this.keyboardShown && rectF2.contains(motionEvent.getX(), motionEvent.getY()))) {
            return roundButtonTouchEvent(motionEvent);
        }
        if (this.recording && this.locked && this.cancelBounds.contains(motionEvent.getX(), motionEvent.getY())) {
            releaseRecord(false, true);
            this.recordTouch = false;
            return true;
        } else if (this.recording && (this.lockBounds.contains(motionEvent.getX(), motionEvent.getY()) || getBounds().contains(motionEvent.getX(), motionEvent.getY()))) {
            releaseRecord(false, false);
            this.recordTouch = false;
            return true;
        } else {
            return super.dispatchTouchEvent(motionEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6() {
        setCollapsed(false, Integer.MIN_VALUE);
        this.roundButton.setVisibility(0);
        this.periodButton.setVisibility(0);
    }

    private boolean roundButtonTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            if (stopRecording()) {
                return true;
            }
            this.recordTouch = true;
            if (getParent() != null) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            if (canRecord()) {
                AndroidUtilities.cancelRunOnUIThread(this.doneCancel);
                this.fromX = motionEvent.getX();
                this.fromY = motionEvent.getY();
                this.amplitude = BitmapDescriptorFactory.HUE_RED;
                this.slideProgress = BitmapDescriptorFactory.HUE_RED;
                this.cancelT.set(BitmapDescriptorFactory.HUE_RED, true);
                this.cancel2T.set(BitmapDescriptorFactory.HUE_RED, true);
                this.cancelling = false;
                this.stopping = false;
                this.locked = false;
                this.recordPaint.reset();
                this.recording = true;
                this.startTime = System.currentTimeMillis();
                setCollapsed(true, Integer.MAX_VALUE);
                invalidateDrawOver2();
                RoundVideoRecorder roundVideoRecorder = new RoundVideoRecorder(getContext()) { // from class: org.telegram.ui.Stories.recorder.CaptionStory.1
                    @Override // org.telegram.p043ui.Stories.recorder.RoundVideoRecorder
                    protected void receivedAmplitude(double d) {
                        CaptionStory.this.setAmplitude(d);
                    }

                    @Override // org.telegram.p043ui.Stories.recorder.RoundVideoRecorder
                    public void stop() {
                        super.stop();
                        if (CaptionStory.this.recording) {
                            CaptionStory.this.releaseRecord(true, false);
                        }
                    }
                };
                this.currentRecorder = roundVideoRecorder;
                putRecorder(roundVideoRecorder);
                return true;
            }
            return true;
        }
        if (motionEvent.getAction() == 2) {
            if (!this.cancelling) {
                this.slideProgress = Utilities.clamp((this.fromX - motionEvent.getX()) / (getWidth() * 0.35f), 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                float clamp = Utilities.clamp((this.fromY - motionEvent.getY()) / (getWidth() * 0.3f), 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                this.lockProgress = clamp;
                boolean z = this.locked;
                if (!z && !this.cancelling && this.slideProgress >= 1.0f) {
                    this.cancelling = true;
                    this.recording = false;
                    this.roundButton.setVisibility(4);
                    this.periodButton.setVisibility(4);
                    this.recordPaint.playDeleteAnimation();
                    RoundVideoRecorder roundVideoRecorder2 = this.currentRecorder;
                    if (roundVideoRecorder2 != null) {
                        roundVideoRecorder2.cancel();
                    }
                    AndroidUtilities.runOnUIThread(this.doneCancel, 800L);
                } else if (!z && !this.cancelling && clamp >= 1.0f && this.slideProgress < 0.4f) {
                    this.locked = true;
                    try {
                        performHapticFeedback(3, 1);
                    } catch (Exception unused) {
                    }
                }
                invalidate();
                invalidateDrawOver2();
            }
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            if (!this.cancelling && !this.locked) {
                releaseRecord(false, false);
            }
            this.recordTouch = false;
        }
        return this.recordTouch;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseRecord(boolean z, boolean z2) {
        AndroidUtilities.cancelRunOnUIThread(this.doneCancel);
        this.stopping = true;
        this.recording = false;
        setCollapsed(false, (int) ((getBounds().right - AndroidUtilities.m107dp(20)) - ((getWidth() * 0.35f) * this.slideProgress)));
        RoundVideoRecorder roundVideoRecorder = this.currentRecorder;
        if (roundVideoRecorder != null) {
            if (!z) {
                if (z2) {
                    roundVideoRecorder.cancel();
                } else {
                    roundVideoRecorder.stop();
                }
            }
            this.currentRecorder = null;
        }
        invalidateDrawOver2();
    }

    public boolean isRecording() {
        return this.recording;
    }

    public boolean stopRecording() {
        if (this.recording) {
            this.recordTouch = false;
            releaseRecord(false, false);
            return true;
        }
        return false;
    }

    public void showRemoveRoundAlert() {
        TextView textView;
        if (this.hasRoundVideo && (textView = (TextView) new AlertDialog.Builder(getContext(), this.resourcesProvider).setTitle(LocaleController.getString(C3632R.string.StoryRemoveRoundTitle)).setMessage(LocaleController.getString(C3632R.string.StoryRemoveRoundMessage)).setPositiveButton(LocaleController.getString(C3632R.string.Remove), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.CaptionStory$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                CaptionStory.this.lambda$showRemoveRoundAlert$7(dialogInterface, i);
            }
        }).setNegativeButton(LocaleController.getString(C3632R.string.Cancel), null).show().getButton(-1)) != null) {
            textView.setTextColor(Theme.getColor(Theme.key_text_RedBold, this.resourcesProvider));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showRemoveRoundAlert$7(DialogInterface dialogInterface, int i) {
        removeRound();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Stories.recorder.CaptionContainerView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.recordPaint.attach();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Stories.recorder.CaptionContainerView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.recordPaint.detach();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Stories.recorder.CaptionStory$RecordDot */
    /* loaded from: classes6.dex */
    public class RecordDot extends Drawable {
        private float alpha;
        boolean attachedToWindow;
        RLottieDrawable drawable;
        private boolean enterAnimation;
        private boolean isIncr;
        private long lastUpdateTime;
        private final View parent;
        boolean playing;
        private final Paint redDotPaint = new Paint(1);
        private float alpha2 = 1.0f;

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }

        public void attach() {
            this.attachedToWindow = true;
            if (this.playing) {
                this.drawable.start();
            }
            this.drawable.setMasterParent(this.parent);
        }

        public void detach() {
            this.attachedToWindow = false;
            this.drawable.stop();
            this.drawable.setMasterParent(null);
        }

        public RecordDot(View view) {
            this.parent = view;
            int i = C3632R.raw.chat_audio_record_delete_3;
            RLottieDrawable rLottieDrawable = new RLottieDrawable(i, "" + i, AndroidUtilities.m107dp(28), AndroidUtilities.m107dp(28), false, null);
            this.drawable = rLottieDrawable;
            rLottieDrawable.setCurrentParentView(view);
            this.drawable.setInvalidateOnProgressSet(true);
            updateColors();
        }

        public void updateColors() {
            this.redDotPaint.setColor(-2406842);
            this.drawable.beginApplyLayerColors();
            this.drawable.setLayerColor("Cup Red.**", -2406842);
            this.drawable.setLayerColor("Box.**", -2406842);
            this.drawable.commitApplyLayerColors();
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (this.playing) {
                this.drawable.setAlpha((int) (this.alpha * 255.0f * this.alpha2));
            }
            this.redDotPaint.setAlpha((int) (this.alpha * 255.0f * this.alpha2));
            long currentTimeMillis = System.currentTimeMillis() - this.lastUpdateTime;
            if (this.enterAnimation) {
                this.alpha = 1.0f;
            } else if (!this.isIncr && !this.playing) {
                float f = this.alpha - (((float) currentTimeMillis) / 600.0f);
                this.alpha = f;
                if (f <= BitmapDescriptorFactory.HUE_RED) {
                    this.alpha = BitmapDescriptorFactory.HUE_RED;
                    this.isIncr = true;
                }
            } else {
                float f2 = this.alpha + (((float) currentTimeMillis) / 600.0f);
                this.alpha = f2;
                if (f2 >= 1.0f) {
                    this.alpha = 1.0f;
                    this.isIncr = false;
                }
            }
            this.lastUpdateTime = System.currentTimeMillis();
            this.drawable.setBounds(getBounds());
            if (this.playing) {
                this.drawable.draw(canvas);
            }
            if (!this.playing || !this.drawable.hasBitmap()) {
                canvas.drawCircle(getBounds().centerX(), getBounds().centerY(), AndroidUtilities.m107dp(5), this.redDotPaint);
            }
            CaptionStory.this.invalidate();
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            this.alpha2 = i / 255.0f;
        }

        public void playDeleteAnimation() {
            this.playing = true;
            this.drawable.setProgress(BitmapDescriptorFactory.HUE_RED);
            if (this.attachedToWindow) {
                this.drawable.start();
            }
        }

        public void reset() {
            this.playing = false;
            this.drawable.stop();
            this.drawable.setProgress(BitmapDescriptorFactory.HUE_RED);
        }
    }
}
