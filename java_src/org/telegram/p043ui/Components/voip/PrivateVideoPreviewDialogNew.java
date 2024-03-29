package org.telegram.p043ui.Components.voip;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import android.media.projection.MediaProjectionManager;
import android.os.Build;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.io.FileOutputStream;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.voip.VideoCapturerDevice;
import org.telegram.messenger.voip.VoIPService;
import org.telegram.p043ui.ActionBar.BackDrawable;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.BitmapShaderTools;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.MotionBackgroundDrawable;
import org.telegram.p043ui.Components.voip.PrivateVideoPreviewDialogNew;
import org.webrtc.RendererCommon;
/* renamed from: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew */
/* loaded from: classes6.dex */
public abstract class PrivateVideoPreviewDialogNew extends FrameLayout implements VoIPService.StateListener {
    private C3704ActionBar actionBar;
    private final MotionBackgroundDrawable bgBlueViolet;
    private final BitmapShaderTools bgBlueVioletShaderTools;
    private final MotionBackgroundDrawable bgGreen;
    private final BitmapShaderTools bgGreenShaderTools;
    private final Camera camera;
    private boolean cameraReady;
    private final Path clipPath;
    private float closeProgress;
    private boolean isDismissed;
    private final Matrix matrixLeft;
    private final Matrix matrixRight;
    private float openProgress1;
    private float openProgress2;
    private float openTranslationX;
    private float openTranslationY;
    private float pageOffset;
    private TextView positiveButton;
    private boolean positiveButtonDrawText;
    private int previousPage;
    private int realCurrentPage;
    private ValueAnimator scrollAnimator;
    private final GestureDetector scrollGestureDetector;
    private final float startLocationX;
    private final float startLocationY;
    private int strangeCurrentPage;
    private VoIPTextureView textureView;
    private VoIpBitmapTextView[] titles;
    private LinearLayout titlesLayout;
    private FrameLayout viewPager;
    private int visibleCameraPage;

    protected void afterOpened() {
    }

    protected void beforeClosed() {
    }

    protected int[] getFloatingViewLocation() {
        return null;
    }

    protected boolean isHasVideoOnMainScreen() {
        return false;
    }

    @Override // org.telegram.messenger.voip.VoIPService.StateListener
    public /* synthetic */ void onAudioSettingsChanged() {
        VoIPService.StateListener.CC.$default$onAudioSettingsChanged(this);
    }

    protected void onDismiss(boolean z, boolean z2) {
    }

    @Override // org.telegram.messenger.voip.VoIPService.StateListener
    public /* synthetic */ void onMediaStateUpdated(int i, int i2) {
        VoIPService.StateListener.CC.$default$onMediaStateUpdated(this, i, i2);
    }

    @Override // org.telegram.messenger.voip.VoIPService.StateListener
    public /* synthetic */ void onScreenOnChange(boolean z) {
        VoIPService.StateListener.CC.$default$onScreenOnChange(this, z);
    }

    @Override // org.telegram.messenger.voip.VoIPService.StateListener
    public /* synthetic */ void onSignalBarsCountChanged(int i) {
        VoIPService.StateListener.CC.$default$onSignalBarsCountChanged(this, i);
    }

    @Override // org.telegram.messenger.voip.VoIPService.StateListener
    public /* synthetic */ void onStateChanged(int i) {
        VoIPService.StateListener.CC.$default$onStateChanged(this, i);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    @Override // org.telegram.messenger.voip.VoIPService.StateListener
    public /* synthetic */ void onVideoAvailableChange(boolean z) {
        VoIPService.StateListener.CC.$default$onVideoAvailableChange(this, z);
    }

    public PrivateVideoPreviewDialogNew(Context context, final float f, final float f2) {
        super(context);
        String string;
        this.visibleCameraPage = 1;
        this.previousPage = -1;
        this.openProgress1 = BitmapDescriptorFactory.HUE_RED;
        this.openProgress2 = BitmapDescriptorFactory.HUE_RED;
        this.closeProgress = BitmapDescriptorFactory.HUE_RED;
        this.clipPath = new Path();
        this.camera = new Camera();
        this.matrixRight = new Matrix();
        this.matrixLeft = new Matrix();
        this.bgGreenShaderTools = new BitmapShaderTools(80, 80);
        this.bgBlueVioletShaderTools = new BitmapShaderTools(80, 80);
        this.bgGreen = new MotionBackgroundDrawable(-10497967, -16730994, -5649306, -10833593, 0, false, true);
        this.bgBlueViolet = new MotionBackgroundDrawable(-16735258, -14061833, -15151390, -12602625, 0, false, true);
        this.startLocationX = f;
        this.startLocationY = f2;
        this.titles = new VoIpBitmapTextView[3];
        this.scrollGestureDetector = new GestureDetector(context, new C59631());
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew.2
            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                PrivateVideoPreviewDialogNew.this.scrollGestureDetector.onTouchEvent(motionEvent);
                return super.onTouchEvent(motionEvent);
            }
        };
        this.viewPager = frameLayout;
        frameLayout.setClickable(true);
        addView(this.viewPager, LayoutHelper.createFrame(-1, -1));
        VoIPTextureView voIPTextureView = new VoIPTextureView(context, false, false);
        this.textureView = voIPTextureView;
        voIPTextureView.renderer.setScalingType(RendererCommon.ScalingType.SCALE_ASPECT_FILL);
        VoIPTextureView voIPTextureView2 = this.textureView;
        voIPTextureView2.scaleType = VoIPTextureView.SCALE_TYPE_FIT;
        voIPTextureView2.clipToTexture = true;
        voIPTextureView2.renderer.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.textureView.renderer.setRotateTextureWithScreen(true);
        this.textureView.renderer.setUseCameraRotation(true);
        addView(this.textureView, LayoutHelper.createFrame(-1, -1));
        C3704ActionBar c3704ActionBar = new C3704ActionBar(context);
        this.actionBar = c3704ActionBar;
        c3704ActionBar.setBackButtonDrawable(new BackDrawable(false));
        this.actionBar.setBackgroundColor(0);
        this.actionBar.setItemsColor(Theme.getColor(Theme.key_voipgroup_actionBarItems), false);
        this.actionBar.setOccupyStatusBar(true);
        this.actionBar.setActionBarMenuOnItemClick(new C3704ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew.3
            @Override // org.telegram.p043ui.ActionBar.C3704ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    PrivateVideoPreviewDialogNew.this.dismiss(false, false);
                }
            }
        });
        addView(this.actionBar);
        TextView textView = new TextView(getContext()) { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew.4
            private final Paint[] gradientPaint;
            private final Paint whitePaint;

            {
                Paint paint = new Paint();
                this.whitePaint = paint;
                this.gradientPaint = new Paint[PrivateVideoPreviewDialogNew.this.titles.length];
                PrivateVideoPreviewDialogNew.this.bgGreen.setBounds(0, 0, 80, 80);
                PrivateVideoPreviewDialogNew.this.bgBlueViolet.setBounds(0, 0, 80, 80);
                PrivateVideoPreviewDialogNew.this.bgGreenShaderTools.setBounds(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 80.0f, 80.0f);
                PrivateVideoPreviewDialogNew.this.bgBlueVioletShaderTools.setBounds(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 80.0f, 80.0f);
                PrivateVideoPreviewDialogNew.this.bgGreen.setAlpha(255);
                PrivateVideoPreviewDialogNew.this.bgBlueViolet.setAlpha(255);
                PrivateVideoPreviewDialogNew.this.bgGreenShaderTools.getCanvas().drawColor(0, PorterDuff.Mode.CLEAR);
                PrivateVideoPreviewDialogNew.this.bgBlueVioletShaderTools.getCanvas().drawColor(0, PorterDuff.Mode.CLEAR);
                PrivateVideoPreviewDialogNew.this.bgGreen.draw(PrivateVideoPreviewDialogNew.this.bgGreenShaderTools.getCanvas());
                PrivateVideoPreviewDialogNew.this.bgBlueViolet.draw(PrivateVideoPreviewDialogNew.this.bgBlueVioletShaderTools.getCanvas());
                paint.setColor(-1);
            }

            @Override // android.view.View
            protected void onSizeChanged(int i, int i2, int i3, int i4) {
                super.onSizeChanged(i, i2, i3, i4);
                int i5 = 0;
                while (true) {
                    Paint[] paintArr = this.gradientPaint;
                    if (i5 >= paintArr.length) {
                        return;
                    }
                    if (i5 == 0) {
                        paintArr[i5] = PrivateVideoPreviewDialogNew.this.bgGreenShaderTools.paint;
                    } else if (i5 == 1) {
                        paintArr[i5] = PrivateVideoPreviewDialogNew.this.bgBlueVioletShaderTools.paint;
                    } else {
                        paintArr[i5] = PrivateVideoPreviewDialogNew.this.bgGreenShaderTools.paint;
                    }
                    i5++;
                }
            }

            @Override // android.widget.TextView, android.view.View
            protected void onDraw(Canvas canvas) {
                PrivateVideoPreviewDialogNew.this.bgGreenShaderTools.setBounds(-getX(), -getY(), PrivateVideoPreviewDialogNew.this.getWidth() - getX(), PrivateVideoPreviewDialogNew.this.getHeight() - getY());
                PrivateVideoPreviewDialogNew.this.bgBlueVioletShaderTools.setBounds(-getX(), -getY(), PrivateVideoPreviewDialogNew.this.getWidth() - getX(), PrivateVideoPreviewDialogNew.this.getHeight() - getY());
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
                this.gradientPaint[PrivateVideoPreviewDialogNew.this.strangeCurrentPage].setAlpha(255);
                float m107dp = AndroidUtilities.m107dp(8) + ((int) ((AndroidUtilities.m107dp(26) - AndroidUtilities.m107dp(8)) * (1.0f - PrivateVideoPreviewDialogNew.this.openProgress1)));
                canvas.drawRoundRect(rectF, m107dp, m107dp, this.gradientPaint[PrivateVideoPreviewDialogNew.this.strangeCurrentPage]);
                if (PrivateVideoPreviewDialogNew.this.pageOffset > BitmapDescriptorFactory.HUE_RED) {
                    int i = PrivateVideoPreviewDialogNew.this.strangeCurrentPage + 1;
                    Paint[] paintArr = this.gradientPaint;
                    if (i < paintArr.length) {
                        paintArr[PrivateVideoPreviewDialogNew.this.strangeCurrentPage + 1].setAlpha((int) (PrivateVideoPreviewDialogNew.this.pageOffset * 255.0f));
                        canvas.drawRoundRect(rectF, m107dp, m107dp, this.gradientPaint[PrivateVideoPreviewDialogNew.this.strangeCurrentPage + 1]);
                    }
                }
                if (PrivateVideoPreviewDialogNew.this.openProgress1 < 1.0f) {
                    this.whitePaint.setAlpha((int) ((1.0f - PrivateVideoPreviewDialogNew.this.openProgress1) * 255.0f));
                    canvas.drawRoundRect(rectF, m107dp, m107dp, this.whitePaint);
                }
                super.onDraw(canvas);
                if (PrivateVideoPreviewDialogNew.this.positiveButtonDrawText) {
                    canvas.drawText(LocaleController.getString("VoipShareVideo", C3632R.string.VoipShareVideo), getWidth() / 2, (int) ((getHeight() / 2) - ((PrivateVideoPreviewDialogNew.this.positiveButton.getPaint().descent() + PrivateVideoPreviewDialogNew.this.positiveButton.getPaint().ascent()) / 2.0f)), PrivateVideoPreviewDialogNew.this.positiveButton.getPaint());
                }
            }
        };
        this.positiveButton = textView;
        textView.setMaxLines(1);
        this.positiveButton.setEllipsize(null);
        this.positiveButton.setMinWidth(AndroidUtilities.m107dp(64));
        this.positiveButton.setTag(-1);
        this.positiveButton.setTextSize(1, 14.0f);
        TextView textView2 = this.positiveButton;
        int i = Theme.key_voipgroup_nameText;
        textView2.setTextColor(Theme.getColor(i));
        this.positiveButton.setGravity(17);
        this.positiveButton.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.positiveButton.getPaint().setTextAlign(Paint.Align.CENTER);
        this.positiveButton.setContentDescription(LocaleController.getString("VoipShareVideo", C3632R.string.VoipShareVideo));
        if (Build.VERSION.SDK_INT >= 23) {
            this.positiveButton.setForeground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m107dp(8), 0, ColorUtils.setAlphaComponent(Theme.getColor(i), 76)));
        }
        this.positiveButton.setPadding(0, AndroidUtilities.m107dp(12), 0, AndroidUtilities.m107dp(12));
        this.positiveButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PrivateVideoPreviewDialogNew.this.lambda$new$0(view);
            }
        });
        addView(this.positiveButton, LayoutHelper.createFrame(52, 52, 81, 0, 0, 0, 80));
        LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew.5
            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                int width = getWidth() / 2;
                int height = getHeight() / 2;
                PrivateVideoPreviewDialogNew.this.camera.save();
                PrivateVideoPreviewDialogNew.this.camera.rotateY(7.0f);
                PrivateVideoPreviewDialogNew.this.camera.getMatrix(PrivateVideoPreviewDialogNew.this.matrixRight);
                PrivateVideoPreviewDialogNew.this.camera.restore();
                float f3 = -width;
                float f4 = -height;
                PrivateVideoPreviewDialogNew.this.matrixRight.preTranslate(f3, f4);
                float f5 = width;
                float f6 = height;
                PrivateVideoPreviewDialogNew.this.matrixRight.postTranslate(f5, f6);
                canvas.save();
                canvas.clipRect(width, 0, getWidth(), getHeight());
                canvas.concat(PrivateVideoPreviewDialogNew.this.matrixRight);
                super.dispatchDraw(canvas);
                canvas.restore();
                PrivateVideoPreviewDialogNew.this.camera.save();
                PrivateVideoPreviewDialogNew.this.camera.rotateY(-7.0f);
                PrivateVideoPreviewDialogNew.this.camera.getMatrix(PrivateVideoPreviewDialogNew.this.matrixLeft);
                PrivateVideoPreviewDialogNew.this.camera.restore();
                PrivateVideoPreviewDialogNew.this.matrixLeft.preTranslate(f3, f4);
                PrivateVideoPreviewDialogNew.this.matrixLeft.postTranslate(f5, f6);
                canvas.save();
                canvas.clipRect(0, 0, width, getHeight());
                canvas.concat(PrivateVideoPreviewDialogNew.this.matrixLeft);
                super.dispatchDraw(canvas);
                canvas.restore();
            }
        };
        this.titlesLayout = linearLayout;
        linearLayout.setClipChildren(false);
        addView(this.titlesLayout, LayoutHelper.createFrame(-1, 64, 80));
        for (final int i2 = 0; i2 < this.titles.length; i2++) {
            if (i2 == 0) {
                string = LocaleController.getString("VoipPhoneScreen", C3632R.string.VoipPhoneScreen);
            } else if (i2 == 1) {
                string = LocaleController.getString("VoipFrontCamera", C3632R.string.VoipFrontCamera);
            } else {
                string = LocaleController.getString("VoipBackCamera", C3632R.string.VoipBackCamera);
            }
            this.titles[i2] = new VoIpBitmapTextView(context, string);
            this.titles[i2].setContentDescription(string);
            this.titles[i2].setPadding(AndroidUtilities.m107dp(16), 0, AndroidUtilities.m107dp(10), 0);
            this.titlesLayout.addView(this.titles[i2], LayoutHelper.createLinear(-2, -1));
            this.titles[i2].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew$$ExternalSyntheticLambda7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PrivateVideoPreviewDialogNew.this.lambda$new$1(i2, view);
                }
            });
        }
        setWillNotDraw(false);
        VoIPService sharedInstance = VoIPService.getSharedInstance();
        if (sharedInstance != null) {
            this.textureView.renderer.setMirror(sharedInstance.isFrontFaceCamera());
            this.textureView.renderer.init(VideoCapturerDevice.getEglBase().getEglBaseContext(), new RendererCommon.RendererEvents(this) { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew.6
                @Override // org.webrtc.RendererCommon.RendererEvents
                public void onFirstFrameRendered() {
                }

                @Override // org.webrtc.RendererCommon.RendererEvents
                public void onFrameResolutionChanged(int i3, int i4, int i5) {
                }
            });
            sharedInstance.setLocalSink(this.textureView.renderer, false);
        }
        createPages(this.viewPager);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew$$ExternalSyntheticLambda5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                PrivateVideoPreviewDialogNew.this.lambda$new$2(f, f2, valueAnimator);
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (PrivateVideoPreviewDialogNew.this.isDismissed) {
                    return;
                }
                PrivateVideoPreviewDialogNew.this.afterOpened();
            }
        });
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew$$ExternalSyntheticLambda4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                PrivateVideoPreviewDialogNew.this.lambda$new$3(valueAnimator);
            }
        });
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
        ofFloat.setInterpolator(cubicBezierInterpolator);
        long j = 320;
        ofFloat.setDuration(j);
        ofFloat.start();
        ofFloat2.setInterpolator(cubicBezierInterpolator);
        ofFloat2.setDuration(j);
        ofFloat2.setStartDelay(32);
        ofFloat2.start();
        this.titlesLayout.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.titlesLayout.setScaleY(0.8f);
        this.titlesLayout.setScaleX(0.8f);
        this.titlesLayout.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setStartDelay(120L).setDuration(250L).start();
        this.positiveButton.setTranslationY(AndroidUtilities.m107dp(53));
        this.positiveButton.setTranslationX((f - (AndroidUtilities.displaySize.x / 2.0f)) + AndroidUtilities.m107dp(8) + AndroidUtilities.m107dp(26));
        this.positiveButton.animate().translationY(BitmapDescriptorFactory.HUE_RED).translationX(BitmapDescriptorFactory.HUE_RED).setDuration(j).start();
        this.positiveButtonDrawText = true;
        setCurrentPage(1, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew$1 */
    /* loaded from: classes6.dex */
    public class C59631 extends GestureDetector.SimpleOnGestureListener {
        private boolean lockDragging;
        private boolean startDragging;

        C59631() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            this.startDragging = true;
            return super.onDown(motionEvent);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            final float x = motionEvent.getX() - motionEvent2.getX();
            float y = motionEvent.getY() - motionEvent2.getY();
            if (Math.abs(x) > AndroidUtilities.getPixelsInCM(0.4f, true) && Math.abs(x) / 3.0f > y && this.startDragging && !this.lockDragging) {
                this.startDragging = false;
                Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        PrivateVideoPreviewDialogNew.C59631.this.lambda$onScroll$0(x);
                    }
                };
                if (PrivateVideoPreviewDialogNew.this.scrollAnimator != null) {
                    this.lockDragging = true;
                    AndroidUtilities.runOnUIThread(runnable, (PrivateVideoPreviewDialogNew.this.scrollAnimator.getDuration() - PrivateVideoPreviewDialogNew.this.scrollAnimator.getCurrentPlayTime()) + 50);
                } else {
                    runnable.run();
                }
            }
            return super.onScroll(motionEvent, motionEvent2, f, f2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onScroll$0(float f) {
            if (f > BitmapDescriptorFactory.HUE_RED) {
                if (PrivateVideoPreviewDialogNew.this.realCurrentPage < 2) {
                    PrivateVideoPreviewDialogNew privateVideoPreviewDialogNew = PrivateVideoPreviewDialogNew.this;
                    privateVideoPreviewDialogNew.setCurrentPage(privateVideoPreviewDialogNew.realCurrentPage + 1, true);
                }
            } else if (PrivateVideoPreviewDialogNew.this.realCurrentPage > 0) {
                PrivateVideoPreviewDialogNew privateVideoPreviewDialogNew2 = PrivateVideoPreviewDialogNew.this;
                privateVideoPreviewDialogNew2.setCurrentPage(privateVideoPreviewDialogNew2.realCurrentPage - 1, true);
            }
            this.lockDragging = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        if (this.isDismissed) {
            return;
        }
        if (this.realCurrentPage == 0) {
            ((Activity) getContext()).startActivityForResult(((MediaProjectionManager) getContext().getSystemService("media_projection")).createScreenCaptureIntent(), 520);
        } else {
            dismiss(false, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(int i, View view) {
        if (this.scrollAnimator != null || view.getAlpha() == BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        setCurrentPage(i, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(float f, float f2, ValueAnimator valueAnimator) {
        this.openProgress1 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        float m107dp = f + AndroidUtilities.m107dp(28);
        float m107dp2 = f2 + AndroidUtilities.m107dp(52);
        float f3 = this.openProgress1;
        this.openTranslationX = m107dp - (m107dp * f3);
        this.openTranslationY = m107dp2 - (f3 * m107dp2);
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(ValueAnimator valueAnimator) {
        this.openProgress2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        int m107dp = (AndroidUtilities.displaySize.x - AndroidUtilities.m107dp(36)) - AndroidUtilities.m107dp(52);
        this.positiveButton.getLayoutParams().width = AndroidUtilities.m107dp(52) + ((int) (m107dp * this.openProgress2));
        this.positiveButton.requestLayout();
    }

    private void showStub(boolean z, boolean z2) {
        ImageView imageView = (ImageView) this.viewPager.findViewWithTag("image_stab");
        if (!z) {
            imageView.setVisibility(8);
            return;
        }
        Bitmap bitmap = null;
        try {
            File filesDirFixed = ApplicationLoader.getFilesDirFixed();
            bitmap = BitmapFactory.decodeFile(new File(filesDirFixed, "cthumb" + this.visibleCameraPage + ".jpg").getAbsolutePath());
        } catch (Throwable unused) {
        }
        if (bitmap != null && bitmap.getPixel(0, 0) != 0) {
            imageView.setImageBitmap(bitmap);
        } else {
            imageView.setImageResource(C3632R.C3634drawable.icplaceholder);
        }
        if (z2) {
            imageView.setVisibility(0);
            imageView.setAlpha(BitmapDescriptorFactory.HUE_RED);
            imageView.animate().alpha(1.0f).setDuration(250L).start();
            return;
        }
        imageView.setAlpha(1.0f);
        imageView.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCurrentPage(final int i, boolean z) {
        int i2;
        if (this.strangeCurrentPage == i || (i2 = this.realCurrentPage) == i) {
            return;
        }
        if (z) {
            if (i2 == 0) {
                if (this.visibleCameraPage != i) {
                    this.visibleCameraPage = i;
                    this.cameraReady = false;
                    showStub(true, true);
                    if (VoIPService.getSharedInstance() != null) {
                        VoIPService.getSharedInstance().switchCamera();
                    }
                } else {
                    showStub(false, false);
                    this.textureView.animate().alpha(1.0f).setDuration(250L).start();
                }
            } else if (i == 0) {
                this.viewPager.findViewWithTag("screencast_stub").setVisibility(0);
                saveLastCameraBitmap();
                showStub(false, false);
                this.textureView.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(250L).start();
            } else {
                saveLastCameraBitmap();
                this.visibleCameraPage = i;
                this.cameraReady = false;
                showStub(true, false);
                this.textureView.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(250L).start();
                if (VoIPService.getSharedInstance() != null) {
                    VoIPService.getSharedInstance().switchCamera();
                }
            }
            int i3 = this.realCurrentPage;
            if (i > i3) {
                this.previousPage = i3;
                this.realCurrentPage = i3 + 1;
                this.scrollAnimator = ValueAnimator.ofFloat(0.1f, 1.0f);
            } else {
                this.previousPage = i3;
                this.realCurrentPage = i3 - 1;
                this.strangeCurrentPage = i;
                this.scrollAnimator = ValueAnimator.ofFloat(1.0f, BitmapDescriptorFactory.HUE_RED);
            }
            this.scrollAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    PrivateVideoPreviewDialogNew.this.lambda$setCurrentPage$4(valueAnimator);
                }
            });
            this.scrollAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew.8
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    PrivateVideoPreviewDialogNew.this.previousPage = -1;
                    PrivateVideoPreviewDialogNew.this.strangeCurrentPage = i;
                    PrivateVideoPreviewDialogNew.this.pageOffset = BitmapDescriptorFactory.HUE_RED;
                    PrivateVideoPreviewDialogNew.this.scrollAnimator = null;
                    PrivateVideoPreviewDialogNew.this.updateTitlesLayout();
                }
            });
            this.scrollAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.scrollAnimator.setDuration(350L);
            this.scrollAnimator.start();
            return;
        }
        this.realCurrentPage = i;
        this.strangeCurrentPage = i;
        this.pageOffset = BitmapDescriptorFactory.HUE_RED;
        updateTitlesLayout();
        this.textureView.setVisibility(0);
        this.cameraReady = false;
        this.visibleCameraPage = 1;
        showStub(true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setCurrentPage$4(ValueAnimator valueAnimator) {
        this.pageOffset = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        updateTitlesLayout();
    }

    private void createPages(FrameLayout frameLayout) {
        FrameLayout frameLayout2 = new FrameLayout(getContext());
        frameLayout2.setBackground(new MotionBackgroundDrawable(-14602694, -13935795, -14395293, -14203560, true));
        ImageView imageView = new ImageView(getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setImageResource(C3632R.C3634drawable.screencast_big);
        frameLayout2.addView(imageView, LayoutHelper.createFrame(82, 82, 17, 0, 0, 0, 60));
        TextView textView = new TextView(getContext());
        textView.setText(LocaleController.getString("VoipVideoPrivateScreenSharing", C3632R.string.VoipVideoPrivateScreenSharing));
        textView.setGravity(17);
        textView.setLineSpacing(AndroidUtilities.m107dp(2), 1.0f);
        textView.setTextColor(-1);
        textView.setTextSize(1, 15.0f);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        frameLayout2.addView(textView, LayoutHelper.createFrame(-1, -2, 17, 21, 28, 21, 0));
        frameLayout2.setTag("screencast_stub");
        frameLayout2.setVisibility(8);
        frameLayout.addView(frameLayout2);
        ImageView imageView2 = new ImageView(getContext());
        imageView2.setTag("image_stab");
        imageView2.setImageResource(C3632R.C3634drawable.icplaceholder);
        imageView2.setScaleType(ImageView.ScaleType.FIT_XY);
        frameLayout.addView(imageView2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.openProgress1 < 1.0f) {
            Point point = AndroidUtilities.displaySize;
            int i = point.x;
            int i2 = point.y + AndroidUtilities.statusBarHeight + AndroidUtilities.navigationBarHeight;
            float m107dp = AndroidUtilities.m107dp(28) - (AndroidUtilities.m107dp(28) * this.openProgress1);
            this.clipPath.reset();
            this.clipPath.addCircle(this.startLocationX + AndroidUtilities.m108dp(33.5f), this.startLocationY + AndroidUtilities.m108dp(26.6f), AndroidUtilities.m107dp(26), Path.Direction.CW);
            int m107dp2 = AndroidUtilities.m107dp(52);
            int m107dp3 = AndroidUtilities.m107dp(52);
            int lerp = AndroidUtilities.lerp(m107dp2, i, this.openProgress1);
            int lerp2 = AndroidUtilities.lerp(m107dp3, i2, this.openProgress1);
            float m108dp = this.openTranslationX - ((1.0f - this.openProgress1) * AndroidUtilities.m108dp(20.0f));
            float m107dp4 = this.openTranslationY - ((1.0f - this.openProgress1) * AndroidUtilities.m107dp(51));
            this.clipPath.addRoundRect(m108dp, m107dp4, m108dp + lerp, m107dp4 + lerp2, m107dp, m107dp, Path.Direction.CW);
            canvas.clipPath(this.clipPath);
        }
        if (this.closeProgress > BitmapDescriptorFactory.HUE_RED) {
            int[] floatingViewLocation = getFloatingViewLocation();
            float f = this.closeProgress;
            int i3 = floatingViewLocation[2];
            int i4 = AndroidUtilities.displaySize.x;
            float f2 = (i3 + ((i4 - i3) * (1.0f - f))) / i4;
            this.clipPath.reset();
            this.clipPath.addRoundRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth() * f2, getHeight() * f2, AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(6), Path.Direction.CW);
            canvas.translate((int) (floatingViewLocation[0] * f), (int) (floatingViewLocation[1] * f));
            canvas.clipPath(this.clipPath);
            canvas.scale(f2, f2);
        }
        super.dispatchDraw(canvas);
    }

    public void dismiss(boolean z, boolean z2) {
        if (this.isDismissed || this.openProgress1 != 1.0f) {
            return;
        }
        beforeClosed();
        this.isDismissed = true;
        saveLastCameraBitmap();
        onDismiss(z, z2);
        if (isHasVideoOnMainScreen() && z2) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew$$ExternalSyntheticLambda2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    PrivateVideoPreviewDialogNew.this.lambda$dismiss$5(valueAnimator);
                }
            });
            ofFloat.setInterpolator(CubicBezierInterpolator.DEFAULT);
            ofFloat.setStartDelay(60L);
            ofFloat.setDuration(350L);
            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew.9
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    if (PrivateVideoPreviewDialogNew.this.getParent() != null) {
                        ((ViewGroup) PrivateVideoPreviewDialogNew.this.getParent()).removeView(PrivateVideoPreviewDialogNew.this);
                    }
                }
            });
            ofFloat.start();
            this.positiveButton.animate().setStartDelay(60L).alpha(BitmapDescriptorFactory.HUE_RED).setDuration(100L).start();
            this.actionBar.animate().setStartDelay(60L).alpha(BitmapDescriptorFactory.HUE_RED).setDuration(100L).start();
            this.titlesLayout.animate().setStartDelay(60L).alpha(BitmapDescriptorFactory.HUE_RED).setDuration(100L).start();
        } else if (z2) {
            animate().setStartDelay(60L).alpha(BitmapDescriptorFactory.HUE_RED).setDuration(350L).setInterpolator(CubicBezierInterpolator.DEFAULT).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew.10
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    if (PrivateVideoPreviewDialogNew.this.getParent() != null) {
                        ((ViewGroup) PrivateVideoPreviewDialogNew.this.getParent()).removeView(PrivateVideoPreviewDialogNew.this);
                    }
                }
            });
        } else {
            ValueAnimator ofFloat2 = ValueAnimator.ofFloat(1.0f, BitmapDescriptorFactory.HUE_RED);
            ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew$$ExternalSyntheticLambda3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    PrivateVideoPreviewDialogNew.this.lambda$dismiss$6(valueAnimator);
                }
            });
            ofFloat2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew.11
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (PrivateVideoPreviewDialogNew.this.getParent() != null) {
                        ((ViewGroup) PrivateVideoPreviewDialogNew.this.getParent()).removeView(PrivateVideoPreviewDialogNew.this);
                    }
                }
            });
            ValueAnimator ofFloat3 = ValueAnimator.ofFloat(1.0f, BitmapDescriptorFactory.HUE_RED);
            ofFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    PrivateVideoPreviewDialogNew.this.lambda$dismiss$7(valueAnimator);
                }
            });
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
            ofFloat2.setInterpolator(cubicBezierInterpolator);
            long j = 320;
            ofFloat2.setDuration(j);
            ofFloat2.start();
            ofFloat3.setInterpolator(cubicBezierInterpolator);
            ofFloat3.setDuration(j);
            ofFloat3.start();
            this.titlesLayout.setAlpha(1.0f);
            this.titlesLayout.setScaleY(1.0f);
            this.titlesLayout.setScaleX(1.0f);
            this.titlesLayout.animate().alpha(BitmapDescriptorFactory.HUE_RED).scaleX(0.8f).scaleY(0.8f).setDuration(250L).start();
            float f = 320;
            this.positiveButton.animate().translationY(AndroidUtilities.m107dp(53)).translationX((this.startLocationX - (AndroidUtilities.displaySize.x / 2.0f)) + AndroidUtilities.m107dp(8) + AndroidUtilities.m107dp(26)).setDuration(0.6f * f).start();
            animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(0.25f * f).setStartDelay(f * 0.75f).start();
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismiss$5(ValueAnimator valueAnimator) {
        this.closeProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismiss$6(ValueAnimator valueAnimator) {
        this.openProgress1 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        float m107dp = this.startLocationX + AndroidUtilities.m107dp(28);
        float m107dp2 = this.startLocationY + AndroidUtilities.m107dp(52);
        float f = this.openProgress1;
        this.openTranslationX = m107dp - (m107dp * f);
        this.openTranslationY = m107dp2 - (f * m107dp2);
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismiss$7(ValueAnimator valueAnimator) {
        this.openProgress2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        int m107dp = (AndroidUtilities.displaySize.x - AndroidUtilities.m107dp(36)) - AndroidUtilities.m107dp(52);
        this.positiveButton.getLayoutParams().width = AndroidUtilities.m107dp(52) + ((int) (m107dp * this.openProgress2));
        this.positiveButton.requestLayout();
    }

    public void setBottomPadding(int i) {
        ((FrameLayout.LayoutParams) this.positiveButton.getLayoutParams()).bottomMargin = AndroidUtilities.m107dp(80) + i;
        ((FrameLayout.LayoutParams) this.titlesLayout.getLayoutParams()).bottomMargin = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTitlesLayout() {
        VoIpBitmapTextView[] voIpBitmapTextViewArr = this.titles;
        int i = this.strangeCurrentPage;
        VoIpBitmapTextView voIpBitmapTextView = voIpBitmapTextViewArr[i];
        VoIpBitmapTextView voIpBitmapTextView2 = i < voIpBitmapTextViewArr.length - 1 ? voIpBitmapTextViewArr[i + 1] : null;
        float left = voIpBitmapTextView.getLeft() + (voIpBitmapTextView.getMeasuredWidth() / 2);
        float measuredWidth = (getMeasuredWidth() / 2) - left;
        if (voIpBitmapTextView2 != null) {
            measuredWidth -= ((voIpBitmapTextView2.getLeft() + (voIpBitmapTextView2.getMeasuredWidth() / 2)) - left) * this.pageOffset;
        }
        int i2 = 0;
        while (true) {
            VoIpBitmapTextView[] voIpBitmapTextViewArr2 = this.titles;
            float f = 0.7f;
            if (i2 >= voIpBitmapTextViewArr2.length) {
                break;
            }
            int i3 = this.strangeCurrentPage;
            float f2 = 0.9f;
            if (i2 >= i3 && i2 <= i3 + 1) {
                if (i2 == i3) {
                    float f3 = this.pageOffset;
                    f = 1.0f - (0.3f * f3);
                    f2 = 1.0f - (f3 * 0.1f);
                } else {
                    float f4 = this.pageOffset;
                    f = 0.7f + (0.3f * f4);
                    f2 = 0.9f + (f4 * 0.1f);
                }
            }
            voIpBitmapTextViewArr2[i2].setAlpha(f);
            this.titles[i2].setScaleX(f2);
            this.titles[i2].setScaleY(f2);
            this.titles[i2].setTranslationX(measuredWidth);
            i2++;
        }
        this.positiveButton.invalidate();
        if (this.realCurrentPage == 0) {
            this.titles[2].setAlpha(this.pageOffset * 0.7f);
        }
        if (this.realCurrentPage == 2) {
            float f5 = this.pageOffset;
            if (f5 > BitmapDescriptorFactory.HUE_RED) {
                this.titles[0].setAlpha((1.0f - f5) * 0.7f);
            } else {
                this.titles[0].setAlpha(BitmapDescriptorFactory.HUE_RED);
            }
        }
        if (this.realCurrentPage == 1) {
            if (this.previousPage == 0) {
                this.titles[2].setAlpha(this.pageOffset * 0.7f);
            }
            if (this.previousPage == 2) {
                this.titles[0].setAlpha((1.0f - this.pageOffset) * 0.7f);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        VoIPService sharedInstance = VoIPService.getSharedInstance();
        if (sharedInstance != null) {
            sharedInstance.registerStateListener(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        VoIPService sharedInstance = VoIPService.getSharedInstance();
        if (sharedInstance != null) {
            sharedInstance.unregisterStateListener(this);
        }
    }

    private void saveLastCameraBitmap() {
        if (this.cameraReady) {
            try {
                Bitmap bitmap = this.textureView.renderer.getBitmap();
                if (bitmap != null) {
                    Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), this.textureView.renderer.getMatrix(), true);
                    bitmap.recycle();
                    Bitmap createScaledBitmap = Bitmap.createScaledBitmap(createBitmap, 80, (int) (createBitmap.getHeight() / (createBitmap.getWidth() / 80.0f)), true);
                    if (createScaledBitmap != null) {
                        if (createScaledBitmap != createBitmap) {
                            createBitmap.recycle();
                        }
                        Utilities.blurBitmap(createScaledBitmap, 7, 1, createScaledBitmap.getWidth(), createScaledBitmap.getHeight(), createScaledBitmap.getRowBytes());
                        File filesDirFixed = ApplicationLoader.getFilesDirFixed();
                        FileOutputStream fileOutputStream = new FileOutputStream(new File(filesDirFixed, "cthumb" + this.visibleCameraPage + ".jpg"));
                        createScaledBitmap.compress(Bitmap.CompressFormat.JPEG, 87, fileOutputStream);
                        fileOutputStream.close();
                        View findViewWithTag = this.viewPager.findViewWithTag("image_stab");
                        if (findViewWithTag instanceof ImageView) {
                            ((ImageView) findViewWithTag).setImageBitmap(createScaledBitmap);
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    @Override // org.telegram.messenger.voip.VoIPService.StateListener
    public void onCameraFirstFrameAvailable() {
        if (this.cameraReady) {
            return;
        }
        this.cameraReady = true;
        if (this.realCurrentPage != 0) {
            this.textureView.animate().alpha(1.0f).setDuration(250L).start();
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        updateTitlesLayout();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        measureChildWithMargins(this.titlesLayout, View.MeasureSpec.makeMeasureSpec(0, 0), 0, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(64), 1073741824), 0);
    }

    @Override // org.telegram.messenger.voip.VoIPService.StateListener
    public void onCameraSwitch(boolean z) {
        update();
    }

    public void update() {
        if (VoIPService.getSharedInstance() != null) {
            this.textureView.renderer.setMirror(VoIPService.getSharedInstance().isFrontFaceCamera());
        }
    }
}
