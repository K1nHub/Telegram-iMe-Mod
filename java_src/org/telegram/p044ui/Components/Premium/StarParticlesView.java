package org.telegram.p044ui.Components.Premium;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.CornerPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3295R;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.Utilities;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.GLIconSettingsView;
/* renamed from: org.telegram.ui.Components.Premium.StarParticlesView */
/* loaded from: classes6.dex */
public class StarParticlesView extends View {
    public Drawable drawable;
    int size;

    public StarParticlesView(Context context) {
        super(context);
        int i;
        if (SharedConfig.getDevicePerformanceClass() == 2) {
            i = 200;
        } else {
            i = SharedConfig.getDevicePerformanceClass() == 1 ? 100 : 50;
        }
        Drawable drawable = new Drawable(i);
        this.drawable = drawable;
        drawable.type = 100;
        drawable.roundEffect = true;
        drawable.useRotate = true;
        drawable.useBlur = true;
        drawable.checkBounds = true;
        drawable.size1 = 4;
        drawable.f1722k3 = 0.98f;
        drawable.f1721k2 = 0.98f;
        drawable.f1720k1 = 0.98f;
        drawable.init();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth() << (getMeasuredHeight() + 16);
        this.drawable.rect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m54dp(140), AndroidUtilities.m54dp(140));
        this.drawable.rect.offset((getMeasuredWidth() - this.drawable.rect.width()) / 2.0f, (getMeasuredHeight() - this.drawable.rect.height()) / 2.0f);
        this.drawable.rect2.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
        if (this.size != measuredWidth) {
            this.size = measuredWidth;
            this.drawable.resetPositions();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.drawable.onDraw(canvas);
        if (this.drawable.paused) {
            return;
        }
        invalidate();
    }

    public void flingParticles(float f) {
        float f2 = f < 60.0f ? 5.0f : f < 180.0f ? 9.0f : 15.0f;
        AnimatorSet animatorSet = new AnimatorSet();
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Premium.StarParticlesView$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                StarParticlesView.this.lambda$flingParticles$0(valueAnimator);
            }
        };
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, f2);
        ofFloat.addUpdateListener(animatorUpdateListener);
        ofFloat.setDuration(600L);
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(f2, 1.0f);
        ofFloat2.addUpdateListener(animatorUpdateListener);
        ofFloat2.setDuration(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        animatorSet.playTogether(ofFloat, ofFloat2);
        animatorSet.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$flingParticles$0(ValueAnimator valueAnimator) {
        this.drawable.speedScale = ((Float) valueAnimator.getAnimatedValue()).floatValue();
    }

    /* renamed from: org.telegram.ui.Components.Premium.StarParticlesView$Drawable */
    /* loaded from: classes6.dex */
    public static class Drawable {

        /* renamed from: a */
        float f1716a;

        /* renamed from: a1 */
        float f1717a1;

        /* renamed from: a2 */
        float f1718a2;
        public final int count;
        public boolean distributionAlgorithm;
        private int lastColor;
        public Paint overridePaint;
        public boolean paused;
        public long pausedTime;
        float[] points1;
        float[] points2;
        float[] points3;
        int pointsCount1;
        int pointsCount2;
        int pointsCount3;
        private long prevTime;
        public boolean startFromCenter;
        public boolean svg;
        public boolean useGradient;
        public boolean useRotate;
        public RectF rect = new RectF();
        public RectF rect2 = new RectF();
        public RectF excludeRect = new RectF();
        private final Bitmap[] stars = new Bitmap[3];
        public Paint paint = new Paint();
        public float excludeRadius = BitmapDescriptorFactory.HUE_RED;
        public ArrayList<Particle> particles = new ArrayList<>();
        public float speedScale = 1.0f;
        public int size1 = 14;
        public int size2 = 12;
        public int size3 = 10;

        /* renamed from: k1 */
        public float f1720k1 = 0.85f;

        /* renamed from: k2 */
        public float f1721k2 = 0.85f;

        /* renamed from: k3 */
        public float f1722k3 = 0.9f;
        public long minLifeTime = ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS;
        public int randLifeTime = 1000;

        /* renamed from: dt */
        private final float f1719dt = 1000.0f / AndroidUtilities.screenRefreshRate;
        Matrix matrix = new Matrix();
        Matrix matrix2 = new Matrix();
        Matrix matrix3 = new Matrix();
        public boolean checkBounds = false;
        public boolean checkTime = true;
        public boolean isCircle = true;
        public boolean useBlur = false;
        public boolean forceMaxAlpha = false;
        public boolean roundEffect = true;
        public int type = -1;
        public int colorKey = Theme.key_premiumStartSmallStarsColor;

        public Drawable(int i) {
            this.count = i;
            this.distributionAlgorithm = i < 50;
        }

        public void init() {
            if (this.useRotate) {
                int i = this.count;
                this.points1 = new float[i * 2];
                this.points2 = new float[i * 2];
                this.points3 = new float[i * 2];
            }
            generateBitmaps();
            if (this.particles.isEmpty()) {
                for (int i2 = 0; i2 < this.count; i2++) {
                    this.particles.add(new Particle());
                }
            }
        }

        public void updateColors() {
            int color = Theme.getColor(this.colorKey);
            if (this.lastColor != color) {
                this.lastColor = color;
                generateBitmaps();
            }
        }

        private void generateBitmaps() {
            int m54dp;
            int i;
            int i2;
            int i3;
            int i4;
            for (int i5 = 0; i5 < 3; i5++) {
                float f = this.f1720k1;
                if (i5 == 0) {
                    m54dp = AndroidUtilities.m54dp(this.size1);
                } else if (i5 == 1) {
                    f = this.f1721k2;
                    m54dp = AndroidUtilities.m54dp(this.size2);
                } else {
                    f = this.f1722k3;
                    m54dp = AndroidUtilities.m54dp(this.size3);
                }
                int i6 = m54dp;
                int i7 = this.type;
                if (i7 == 9) {
                    if (i5 == 0) {
                        i4 = C3295R.raw.premium_object_folder;
                    } else if (i5 == 1) {
                        i4 = C3295R.raw.premium_object_bubble;
                    } else {
                        i4 = C3295R.raw.premium_object_settings;
                    }
                    this.stars[i5] = SvgHelper.getBitmap(i4, i6, i6, ColorUtils.setAlphaComponent(Theme.getColor(this.colorKey), 30));
                    this.svg = true;
                } else if (i7 == 11 || i7 == 4) {
                    if (i5 == 0) {
                        i = C3295R.raw.premium_object_smile1;
                    } else if (i5 == 1) {
                        i = C3295R.raw.premium_object_smile2;
                    } else {
                        i = C3295R.raw.premium_object_like;
                    }
                    this.stars[i5] = SvgHelper.getBitmap(i, i6, i6, ColorUtils.setAlphaComponent(Theme.getColor(this.colorKey), 30));
                    this.svg = true;
                } else if (i7 == 3) {
                    if (i5 == 0) {
                        i3 = C3295R.raw.premium_object_adsbubble;
                    } else if (i5 == 1) {
                        i3 = C3295R.raw.premium_object_like;
                    } else {
                        i3 = C3295R.raw.premium_object_noads;
                    }
                    this.stars[i5] = SvgHelper.getBitmap(i3, i6, i6, ColorUtils.setAlphaComponent(Theme.getColor(this.colorKey), 30));
                    this.svg = true;
                } else if (i7 == 7) {
                    if (i5 == 0) {
                        i2 = C3295R.raw.premium_object_video2;
                    } else if (i5 == 1) {
                        i2 = C3295R.raw.premium_object_video;
                    } else {
                        i2 = C3295R.raw.premium_object_user;
                    }
                    this.stars[i5] = SvgHelper.getBitmap(i2, i6, i6, ColorUtils.setAlphaComponent(Theme.getColor(this.colorKey), 30));
                    this.svg = true;
                } else if (i7 == 1001) {
                    this.stars[i5] = SvgHelper.getBitmap(C3295R.raw.premium_object_fire, i6, i6, ColorUtils.setAlphaComponent(Theme.getColor(this.colorKey), 30));
                    this.svg = true;
                } else if (i7 == 1002) {
                    this.stars[i5] = SvgHelper.getBitmap(C3295R.raw.premium_object_star2, i6, i6, ColorUtils.setAlphaComponent(Theme.getColor(this.colorKey), 30));
                    this.svg = true;
                } else {
                    Bitmap createBitmap = Bitmap.createBitmap(i6, i6, Bitmap.Config.ARGB_8888);
                    this.stars[i5] = createBitmap;
                    Canvas canvas = new Canvas(createBitmap);
                    if (this.type == 6 && (i5 == 1 || i5 == 2)) {
                        android.graphics.drawable.Drawable drawable = ContextCompat.getDrawable(ApplicationLoader.applicationContext, C3295R.C3297drawable.msg_premium_liststar);
                        drawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(this.colorKey), PorterDuff.Mode.MULTIPLY));
                        drawable.setBounds(0, 0, i6, i6);
                        drawable.draw(canvas);
                    } else {
                        Path path = new Path();
                        float f2 = i6 >> 1;
                        int i8 = (int) (f * f2);
                        path.moveTo(BitmapDescriptorFactory.HUE_RED, f2);
                        float f3 = i8;
                        path.lineTo(f3, f3);
                        path.lineTo(f2, BitmapDescriptorFactory.HUE_RED);
                        float f4 = i6 - i8;
                        path.lineTo(f4, f3);
                        float f5 = i6;
                        path.lineTo(f5, f2);
                        path.lineTo(f4, f4);
                        path.lineTo(f2, f5);
                        path.lineTo(f3, f4);
                        path.lineTo(BitmapDescriptorFactory.HUE_RED, f2);
                        path.close();
                        Paint paint = new Paint();
                        if (this.useGradient) {
                            if (i6 >= AndroidUtilities.m54dp(10)) {
                                PremiumGradient.getInstance().updateMainGradientMatrix(0, 0, i6, i6, i6 * (-2), BitmapDescriptorFactory.HUE_RED);
                            } else {
                                PremiumGradient.getInstance().updateMainGradientMatrix(0, 0, i6, i6, i6 * (-4), BitmapDescriptorFactory.HUE_RED);
                            }
                            Paint mainGradientPaint = PremiumGradient.getInstance().getMainGradientPaint();
                            if (this.roundEffect) {
                                mainGradientPaint.setPathEffect(new CornerPathEffect(AndroidUtilities.dpf2(this.size1 / 5.0f)));
                            }
                            if (this.forceMaxAlpha) {
                                mainGradientPaint.setAlpha(255);
                            } else if (this.useBlur) {
                                mainGradientPaint.setAlpha(60);
                            } else {
                                mainGradientPaint.setAlpha(120);
                            }
                            canvas.drawPath(path, mainGradientPaint);
                            mainGradientPaint.setPathEffect(null);
                            mainGradientPaint.setAlpha(255);
                        } else {
                            if (this.type == 100) {
                                paint.setColor(ColorUtils.setAlphaComponent(Theme.getColor(this.colorKey), 200));
                            } else {
                                paint.setColor(Theme.getColor(this.colorKey));
                            }
                            if (this.roundEffect) {
                                paint.setPathEffect(new CornerPathEffect(AndroidUtilities.dpf2(this.size1 / 5.0f)));
                            }
                            canvas.drawPath(path, paint);
                        }
                        if (this.useBlur) {
                            Utilities.stackBlurBitmap(createBitmap, 2);
                        }
                    }
                }
            }
        }

        public void resetPositions() {
            long currentTimeMillis = System.currentTimeMillis();
            for (int i = 0; i < this.particles.size(); i++) {
                this.particles.get(i).genPosition(currentTimeMillis);
            }
        }

        public void onDraw(Canvas canvas) {
            onDraw(canvas, 1.0f);
        }

        public void onDraw(Canvas canvas, float f) {
            long currentTimeMillis = System.currentTimeMillis();
            long clamp = MathUtils.clamp(currentTimeMillis - this.prevTime, 4L, 50L);
            if (this.useRotate) {
                this.matrix.reset();
                float f2 = (float) clamp;
                float f3 = this.f1716a + ((f2 / 40000.0f) * 360.0f);
                this.f1716a = f3;
                this.f1717a1 += (f2 / 50000.0f) * 360.0f;
                this.f1718a2 += (f2 / 60000.0f) * 360.0f;
                this.matrix.setRotate(f3, this.rect.centerX(), this.rect.centerY());
                this.matrix2.setRotate(this.f1717a1, this.rect.centerX(), this.rect.centerY());
                this.matrix3.setRotate(this.f1718a2, this.rect.centerX(), this.rect.centerY());
                this.pointsCount1 = 0;
                this.pointsCount2 = 0;
                this.pointsCount3 = 0;
                for (int i = 0; i < this.particles.size(); i++) {
                    this.particles.get(i).updatePoint();
                }
                Matrix matrix = this.matrix;
                float[] fArr = this.points1;
                matrix.mapPoints(fArr, 0, fArr, 0, this.pointsCount1);
                Matrix matrix2 = this.matrix2;
                float[] fArr2 = this.points2;
                matrix2.mapPoints(fArr2, 0, fArr2, 0, this.pointsCount2);
                Matrix matrix3 = this.matrix3;
                float[] fArr3 = this.points3;
                matrix3.mapPoints(fArr3, 0, fArr3, 0, this.pointsCount3);
                this.pointsCount1 = 0;
                this.pointsCount2 = 0;
                this.pointsCount3 = 0;
            }
            for (int i2 = 0; i2 < this.particles.size(); i2++) {
                Particle particle = this.particles.get(i2);
                if (this.paused) {
                    particle.draw(canvas, this.pausedTime, f);
                } else {
                    particle.draw(canvas, currentTimeMillis, f);
                }
                if (this.checkTime && currentTimeMillis > particle.lifeTime) {
                    particle.genPosition(currentTimeMillis);
                }
                if (this.checkBounds && !this.rect2.contains(particle.drawingX, particle.drawingY)) {
                    particle.genPosition(currentTimeMillis);
                }
            }
            this.prevTime = currentTimeMillis;
        }

        /* renamed from: org.telegram.ui.Components.Premium.StarParticlesView$Drawable$Particle */
        /* loaded from: classes6.dex */
        public class Particle {
            private int alpha;
            private float drawingX;
            private float drawingY;
            float inProgress;
            public long lifeTime;
            private float randomRotate;
            private int starIndex;
            private float vecX;
            private float vecY;

            /* renamed from: x */
            private float f1723x;

            /* renamed from: x2 */
            private float f1724x2;

            /* renamed from: y */
            private float f1725y;

            /* renamed from: y2 */
            private float f1726y2;

            public Particle() {
            }

            public void updatePoint() {
                int i = this.starIndex;
                if (i == 0) {
                    Drawable drawable = Drawable.this;
                    float[] fArr = drawable.points1;
                    int i2 = drawable.pointsCount1;
                    fArr[i2 * 2] = this.f1723x;
                    fArr[(i2 * 2) + 1] = this.f1725y;
                    drawable.pointsCount1 = i2 + 1;
                } else if (i == 1) {
                    Drawable drawable2 = Drawable.this;
                    float[] fArr2 = drawable2.points2;
                    int i3 = drawable2.pointsCount2;
                    fArr2[i3 * 2] = this.f1723x;
                    fArr2[(i3 * 2) + 1] = this.f1725y;
                    drawable2.pointsCount2 = i3 + 1;
                } else if (i == 2) {
                    Drawable drawable3 = Drawable.this;
                    float[] fArr3 = drawable3.points3;
                    int i4 = drawable3.pointsCount3;
                    fArr3[i4 * 2] = this.f1723x;
                    fArr3[(i4 * 2) + 1] = this.f1725y;
                    drawable3.pointsCount3 = i4 + 1;
                }
            }

            public void draw(Canvas canvas, long j, float f) {
                Drawable drawable = Drawable.this;
                if (drawable.useRotate) {
                    int i = this.starIndex;
                    if (i == 0) {
                        float[] fArr = drawable.points1;
                        int i2 = drawable.pointsCount1;
                        this.drawingX = fArr[i2 * 2];
                        this.drawingY = fArr[(i2 * 2) + 1];
                        drawable.pointsCount1 = i2 + 1;
                    } else if (i == 1) {
                        float[] fArr2 = drawable.points2;
                        int i3 = drawable.pointsCount2;
                        this.drawingX = fArr2[i3 * 2];
                        this.drawingY = fArr2[(i3 * 2) + 1];
                        drawable.pointsCount2 = i3 + 1;
                    } else if (i == 2) {
                        float[] fArr3 = drawable.points3;
                        int i4 = drawable.pointsCount3;
                        this.drawingX = fArr3[i4 * 2];
                        this.drawingY = fArr3[(i4 * 2) + 1];
                        drawable.pointsCount3 = i4 + 1;
                    }
                } else {
                    this.drawingX = this.f1723x;
                    this.drawingY = this.f1725y;
                }
                boolean z = false;
                if (!drawable.excludeRect.isEmpty() && Drawable.this.excludeRect.contains(this.drawingX, this.drawingY)) {
                    z = true;
                }
                if (!z) {
                    canvas.save();
                    canvas.translate(this.drawingX, this.drawingY);
                    float f2 = this.randomRotate;
                    float f3 = BitmapDescriptorFactory.HUE_RED;
                    if (f2 != BitmapDescriptorFactory.HUE_RED) {
                        canvas.rotate(f2, Drawable.this.stars[this.starIndex].getWidth() / 2.0f, Drawable.this.stars[this.starIndex].getHeight() / 2.0f);
                    }
                    float f4 = this.inProgress;
                    if (f4 < 1.0f || GLIconSettingsView.smallStarsSize != 1.0f) {
                        float interpolation = AndroidUtilities.overshootInterpolator.getInterpolation(f4) * GLIconSettingsView.smallStarsSize;
                        canvas.scale(interpolation, interpolation, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                    }
                    if (Drawable.this.checkTime) {
                        long j2 = this.lifeTime;
                        if (j2 - j < 200) {
                            f3 = Utilities.clamp(1.0f - (((float) (j2 - j)) / 150.0f), 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                        }
                    }
                    Drawable drawable2 = Drawable.this;
                    Paint paint = drawable2.overridePaint;
                    if (paint == null) {
                        paint = drawable2.paint;
                    }
                    paint.setAlpha((int) (this.alpha * (1.0f - f3) * f));
                    canvas.drawBitmap(Drawable.this.stars[this.starIndex], -(Drawable.this.stars[this.starIndex].getWidth() >> 1), -(Drawable.this.stars[this.starIndex].getHeight() >> 1), paint);
                    canvas.restore();
                }
                if (Drawable.this.paused) {
                    return;
                }
                float m54dp = AndroidUtilities.m54dp(4) * (Drawable.this.f1719dt / 660.0f);
                Drawable drawable3 = Drawable.this;
                float f5 = m54dp * drawable3.speedScale;
                this.f1723x += this.vecX * f5;
                this.f1725y += this.vecY * f5;
                float f6 = this.inProgress;
                if (f6 != 1.0f) {
                    float f7 = f6 + (drawable3.f1719dt / 200.0f);
                    this.inProgress = f7;
                    if (f7 > 1.0f) {
                        this.inProgress = 1.0f;
                    }
                }
            }

            public void genPosition(long j) {
                Drawable drawable;
                int i;
                float f;
                float f2;
                this.starIndex = Math.abs(Utilities.fastRandom.nextInt() % Drawable.this.stars.length);
                this.lifeTime = j + Drawable.this.minLifeTime + Utilities.fastRandom.nextInt(drawable.randLifeTime);
                this.randomRotate = BitmapDescriptorFactory.HUE_RED;
                Drawable drawable2 = Drawable.this;
                if (drawable2.distributionAlgorithm) {
                    float abs = drawable2.rect.left + Math.abs(Utilities.fastRandom.nextInt() % Drawable.this.rect.width());
                    float abs2 = Drawable.this.rect.top + Math.abs(Utilities.fastRandom.nextInt() % Drawable.this.rect.height());
                    float f3 = 0.0f;
                    for (int i2 = 0; i2 < 10; i2++) {
                        float abs3 = Drawable.this.rect.left + Math.abs(Utilities.fastRandom.nextInt() % Drawable.this.rect.width());
                        float abs4 = Drawable.this.rect.top + Math.abs(Utilities.fastRandom.nextInt() % Drawable.this.rect.height());
                        float f4 = 2.14748365E9f;
                        for (int i3 = 0; i3 < Drawable.this.particles.size(); i3++) {
                            Drawable drawable3 = Drawable.this;
                            if (drawable3.startFromCenter) {
                                f = drawable3.particles.get(i3).f1724x2 - abs3;
                                f2 = Drawable.this.particles.get(i3).f1726y2;
                            } else {
                                f = drawable3.particles.get(i3).f1723x - abs3;
                                f2 = Drawable.this.particles.get(i3).f1725y;
                            }
                            float f5 = f2 - abs4;
                            float f6 = (f * f) + (f5 * f5);
                            if (f6 < f4) {
                                f4 = f6;
                            }
                        }
                        if (f4 > f3) {
                            abs = abs3;
                            abs2 = abs4;
                            f3 = f4;
                        }
                    }
                    this.f1723x = abs;
                    this.f1725y = abs2;
                } else if (drawable2.isCircle) {
                    float width = Drawable.this.rect.width();
                    float f7 = Drawable.this.excludeRadius;
                    double abs5 = ((Math.abs(Utilities.fastRandom.nextInt() % 1000) / 1000.0f) * (width - f7)) + f7;
                    this.f1723x = Drawable.this.rect.centerX() + ((float) (Math.sin(Math.toRadians(r4)) * abs5));
                    this.f1725y = Drawable.this.rect.centerY() + ((float) (abs5 * Math.cos(Math.toRadians(r4))));
                } else {
                    this.f1723x = drawable2.rect.left + Math.abs(Utilities.fastRandom.nextInt() % Drawable.this.rect.width());
                    this.f1725y = Drawable.this.rect.top + Math.abs(Utilities.fastRandom.nextInt() % Drawable.this.rect.height());
                }
                double atan2 = Math.atan2(this.f1723x - Drawable.this.rect.centerX(), this.f1725y - Drawable.this.rect.centerY());
                this.vecX = (float) Math.sin(atan2);
                this.vecY = (float) Math.cos(atan2);
                if (Drawable.this.svg) {
                    this.alpha = (int) (((Utilities.fastRandom.nextInt(50) + 50) / 100.0f) * 120.0f);
                } else {
                    this.alpha = (int) (((Utilities.fastRandom.nextInt(50) + 50) / 100.0f) * 255.0f);
                }
                int i4 = Drawable.this.type;
                if ((i4 == 6 && ((i = this.starIndex) == 1 || i == 2)) || i4 == 9 || i4 == 3 || i4 == 7 || i4 == 11 || i4 == 4) {
                    this.randomRotate = (int) (((Utilities.fastRandom.nextInt() % 100) / 100.0f) * 45.0f);
                }
                Drawable drawable4 = Drawable.this;
                if (drawable4.type != 101) {
                    this.inProgress = BitmapDescriptorFactory.HUE_RED;
                }
                if (drawable4.startFromCenter) {
                    this.f1724x2 = this.f1723x;
                    this.f1726y2 = this.f1725y;
                    this.f1723x = drawable4.rect.centerX();
                    this.f1725y = Drawable.this.rect.centerY();
                }
            }
        }
    }

    public void setPaused(boolean z) {
        Drawable drawable = this.drawable;
        if (z == drawable.paused) {
            return;
        }
        drawable.paused = z;
        if (z) {
            drawable.pausedTime = System.currentTimeMillis();
            return;
        }
        for (int i = 0; i < this.drawable.particles.size(); i++) {
            this.drawable.particles.get(i).lifeTime += System.currentTimeMillis() - this.drawable.pausedTime;
        }
        invalidate();
    }
}
