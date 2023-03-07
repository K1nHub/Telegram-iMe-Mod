package org.telegram.p048ui.Components;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.exoplayer2.extractor.p016ts.TsExtractor;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.zxing.common.detector.MathUtils;
import java.util.Arrays;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.SvgHelper;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.AnimatedTextView;
import org.telegram.p048ui.Components.Premium.StarParticlesView;
import org.telegram.tgnet.ConnectionsManager;
/* renamed from: org.telegram.ui.Components.CacheChart */
/* loaded from: classes6.dex */
public class CacheChart extends View {
    private static final String[] DEFAULT_COLORS = {"statisticChartLine_lightblue", "statisticChartLine_blue", "statisticChartLine_green", "statisticChartLine_red", "statisticChartLine_lightgreen", "statisticChartLine_orange", "statisticChartLine_cyan", "statisticChartLine_purple", "statisticChartLine_golden"};
    private static final int[] DEFAULT_PARTICLES;
    private static Long loadedStart;
    private static long particlesStart;
    private static Long start;
    private AnimatedTextView.AnimatedTextDrawable bottomCompleteText;
    private AnimatedTextView.AnimatedTextDrawable bottomText;
    private RectF chartBounds;
    private RectF chartInnerBounds;
    private RectF chartMeasureBounds;
    private boolean complete;
    private StarParticlesView.Drawable completeDrawable;
    private AnimatedFloat completeFloat;
    private LinearGradient completeGradient;
    private Matrix completeGradientMatrix;
    private Paint completePaint;
    private Paint completePaintStroke;
    private Path completePath;
    private RectF completePathBounds;
    private LinearGradient completeTextGradient;
    private Matrix completeTextGradientMatrix;
    private boolean interceptTouch;
    private boolean isAttached;
    private boolean loading;
    private Paint loadingBackgroundPaint;
    public AnimatedFloat loadingFloat;
    private final int[] particles;
    private RectF roundingRect;
    private final int sectionsCount;
    private Sector[] sectors;
    private float[] segmentsTmp;
    private int selectedIndex;
    private final boolean svgParticles;
    private float[] tempFloat;
    private int[] tempPercents;
    private AnimatedTextView.AnimatedTextDrawable topCompleteText;
    private AnimatedTextView.AnimatedTextDrawable topText;
    private final int type;

    /* JADX INFO: Access modifiers changed from: private */
    public static float toRad(float f) {
        return (float) ((f / 180.0f) * 3.141592653589793d);
    }

    protected int heightDp() {
        return 200;
    }

    protected void onSectionClick(int i) {
    }

    protected void onSectionDown(int i, boolean z) {
    }

    protected int padInsideDp() {
        return 0;
    }

    static {
        int i = C3158R.C3164raw.cache_videos;
        int i2 = C3158R.C3164raw.cache_other;
        DEFAULT_PARTICLES = new int[]{C3158R.C3164raw.cache_photos, i, C3158R.C3164raw.cache_documents, C3158R.C3164raw.cache_music, i, C3158R.C3164raw.cache_stickers, C3158R.C3164raw.cache_profile_photos, i2, i2};
        particlesStart = -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.CacheChart$Sector */
    /* loaded from: classes6.dex */
    public class Sector {
        float angleCenter;
        AnimatedFloat angleCenterAnimated;
        float angleSize;
        AnimatedFloat angleSizeAnimated;
        Paint cut;
        RadialGradient gradient;
        Matrix gradientMatrix;
        private float lastAngleCenter;
        private float lastAngleSize;
        private float lastCx;
        private float lastCy;
        private float lastRounding;
        private float lastThickness;
        private float lastWidth;
        Paint paint;
        Bitmap particle;
        Paint particlePaint = new Paint(3);
        float particlesAlpha;
        AnimatedFloat particlesAlphaAnimated;
        Path path;
        RectF pathBounds;
        RectF rectF;
        boolean selected;
        AnimatedFloat selectedAnimated;
        AnimatedTextView.AnimatedTextDrawable text;
        float textAlpha;
        AnimatedFloat textAlphaAnimated;
        float textScale;
        AnimatedFloat textScaleAnimated;
        Paint uncut;

        Sector() {
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            this.angleCenterAnimated = new AnimatedFloat(CacheChart.this, 650L, cubicBezierInterpolator);
            this.angleSizeAnimated = new AnimatedFloat(CacheChart.this, 650L, cubicBezierInterpolator);
            CubicBezierInterpolator cubicBezierInterpolator2 = CubicBezierInterpolator.EASE_OUT;
            this.textAlphaAnimated = new AnimatedFloat(CacheChart.this, 0L, 150L, cubicBezierInterpolator2);
            this.textScale = 1.0f;
            this.textScaleAnimated = new AnimatedFloat(CacheChart.this, 0L, 150L, cubicBezierInterpolator2);
            this.text = new AnimatedTextView.AnimatedTextDrawable(false, true, true);
            this.particlesAlphaAnimated = new AnimatedFloat(CacheChart.this, 0L, 150L, cubicBezierInterpolator2);
            this.selectedAnimated = new AnimatedFloat(CacheChart.this, 0L, 200L, cubicBezierInterpolator);
            this.text.setTextColor(-1);
            this.text.setAnimationProperties(0.35f, 0L, 200L, cubicBezierInterpolator);
            this.text.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.text.setTextSize(AndroidUtilities.m50dp(15));
            this.text.setGravity(17);
            this.path = new Path();
            this.paint = new Paint(1);
            this.pathBounds = new RectF();
            this.uncut = new Paint(1);
            Paint paint = new Paint(1);
            this.cut = paint;
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
            this.paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
            this.particlePaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_ATOP));
            this.rectF = new RectF();
        }

        private void setupPath(RectF rectF, RectF rectF2, float f, float f2, float f3) {
            float f4;
            float f5;
            float f6;
            float f7;
            float f8;
            float min = Math.min(Math.min(f3, (rectF.width() - rectF2.width()) / 4.0f), (float) ((f2 / 180.0f) * 3.141592653589793d * (rectF2.width() / 2.0f)));
            float width = (rectF.width() - rectF2.width()) / 2.0f;
            if (this.lastAngleCenter == f && this.lastAngleSize == f2 && this.lastRounding == min && this.lastThickness == width && this.lastWidth == rectF.width() && this.lastCx == rectF.centerX() && this.lastCy == rectF.centerY()) {
                return;
            }
            this.lastAngleCenter = f;
            this.lastAngleSize = f2;
            this.lastRounding = min;
            this.lastThickness = width;
            this.lastWidth = rectF.width();
            this.lastCx = rectF.centerX();
            this.lastCy = rectF.centerY();
            float f9 = f - f2;
            float f10 = f + f2;
            boolean z = min > BitmapDescriptorFactory.HUE_RED;
            float f11 = min * 2.0f;
            float width2 = (min / ((float) ((rectF.width() - f11) * 3.141592653589793d))) * 360.0f;
            float width3 = ((min / ((float) ((rectF2.width() + f11) * 3.141592653589793d))) * 360.0f) + ((f2 > 175.0f ? 0 : 1) * 0.5f);
            float width4 = (rectF.width() / 2.0f) - min;
            float width5 = (rectF2.width() / 2.0f) + min;
            this.path.rewind();
            float f12 = f10 - f9;
            if (f12 < 0.5f) {
                return;
            }
            if (z) {
                double d = width4;
                f4 = width5;
                CacheChart.setCircleBounds(CacheChart.this.roundingRect, rectF.centerX() + (Math.cos(CacheChart.toRad(f8)) * d), (d * Math.sin(CacheChart.toRad(f8))) + rectF.centerY(), min);
                this.path.arcTo(CacheChart.this.roundingRect, (f9 + width2) - 90.0f, 90.0f);
            } else {
                f4 = width5;
            }
            this.path.arcTo(rectF, f9 + width2, f12 - (width2 * 2.0f));
            if (z) {
                double d2 = width4;
                float f13 = f10 - width2;
                f5 = f9;
                CacheChart.setCircleBounds(CacheChart.this.roundingRect, rectF.centerX() + (Math.cos(CacheChart.toRad(f13)) * d2), rectF.centerY() + (d2 * Math.sin(CacheChart.toRad(f13))), min);
                this.path.arcTo(CacheChart.this.roundingRect, f13, 90.0f);
                double d3 = f4;
                CacheChart.setCircleBounds(CacheChart.this.roundingRect, rectF2.centerX() + (Math.cos(CacheChart.toRad(f7)) * d3), rectF2.centerY() + (d3 * Math.sin(CacheChart.toRad(f7))), min);
                this.path.arcTo(CacheChart.this.roundingRect, (f10 - width3) + 90.0f, 90.0f);
            } else {
                f5 = f9;
            }
            this.path.arcTo(rectF2, f10 - width3, -(f12 - (width3 * 2.0f)));
            if (z) {
                double d4 = f4;
                CacheChart.setCircleBounds(CacheChart.this.roundingRect, rectF2.centerX() + (Math.cos(CacheChart.toRad(f6)) * d4), rectF2.centerY() + (d4 * Math.sin(CacheChart.toRad(f6))), min);
                this.path.arcTo(CacheChart.this.roundingRect, f5 + width3 + 180.0f, 90.0f);
            }
            this.path.close();
            this.path.computeBounds(this.pathBounds, false);
        }

        private void setGradientBounds(float f, float f2, float f3, float f4) {
            this.gradientMatrix.reset();
            this.gradientMatrix.setTranslate(f, f2);
            this.gradient.setLocalMatrix(this.gradientMatrix);
        }

        private void drawParticles(Canvas canvas, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10) {
            double d;
            if (f10 <= BitmapDescriptorFactory.HUE_RED) {
                return;
            }
            long currentTimeMillis = System.currentTimeMillis();
            float sqrt = (float) Math.sqrt(2.0d);
            if (CacheChart.particlesStart < 0) {
                long unused = CacheChart.particlesStart = currentTimeMillis;
            }
            float f11 = ((float) (currentTimeMillis - CacheChart.particlesStart)) / 10000.0f;
            Bitmap bitmap = this.particle;
            if (bitmap != null) {
                int width = bitmap.getWidth();
                float f12 = width;
                float dpf2 = AndroidUtilities.dpf2(15.0f) / f12;
                float f13 = 7.0f;
                int floor = (int) Math.floor((f5 % 360.0f) / 7.0f);
                int ceil = (int) Math.ceil((f6 % 360.0f) / 7.0f);
                while (floor <= ceil) {
                    float f14 = floor * f13;
                    float sin = (float) (((100.0f + f11) * (((Math.sin(2000.0f * f14) + 1.0d) * 0.25d) + 1.0d)) % 1.0d);
                    float f15 = f12 * sqrt;
                    float f16 = f11;
                    double lerp = AndroidUtilities.lerp(f7 - f15, f8 + f15, sin);
                    float cos = (float) (f + (Math.cos(CacheChart.toRad(f14)) * lerp));
                    float sin2 = (float) (f2 + (lerp * Math.sin(CacheChart.toRad(f14))));
                    this.particlePaint.setAlpha((int) (Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, 0.65f * f10 * ((Math.abs(sin - 0.5f) * (-1.75f)) + 1.0f) * ((((float) (Math.sin(sin * 3.141592653589793d) - 1.0d)) * 0.25f) + 1.0f) * AndroidUtilities.lerp(1.0f, Math.min(MathUtils.distance(cos, sin2, f3, f4) / AndroidUtilities.dpf2(64.0f), 1.0f), f9))) * 255.0f));
                    float sin3 = ((float) (((((float) (Math.sin(d) - 1.0d)) * 0.25f) + 1.0f) * 0.75f * (((Math.sin(f14) + 1.0d) * 0.25d) + 0.800000011920929d))) * dpf2;
                    canvas.save();
                    canvas.translate(cos, sin2);
                    canvas.scale(sin3, sin3);
                    float f17 = -(width >> 1);
                    canvas.drawBitmap(this.particle, f17, f17, this.particlePaint);
                    canvas.restore();
                    floor++;
                    ceil = ceil;
                    f11 = f16;
                    sqrt = sqrt;
                    f13 = 7.0f;
                }
            }
        }

        void draw(Canvas canvas, RectF rectF, RectF rectF2, float f, float f2, float f3, float f4, float f5) {
            float f6;
            float f7;
            float f8 = this.selectedAnimated.set(this.selected ? 1.0f : BitmapDescriptorFactory.HUE_RED);
            this.rectF.set(rectF);
            this.rectF.inset((-AndroidUtilities.m50dp(9)) * f8, f8 * (-AndroidUtilities.m50dp(9)));
            float centerX = (float) (this.rectF.centerX() + ((Math.cos(CacheChart.toRad(f)) * (this.rectF.width() + rectF2.width())) / 4.0d));
            float centerY = (float) (this.rectF.centerY() + ((Math.sin(CacheChart.toRad(f)) * (this.rectF.width() + rectF2.width())) / 4.0d));
            float f9 = f5 * this.textAlphaAnimated.set(this.textAlpha) * f4;
            float f10 = this.particlesAlphaAnimated.set(this.particlesAlpha);
            this.paint.setAlpha((int) (f4 * 255.0f));
            if (f2 * 2.0f >= 359.0f) {
                canvas.saveLayerAlpha(this.rectF, 255, 31);
                canvas.drawCircle(this.rectF.centerX(), this.rectF.centerY(), this.rectF.width() / 2.0f, this.uncut);
                canvas.drawRect(this.rectF, this.paint);
                f6 = centerY;
                f7 = centerX;
                drawParticles(canvas, this.rectF.centerX(), this.rectF.centerY(), centerX, centerY, BitmapDescriptorFactory.HUE_RED, 359.0f, rectF2.width() / 2.0f, this.rectF.width() / 2.0f, f9, Math.max((float) BitmapDescriptorFactory.HUE_RED, (f5 / 0.75f) - 0.75f) * f10);
                canvas.drawCircle(rectF2.centerX(), rectF2.centerY(), rectF2.width() / 2.0f, this.cut);
                canvas.restore();
            } else {
                f6 = centerY;
                f7 = centerX;
                setupPath(this.rectF, rectF2, f, f2, f3);
                setGradientBounds(this.rectF.centerX(), rectF.centerY(), this.rectF.width() / 2.0f, f);
                canvas.saveLayerAlpha(this.rectF, 255, 31);
                canvas.drawPath(this.path, this.uncut);
                canvas.drawRect(this.rectF, this.paint);
                drawParticles(canvas, this.rectF.centerX(), this.rectF.centerY(), f7, f6, f - f2, f + f2, rectF2.width() / 2.0f, this.rectF.width() / 2.0f, f9, Math.max((float) BitmapDescriptorFactory.HUE_RED, (f5 / 0.75f) - 0.75f) * f10);
                canvas.restore();
            }
            float f11 = this.textScaleAnimated.set(this.textScale);
            CacheChart.setCircleBounds(CacheChart.this.roundingRect, f7, f6, (float) BitmapDescriptorFactory.HUE_RED);
            int i = (f11 > 1.0f ? 1 : (f11 == 1.0f ? 0 : -1));
            if (i != 0) {
                canvas.save();
                canvas.scale(f11, f11, CacheChart.this.roundingRect.centerX(), CacheChart.this.roundingRect.centerY());
            }
            this.text.setAlpha((int) (f9 * 255.0f));
            this.text.setBounds((int) CacheChart.this.roundingRect.left, (int) CacheChart.this.roundingRect.top, (int) CacheChart.this.roundingRect.right, (int) CacheChart.this.roundingRect.bottom);
            this.text.draw(canvas);
            if (i != 0) {
                canvas.restore();
            }
        }
    }

    public CacheChart(Context context) {
        this(context, 9, DEFAULT_COLORS, 0, DEFAULT_PARTICLES);
    }

    public CacheChart(Context context, int i, String[] strArr, int i2, int[] iArr) {
        super(context);
        this.chartMeasureBounds = new RectF();
        this.chartBounds = new RectF();
        this.chartInnerBounds = new RectF();
        this.loading = true;
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.loadingFloat = new AnimatedFloat(this, 750L, cubicBezierInterpolator);
        this.complete = false;
        this.completeFloat = new AnimatedFloat(this, 650L, cubicBezierInterpolator);
        this.segmentsTmp = new float[2];
        this.roundingRect = new RectF();
        this.loadingBackgroundPaint = new Paint(1);
        this.completePath = new Path();
        this.completePaintStroke = new Paint(1);
        this.completePaint = new Paint(1);
        this.topText = new AnimatedTextView.AnimatedTextDrawable(false, true, true);
        this.bottomText = new AnimatedTextView.AnimatedTextDrawable(false, true, true);
        this.topCompleteText = new AnimatedTextView.AnimatedTextDrawable(false, true, true);
        this.bottomCompleteText = new AnimatedTextView.AnimatedTextDrawable(false, true, true);
        this.interceptTouch = true;
        this.selectedIndex = -1;
        setLayerType(2, null);
        this.sectionsCount = i;
        this.particles = iArr;
        this.type = i2;
        this.svgParticles = i2 == 0;
        this.sectors = new Sector[i];
        this.loadingBackgroundPaint.setStyle(Paint.Style.STROKE);
        this.loadingBackgroundPaint.setColor(Theme.getColor("listSelectorSDK21"));
        this.completePaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        this.completeGradient = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m50dp(200), new int[]{7263574, -9513642, -12469647, 4307569}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.07f, 0.93f, 1.0f}, Shader.TileMode.CLAMP);
        this.completeTextGradient = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m50dp(200), new int[]{7263574, -9513642, -12469647, 4307569}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.07f, 0.93f, 1.0f}, Shader.TileMode.CLAMP);
        this.completeGradientMatrix = new Matrix();
        this.completeTextGradientMatrix = new Matrix();
        this.completePaintStroke.setShader(this.completeGradient);
        this.completePaint.setShader(this.completeGradient);
        this.completePaintStroke.setStyle(Paint.Style.STROKE);
        this.completePaintStroke.setStrokeCap(Paint.Cap.ROUND);
        this.completePaintStroke.setStrokeJoin(Paint.Join.ROUND);
        this.topText.setAnimationProperties(0.2f, 0L, 450L, cubicBezierInterpolator);
        this.topText.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        this.topText.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.topText.setTextSize(AndroidUtilities.m50dp(32));
        this.topText.setGravity(17);
        this.bottomText.setAnimationProperties(0.6f, 0L, 450L, cubicBezierInterpolator);
        this.bottomText.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText"));
        this.bottomText.setTextSize(AndroidUtilities.m50dp(12));
        this.bottomText.setGravity(17);
        this.topCompleteText.setAnimationProperties(0.2f, 0L, 450L, cubicBezierInterpolator);
        this.topCompleteText.getPaint().setShader(this.completeTextGradient);
        this.topCompleteText.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.topCompleteText.setTextSize(AndroidUtilities.m50dp(32));
        this.topCompleteText.setGravity(17);
        this.bottomCompleteText.setAnimationProperties(0.6f, 0L, 450L, cubicBezierInterpolator);
        this.bottomCompleteText.getPaint().setShader(this.completeTextGradient);
        this.bottomCompleteText.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.bottomCompleteText.setTextSize(AndroidUtilities.m50dp(12));
        this.bottomCompleteText.setGravity(17);
        int i3 = 0;
        while (true) {
            Sector[] sectorArr = this.sectors;
            if (i3 >= sectorArr.length) {
                return;
            }
            Sector sector = new Sector();
            sectorArr[i3] = sector;
            int blendOver = Theme.blendOver(Theme.getColor(strArr[i3]), ConnectionsManager.FileTypeAudio);
            int blendOver2 = Theme.blendOver(Theme.getColor(strArr[i3]), 822083583);
            AndroidUtilities.m50dp(50);
            RadialGradient radialGradient = new RadialGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m50dp(86), new int[]{blendOver2, blendOver}, new float[]{0.3f, 1.0f}, Shader.TileMode.CLAMP);
            sector.gradient = radialGradient;
            Matrix matrix = new Matrix();
            sector.gradientMatrix = matrix;
            radialGradient.setLocalMatrix(matrix);
            sector.paint.setShader(sector.gradient);
            i3++;
        }
    }

    public void setInterceptTouch(boolean z) {
        this.interceptTouch = z;
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.isAttached = true;
        int i = 0;
        while (true) {
            Sector[] sectorArr = this.sectors;
            if (i >= sectorArr.length) {
                return;
            }
            if (sectorArr[i].particle == null) {
                if (this.svgParticles) {
                    sectorArr[i].particle = SvgHelper.getBitmap(this.particles[i], AndroidUtilities.m50dp(16), AndroidUtilities.m50dp(16), -1);
                } else {
                    sectorArr[i].particle = BitmapFactory.decodeResource(getContext().getResources(), this.particles[i]);
                }
            }
            i++;
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        int i = 0;
        this.isAttached = false;
        while (true) {
            Sector[] sectorArr = this.sectors;
            if (i >= sectorArr.length) {
                return;
            }
            if (sectorArr[i].particle != null) {
                sectorArr[i].particle.recycle();
                this.sectors[i].particle = null;
            }
            i++;
        }
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int i;
        boolean z;
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        float distance = MathUtils.distance(this.chartBounds.centerX(), this.chartBounds.centerY(), x, y);
        float atan2 = (float) ((Math.atan2(y - this.chartBounds.centerY(), x - this.chartBounds.centerX()) / 3.141592653589793d) * 180.0d);
        if (atan2 < BitmapDescriptorFactory.HUE_RED) {
            atan2 += 360.0f;
        }
        if (distance > this.chartInnerBounds.width() / 2.0f && distance < (this.chartBounds.width() / 2.0f) + AndroidUtilities.m50dp(14)) {
            i = 0;
            while (true) {
                Sector[] sectorArr = this.sectors;
                if (i >= sectorArr.length) {
                    break;
                } else if (atan2 >= sectorArr[i].angleCenter - sectorArr[i].angleSize && atan2 <= sectorArr[i].angleCenter + sectorArr[i].angleSize) {
                    break;
                } else {
                    i++;
                }
            }
        }
        i = -1;
        if (motionEvent.getAction() == 0) {
            setSelected(i);
            if (i >= 0) {
                onSectionDown(i, i != -1);
                if (getParent() != null && this.interceptTouch) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                }
            }
            return true;
        }
        if (motionEvent.getAction() == 2) {
            onSectionDown(i, i != -1);
            setSelected(i);
            if (i != -1) {
                return true;
            }
        } else if (motionEvent.getAction() == 1) {
            if (i != -1) {
                onSectionClick(i);
                z = true;
            } else {
                z = false;
            }
            setSelected(-1);
            onSectionDown(i, false);
            if (z) {
                return true;
            }
        } else if (motionEvent.getAction() == 3) {
            setSelected(-1);
            onSectionDown(i, false);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void setSelected(int i) {
        if (i == this.selectedIndex) {
            return;
        }
        int i2 = 0;
        while (true) {
            Sector[] sectorArr = this.sectors;
            if (i2 < sectorArr.length) {
                if (i == i2 && sectorArr[i2].angleSize <= BitmapDescriptorFactory.HUE_RED) {
                    i = -1;
                }
                sectorArr[i2].selected = i == i2;
                i2++;
            } else {
                this.selectedIndex = i;
                invalidate();
                return;
            }
        }
    }

    /* renamed from: org.telegram.ui.Components.CacheChart$SegmentSize */
    /* loaded from: classes6.dex */
    public static class SegmentSize {
        int index;
        public boolean selected;
        public long size;

        /* renamed from: of */
        public static SegmentSize m26of(long j, boolean z) {
            SegmentSize segmentSize = new SegmentSize();
            segmentSize.size = j;
            segmentSize.selected = z;
            return segmentSize;
        }
    }

    public void setSegments(long j, boolean z, SegmentSize... segmentSizeArr) {
        char c;
        String str;
        SpannableString spannableString;
        SegmentSize[] segmentSizeArr2 = segmentSizeArr;
        int i = 0;
        if (segmentSizeArr2 == null || segmentSizeArr2.length == 0) {
            this.loading = false;
            this.complete = j == 0;
            if (!z) {
                this.loadingFloat.set(BitmapDescriptorFactory.HUE_RED, true);
                this.completeFloat.set(this.complete ? 1.0f : BitmapDescriptorFactory.HUE_RED, true);
            }
            this.topCompleteText.setText(this.topText.getText(), false);
            this.topText.setText(SessionDescription.SUPPORTED_SDP_VERSION, z);
            this.topCompleteText.setText(SessionDescription.SUPPORTED_SDP_VERSION, z);
            this.bottomCompleteText.setText(this.bottomText.getText(), false);
            this.bottomText.setText("KB", z);
            this.bottomCompleteText.setText("KB", z);
            int i2 = 0;
            while (true) {
                Sector[] sectorArr = this.sectors;
                if (i2 < sectorArr.length) {
                    sectorArr[i2].textAlpha = BitmapDescriptorFactory.HUE_RED;
                    if (!z) {
                        sectorArr[i2].textAlphaAnimated.set(BitmapDescriptorFactory.HUE_RED, true);
                    }
                    i2++;
                } else {
                    invalidate();
                    return;
                }
            }
        } else {
            this.loading = false;
            if (!z) {
                this.loadingFloat.set(BitmapDescriptorFactory.HUE_RED, true);
            }
            SpannableString spannableString2 = new SpannableString("%");
            int length = segmentSizeArr2.length;
            long j2 = 0;
            int i3 = 0;
            while (i3 < segmentSizeArr2.length) {
                if (segmentSizeArr2[i3] == null) {
                    segmentSizeArr2[i3] = new SegmentSize();
                    segmentSizeArr2[i3].size = 0L;
                }
                segmentSizeArr2[i3].index = i3;
                if (segmentSizeArr2[i3] == null || !segmentSizeArr2[i3].selected) {
                    spannableString = spannableString2;
                } else {
                    spannableString = spannableString2;
                    j2 += segmentSizeArr2[i3].size;
                }
                if (segmentSizeArr2[i3] == null || segmentSizeArr2[i3].size <= 0 || !segmentSizeArr2[i3].selected) {
                    length--;
                }
                i3++;
                spannableString2 = spannableString;
            }
            SpannableString spannableString3 = spannableString2;
            if (j2 <= 0) {
                this.loading = false;
                this.complete = j <= 0;
                if (!z) {
                    this.loadingFloat.set(BitmapDescriptorFactory.HUE_RED, true);
                    this.completeFloat.set(this.complete ? 1.0f : BitmapDescriptorFactory.HUE_RED, true);
                }
                this.topCompleteText.setText(this.topText.getText(), false);
                this.topText.setText(SessionDescription.SUPPORTED_SDP_VERSION, z);
                this.topCompleteText.setText(SessionDescription.SUPPORTED_SDP_VERSION, z);
                this.bottomCompleteText.setText(this.bottomText.getText(), false);
                this.bottomText.setText("KB", z);
                this.bottomCompleteText.setText("KB", z);
                while (true) {
                    Sector[] sectorArr2 = this.sectors;
                    if (i < sectorArr2.length) {
                        sectorArr2[i].textAlpha = BitmapDescriptorFactory.HUE_RED;
                        if (!z) {
                            sectorArr2[i].textAlphaAnimated.set(BitmapDescriptorFactory.HUE_RED, true);
                        }
                        i++;
                    } else {
                        invalidate();
                        return;
                    }
                }
            } else {
                int i4 = 0;
                float f = BitmapDescriptorFactory.HUE_RED;
                for (int i5 = 0; i5 < segmentSizeArr2.length; i5++) {
                    float f2 = (segmentSizeArr2[i5] == null || !segmentSizeArr2[i5].selected) ? BitmapDescriptorFactory.HUE_RED : ((float) segmentSizeArr2[i5].size) / ((float) j2);
                    if (f2 > BitmapDescriptorFactory.HUE_RED && f2 < 0.02f) {
                        i4++;
                        f += f2;
                    }
                }
                Math.min(segmentSizeArr2.length, this.sectors.length);
                int[] iArr = this.tempPercents;
                if (iArr == null || iArr.length != segmentSizeArr2.length) {
                    this.tempPercents = new int[segmentSizeArr2.length];
                }
                float[] fArr = this.tempFloat;
                if (fArr == null || fArr.length != segmentSizeArr2.length) {
                    this.tempFloat = new float[segmentSizeArr2.length];
                }
                for (int i6 = 0; i6 < segmentSizeArr2.length; i6++) {
                    this.tempFloat[i6] = (segmentSizeArr2[i6] == null || !segmentSizeArr2[i6].selected) ? BitmapDescriptorFactory.HUE_RED : ((float) segmentSizeArr2[i6].size) / ((float) j2);
                }
                AndroidUtilities.roundPercents(this.tempFloat, this.tempPercents);
                if (this.type == 0) {
                    Arrays.sort(segmentSizeArr2, CacheChart$$ExternalSyntheticLambda0.INSTANCE);
                    int i7 = 0;
                    while (true) {
                        if (i7 >= segmentSizeArr2.length - 1) {
                            break;
                        } else if (segmentSizeArr2[i7].index == segmentSizeArr2.length - 1) {
                            SegmentSize segmentSize = segmentSizeArr2[0];
                            segmentSizeArr2[0] = segmentSizeArr2[i7];
                            segmentSizeArr2[i7] = segmentSize;
                            break;
                        } else {
                            i7++;
                        }
                    }
                }
                if (length < 2) {
                    length = 0;
                }
                float f3 = 360.0f - (length * 2.0f);
                int i8 = 0;
                float f4 = BitmapDescriptorFactory.HUE_RED;
                int i9 = 0;
                while (i8 < segmentSizeArr2.length) {
                    int i10 = segmentSizeArr2[i8].index;
                    float f5 = (segmentSizeArr2[i8] == null || !segmentSizeArr2[i8].selected) ? BitmapDescriptorFactory.HUE_RED : ((float) segmentSizeArr2[i8].size) / ((float) j2);
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                    spannableStringBuilder.append((CharSequence) String.format("%d", Integer.valueOf(this.tempPercents[i10])));
                    SpannableString spannableString4 = spannableString3;
                    spannableStringBuilder.append((CharSequence) spannableString4);
                    Sector[] sectorArr3 = this.sectors;
                    long j3 = j2;
                    sectorArr3[i10].textAlpha = (((double) f5) <= 0.05d || f5 >= 1.0f) ? BitmapDescriptorFactory.HUE_RED : 1.0f;
                    sectorArr3[i10].textScale = (f5 < 0.08f || this.tempPercents[i10] >= 100) ? 0.85f : 1.0f;
                    sectorArr3[i10].particlesAlpha = 1.0f;
                    if (!z) {
                        sectorArr3[i10].textAlphaAnimated.set(sectorArr3[i10].textAlpha, true);
                        Sector[] sectorArr4 = this.sectors;
                        sectorArr4[i10].textScaleAnimated.set(sectorArr4[i10].textScale, true);
                        Sector[] sectorArr5 = this.sectors;
                        sectorArr5[i10].particlesAlphaAnimated.set(sectorArr5[i10].particlesAlpha, true);
                    }
                    Sector[] sectorArr6 = this.sectors;
                    if (sectorArr6[i10].textAlpha > BitmapDescriptorFactory.HUE_RED) {
                        sectorArr6[i10].text.setText(spannableStringBuilder, z);
                    }
                    float f6 = (f5 >= 0.02f || f5 <= BitmapDescriptorFactory.HUE_RED) ? f5 * (1.0f - ((i4 * 0.02f) - f)) : 0.02f;
                    float f7 = (f4 * f3) + (i9 * 2.0f);
                    float f8 = (f6 * f3) + f7;
                    if (f6 <= BitmapDescriptorFactory.HUE_RED) {
                        Sector[] sectorArr7 = this.sectors;
                        sectorArr7[i10].angleCenter = (f7 + f8) / 2.0f;
                        sectorArr7[i10].angleSize = Math.abs(f8 - f7) / 2.0f;
                        Sector[] sectorArr8 = this.sectors;
                        sectorArr8[i10].textAlpha = BitmapDescriptorFactory.HUE_RED;
                        if (!z) {
                            sectorArr8[i10].angleCenterAnimated.set(sectorArr8[i10].angleCenter, true);
                            Sector[] sectorArr9 = this.sectors;
                            sectorArr9[i10].angleSizeAnimated.set(sectorArr9[i10].angleSize, true);
                            Sector[] sectorArr10 = this.sectors;
                            sectorArr10[i10].textAlphaAnimated.set(sectorArr10[i10].textAlpha, true);
                        }
                    } else {
                        Sector[] sectorArr11 = this.sectors;
                        sectorArr11[i10].angleCenter = (f7 + f8) / 2.0f;
                        sectorArr11[i10].angleSize = Math.abs(f8 - f7) / 2.0f;
                        if (!z) {
                            Sector[] sectorArr12 = this.sectors;
                            sectorArr12[i10].angleCenterAnimated.set(sectorArr12[i10].angleCenter, true);
                            Sector[] sectorArr13 = this.sectors;
                            sectorArr13[i10].angleSizeAnimated.set(sectorArr13[i10].angleSize, true);
                        }
                        f4 += f6;
                        i9++;
                    }
                    i8++;
                    segmentSizeArr2 = segmentSizeArr;
                    spannableString3 = spannableString4;
                    j2 = j3;
                }
                long j4 = j2;
                String[] split = AndroidUtilities.formatFileSize(j4).split(" ");
                if (split.length > 0) {
                    c = 0;
                    str = split[0];
                } else {
                    c = 0;
                    str = "";
                }
                if (str.length() >= 4 && j4 < 1073741824) {
                    str = str.split("\\.")[c];
                }
                this.topText.setText(str, z);
                this.bottomText.setText(split.length > 1 ? split[1] : "", z);
                if (this.completeFloat.get() > BitmapDescriptorFactory.HUE_RED) {
                    this.topCompleteText.setText(this.topText.getText(), z);
                    this.bottomCompleteText.setText(this.bottomText.getText(), z);
                }
                this.complete = false;
                if (!z) {
                    this.completeFloat.set(BitmapDescriptorFactory.HUE_RED, true);
                }
                invalidate();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$setSegments$0(SegmentSize segmentSize, SegmentSize segmentSize2) {
        return Long.compare(segmentSize.size, segmentSize2.size);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setCircleBounds(RectF rectF, float f, float f2, float f3) {
        rectF.set(f - f3, f2 - f3, f + f3, f2 + f3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setCircleBounds(RectF rectF, double d, double d2, float f) {
        setCircleBounds(rectF, (float) d, (float) d2, f);
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
        float f;
        float f2;
        Canvas canvas2;
        float f3;
        boolean z;
        RectF rectF;
        float f4;
        float f5;
        float f6;
        float f7;
        AnimatedFloat animatedFloat = this.loadingFloat;
        boolean z2 = this.loading;
        float f8 = BitmapDescriptorFactory.HUE_RED;
        float f9 = animatedFloat.set(z2 ? 1.0f : BitmapDescriptorFactory.HUE_RED);
        float f10 = this.completeFloat.set(this.complete ? 1.0f : BitmapDescriptorFactory.HUE_RED);
        this.chartBounds.set(this.chartMeasureBounds);
        float lerp = AndroidUtilities.lerp((float) BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dpf2(padInsideDp()), f10);
        this.chartBounds.inset(lerp, lerp);
        this.chartInnerBounds.set(this.chartBounds);
        float lerp2 = AndroidUtilities.lerp(AndroidUtilities.dpf2(38.0f), AndroidUtilities.dpf2(10.0f), Math.max(f9, f10));
        this.chartInnerBounds.inset(lerp2, lerp2);
        char c = 0;
        float lerp3 = AndroidUtilities.lerp(0, AndroidUtilities.m50dp(60), f9);
        if (start == null) {
            start = Long.valueOf(System.currentTimeMillis());
        }
        boolean z3 = this.loading;
        if (!z3 && loadedStart == null) {
            loadedStart = Long.valueOf(System.currentTimeMillis());
        } else if (z3 && loadedStart != null) {
            loadedStart = null;
        }
        Long l = loadedStart;
        float currentTimeMillis = ((float) ((l == null ? System.currentTimeMillis() : l.longValue()) - start.longValue())) * 0.6f;
        CircularProgressDrawable.getSegments(currentTimeMillis % 5400.0f, this.segmentsTmp);
        float[] fArr = this.segmentsTmp;
        float f11 = fArr[0];
        float f12 = fArr[1];
        int i = (f9 > BitmapDescriptorFactory.HUE_RED ? 1 : (f9 == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
        if (i > 0) {
            this.loadingBackgroundPaint.setStrokeWidth(lerp2);
            int alpha = this.loadingBackgroundPaint.getAlpha();
            this.loadingBackgroundPaint.setAlpha((int) (alpha * f9));
            canvas.drawCircle(this.chartBounds.centerX(), this.chartBounds.centerY(), (this.chartBounds.width() - lerp2) / 2.0f, this.loadingBackgroundPaint);
            this.loadingBackgroundPaint.setAlpha(alpha);
        }
        boolean z4 = i > 0 || f10 > BitmapDescriptorFactory.HUE_RED;
        int i2 = 0;
        while (true) {
            Sector[] sectorArr = this.sectors;
            if (i2 >= sectorArr.length) {
                break;
            }
            Sector sector = sectorArr[i2];
            CircularProgressDrawable.getSegments((currentTimeMillis + (i2 * 80)) % 5400.0f, this.segmentsTmp);
            float min = Math.min(Math.max(this.segmentsTmp[c], f11), f12);
            float min2 = Math.min(Math.max(this.segmentsTmp[1], f11), f12);
            if (f9 < 1.0f || min < min2) {
                float f13 = (min + min2) / 2.0f;
                float abs = Math.abs(min2 - min) / 2.0f;
                if (f9 <= f8) {
                    float f14 = sector.angleCenterAnimated.set(sector.angleCenter);
                    f6 = sector.angleSizeAnimated.set(sector.angleSize);
                    f4 = f12;
                    f5 = f14;
                } else {
                    if (f9 < 1.0f) {
                        f4 = f12;
                        float lerp4 = AndroidUtilities.lerp(sector.angleCenterAnimated.set(sector.angleCenter) + (((float) Math.floor(f12 / 360.0f)) * 360.0f), f13, f9);
                        abs = AndroidUtilities.lerp(sector.angleSizeAnimated.set(sector.angleSize), abs, f9);
                        f5 = lerp4;
                    } else {
                        f4 = f12;
                        f5 = f13;
                    }
                    f6 = abs;
                }
                boolean z5 = sector.angleCenterAnimated.isInProgress() || sector.angleSizeAnimated.isInProgress() || z4;
                f7 = f11;
                sector.draw(canvas, this.chartBounds, this.chartInnerBounds, f5, f6, lerp3, 1.0f - f10, 1.0f - f9);
                z4 = z5;
            } else {
                f4 = f12;
                f7 = f11;
            }
            i2++;
            f11 = f7;
            f12 = f4;
            f8 = BitmapDescriptorFactory.HUE_RED;
            c = 0;
        }
        int i3 = this.type;
        if (i3 == 0) {
            float f15 = (1.0f - f9) * (1.0f - f10);
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.topText;
            f = lerp2;
            f2 = f10;
            f3 = BitmapDescriptorFactory.HUE_RED;
            canvas2 = canvas;
            if (drawAnimatedText(canvas, animatedTextDrawable, this.chartBounds.centerX(), this.chartBounds.centerY() - AndroidUtilities.dpf2(5.0f), 1.0f, f15) || z4) {
            }
            drawAnimatedText(canvas, this.bottomText, this.chartBounds.centerX(), this.chartBounds.centerY() + AndroidUtilities.dpf2(22.0f), 1.0f, f15);
        } else {
            f = lerp2;
            f2 = f10;
            canvas2 = canvas;
            f3 = BitmapDescriptorFactory.HUE_RED;
            if (i3 == 1) {
                float f16 = 1.0f - f9;
                float centerX = this.chartBounds.centerX() - AndroidUtilities.lerp((float) BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dpf2(4.0f), f2);
                float centerY = this.chartBounds.centerY() - AndroidUtilities.lerp(AndroidUtilities.dpf2(5.0f), (float) BitmapDescriptorFactory.HUE_RED, f2);
                float lerp5 = AndroidUtilities.lerp(1.0f, 2.25f, f2);
                float f17 = f16 * f2;
                float f18 = f16 * (1.0f - f2);
                boolean z6 = drawAnimatedText(canvas, this.topText, centerX, centerY, lerp5, f18) || (drawAnimatedText(canvas, this.topCompleteText, centerX, centerY, lerp5, f17) || z4);
                float centerX2 = this.chartBounds.centerX() + AndroidUtilities.lerp((float) BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dpf2(26.0f), f2);
                float centerY2 = this.chartBounds.centerY() + AndroidUtilities.lerp(AndroidUtilities.dpf2(22.0f), -AndroidUtilities.dpf2(18.0f), f2);
                float lerp6 = AndroidUtilities.lerp(1.0f, 1.4f, f2);
                if (drawAnimatedText(canvas, this.bottomCompleteText, centerX2, centerY2, lerp6, f17) || z6) {
                }
                drawAnimatedText(canvas, this.bottomText, centerX2, centerY2, lerp6, f18);
            }
        }
        if (f2 > f3) {
            if (this.completeDrawable == null) {
                StarParticlesView.Drawable drawable = new StarParticlesView.Drawable(25);
                this.completeDrawable = drawable;
                drawable.type = 100;
                drawable.roundEffect = true;
                drawable.useRotate = true;
                drawable.useBlur = false;
                drawable.checkBounds = true;
                drawable.size1 = 18;
                drawable.distributionAlgorithm = false;
                drawable.excludeRadius = AndroidUtilities.m50dp(80);
                StarParticlesView.Drawable drawable2 = this.completeDrawable;
                drawable2.f1775k3 = 0.85f;
                drawable2.f1774k2 = 0.85f;
                drawable2.f1773k1 = 0.85f;
                drawable2.init();
                z = true;
            } else {
                z = false;
            }
            if (z || (rectF = this.completePathBounds) == null || !rectF.equals(this.chartMeasureBounds)) {
                float min3 = Math.min(getMeasuredHeight(), Math.min(getMeasuredWidth(), AndroidUtilities.m50dp((int) ImageReceiver.DEFAULT_CROSSFADE_DURATION)));
                this.completeDrawable.rect.set(f3, f3, min3, min3);
                this.completeDrawable.rect.offset((getMeasuredWidth() - this.completeDrawable.rect.width()) / 2.0f, (getMeasuredHeight() - this.completeDrawable.rect.height()) / 2.0f);
                this.completeDrawable.rect2.set(f3, f3, getMeasuredWidth(), getMeasuredHeight());
                this.completeDrawable.resetPositions();
            }
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), 255, 31);
            this.completeDrawable.onDraw(canvas2, f2);
            int i4 = (int) (f2 * 255.0f);
            this.completePaint.setAlpha(i4);
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), this.completePaint);
            canvas.restore();
            this.completePaintStroke.setStrokeWidth(f);
            this.completePaintStroke.setAlpha(i4);
            canvas2.drawCircle(this.chartBounds.centerX(), this.chartBounds.centerY(), (this.chartBounds.width() - f) / 2.0f, this.completePaintStroke);
            RectF rectF2 = this.completePathBounds;
            if (rectF2 == null || !rectF2.equals(this.chartMeasureBounds)) {
                if (this.completePathBounds == null) {
                    this.completePathBounds = new RectF();
                }
                this.completePathBounds.set(this.chartMeasureBounds);
                this.completePath.rewind();
                int i5 = this.type;
                if (i5 == 0) {
                    this.completePath.moveTo(this.chartBounds.width() * 0.348f, this.chartBounds.height() * 0.538f);
                    this.completePath.lineTo(this.chartBounds.width() * 0.447f, this.chartBounds.height() * 0.636f);
                    this.completePath.lineTo(this.chartBounds.width() * 0.678f, this.chartBounds.height() * 0.402f);
                } else if (i5 == 1) {
                    this.completePath.moveTo(this.chartBounds.width() * 0.2929f, this.chartBounds.height() * 0.4369f);
                    this.completePath.lineTo(this.chartBounds.width() * 0.381f, this.chartBounds.height() * 0.35f);
                    this.completePath.lineTo(this.chartBounds.width() * 0.4691f, this.chartBounds.height() * 0.4369f);
                    this.completePath.moveTo(this.chartBounds.width() * 0.381f, this.chartBounds.height() * 0.35f);
                    this.completePath.lineTo(this.chartBounds.width() * 0.381f, this.chartBounds.height() * 0.6548f);
                    this.completePath.moveTo(this.chartBounds.width() * 0.5214f, this.chartBounds.height() * 0.5821f);
                    this.completePath.lineTo(this.chartBounds.width() * 0.6095f, this.chartBounds.height() * 0.669f);
                    this.completePath.lineTo(this.chartBounds.width() * 0.6976f, this.chartBounds.height() * 0.5821f);
                    this.completePath.moveTo(this.chartBounds.width() * 0.6095f, this.chartBounds.height() * 0.669f);
                    this.completePath.lineTo(this.chartBounds.width() * 0.6095f, this.chartBounds.height() * 0.3643f);
                }
                Path path = this.completePath;
                RectF rectF3 = this.chartBounds;
                path.offset(rectF3.left, rectF3.top);
            }
            if (this.type == 0) {
                this.completePaintStroke.setStrokeWidth(AndroidUtilities.dpf2(10.0f));
                canvas2.drawPath(this.completePath, this.completePaintStroke);
            }
        }
        if (this.isAttached) {
            invalidate();
        }
    }

    private boolean drawAnimatedText(Canvas canvas, AnimatedTextView.AnimatedTextDrawable animatedTextDrawable, float f, float f2, float f3, float f4) {
        if (f4 <= BitmapDescriptorFactory.HUE_RED) {
            return false;
        }
        animatedTextDrawable.setAlpha((int) (f4 * 255.0f));
        animatedTextDrawable.setBounds(0, 0, 0, 0);
        canvas.save();
        canvas.translate(f, f2);
        canvas.scale(f3, f3);
        animatedTextDrawable.draw(canvas);
        canvas.restore();
        return animatedTextDrawable.isAnimating();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int m50dp = AndroidUtilities.m50dp(heightDp());
        int m50dp2 = AndroidUtilities.m50dp((int) TsExtractor.TS_STREAM_TYPE_AC4);
        this.chartMeasureBounds.set((size - m50dp2) / 2.0f, (m50dp - m50dp2) / 2.0f, (size + m50dp2) / 2.0f, (m50dp2 + m50dp) / 2.0f);
        this.completeGradientMatrix.reset();
        this.completeGradientMatrix.setTranslate(this.chartMeasureBounds.left, BitmapDescriptorFactory.HUE_RED);
        this.completeGradient.setLocalMatrix(this.completeGradientMatrix);
        this.completeTextGradientMatrix.reset();
        Matrix matrix = this.completeTextGradientMatrix;
        RectF rectF = this.chartMeasureBounds;
        matrix.setTranslate(rectF.left, -rectF.centerY());
        this.completeTextGradient.setLocalMatrix(this.completeTextGradientMatrix);
        StarParticlesView.Drawable drawable = this.completeDrawable;
        if (drawable != null) {
            drawable.rect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m50dp(140), AndroidUtilities.m50dp(140));
            this.completeDrawable.rect.offset((getMeasuredWidth() - this.completeDrawable.rect.width()) / 2.0f, (getMeasuredHeight() - this.completeDrawable.rect.height()) / 2.0f);
            this.completeDrawable.rect2.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
            this.completeDrawable.resetPositions();
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(m50dp, 1073741824));
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        requestLayout();
    }
}
