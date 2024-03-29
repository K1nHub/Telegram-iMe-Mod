package org.telegram.p043ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.hardware.Camera;
import android.media.AudioManager;
import android.media.AudioRecord;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.net.Uri;
import android.opengl.EGL14;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.opengl.Matrix;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Property;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.audio.OpusUtil;
import com.google.android.exoplayer2.upstream.cache.CacheDataSink;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.CountDownLatch;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.AutoDeleteMediaTask;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.VideoEditedInfo;
import org.telegram.messenger.camera.CameraController;
import org.telegram.messenger.camera.CameraInfo;
import org.telegram.messenger.camera.CameraSession;
import org.telegram.messenger.camera.Size;
import org.telegram.messenger.video.MP4Builder;
import org.telegram.messenger.video.Mp4Movie;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ChatActivity;
import org.telegram.p043ui.Components.AlertsCreator;
import org.telegram.p043ui.Components.InstantCameraView;
import org.telegram.p043ui.Components.VideoPlayer;
import org.telegram.p043ui.Components.voip.CellFlickerDrawable;
import org.telegram.p043ui.Stories.recorder.StoryEntry;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLRPC$InputEncryptedFile;
import org.telegram.tgnet.TLRPC$InputFile;
import org.webrtc.EglBase;
/* renamed from: org.telegram.ui.Components.InstantCameraView */
/* loaded from: classes6.dex */
public class InstantCameraView extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    private static final int[] ALLOW_BIG_CAMERA_WHITELIST = {285904780, -1394191079};
    public boolean WRITE_TO_FILE_IN_BACKGROUND;
    private boolean allowSendingWhileRecording;
    private float animationTranslationY;
    private AnimatorSet animatorSet;
    private Size aspectRatio;
    private BlurBehindDrawable blurBehindDrawable;
    private InstantViewCameraContainer cameraContainer;
    private File cameraFile;
    private volatile boolean cameraReady;
    private CameraSession cameraSession;
    private int[] cameraTexture;
    private float cameraTextureAlpha;
    private CameraGLThread cameraThread;
    private boolean cancelled;
    private int currentAccount;
    private Delegate delegate;
    public boolean drawBlur;
    private TLRPC$InputEncryptedFile encryptedFile;
    private TLRPC$InputFile file;
    ValueAnimator finishZoomTransition;
    private Bitmap firstFrameThumb;
    private boolean flipAnimationInProgress;
    private boolean isFrontface;
    boolean isInPinchToZoomTouchMode;
    private boolean isSecretChat;

    /* renamed from: iv */
    private byte[] f1863iv;
    private byte[] key;
    private Bitmap lastBitmap;
    private final float[] mMVPMatrix;
    private final float[] mSTMatrix;
    boolean maybePinchToZoomTouchMode;
    private final float[] moldSTMatrix;
    private AnimatorSet muteAnimation;
    private ImageView muteImageView;
    private boolean needDrawFlickerStub;
    private int[] oldCameraTexture;
    private Size oldTexturePreviewSize;
    private FloatBuffer oldTextureTextureBuffer;
    public boolean opened;
    private Paint paint;
    private float panTranslationY;
    private View parentView;
    private Size pictureSize;
    float pinchScale;
    float pinchStartDistance;
    private int pointerId1;
    private int pointerId2;
    private int[] position;
    private File previewFile;
    private Size previewSize;
    private float progress;
    private Timer progressTimer;
    private long recordPlusTime;
    private long recordStartTime;
    private long recordedTime;
    private boolean recording;
    private int recordingGuid;
    private RectF rect;
    private final Theme.ResourcesProvider resourcesProvider;
    private float scaleX;
    private float scaleY;
    private CameraInfo selectedCamera;
    private boolean setVisibilityFromPause;
    private long size;
    private ImageView switchCameraButton;
    AnimatedVectorDrawable switchCameraDrawable;
    private FloatBuffer textureBuffer;
    private BackupImageView textureOverlayView;
    private TextureView textureView;
    private int textureViewSize;
    private boolean updateTextureViewSize;
    private FloatBuffer vertexBuffer;
    private VideoEditedInfo videoEditedInfo;
    private VideoRecorder videoEncoder;
    private VideoPlayer videoPlayer;

    /* renamed from: org.telegram.ui.Components.InstantCameraView$Delegate */
    /* loaded from: classes6.dex */
    public interface Delegate {

        /* renamed from: org.telegram.ui.Components.InstantCameraView$Delegate$-CC */
        /* loaded from: classes6.dex */
        public final /* synthetic */ class CC {
            public static ChatActivity $default$getChatActivity(Delegate delegate) {
                return null;
            }

            public static boolean $default$isInScheduleMode(Delegate delegate) {
                return false;
            }

            public static boolean $default$isSecretChat(Delegate delegate) {
                return false;
            }

            public static boolean $default$isTemplatesChannel(Delegate delegate, boolean z, boolean z2) {
                return false;
            }
        }

        ChatActivity getChatActivity();

        int getClassGuid();

        long getDialogId();

        View getFragmentView();

        Activity getParentActivity();

        boolean isInScheduleMode();

        boolean isSecretChat();

        boolean isTemplatesChannel(boolean z, boolean z2);

        void sendMedia(MediaController.PhotoEntry photoEntry, VideoEditedInfo videoEditedInfo, boolean z, int i, boolean z2, String str);
    }

    protected void clipBlur(Canvas canvas) {
    }

    public void setIsMessageTransition(boolean z) {
    }

    static /* synthetic */ float access$2916(InstantCameraView instantCameraView, float f) {
        float f2 = instantCameraView.cameraTextureAlpha + f;
        instantCameraView.cameraTextureAlpha = f2;
        return f2;
    }

    public void showCamera(boolean z) {
        showCamera(z, false);
    }

    public InstantCameraView(Context context, Delegate delegate, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.currentAccount = UserConfig.selectedAccount;
        this.switchCameraDrawable = null;
        this.isFrontface = true;
        this.position = new int[2];
        this.cameraTexture = new int[1];
        this.oldCameraTexture = new int[1];
        this.cameraTextureAlpha = 1.0f;
        this.aspectRatio = SharedConfig.roundCamera16to9 ? new Size(16, 9) : new Size(4, 3);
        this.mMVPMatrix = new float[16];
        this.mSTMatrix = new float[16];
        this.moldSTMatrix = new float[16];
        this.drawBlur = true;
        this.WRITE_TO_FILE_IN_BACKGROUND = false;
        this.resourcesProvider = resourcesProvider;
        this.parentView = delegate.getFragmentView();
        setWillNotDraw(false);
        this.delegate = delegate;
        this.recordingGuid = delegate.getClassGuid();
        this.isSecretChat = delegate.isSecretChat();
        Paint paint = new Paint(1) { // from class: org.telegram.ui.Components.InstantCameraView.1
            {
                InstantCameraView.this = this;
            }

            @Override // android.graphics.Paint
            public void setAlpha(int i) {
                super.setAlpha(i);
                InstantCameraView.this.invalidate();
            }
        };
        this.paint = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeCap(Paint.Cap.ROUND);
        this.paint.setStrokeWidth(AndroidUtilities.m107dp(3));
        this.paint.setColor(-1);
        this.rect = new RectF();
        if (Build.VERSION.SDK_INT >= 21) {
            InstantViewCameraContainer instantViewCameraContainer = new InstantViewCameraContainer(context) { // from class: org.telegram.ui.Components.InstantCameraView.2
                {
                    InstantCameraView.this = this;
                }

                @Override // android.view.View
                public void setScaleX(float f) {
                    super.setScaleX(f);
                    InstantCameraView.this.invalidate();
                }

                @Override // android.view.View
                public void setAlpha(float f) {
                    super.setAlpha(f);
                    InstantCameraView.this.invalidate();
                }
            };
            this.cameraContainer = instantViewCameraContainer;
            instantViewCameraContainer.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.Components.InstantCameraView.3
                {
                    InstantCameraView.this = this;
                }

                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view, Outline outline) {
                    outline.setOval(0, 0, InstantCameraView.this.textureViewSize, InstantCameraView.this.textureViewSize);
                }
            });
            this.cameraContainer.setClipToOutline(true);
            this.cameraContainer.setWillNotDraw(false);
        } else {
            final Path path = new Path();
            final Paint paint2 = new Paint(1);
            paint2.setColor(-16777216);
            paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            InstantViewCameraContainer instantViewCameraContainer2 = new InstantViewCameraContainer(context) { // from class: org.telegram.ui.Components.InstantCameraView.4
                {
                    InstantCameraView.this = this;
                }

                @Override // android.view.View
                public void setScaleX(float f) {
                    super.setScaleX(f);
                    InstantCameraView.this.invalidate();
                }

                @Override // android.view.View
                protected void onSizeChanged(int i, int i2, int i3, int i4) {
                    super.onSizeChanged(i, i2, i3, i4);
                    path.reset();
                    float f = i / 2;
                    path.addCircle(f, i2 / 2, f, Path.Direction.CW);
                    path.toggleInverseFillType();
                }

                @Override // org.telegram.p043ui.Components.InstantCameraView.InstantViewCameraContainer, android.view.ViewGroup, android.view.View
                protected void dispatchDraw(Canvas canvas) {
                    try {
                        super.dispatchDraw(canvas);
                        canvas.drawPath(path, paint2);
                    } catch (Exception unused) {
                    }
                }
            };
            this.cameraContainer = instantViewCameraContainer2;
            instantViewCameraContainer2.setWillNotDraw(false);
            this.cameraContainer.setLayerType(2, null);
        }
        View view = this.cameraContainer;
        int i = AndroidUtilities.roundPlayingMessageSize;
        addView(view, new FrameLayout.LayoutParams(i, i, 17));
        ImageView imageView = new ImageView(context);
        this.switchCameraButton = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        this.switchCameraButton.setContentDescription(LocaleController.getString("AccDescrSwitchCamera", C3632R.string.AccDescrSwitchCamera));
        addView(this.switchCameraButton, LayoutHelper.createFrame(62, 62, 83, 8, 0, 0, 0));
        this.switchCameraButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.InstantCameraView$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                InstantCameraView.this.lambda$new$0(view2);
            }
        });
        ImageView imageView2 = new ImageView(context);
        this.muteImageView = imageView2;
        imageView2.setScaleType(ImageView.ScaleType.CENTER);
        this.muteImageView.setImageResource(C3632R.C3634drawable.video_mute);
        this.muteImageView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        addView(this.muteImageView, LayoutHelper.createFrame(48, 48, 17));
        final Paint paint3 = new Paint(1);
        paint3.setColor(ColorUtils.setAlphaComponent(-16777216, 40));
        BackupImageView backupImageView = new BackupImageView(getContext()) { // from class: org.telegram.ui.Components.InstantCameraView.7
            CellFlickerDrawable flickerDrawable = new CellFlickerDrawable();

            {
                InstantCameraView.this = this;
            }

            @Override // org.telegram.p043ui.Components.BackupImageView, android.view.View
            public void onDraw(Canvas canvas) {
                super.onDraw(canvas);
                if (InstantCameraView.this.needDrawFlickerStub) {
                    this.flickerDrawable.setParentWidth(InstantCameraView.this.textureViewSize);
                    RectF rectF = AndroidUtilities.rectTmp;
                    rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, InstantCameraView.this.textureViewSize, InstantCameraView.this.textureViewSize);
                    float width = rectF.width() / 2.0f;
                    canvas.drawRoundRect(rectF, width, width, paint3);
                    rectF.inset(AndroidUtilities.m107dp(1), AndroidUtilities.m107dp(1));
                    this.flickerDrawable.draw(canvas, rectF, width, null);
                    invalidate();
                }
            }
        };
        this.textureOverlayView = backupImageView;
        int i2 = AndroidUtilities.roundPlayingMessageSize;
        addView(backupImageView, new FrameLayout.LayoutParams(i2, i2, 17));
        this.setVisibilityFromPause = false;
        setVisibility(4);
        this.blurBehindDrawable = new BlurBehindDrawable(this.parentView, this, 0, resourcesProvider);
    }

    public /* synthetic */ void lambda$new$0(View view) {
        CameraSession cameraSession;
        BackupImageView backupImageView;
        if (!this.cameraReady || (cameraSession = this.cameraSession) == null || !cameraSession.isInitied() || this.cameraThread == null || this.flipAnimationInProgress || (backupImageView = this.textureOverlayView) == null || backupImageView.getAlpha() != BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        switchCamera();
        AnimatedVectorDrawable animatedVectorDrawable = this.switchCameraDrawable;
        if (animatedVectorDrawable != null) {
            animatedVectorDrawable.start();
        }
        this.flipAnimationInProgress = true;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        ofFloat.setDuration(300L);
        ofFloat.setInterpolator(CubicBezierInterpolator.DEFAULT);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.InstantCameraView.5
            {
                InstantCameraView.this = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                float f = floatValue < 0.5f ? 1.0f - (floatValue / 0.5f) : (floatValue - 0.5f) / 0.5f;
                float f2 = (0.1f * f) + 0.9f;
                float f3 = f * f2;
                InstantCameraView.this.cameraContainer.setScaleX(f3);
                InstantCameraView.this.cameraContainer.setScaleY(f2);
                InstantCameraView.this.textureOverlayView.setScaleX(f3);
                InstantCameraView.this.textureOverlayView.setScaleY(f2);
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.InstantCameraView.6
            {
                InstantCameraView.this = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                InstantCameraView.this.cameraContainer.setScaleX(1.0f);
                InstantCameraView.this.cameraContainer.setScaleY(1.0f);
                InstantCameraView.this.textureOverlayView.setScaleY(1.0f);
                InstantCameraView.this.textureOverlayView.setScaleX(1.0f);
                InstantCameraView.this.flipAnimationInProgress = false;
                InstantCameraView.this.invalidate();
            }
        });
        ofFloat.start();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        if (this.updateTextureViewSize) {
            if (View.MeasureSpec.getSize(i2) > View.MeasureSpec.getSize(i) * 1.3f) {
                i3 = AndroidUtilities.roundPlayingMessageSize;
            } else {
                i3 = AndroidUtilities.roundMessageSize;
            }
            if (i3 != this.textureViewSize) {
                this.textureViewSize = i3;
                ViewGroup.LayoutParams layoutParams = this.textureOverlayView.getLayoutParams();
                ViewGroup.LayoutParams layoutParams2 = this.textureOverlayView.getLayoutParams();
                int i4 = this.textureViewSize;
                layoutParams2.height = i4;
                layoutParams.width = i4;
                ViewGroup.LayoutParams layoutParams3 = this.cameraContainer.getLayoutParams();
                ViewGroup.LayoutParams layoutParams4 = this.cameraContainer.getLayoutParams();
                int i5 = this.textureViewSize;
                layoutParams4.height = i5;
                layoutParams3.width = i5;
                ((FrameLayout.LayoutParams) this.muteImageView.getLayoutParams()).topMargin = (this.textureViewSize / 2) - AndroidUtilities.m107dp(24);
                this.textureOverlayView.setRoundRadius(this.textureViewSize / 2);
                if (Build.VERSION.SDK_INT >= 21) {
                    this.cameraContainer.invalidateOutline();
                }
            }
            this.updateTextureViewSize = false;
        }
        super.onMeasure(i, i2);
    }

    private boolean checkPointerIds(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() < 2) {
            return false;
        }
        if (this.pointerId1 == motionEvent.getPointerId(0) && this.pointerId2 == motionEvent.getPointerId(1)) {
            return true;
        }
        return this.pointerId1 == motionEvent.getPointerId(1) && this.pointerId2 == motionEvent.getPointerId(0);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        getParent().requestDisallowInterceptTouchEvent(true);
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (getVisibility() != 0) {
            this.animationTranslationY = getMeasuredHeight() / 2;
            updateTranslationY();
        }
        this.blurBehindDrawable.checkSizes();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.fileUploaded);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.fileUploaded);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.fileUploaded) {
            String str = (String) objArr[0];
            File file = this.cameraFile;
            if (file == null || !file.getAbsolutePath().equals(str)) {
                return;
            }
            this.file = (TLRPC$InputFile) objArr[1];
            this.encryptedFile = (TLRPC$InputEncryptedFile) objArr[2];
            this.size = ((Long) objArr[5]).longValue();
            if (this.encryptedFile != null) {
                this.key = (byte[]) objArr[3];
                this.f1863iv = (byte[]) objArr[4];
            }
        }
    }

    public void destroy(boolean z, Runnable runnable) {
        CameraSession cameraSession = this.cameraSession;
        if (cameraSession != null) {
            cameraSession.destroy();
            CameraController.getInstance().close(this.cameraSession, !z ? new CountDownLatch(1) : null, runnable);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.drawBlur) {
            canvas.save();
            clipBlur(canvas);
            this.blurBehindDrawable.draw(canvas);
            canvas.restore();
        }
        float x = this.cameraContainer.getX();
        float y = this.cameraContainer.getY();
        this.rect.set(x - AndroidUtilities.m107dp(8), y - AndroidUtilities.m107dp(8), x + this.cameraContainer.getMeasuredWidth() + AndroidUtilities.m107dp(8), y + this.cameraContainer.getMeasuredHeight() + AndroidUtilities.m107dp(8));
        if (this.recording) {
            long currentTimeMillis = (System.currentTimeMillis() - this.recordStartTime) + this.recordPlusTime;
            this.recordedTime = currentTimeMillis;
            this.progress = Math.min(1.0f, ((float) currentTimeMillis) / 60000.0f);
            invalidate();
        }
        if (this.progress != BitmapDescriptorFactory.HUE_RED) {
            canvas.save();
            if (!this.flipAnimationInProgress) {
                canvas.scale(this.cameraContainer.getScaleX(), this.cameraContainer.getScaleY(), this.rect.centerX(), this.rect.centerY());
            }
            canvas.drawArc(this.rect, -90.0f, this.progress * 360.0f, false, this.paint);
            canvas.restore();
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        BlurBehindDrawable blurBehindDrawable;
        super.setVisibility(i);
        if (i != 0 && (blurBehindDrawable = this.blurBehindDrawable) != null) {
            blurBehindDrawable.clear();
        }
        this.switchCameraButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.cameraContainer.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.textureOverlayView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.muteImageView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.muteImageView.setScaleX(1.0f);
        this.muteImageView.setScaleY(1.0f);
        this.cameraContainer.setScaleX(this.setVisibilityFromPause ? 1.0f : 0.1f);
        this.cameraContainer.setScaleY(this.setVisibilityFromPause ? 1.0f : 0.1f);
        this.textureOverlayView.setScaleX(this.setVisibilityFromPause ? 1.0f : 0.1f);
        this.textureOverlayView.setScaleY(this.setVisibilityFromPause ? 1.0f : 0.1f);
        if (this.cameraContainer.getMeasuredWidth() != 0) {
            InstantViewCameraContainer instantViewCameraContainer = this.cameraContainer;
            instantViewCameraContainer.setPivotX(instantViewCameraContainer.getMeasuredWidth() / 2);
            InstantViewCameraContainer instantViewCameraContainer2 = this.cameraContainer;
            instantViewCameraContainer2.setPivotY(instantViewCameraContainer2.getMeasuredHeight() / 2);
            BackupImageView backupImageView = this.textureOverlayView;
            backupImageView.setPivotX(backupImageView.getMeasuredWidth() / 2);
            BackupImageView backupImageView2 = this.textureOverlayView;
            backupImageView2.setPivotY(backupImageView2.getMeasuredHeight() / 2);
        }
        try {
            if (i == 0) {
                ((Activity) getContext()).getWindow().addFlags(128);
            } else {
                ((Activity) getContext()).getWindow().clearFlags(128);
            }
        } catch (Exception e) {
            FileLog.m102e(e);
        }
    }

    public void togglePause() {
        if (this.recording) {
            this.cancelled = this.recordedTime < 800;
            this.recording = false;
            if (this.cameraThread != null) {
                NotificationCenter notificationCenter = NotificationCenter.getInstance(this.currentAccount);
                int i = NotificationCenter.recordStopped;
                Object[] objArr = new Object[2];
                objArr[0] = Integer.valueOf(this.recordingGuid);
                objArr[1] = Integer.valueOf(this.cancelled ? 4 : 2);
                notificationCenter.lambda$postNotificationNameOnUIThread$1(i, objArr);
                saveLastCameraBitmap();
                CameraGLThread cameraGLThread = this.cameraThread;
                boolean z = this.cancelled;
                cameraGLThread.shutdown(z ? 0 : 2, z ? 0 : -2);
                this.cameraThread = null;
            }
            if (this.cancelled) {
                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.audioRecordTooShort, Integer.valueOf(this.recordingGuid), Boolean.TRUE, Integer.valueOf((int) this.recordedTime));
                startAnimation(false, false);
                MediaController.getInstance().requestAudioFocus(false);
                return;
            }
            this.videoEncoder.pause();
            return;
        }
        VideoRecorder videoRecorder = this.videoEncoder;
        if (videoRecorder != null) {
            videoRecorder.resume();
            hideCamera(false);
            VideoPlayer videoPlayer = this.videoPlayer;
            if (videoPlayer != null) {
                videoPlayer.releasePlayer(true);
                this.videoPlayer = null;
            }
            showCamera(true);
            try {
                performHapticFeedback(3, 2);
            } catch (Exception unused) {
            }
            AndroidUtilities.lockOrientation(this.delegate.getParentActivity());
            invalidate();
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.recordResumed, new Object[0]);
        }
    }

    public void showCamera(boolean z, boolean z2) {
        if (this.textureView != null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) ContextCompat.getDrawable(getContext(), C3632R.C3634drawable.avd_flip);
            this.switchCameraDrawable = animatedVectorDrawable;
            this.switchCameraButton.setImageDrawable(animatedVectorDrawable);
        } else {
            this.switchCameraButton.setImageResource(C3632R.C3634drawable.vd_flip);
        }
        this.textureOverlayView.setAlpha(1.0f);
        this.textureOverlayView.invalidate();
        if (z2 == this.isFrontface) {
            this.lastBitmap = null;
        }
        if (this.lastBitmap == null) {
            try {
                this.lastBitmap = BitmapFactory.decodeFile(new File(ApplicationLoader.getFilesDirFixed(), z2 ? "icthumb_back.jpg" : "icthumb.jpg").getAbsolutePath());
            } catch (Throwable unused) {
            }
        }
        Bitmap bitmap = this.lastBitmap;
        if (bitmap != null) {
            this.textureOverlayView.setImageBitmap(bitmap);
        } else {
            this.textureOverlayView.setImageResource(C3632R.C3634drawable.icplaceholder);
        }
        this.cameraReady = false;
        this.selectedCamera = null;
        if (!z) {
            this.isFrontface = !z2;
            this.recordedTime = 0L;
            this.progress = BitmapDescriptorFactory.HUE_RED;
        }
        this.cancelled = false;
        this.file = null;
        this.encryptedFile = null;
        this.key = null;
        this.f1863iv = null;
        this.needDrawFlickerStub = true;
        if (initCamera()) {
            if (MediaController.getInstance().getPlayingMessageObject() != null) {
                if (MediaController.getInstance().getPlayingMessageObject().isVideo() || MediaController.getInstance().getPlayingMessageObject().isRoundVideo()) {
                    MediaController.getInstance().cleanupPlayer(true, true);
                } else {
                    MediaController.getInstance().lambda$startAudioAgain$7(MediaController.getInstance().getPlayingMessageObject());
                }
            }
            if (!z) {
                File directory = FileLoader.getDirectory(3);
                this.cameraFile = new File(this, directory, System.currentTimeMillis() + "_" + SharedConfig.getLastLocalId() + ".mp4") { // from class: org.telegram.ui.Components.InstantCameraView.8
                    @Override // java.io.File
                    public boolean delete() {
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m104e("delete camera file");
                        }
                        return super.delete();
                    }
                };
            }
            SharedConfig.saveConfig();
            AutoDeleteMediaTask.lockFile(this.cameraFile);
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m105d("InstantCamera show round camera " + this.cameraFile.getAbsolutePath());
            }
            TextureView textureView = new TextureView(getContext());
            this.textureView = textureView;
            textureView.setSurfaceTextureListener(new TextureView.SurfaceTextureListener() { // from class: org.telegram.ui.Components.InstantCameraView.9
                @Override // android.view.TextureView.SurfaceTextureListener
                public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
                }

                {
                    InstantCameraView.this = this;
                }

                @Override // android.view.TextureView.SurfaceTextureListener
                public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m105d("InstantCamera camera surface available");
                    }
                    if (InstantCameraView.this.cameraThread != null || surfaceTexture == null || InstantCameraView.this.cancelled) {
                        return;
                    }
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m105d("InstantCamera start create thread");
                    }
                    InstantCameraView.this.cameraThread = new CameraGLThread(surfaceTexture, i, i2);
                }

                @Override // android.view.TextureView.SurfaceTextureListener
                public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
                    if (InstantCameraView.this.cameraThread != null) {
                        InstantCameraView.this.cameraThread.surfaceWidth = i;
                        InstantCameraView.this.cameraThread.surfaceHeight = i2;
                        InstantCameraView.this.cameraThread.updateScale();
                    }
                }

                @Override // android.view.TextureView.SurfaceTextureListener
                public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
                    if (InstantCameraView.this.cameraThread != null) {
                        InstantCameraView.this.cameraThread.shutdown(0, 0);
                        InstantCameraView.this.cameraThread = null;
                    }
                    if (InstantCameraView.this.cameraSession != null) {
                        CameraController.getInstance().close(InstantCameraView.this.cameraSession, null, null);
                        return true;
                    }
                    return true;
                }
            });
            this.cameraContainer.addView(this.textureView, LayoutHelper.createFrame(-1, -1));
            this.updateTextureViewSize = true;
            this.setVisibilityFromPause = z;
            setVisibility(0);
            startAnimation(true, z);
            MediaController.getInstance().requestAudioFocus(true);
        }
    }

    public InstantViewCameraContainer getCameraContainer() {
        return this.cameraContainer;
    }

    public void startAnimation(boolean z, final boolean z2) {
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet != null) {
            animatorSet.removeAllListeners();
            this.animatorSet.cancel();
        }
        PipRoundVideoView pipRoundVideoView = PipRoundVideoView.getInstance();
        if (pipRoundVideoView != null) {
            pipRoundVideoView.showTemporary(!z);
        }
        if (z && !this.opened) {
            this.cameraContainer.setTranslationX(BitmapDescriptorFactory.HUE_RED);
            this.textureOverlayView.setTranslationX(BitmapDescriptorFactory.HUE_RED);
            this.animationTranslationY = z2 ? 0.0f : getMeasuredHeight() / 2.0f;
            updateTranslationY();
        }
        this.opened = z;
        View view = this.parentView;
        if (view != null) {
            view.invalidate();
        }
        this.blurBehindDrawable.show(z);
        this.animatorSet = new AnimatorSet();
        float m107dp = (z || this.recordedTime <= 300) ? 0.0f : AndroidUtilities.m107dp(24) - (getMeasuredWidth() / 2.0f);
        float[] fArr = new float[2];
        fArr[0] = z ? 1.0f : 0.0f;
        fArr[1] = z ? 0.0f : 1.0f;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.InstantCameraView$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                InstantCameraView.this.lambda$startAnimation$1(z2, valueAnimator);
            }
        });
        AnimatorSet animatorSet2 = this.animatorSet;
        Animator[] animatorArr = new Animator[12];
        ImageView imageView = this.switchCameraButton;
        Property property = View.ALPHA;
        float[] fArr2 = new float[1];
        fArr2[0] = z ? 1.0f : 0.0f;
        animatorArr[0] = ObjectAnimator.ofFloat(imageView, property, fArr2);
        animatorArr[1] = ObjectAnimator.ofFloat(this.muteImageView, View.ALPHA, BitmapDescriptorFactory.HUE_RED);
        Paint paint = this.paint;
        Property<Paint, Integer> property2 = AnimationProperties.PAINT_ALPHA;
        int[] iArr = new int[1];
        iArr[0] = z ? 255 : 0;
        animatorArr[2] = ObjectAnimator.ofInt(paint, property2, iArr);
        InstantViewCameraContainer instantViewCameraContainer = this.cameraContainer;
        Property property3 = View.ALPHA;
        float[] fArr3 = new float[1];
        fArr3[0] = z ? 1.0f : 0.0f;
        animatorArr[3] = ObjectAnimator.ofFloat(instantViewCameraContainer, property3, fArr3);
        InstantViewCameraContainer instantViewCameraContainer2 = this.cameraContainer;
        Property property4 = View.SCALE_X;
        float[] fArr4 = new float[1];
        fArr4[0] = z ? 1.0f : 0.1f;
        animatorArr[4] = ObjectAnimator.ofFloat(instantViewCameraContainer2, property4, fArr4);
        InstantViewCameraContainer instantViewCameraContainer3 = this.cameraContainer;
        Property property5 = View.SCALE_Y;
        float[] fArr5 = new float[1];
        fArr5[0] = z ? 1.0f : 0.1f;
        animatorArr[5] = ObjectAnimator.ofFloat(instantViewCameraContainer3, property5, fArr5);
        animatorArr[6] = ObjectAnimator.ofFloat(this.cameraContainer, View.TRANSLATION_X, m107dp);
        BackupImageView backupImageView = this.textureOverlayView;
        Property property6 = View.ALPHA;
        float[] fArr6 = new float[1];
        fArr6[0] = z ? 1.0f : 0.0f;
        animatorArr[7] = ObjectAnimator.ofFloat(backupImageView, property6, fArr6);
        BackupImageView backupImageView2 = this.textureOverlayView;
        Property property7 = View.SCALE_X;
        float[] fArr7 = new float[1];
        fArr7[0] = z ? 1.0f : 0.1f;
        animatorArr[8] = ObjectAnimator.ofFloat(backupImageView2, property7, fArr7);
        BackupImageView backupImageView3 = this.textureOverlayView;
        Property property8 = View.SCALE_Y;
        float[] fArr8 = new float[1];
        fArr8[0] = z ? 1.0f : 0.1f;
        animatorArr[9] = ObjectAnimator.ofFloat(backupImageView3, property8, fArr8);
        animatorArr[10] = ObjectAnimator.ofFloat(this.textureOverlayView, View.TRANSLATION_X, m107dp);
        animatorArr[11] = ofFloat;
        animatorSet2.playTogether(animatorArr);
        if (!z) {
            this.animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.InstantCameraView.10
                {
                    InstantCameraView.this = this;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (animator.equals(InstantCameraView.this.animatorSet)) {
                        InstantCameraView.this.hideCamera(true);
                        InstantCameraView.this.setVisibilityFromPause = false;
                        InstantCameraView.this.setVisibility(4);
                    }
                }
            });
        } else {
            setTranslationX(BitmapDescriptorFactory.HUE_RED);
        }
        this.animatorSet.setDuration(180L);
        this.animatorSet.setInterpolator(new DecelerateInterpolator());
        this.animatorSet.start();
    }

    public /* synthetic */ void lambda$startAnimation$1(boolean z, ValueAnimator valueAnimator) {
        this.animationTranslationY = z ? BitmapDescriptorFactory.HUE_RED : (getMeasuredHeight() / 2.0f) * ((Float) valueAnimator.getAnimatedValue()).floatValue();
        updateTranslationY();
    }

    private void updateTranslationY() {
        this.textureOverlayView.setTranslationY(this.animationTranslationY + this.panTranslationY);
        this.cameraContainer.setTranslationY(this.animationTranslationY + this.panTranslationY);
    }

    public Rect getCameraRect() {
        this.cameraContainer.getLocationOnScreen(this.position);
        int[] iArr = this.position;
        return new Rect(iArr[0], iArr[1], this.cameraContainer.getWidth(), this.cameraContainer.getHeight());
    }

    public void changeVideoPreviewState(int i, float f) {
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer == null) {
            return;
        }
        if (i == 0) {
            startProgressTimer();
            this.videoPlayer.play();
        } else if (i == 1) {
            stopProgressTimer();
            this.videoPlayer.pause();
        } else if (i == 2) {
            videoPlayer.seekTo(f * ((float) videoPlayer.getDuration()));
        }
    }

    public void send(int i, boolean z, int i2, int i3) {
        if (this.textureView == null) {
            return;
        }
        stopProgressTimer();
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer != null) {
            videoPlayer.releasePlayer(true);
            this.videoPlayer = null;
        }
        if (i == 4) {
            VideoRecorder videoRecorder = this.videoEncoder;
            if (videoRecorder != null && this.recordedTime > 800) {
                videoRecorder.stopRecording(1, i3);
                return;
            }
            if (BuildVars.DEBUG_VERSION && !this.cameraFile.exists()) {
                FileLog.m102e(new RuntimeException("file not found :( round video"));
            }
            if (this.videoEditedInfo.needConvert()) {
                this.file = null;
                this.encryptedFile = null;
                this.key = null;
                this.f1863iv = null;
                VideoEditedInfo videoEditedInfo = this.videoEditedInfo;
                long j = videoEditedInfo.estimatedDuration;
                double d = j;
                long j2 = videoEditedInfo.startTime;
                if (j2 < 0) {
                    j2 = 0;
                }
                long j3 = videoEditedInfo.endTime;
                if (j3 >= 0) {
                    j = j3;
                }
                long j4 = j - j2;
                videoEditedInfo.estimatedDuration = j4;
                videoEditedInfo.estimatedSize = Math.max(1L, (long) (this.size * (j4 / d)));
                VideoEditedInfo videoEditedInfo2 = this.videoEditedInfo;
                videoEditedInfo2.bitrate = 1000000;
                long j5 = videoEditedInfo2.startTime;
                if (j5 > 0) {
                    videoEditedInfo2.startTime = j5 * 1000;
                }
                long j6 = videoEditedInfo2.endTime;
                if (j6 > 0) {
                    videoEditedInfo2.endTime = j6 * 1000;
                }
                FileLoader.getInstance(this.currentAccount).cancelFileUpload(this.cameraFile.getAbsolutePath(), false);
            } else {
                this.videoEditedInfo.estimatedSize = Math.max(1L, this.size);
            }
            VideoEditedInfo videoEditedInfo3 = this.videoEditedInfo;
            videoEditedInfo3.file = this.file;
            videoEditedInfo3.encryptedFile = this.encryptedFile;
            videoEditedInfo3.key = this.key;
            videoEditedInfo3.f1576iv = this.f1863iv;
            MediaController.PhotoEntry photoEntry = new MediaController.PhotoEntry(0, 0, 0L, this.cameraFile.getAbsolutePath(), 0, true, 0, 0, 0L);
            photoEntry.ttl = i3;
            this.delegate.sendMedia(photoEntry, this.videoEditedInfo, z, i2, false, null);
            if (i2 != 0) {
                startAnimation(false, false);
            }
            MediaController.getInstance().requestAudioFocus(false);
            return;
        }
        boolean z2 = this.recordedTime < 800;
        this.cancelled = z2;
        this.recording = false;
        int i4 = z2 ? 4 : i == 3 ? 2 : 5;
        if (this.cameraThread != null) {
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.recordStopped, Integer.valueOf(this.recordingGuid), Integer.valueOf(i4));
            int i5 = this.cancelled ? 0 : i == 3 ? 2 : 1;
            saveLastCameraBitmap();
            this.cameraThread.shutdown(i5, i3);
            this.cameraThread = null;
        }
        if (this.cancelled) {
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.audioRecordTooShort, Integer.valueOf(this.recordingGuid), Boolean.TRUE, Integer.valueOf((int) this.recordedTime));
            startAnimation(false, false);
            MediaController.getInstance().requestAudioFocus(false);
        }
    }

    private void saveLastCameraBitmap() {
        Bitmap bitmap = this.textureView.getBitmap();
        if (bitmap == null || bitmap.getPixel(0, 0) == 0) {
            return;
        }
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(this.textureView.getBitmap(), 50, 50, true);
        this.lastBitmap = createScaledBitmap;
        if (createScaledBitmap != null) {
            Utilities.blurBitmap(createScaledBitmap, 7, 1, createScaledBitmap.getWidth(), this.lastBitmap.getHeight(), this.lastBitmap.getRowBytes());
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(new File(ApplicationLoader.getFilesDirFixed(), !this.isFrontface ? "icthumb_back.jpg" : "icthumb.jpg"));
                this.lastBitmap.compress(Bitmap.CompressFormat.JPEG, 87, fileOutputStream);
                fileOutputStream.close();
            } catch (Throwable unused) {
            }
        }
    }

    public void cancel(boolean z) {
        stopProgressTimer();
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer != null) {
            videoPlayer.releasePlayer(true);
            this.videoPlayer = null;
        }
        if (this.textureView == null) {
            return;
        }
        this.cancelled = true;
        this.recording = false;
        NotificationCenter notificationCenter = NotificationCenter.getInstance(this.currentAccount);
        int i = NotificationCenter.recordStopped;
        Object[] objArr = new Object[2];
        objArr[0] = Integer.valueOf(this.recordingGuid);
        objArr[1] = Integer.valueOf(z ? 0 : 6);
        notificationCenter.lambda$postNotificationNameOnUIThread$1(i, objArr);
        if (this.cameraThread != null) {
            saveLastCameraBitmap();
            this.cameraThread.shutdown(0, 0);
            this.cameraThread = null;
        } else {
            VideoRecorder videoRecorder = this.videoEncoder;
            if (videoRecorder != null) {
                videoRecorder.stopRecording(0, 0);
            }
        }
        if (this.cameraFile != null) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m104e("delete camera file by cancel");
            }
            this.cameraFile.delete();
            AutoDeleteMediaTask.unlockFile(this.cameraFile);
            this.cameraFile = null;
        }
        MediaController.getInstance().requestAudioFocus(false);
        startAnimation(false, false);
        this.blurBehindDrawable.show(false);
        invalidate();
    }

    public View getSwitchButtonView() {
        return this.switchCameraButton;
    }

    public View getMuteImageView() {
        return this.muteImageView;
    }

    public Paint getPaint() {
        return this.paint;
    }

    public void hideCamera(boolean z) {
        ViewGroup viewGroup;
        destroy(z, null);
        this.cameraContainer.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        this.textureOverlayView.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        this.animationTranslationY = BitmapDescriptorFactory.HUE_RED;
        updateTranslationY();
        MediaController.getInstance().playMessage(MediaController.getInstance().getPlayingMessageObject());
        TextureView textureView = this.textureView;
        if (textureView != null && (viewGroup = (ViewGroup) textureView.getParent()) != null) {
            viewGroup.removeView(this.textureView);
        }
        this.textureView = null;
        this.cameraContainer.setImageReceiver(null);
    }

    private void switchCamera() {
        saveLastCameraBitmap();
        try {
            this.lastBitmap = BitmapFactory.decodeFile(new File(ApplicationLoader.getFilesDirFixed(), this.isFrontface ? "icthumb_back.jpg" : "icthumb.jpg").getAbsolutePath());
        } catch (Throwable unused) {
        }
        Bitmap bitmap = this.lastBitmap;
        if (bitmap != null) {
            this.needDrawFlickerStub = false;
            this.textureOverlayView.setImageBitmap(bitmap);
            this.textureOverlayView.setAlpha(1.0f);
        }
        CameraSession cameraSession = this.cameraSession;
        if (cameraSession != null) {
            cameraSession.destroy();
            CameraController.getInstance().close(this.cameraSession, null, null);
            this.cameraSession = null;
        }
        this.isFrontface = !this.isFrontface;
        initCamera();
        this.cameraReady = false;
        this.cameraThread.reinitForNewCamera();
    }

    private boolean initCamera() {
        int i;
        int i2;
        ArrayList<CameraInfo> cameras = CameraController.getInstance().getCameras();
        boolean z = false;
        if (cameras == null) {
            return false;
        }
        CameraInfo cameraInfo = null;
        int i3 = 0;
        while (i3 < cameras.size()) {
            CameraInfo cameraInfo2 = cameras.get(i3);
            if (!cameraInfo2.isFrontface()) {
                cameraInfo = cameraInfo2;
            }
            if ((this.isFrontface && cameraInfo2.isFrontface()) || (!this.isFrontface && !cameraInfo2.isFrontface())) {
                this.selectedCamera = cameraInfo2;
                break;
            }
            i3++;
            cameraInfo = cameraInfo2;
        }
        if (this.selectedCamera == null) {
            this.selectedCamera = cameraInfo;
        }
        CameraInfo cameraInfo3 = this.selectedCamera;
        if (cameraInfo3 == null) {
            return false;
        }
        ArrayList<Size> previewSizes = cameraInfo3.getPreviewSizes();
        ArrayList<Size> pictureSizes = this.selectedCamera.getPictureSizes();
        this.previewSize = chooseOptimalSize(previewSizes);
        Size chooseOptimalSize = chooseOptimalSize(pictureSizes);
        this.pictureSize = chooseOptimalSize;
        if (this.previewSize.mWidth != chooseOptimalSize.mWidth) {
            for (int size = previewSizes.size() - 1; size >= 0; size--) {
                Size size2 = previewSizes.get(size);
                int size3 = pictureSizes.size() - 1;
                while (true) {
                    if (size3 < 0) {
                        break;
                    }
                    Size size4 = pictureSizes.get(size3);
                    int i4 = size2.mWidth;
                    Size size5 = this.pictureSize;
                    if (i4 >= size5.mWidth && (i2 = size2.mHeight) >= size5.mHeight && i4 == size4.mWidth && i2 == size4.mHeight) {
                        this.previewSize = size2;
                        this.pictureSize = size4;
                        z = true;
                        break;
                    }
                    size3--;
                }
                if (z) {
                    break;
                }
            }
            if (!z) {
                for (int size6 = previewSizes.size() - 1; size6 >= 0; size6--) {
                    Size size7 = previewSizes.get(size6);
                    int size8 = pictureSizes.size() - 1;
                    while (true) {
                        if (size8 < 0) {
                            break;
                        }
                        Size size9 = pictureSizes.get(size8);
                        int i5 = size7.mWidth;
                        if (i5 >= 360 && (i = size7.mHeight) >= 360 && i5 == size9.mWidth && i == size9.mHeight) {
                            this.previewSize = size7;
                            this.pictureSize = size9;
                            z = true;
                            break;
                        }
                        size8--;
                    }
                    if (z) {
                        break;
                    }
                }
            }
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m105d("InstantCamera preview w = " + this.previewSize.mWidth + " h = " + this.previewSize.mHeight);
        }
        return true;
    }

    private Size chooseOptimalSize(ArrayList<Size> arrayList) {
        ArrayList<Size> arrayList2 = new ArrayList<>();
        int i = Build.MANUFACTURER.equalsIgnoreCase("Samsung") ? 1200 : allowBigSizeCamera() ? 1440 : 1200;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            if (Math.max(arrayList.get(i2).mHeight, arrayList.get(i2).mWidth) <= i && Math.min(arrayList.get(i2).mHeight, arrayList.get(i2).mWidth) >= 320) {
                arrayList2.add(arrayList.get(i2));
            }
        }
        if (arrayList2.isEmpty() || !allowBigSizeCamera()) {
            if (!arrayList2.isEmpty()) {
                arrayList = arrayList2;
            }
            if (Build.MANUFACTURER.equalsIgnoreCase("Xiaomi")) {
                return CameraController.chooseOptimalSize(arrayList, 640, 480, this.aspectRatio, false);
            }
            return CameraController.chooseOptimalSize(arrayList, 480, 270, this.aspectRatio, false);
        }
        Collections.sort(arrayList2, new Comparator() { // from class: org.telegram.ui.Components.InstantCameraView$$ExternalSyntheticLambda6
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$chooseOptimalSize$2;
                lambda$chooseOptimalSize$2 = InstantCameraView.lambda$chooseOptimalSize$2((Size) obj, (Size) obj2);
                return lambda$chooseOptimalSize$2;
            }
        });
        return arrayList2.get(0);
    }

    public static /* synthetic */ int lambda$chooseOptimalSize$2(Size size, Size size2) {
        float abs = Math.abs(1.0f - (Math.min(size.mHeight, size.mWidth) / Math.max(size.mHeight, size.mWidth)));
        float abs2 = Math.abs(1.0f - (Math.min(size2.mHeight, size2.mWidth) / Math.max(size2.mHeight, size2.mWidth)));
        if (abs < abs2) {
            return -1;
        }
        return abs > abs2 ? 1 : 0;
    }

    private boolean allowBigSizeCamera() {
        if (SharedConfig.bigCameraForRound || SharedConfig.deviceIsAboveAverage() || Math.max(SharedConfig.getDevicePerformanceClass(), SharedConfig.getLegacyDevicePerformanceClass()) == 2) {
            return true;
        }
        int hashCode = (Build.MANUFACTURER + " " + Build.DEVICE).toUpperCase().hashCode();
        int i = 0;
        while (true) {
            int[] iArr = ALLOW_BIG_CAMERA_WHITELIST;
            if (i >= iArr.length) {
                return false;
            }
            if (iArr[i] == hashCode) {
                return true;
            }
            i++;
        }
    }

    public static boolean allowBigSizeCameraDebug() {
        if (Math.max(SharedConfig.getDevicePerformanceClass(), SharedConfig.getLegacyDevicePerformanceClass()) == 2) {
            return true;
        }
        int hashCode = (Build.MANUFACTURER + " " + Build.DEVICE).toUpperCase().hashCode();
        int i = 0;
        while (true) {
            int[] iArr = ALLOW_BIG_CAMERA_WHITELIST;
            if (i >= iArr.length) {
                return false;
            }
            if (iArr[i] == hashCode) {
                return true;
            }
            i++;
        }
    }

    public void createCamera(final SurfaceTexture surfaceTexture) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                InstantCameraView.this.lambda$createCamera$5(surfaceTexture);
            }
        });
    }

    public /* synthetic */ void lambda$createCamera$5(SurfaceTexture surfaceTexture) {
        if (this.cameraThread == null) {
            return;
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m105d("InstantCamera create camera session");
        }
        surfaceTexture.setDefaultBufferSize(this.previewSize.getWidth(), this.previewSize.getHeight());
        CameraSession cameraSession = new CameraSession(this.selectedCamera, this.previewSize, this.pictureSize, 256, true);
        this.cameraSession = cameraSession;
        this.cameraThread.setCurrentSession(cameraSession);
        CameraController.getInstance().openRound(this.cameraSession, surfaceTexture, new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                InstantCameraView.this.lambda$createCamera$3();
            }
        }, new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                InstantCameraView.this.lambda$createCamera$4();
            }
        });
    }

    public /* synthetic */ void lambda$createCamera$3() {
        CameraGLThread cameraGLThread;
        CameraSession cameraSession = this.cameraSession;
        if (cameraSession != null) {
            boolean z = false;
            try {
                Camera.Size currentPreviewSize = cameraSession.getCurrentPreviewSize();
                if (currentPreviewSize.width != this.previewSize.getWidth() || currentPreviewSize.height != this.previewSize.getHeight()) {
                    this.previewSize = new Size(currentPreviewSize.width, currentPreviewSize.height);
                    FileLog.m105d("InstantCamera change preview size to w = " + this.previewSize.getWidth() + " h = " + this.previewSize.getHeight());
                }
            } catch (Exception e) {
                FileLog.m102e(e);
            }
            try {
                Camera.Size currentPictureSize = this.cameraSession.getCurrentPictureSize();
                if (currentPictureSize.width != this.pictureSize.getWidth() || currentPictureSize.height != this.pictureSize.getHeight()) {
                    this.pictureSize = new Size(currentPictureSize.width, currentPictureSize.height);
                    FileLog.m105d("InstantCamera change picture size to w = " + this.pictureSize.getWidth() + " h = " + this.pictureSize.getHeight());
                    z = true;
                }
            } catch (Exception e2) {
                FileLog.m102e(e2);
            }
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m105d("InstantCamera camera initied");
            }
            this.cameraSession.setInitied();
            if (!z || (cameraGLThread = this.cameraThread) == null) {
                return;
            }
            cameraGLThread.reinitForNewCamera();
        }
    }

    public /* synthetic */ void lambda$createCamera$4() {
        CameraGLThread cameraGLThread = this.cameraThread;
        if (cameraGLThread != null) {
            cameraGLThread.setCurrentSession(this.cameraSession);
        }
    }

    public int loadShader(int i, String str) {
        int glCreateShader = GLES20.glCreateShader(i);
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] == 0) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m104e(GLES20.glGetShaderInfoLog(glCreateShader));
            }
            GLES20.glDeleteShader(glCreateShader);
            return 0;
        }
        return glCreateShader;
    }

    public void startProgressTimer() {
        Timer timer = this.progressTimer;
        if (timer != null) {
            try {
                timer.cancel();
                this.progressTimer = null;
            } catch (Exception e) {
                FileLog.m102e(e);
            }
        }
        Timer timer2 = new Timer();
        this.progressTimer = timer2;
        timer2.schedule(new C513811(), 0L, 17L);
    }

    /* renamed from: org.telegram.ui.Components.InstantCameraView$11 */
    /* loaded from: classes6.dex */
    public class C513811 extends TimerTask {
        C513811() {
            InstantCameraView.this = r1;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$11$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    InstantCameraView.C513811.this.lambda$run$0();
                }
            });
        }

        public /* synthetic */ void lambda$run$0() {
            try {
                if (InstantCameraView.this.videoPlayer == null || InstantCameraView.this.videoEditedInfo == null) {
                    return;
                }
                if (InstantCameraView.this.videoEditedInfo.endTime <= 0 || InstantCameraView.this.videoPlayer.getCurrentPosition() < InstantCameraView.this.videoEditedInfo.endTime) {
                    return;
                }
                InstantCameraView.this.videoPlayer.seekTo(InstantCameraView.this.videoEditedInfo.startTime > 0 ? InstantCameraView.this.videoEditedInfo.startTime : 0L);
            } catch (Exception e) {
                FileLog.m102e(e);
            }
        }
    }

    private void stopProgressTimer() {
        Timer timer = this.progressTimer;
        if (timer != null) {
            try {
                timer.cancel();
                this.progressTimer = null;
            } catch (Exception e) {
                FileLog.m102e(e);
            }
        }
    }

    public boolean blurFullyDrawing() {
        BlurBehindDrawable blurBehindDrawable = this.blurBehindDrawable;
        return blurBehindDrawable != null && blurBehindDrawable.isFullyDrawing() && this.opened;
    }

    public void invalidateBlur() {
        BlurBehindDrawable blurBehindDrawable = this.blurBehindDrawable;
        if (blurBehindDrawable != null) {
            blurBehindDrawable.invalidate();
        }
    }

    public void cancelBlur() {
        this.blurBehindDrawable.show(false);
        invalidate();
    }

    public void onPanTranslationUpdate(float f) {
        this.panTranslationY = f / 2.0f;
        updateTranslationY();
        this.blurBehindDrawable.onPanTranslationUpdate(f);
    }

    public TextureView getTextureView() {
        return this.textureView;
    }

    public void resetCameraFile() {
        this.cameraFile = null;
    }

    /* renamed from: org.telegram.ui.Components.InstantCameraView$CameraGLThread */
    /* loaded from: classes6.dex */
    public class CameraGLThread extends DispatchQueue {
        private Integer cameraId;
        private SurfaceTexture cameraSurface;
        private CameraSession currentSession;
        private int drawProgram;
        private EGL10 egl10;
        private EGLContext eglContext;
        private EGLDisplay eglDisplay;
        private EGLSurface eglSurface;
        private boolean initied;
        private int positionHandle;
        private boolean recording;
        private int surfaceHeight;
        private SurfaceTexture surfaceTexture;
        private int surfaceWidth;
        private int textureHandle;
        private int textureMatrixHandle;
        private int vertexMatrixHandle;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CameraGLThread(SurfaceTexture surfaceTexture, int i, int i2) {
            super("CameraGLThread");
            InstantCameraView.this = r1;
            this.cameraId = 0;
            this.surfaceTexture = surfaceTexture;
            this.surfaceWidth = i;
            this.surfaceHeight = i2;
            updateScale();
        }

        public void updateScale() {
            int width = InstantCameraView.this.previewSize.getWidth();
            int height = InstantCameraView.this.previewSize.getHeight();
            float min = this.surfaceWidth / Math.min(width, height);
            int i = (int) (width * min);
            int i2 = (int) (height * min);
            if (i == i2) {
                InstantCameraView.this.scaleX = 1.0f;
                InstantCameraView.this.scaleY = 1.0f;
            } else if (i > i2) {
                InstantCameraView.this.scaleX = 1.0f;
                InstantCameraView.this.scaleY = i / this.surfaceHeight;
            } else {
                InstantCameraView.this.scaleX = i2 / this.surfaceWidth;
                InstantCameraView.this.scaleY = 1.0f;
            }
            FileLog.m105d("InstantCamera camera scaleX = " + InstantCameraView.this.scaleX + " scaleY = " + InstantCameraView.this.scaleY);
        }

        private boolean initGL() {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m105d("InstantCamera start init gl");
            }
            EGL10 egl10 = (EGL10) EGLContext.getEGL();
            this.egl10 = egl10;
            EGLDisplay eglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
            this.eglDisplay = eglGetDisplay;
            if (eglGetDisplay == EGL10.EGL_NO_DISPLAY) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m104e("InstantCamera eglGetDisplay failed " + GLUtils.getEGLErrorString(this.egl10.eglGetError()));
                }
                finish();
                return false;
            } else if (!this.egl10.eglInitialize(eglGetDisplay, new int[2])) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m104e("InstantCamera eglInitialize failed " + GLUtils.getEGLErrorString(this.egl10.eglGetError()));
                }
                finish();
                return false;
            } else {
                int[] iArr = new int[1];
                EGLConfig[] eGLConfigArr = new EGLConfig[1];
                if (!this.egl10.eglChooseConfig(this.eglDisplay, new int[]{12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 0, 12325, 0, 12326, 0, 12344}, eGLConfigArr, 1, iArr)) {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m104e("InstantCamera eglChooseConfig failed " + GLUtils.getEGLErrorString(this.egl10.eglGetError()));
                    }
                    finish();
                    return false;
                } else if (iArr[0] > 0) {
                    EGLConfig eGLConfig = eGLConfigArr[0];
                    EGLContext eglCreateContext = this.egl10.eglCreateContext(this.eglDisplay, eGLConfig, EGL10.EGL_NO_CONTEXT, new int[]{12440, 2, 12344});
                    this.eglContext = eglCreateContext;
                    if (eglCreateContext == null) {
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m104e("InstantCamera eglCreateContext failed " + GLUtils.getEGLErrorString(this.egl10.eglGetError()));
                        }
                        finish();
                        return false;
                    }
                    SurfaceTexture surfaceTexture = this.surfaceTexture;
                    if (surfaceTexture instanceof SurfaceTexture) {
                        EGLSurface eglCreateWindowSurface = this.egl10.eglCreateWindowSurface(this.eglDisplay, eGLConfig, surfaceTexture, null);
                        this.eglSurface = eglCreateWindowSurface;
                        if (eglCreateWindowSurface == null || eglCreateWindowSurface == EGL10.EGL_NO_SURFACE) {
                            if (BuildVars.LOGS_ENABLED) {
                                FileLog.m104e("InstantCamera createWindowSurface failed " + GLUtils.getEGLErrorString(this.egl10.eglGetError()));
                            }
                            finish();
                            return false;
                        } else if (this.egl10.eglMakeCurrent(this.eglDisplay, eglCreateWindowSurface, eglCreateWindowSurface, this.eglContext)) {
                            float f = (1.0f / InstantCameraView.this.scaleX) / 2.0f;
                            float f2 = (1.0f / InstantCameraView.this.scaleY) / 2.0f;
                            float[] fArr = {-1.0f, -1.0f, BitmapDescriptorFactory.HUE_RED, 1.0f, -1.0f, BitmapDescriptorFactory.HUE_RED, -1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED};
                            float f3 = 0.5f - f;
                            float f4 = 0.5f - f2;
                            float f5 = f + 0.5f;
                            float f6 = f2 + 0.5f;
                            float[] fArr2 = {f3, f4, f5, f4, f3, f6, f5, f6};
                            if (InstantCameraView.this.videoEncoder == null) {
                                InstantCameraView instantCameraView = InstantCameraView.this;
                                instantCameraView.videoEncoder = new VideoRecorder();
                            }
                            InstantCameraView.this.vertexBuffer = ByteBuffer.allocateDirect(48).order(ByteOrder.nativeOrder()).asFloatBuffer();
                            InstantCameraView.this.vertexBuffer.put(fArr).position(0);
                            InstantCameraView.this.textureBuffer = ByteBuffer.allocateDirect(32).order(ByteOrder.nativeOrder()).asFloatBuffer();
                            InstantCameraView.this.textureBuffer.put(fArr2).position(0);
                            Matrix.setIdentityM(InstantCameraView.this.mSTMatrix, 0);
                            int loadShader = InstantCameraView.this.loadShader(35633, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n   gl_Position = uMVPMatrix * aPosition;\n   vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n");
                            int loadShader2 = InstantCameraView.this.loadShader(35632, "#extension GL_OES_EGL_image_external : require\nprecision lowp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n   gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n");
                            if (loadShader != 0 && loadShader2 != 0) {
                                int glCreateProgram = GLES20.glCreateProgram();
                                this.drawProgram = glCreateProgram;
                                GLES20.glAttachShader(glCreateProgram, loadShader);
                                GLES20.glAttachShader(this.drawProgram, loadShader2);
                                GLES20.glLinkProgram(this.drawProgram);
                                int[] iArr2 = new int[1];
                                GLES20.glGetProgramiv(this.drawProgram, 35714, iArr2, 0);
                                if (iArr2[0] == 0) {
                                    if (BuildVars.LOGS_ENABLED) {
                                        FileLog.m104e("InstantCamera failed link shader");
                                    }
                                    GLES20.glDeleteProgram(this.drawProgram);
                                    this.drawProgram = 0;
                                } else {
                                    this.positionHandle = GLES20.glGetAttribLocation(this.drawProgram, "aPosition");
                                    this.textureHandle = GLES20.glGetAttribLocation(this.drawProgram, "aTextureCoord");
                                    this.vertexMatrixHandle = GLES20.glGetUniformLocation(this.drawProgram, "uMVPMatrix");
                                    this.textureMatrixHandle = GLES20.glGetUniformLocation(this.drawProgram, "uSTMatrix");
                                }
                                GLES20.glGenTextures(1, InstantCameraView.this.cameraTexture, 0);
                                GLES20.glBindTexture(36197, InstantCameraView.this.cameraTexture[0]);
                                GLES20.glTexParameteri(36197, 10241, 9729);
                                GLES20.glTexParameteri(36197, 10240, 9729);
                                GLES20.glTexParameteri(36197, 10242, 33071);
                                GLES20.glTexParameteri(36197, 10243, 33071);
                                Matrix.setIdentityM(InstantCameraView.this.mMVPMatrix, 0);
                                SurfaceTexture surfaceTexture2 = new SurfaceTexture(InstantCameraView.this.cameraTexture[0]);
                                this.cameraSurface = surfaceTexture2;
                                surfaceTexture2.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: org.telegram.ui.Components.InstantCameraView$CameraGLThread$$ExternalSyntheticLambda0
                                    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
                                    public final void onFrameAvailable(SurfaceTexture surfaceTexture3) {
                                        InstantCameraView.CameraGLThread.this.lambda$initGL$0(surfaceTexture3);
                                    }
                                });
                                InstantCameraView.this.createCamera(this.cameraSurface);
                                if (BuildVars.LOGS_ENABLED) {
                                    FileLog.m104e("InstantCamera gl initied");
                                }
                                return true;
                            }
                            if (BuildVars.LOGS_ENABLED) {
                                FileLog.m104e("InstantCamera failed creating shader");
                            }
                            finish();
                            return false;
                        } else {
                            if (BuildVars.LOGS_ENABLED) {
                                FileLog.m104e("InstantCamera eglMakeCurrent failed " + GLUtils.getEGLErrorString(this.egl10.eglGetError()));
                            }
                            finish();
                            return false;
                        }
                    }
                    finish();
                    return false;
                } else {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m104e("InstantCamera eglConfig not initialized");
                    }
                    finish();
                    return false;
                }
            }
        }

        public /* synthetic */ void lambda$initGL$0(SurfaceTexture surfaceTexture) {
            requestRender();
        }

        public void reinitForNewCamera() {
            Handler handler = getHandler();
            if (handler != null) {
                sendMessage(handler.obtainMessage(2), 0);
            }
            updateScale();
        }

        public void finish() {
            EGLContext eGLContext;
            SurfaceTexture surfaceTexture = this.cameraSurface;
            if (surfaceTexture != null) {
                surfaceTexture.release();
                this.cameraSurface = null;
            }
            if (this.eglSurface != null && (eGLContext = this.eglContext) != null) {
                if (!eGLContext.equals(this.egl10.eglGetCurrentContext()) || !this.eglSurface.equals(this.egl10.eglGetCurrentSurface(12377))) {
                    EGL10 egl10 = this.egl10;
                    EGLDisplay eGLDisplay = this.eglDisplay;
                    EGLSurface eGLSurface = this.eglSurface;
                    egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.eglContext);
                }
                if (InstantCameraView.this.cameraTexture[0] != 0) {
                    GLES20.glDeleteTextures(1, InstantCameraView.this.cameraTexture, 0);
                    InstantCameraView.this.cameraTexture[0] = 0;
                }
            }
            if (this.eglSurface != null) {
                EGL10 egl102 = this.egl10;
                EGLDisplay eGLDisplay2 = this.eglDisplay;
                EGLSurface eGLSurface2 = EGL10.EGL_NO_SURFACE;
                egl102.eglMakeCurrent(eGLDisplay2, eGLSurface2, eGLSurface2, EGL10.EGL_NO_CONTEXT);
                this.egl10.eglDestroySurface(this.eglDisplay, this.eglSurface);
                this.eglSurface = null;
            }
            EGLContext eGLContext2 = this.eglContext;
            if (eGLContext2 != null) {
                this.egl10.eglDestroyContext(this.eglDisplay, eGLContext2);
                this.eglContext = null;
            }
            EGLDisplay eGLDisplay3 = this.eglDisplay;
            if (eGLDisplay3 != null) {
                this.egl10.eglTerminate(eGLDisplay3);
                this.eglDisplay = null;
            }
        }

        public void setCurrentSession(CameraSession cameraSession) {
            Handler handler = getHandler();
            if (handler != null) {
                sendMessage(handler.obtainMessage(3, cameraSession), 0);
            }
        }

        private void onDraw(Integer num) {
            boolean z;
            if (this.initied) {
                if (!this.eglContext.equals(this.egl10.eglGetCurrentContext()) || !this.eglSurface.equals(this.egl10.eglGetCurrentSurface(12377))) {
                    EGL10 egl10 = this.egl10;
                    EGLDisplay eGLDisplay = this.eglDisplay;
                    EGLSurface eGLSurface = this.eglSurface;
                    if (!egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.eglContext)) {
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m104e("eglMakeCurrent failed " + GLUtils.getEGLErrorString(this.egl10.eglGetError()));
                            return;
                        }
                        return;
                    }
                }
                this.cameraSurface.updateTexImage();
                if (this.recording) {
                    z = false;
                } else {
                    if (InstantCameraView.this.videoEncoder == null) {
                        InstantCameraView instantCameraView = InstantCameraView.this;
                        instantCameraView.videoEncoder = new VideoRecorder();
                    }
                    if (InstantCameraView.this.videoEncoder.started) {
                        if (!InstantCameraView.this.cameraReady) {
                            InstantCameraView.this.cameraReady = true;
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$CameraGLThread$$ExternalSyntheticLambda2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    InstantCameraView.CameraGLThread.this.lambda$onDraw$1();
                                }
                            });
                        }
                        z = false;
                    } else {
                        z = true;
                    }
                    InstantCameraView.this.videoEncoder.startRecording(InstantCameraView.this.cameraFile, EGL14.eglGetCurrentContext());
                    int currentOrientation = this.currentSession.getCurrentOrientation();
                    if (currentOrientation == 90 || currentOrientation == 270) {
                        float f = InstantCameraView.this.scaleX;
                        InstantCameraView instantCameraView2 = InstantCameraView.this;
                        instantCameraView2.scaleX = instantCameraView2.scaleY;
                        InstantCameraView.this.scaleY = f;
                    }
                    this.recording = true;
                }
                if (InstantCameraView.this.videoEncoder != null) {
                    InstantCameraView.this.videoEncoder.frameAvailable(this.cameraSurface, num, System.nanoTime());
                }
                this.cameraSurface.getTransformMatrix(InstantCameraView.this.mSTMatrix);
                GLES20.glUseProgram(this.drawProgram);
                GLES20.glActiveTexture(33984);
                GLES20.glBindTexture(36197, InstantCameraView.this.cameraTexture[0]);
                GLES20.glVertexAttribPointer(this.positionHandle, 3, 5126, false, 12, (Buffer) InstantCameraView.this.vertexBuffer);
                GLES20.glEnableVertexAttribArray(this.positionHandle);
                GLES20.glVertexAttribPointer(this.textureHandle, 2, 5126, false, 8, (Buffer) InstantCameraView.this.textureBuffer);
                GLES20.glEnableVertexAttribArray(this.textureHandle);
                GLES20.glUniformMatrix4fv(this.textureMatrixHandle, 1, false, InstantCameraView.this.mSTMatrix, 0);
                GLES20.glUniformMatrix4fv(this.vertexMatrixHandle, 1, false, InstantCameraView.this.mMVPMatrix, 0);
                GLES20.glDrawArrays(5, 0, 4);
                GLES20.glDisableVertexAttribArray(this.positionHandle);
                GLES20.glDisableVertexAttribArray(this.textureHandle);
                GLES20.glBindTexture(36197, 0);
                GLES20.glUseProgram(0);
                this.egl10.eglSwapBuffers(this.eglDisplay, this.eglSurface);
                if (z) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$CameraGLThread$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            InstantCameraView.CameraGLThread.this.lambda$onDraw$2();
                        }
                    });
                }
            }
        }

        public /* synthetic */ void lambda$onDraw$1() {
            InstantCameraView.this.textureOverlayView.animate().setDuration(120L).alpha(BitmapDescriptorFactory.HUE_RED).setInterpolator(new DecelerateInterpolator()).start();
        }

        public /* synthetic */ void lambda$onDraw$2() {
            if (InstantCameraView.this.textureView == null) {
                return;
            }
            if (InstantCameraView.this.firstFrameThumb != null) {
                InstantCameraView.this.firstFrameThumb.recycle();
                InstantCameraView.this.firstFrameThumb = null;
            }
            InstantCameraView instantCameraView = InstantCameraView.this;
            instantCameraView.firstFrameThumb = instantCameraView.textureView.getBitmap();
        }

        @Override // org.telegram.messenger.DispatchQueue, java.lang.Thread, java.lang.Runnable
        public void run() {
            this.initied = initGL();
            super.run();
        }

        @Override // org.telegram.messenger.DispatchQueue
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                onDraw((Integer) message.obj);
            } else if (i == 1) {
                finish();
                if (this.recording && message.arg2 != -2) {
                    InstantCameraView.this.videoEncoder.stopRecording(message.arg1, message.arg2);
                }
                Looper myLooper = Looper.myLooper();
                if (myLooper != null) {
                    myLooper.quit();
                }
            } else if (i != 2) {
                if (i != 3) {
                    return;
                }
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m105d("InstantCamera set gl rednderer session");
                }
                CameraSession cameraSession = (CameraSession) message.obj;
                CameraSession cameraSession2 = this.currentSession;
                if (cameraSession2 == cameraSession) {
                    int worldAngle = cameraSession2.getWorldAngle();
                    Matrix.setIdentityM(InstantCameraView.this.mMVPMatrix, 0);
                    if (worldAngle != 0) {
                        Matrix.rotateM(InstantCameraView.this.mMVPMatrix, 0, worldAngle, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f);
                        return;
                    }
                    return;
                }
                this.currentSession = cameraSession;
            } else {
                EGL10 egl10 = this.egl10;
                EGLDisplay eGLDisplay = this.eglDisplay;
                EGLSurface eGLSurface = this.eglSurface;
                if (!egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.eglContext)) {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m105d("InstantCamera eglMakeCurrent failed " + GLUtils.getEGLErrorString(this.egl10.eglGetError()));
                        return;
                    }
                    return;
                }
                SurfaceTexture surfaceTexture = this.cameraSurface;
                if (surfaceTexture != null) {
                    surfaceTexture.getTransformMatrix(InstantCameraView.this.moldSTMatrix);
                    this.cameraSurface.setOnFrameAvailableListener(null);
                    this.cameraSurface.release();
                    InstantCameraView.this.oldCameraTexture[0] = InstantCameraView.this.cameraTexture[0];
                    InstantCameraView.this.cameraTextureAlpha = BitmapDescriptorFactory.HUE_RED;
                    InstantCameraView.this.cameraTexture[0] = 0;
                    InstantCameraView instantCameraView = InstantCameraView.this;
                    instantCameraView.oldTextureTextureBuffer = instantCameraView.textureBuffer.duplicate();
                    InstantCameraView instantCameraView2 = InstantCameraView.this;
                    instantCameraView2.oldTexturePreviewSize = instantCameraView2.previewSize;
                }
                this.cameraId = Integer.valueOf(this.cameraId.intValue() + 1);
                InstantCameraView.this.cameraReady = false;
                GLES20.glGenTextures(1, InstantCameraView.this.cameraTexture, 0);
                GLES20.glBindTexture(36197, InstantCameraView.this.cameraTexture[0]);
                GLES20.glTexParameteri(36197, 10241, 9729);
                GLES20.glTexParameteri(36197, 10240, 9729);
                GLES20.glTexParameteri(36197, 10242, 33071);
                GLES20.glTexParameteri(36197, 10243, 33071);
                SurfaceTexture surfaceTexture2 = new SurfaceTexture(InstantCameraView.this.cameraTexture[0]);
                this.cameraSurface = surfaceTexture2;
                surfaceTexture2.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: org.telegram.ui.Components.InstantCameraView$CameraGLThread$$ExternalSyntheticLambda1
                    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
                    public final void onFrameAvailable(SurfaceTexture surfaceTexture3) {
                        InstantCameraView.CameraGLThread.this.lambda$handleMessage$3(surfaceTexture3);
                    }
                });
                InstantCameraView.this.createCamera(this.cameraSurface);
                if (InstantCameraView.this.cameraThread != null) {
                    InstantCameraView.this.cameraThread.updateScale();
                }
                float f = (1.0f / InstantCameraView.this.scaleX) / 2.0f;
                float f2 = (1.0f / InstantCameraView.this.scaleY) / 2.0f;
                float f3 = 0.5f - f;
                float f4 = 0.5f - f2;
                float f5 = f + 0.5f;
                float f6 = f2 + 0.5f;
                InstantCameraView.this.textureBuffer = ByteBuffer.allocateDirect(32).order(ByteOrder.nativeOrder()).asFloatBuffer();
                InstantCameraView.this.textureBuffer.put(new float[]{f3, f4, f5, f4, f3, f6, f5, f6}).position(0);
            }
        }

        public /* synthetic */ void lambda$handleMessage$3(SurfaceTexture surfaceTexture) {
            requestRender();
        }

        public void shutdown(int i, int i2) {
            Handler handler = getHandler();
            if (handler != null) {
                sendMessage(handler.obtainMessage(1, i, i2), 0);
            }
        }

        public void requestRender() {
            Handler handler = getHandler();
            if (handler != null) {
                sendMessage(handler.obtainMessage(0, this.cameraId), 0);
            }
        }
    }

    /* renamed from: org.telegram.ui.Components.InstantCameraView$EncoderHandler */
    /* loaded from: classes6.dex */
    public static class EncoderHandler extends Handler {
        private WeakReference<VideoRecorder> mWeakEncoder;

        public EncoderHandler(VideoRecorder videoRecorder) {
            this.mWeakEncoder = new WeakReference<>(videoRecorder);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            VideoRecorder videoRecorder = this.mWeakEncoder.get();
            if (videoRecorder == null) {
                return;
            }
            boolean z = true;
            if (i == 0) {
                try {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m104e("InstantCamera start encoder");
                    }
                    if (message.arg1 != 1) {
                        z = false;
                    }
                    videoRecorder.prepareEncoder(z);
                } catch (Exception e) {
                    FileLog.m102e(e);
                    videoRecorder.handleStopRecording(0, 0);
                    Looper.myLooper().quit();
                }
            } else if (i == 1) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m104e("InstantCamera stop encoder");
                }
                videoRecorder.handleStopRecording(message.arg1, message.arg2);
            } else if (i == 2) {
                videoRecorder.handleVideoFrameAvailable((message.arg1 << 32) | (message.arg2 & 4294967295L), (Integer) message.obj);
            } else if (i == 3) {
                videoRecorder.handleAudioFrameAvailable((AudioBufferInfo) message.obj);
            } else if (i == 4) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m104e("InstantCamera pause encoder");
                }
                videoRecorder.handlePauseRecording();
            } else if (i != 5) {
            } else {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m104e("InstantCamera resume encoder");
                }
                videoRecorder.handleResumeRecording();
            }
        }

        public void exit() {
            Looper.myLooper().quit();
        }
    }

    /* renamed from: org.telegram.ui.Components.InstantCameraView$AudioBufferInfo */
    /* loaded from: classes6.dex */
    public static class AudioBufferInfo {
        public boolean last;
        public int lastWroteBuffer;
        public int results;
        public ByteBuffer[] buffer = new ByteBuffer[10];
        public long[] offset = new long[10];
        public int[] read = new int[10];

        public AudioBufferInfo() {
            for (int i = 0; i < 10; i++) {
                this.buffer[i] = ByteBuffer.allocateDirect(2048);
                this.buffer[i].order(ByteOrder.nativeOrder());
            }
        }
    }

    /* renamed from: org.telegram.ui.Components.InstantCameraView$VideoRecorder */
    /* loaded from: classes6.dex */
    public class VideoRecorder implements Runnable {
        private int alphaHandle;
        private MediaCodec.BufferInfo audioBufferInfo;
        private MediaCodec audioEncoder;
        private long audioFirst;
        private long audioLast;
        private long audioLastDt;
        private AudioRecord audioRecorder;
        private long audioStartTime;
        private boolean audioStopedByTime;
        private int audioTrackIndex;
        private boolean blendEnabled;
        private ArrayBlockingQueue<AudioBufferInfo> buffers;
        private ArrayList<AudioBufferInfo> buffersToWrite;
        private long currentTimestamp;
        private long desyncTime;
        private int drawProgram;
        private android.opengl.EGLConfig eglConfig;
        private android.opengl.EGLContext eglContext;
        private android.opengl.EGLDisplay eglDisplay;
        private android.opengl.EGLSurface eglSurface;
        private File fileToWrite;
        DispatchQueue fileWriteQueue;
        private boolean firstEncode;
        private boolean firstVideoFrameSincePause;
        private int frameCount;
        private DispatchQueue generateKeyframeThumbsQueue;
        private volatile EncoderHandler handler;
        private ArrayList<Bitmap> keyframeThumbs;
        private Integer lastCameraId;
        private long lastCommitedFrameTime;
        private long lastTimestamp;
        private MP4Builder mediaMuxer;
        private volatile boolean pauseRecorder;
        private int positionHandle;
        private int prependHeaderSize;
        private long prevAudioLast;
        private long prevVideoLast;
        private int previewSizeHandle;
        private boolean ready;
        private Runnable recorderRunnable;
        private int resolutionHandle;
        private volatile boolean running;
        private volatile int sendWhenDone;
        private volatile int sendWhenDoneTTL;
        private boolean sentMedia;
        private android.opengl.EGLContext sharedEglContext;
        private boolean skippedFirst;
        private long skippedTime;
        private boolean started;
        private Surface surface;
        private final Object sync;
        private int textureHandle;
        private int textureMatrixHandle;
        private int vertexMatrixHandle;
        private int videoBitrate;
        private MediaCodec.BufferInfo videoBufferInfo;
        private boolean videoConvertFirstWrite;
        private long videoDiff;
        private MediaCodec videoEncoder;
        private File videoFile;
        private long videoFirst;
        private int videoHeight;
        private long videoLast;
        private long videoLastDt;
        private int videoTrackIndex;
        private int videoWidth;
        private boolean writingToDifferentFile;
        private int zeroTimeStamps;

        private VideoRecorder() {
            InstantCameraView.this = r5;
            this.videoConvertFirstWrite = true;
            this.eglDisplay = EGL14.EGL_NO_DISPLAY;
            this.eglContext = EGL14.EGL_NO_CONTEXT;
            this.eglSurface = EGL14.EGL_NO_SURFACE;
            this.buffersToWrite = new ArrayList<>();
            this.videoTrackIndex = -5;
            this.audioTrackIndex = -5;
            this.audioStartTime = -1L;
            this.currentTimestamp = 0L;
            this.lastTimestamp = -1L;
            this.sync = new Object();
            this.videoFirst = -1L;
            this.prevVideoLast = -1L;
            this.audioFirst = -1L;
            this.audioLast = -1L;
            this.audioLastDt = 0L;
            this.prevAudioLast = -1L;
            this.lastCameraId = 0;
            this.buffers = new ArrayBlockingQueue<>(10);
            this.keyframeThumbs = new ArrayList<>();
            this.recorderRunnable = new RunnableC51491();
        }

        /* renamed from: org.telegram.ui.Components.InstantCameraView$VideoRecorder$1 */
        /* loaded from: classes6.dex */
        public class RunnableC51491 implements Runnable {
            RunnableC51491() {
                VideoRecorder.this = r1;
            }

            /* JADX WARN: Code restructure failed: missing block: B:113:0x0045, code lost:
                if (org.telegram.p043ui.Components.InstantCameraView.VideoRecorder.this.sendWhenDone == 0) goto L77;
             */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() {
                /*
                    Method dump skipped, instructions count: 392
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.InstantCameraView.VideoRecorder.RunnableC51491.run():void");
            }

            public /* synthetic */ void lambda$run$0(double d) {
                NotificationCenter.getInstance(InstantCameraView.this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.recordProgressChanged, Integer.valueOf(InstantCameraView.this.recordingGuid), Double.valueOf(d));
            }
        }

        public void startRecording(File file, android.opengl.EGLContext eGLContext) {
            if (this.started) {
                this.sharedEglContext = eGLContext;
                this.handler.sendMessage(this.handler.obtainMessage(0, 1, 0));
                return;
            }
            this.started = true;
            int i = MessagesController.getInstance(InstantCameraView.this.currentAccount).roundVideoSize;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$VideoRecorder$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    InstantCameraView.VideoRecorder.this.lambda$startRecording$0();
                }
            });
            this.videoFile = file;
            this.videoWidth = i;
            this.videoHeight = i;
            this.videoBitrate = MessagesController.getInstance(InstantCameraView.this.currentAccount).roundVideoBitrate * 1024;
            this.sharedEglContext = eGLContext;
            synchronized (this.sync) {
                if (this.running) {
                    return;
                }
                this.running = true;
                Thread thread = new Thread(this, "TextureMovieEncoder");
                thread.setPriority(10);
                thread.start();
                while (!this.ready) {
                    try {
                        this.sync.wait();
                    } catch (InterruptedException unused) {
                    }
                }
                if (InstantCameraView.this.WRITE_TO_FILE_IN_BACKGROUND) {
                    DispatchQueue dispatchQueue = new DispatchQueue("IVR_FileWriteQueue");
                    this.fileWriteQueue = dispatchQueue;
                    dispatchQueue.setPriority(10);
                }
                this.keyframeThumbs.clear();
                this.frameCount = 0;
                DispatchQueue dispatchQueue2 = this.generateKeyframeThumbsQueue;
                if (dispatchQueue2 != null) {
                    dispatchQueue2.cleanupQueue();
                    this.generateKeyframeThumbsQueue.recycle();
                }
                this.generateKeyframeThumbsQueue = new DispatchQueue("keyframes_thumb_queue");
                this.handler.sendMessage(this.handler.obtainMessage(0));
            }
        }

        public /* synthetic */ void lambda$startRecording$0() {
            NotificationCenter.getInstance(InstantCameraView.this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.stopAllHeavyOperations, 512);
        }

        public void stopRecording(int i, int i2) {
            this.handler.sendMessage(this.handler.obtainMessage(1, i, i2));
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$VideoRecorder$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    InstantCameraView.VideoRecorder.this.lambda$stopRecording$1();
                }
            });
        }

        public /* synthetic */ void lambda$stopRecording$1() {
            NotificationCenter.getInstance(InstantCameraView.this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.stopAllHeavyOperations, 512);
        }

        public void pause() {
            this.handler.sendMessage(this.handler.obtainMessage(4));
        }

        public void resume() {
            this.handler.sendMessage(this.handler.obtainMessage(5));
        }

        public void frameAvailable(SurfaceTexture surfaceTexture, Integer num, long j) {
            synchronized (this.sync) {
                if (this.ready) {
                    long timestamp = surfaceTexture.getTimestamp();
                    if (timestamp == 0) {
                        int i = this.zeroTimeStamps + 1;
                        this.zeroTimeStamps = i;
                        if (i <= 1) {
                            return;
                        }
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m105d("InstantCamera fix timestamp enabled");
                        }
                    } else {
                        this.zeroTimeStamps = 0;
                        j = timestamp;
                    }
                    this.handler.sendMessage(this.handler.obtainMessage(2, (int) (j >> 32), (int) j, num));
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            Looper.prepare();
            synchronized (this.sync) {
                this.handler = new EncoderHandler(this);
                this.ready = true;
                this.sync.notify();
            }
            Looper.loop();
            synchronized (this.sync) {
                this.ready = false;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:210:0x017c, code lost:
            if (org.telegram.messenger.BuildVars.LOGS_ENABLED == false) goto L86;
         */
        /* JADX WARN: Code restructure failed: missing block: B:212:0x0180, code lost:
            if (r14 < 60000000) goto L85;
         */
        /* JADX WARN: Code restructure failed: missing block: B:213:0x0182, code lost:
            org.telegram.messenger.FileLog.m105d("InstantCamera stop audio encoding because recorded time more than 60s");
         */
        /* JADX WARN: Code restructure failed: missing block: B:214:0x0188, code lost:
            org.telegram.messenger.FileLog.m105d("InstantCamera stop audio encoding because of stoped video recording at " + r2.offset[r10] + " last video " + r18.videoLast);
         */
        /* JADX WARN: Code restructure failed: missing block: B:215:0x01aa, code lost:
            r18.audioStopedByTime = true;
            r18.buffersToWrite.clear();
            r0 = true;
         */
        /* JADX WARN: Removed duplicated region for block: B:174:0x00cd  */
        /* JADX WARN: Removed duplicated region for block: B:253:0x0100 A[EDGE_INSN: B:253:0x0100->B:181:0x0100 ?: BREAK  , SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void handleAudioFrameAvailable(org.telegram.p043ui.Components.InstantCameraView.AudioBufferInfo r19) {
            /*
                Method dump skipped, instructions count: 559
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.InstantCameraView.VideoRecorder.handleAudioFrameAvailable(org.telegram.ui.Components.InstantCameraView$AudioBufferInfo):void");
        }

        /* JADX WARN: Code restructure failed: missing block: B:125:0x0078, code lost:
            if (r11 < 0) goto L80;
         */
        /* JADX WARN: Removed duplicated region for block: B:130:0x008b  */
        /* JADX WARN: Removed duplicated region for block: B:136:0x00a7  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void handleVideoFrameAvailable(long r20, java.lang.Integer r22) {
            /*
                Method dump skipped, instructions count: 662
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.InstantCameraView.VideoRecorder.handleVideoFrameAvailable(long, java.lang.Integer):void");
        }

        public /* synthetic */ void lambda$handleVideoFrameAvailable$2() {
            InstantCameraView.this.textureOverlayView.animate().setDuration(120L).alpha(BitmapDescriptorFactory.HUE_RED).setInterpolator(new DecelerateInterpolator()).start();
        }

        public /* synthetic */ void lambda$handleVideoFrameAvailable$3() {
            InstantCameraView.this.textureOverlayView.animate().setDuration(120L).alpha(BitmapDescriptorFactory.HUE_RED).setInterpolator(new DecelerateInterpolator()).start();
        }

        private void createKeyframeThumb() {
            if (this.generateKeyframeThumbsQueue == null || Build.VERSION.SDK_INT < 21 || SharedConfig.getDevicePerformanceClass() != 2 || this.frameCount % 33 != 0) {
                return;
            }
            this.generateKeyframeThumbsQueue.postRunnable(new GenerateKeyframeThumbTask());
        }

        /* renamed from: org.telegram.ui.Components.InstantCameraView$VideoRecorder$GenerateKeyframeThumbTask */
        /* loaded from: classes6.dex */
        public class GenerateKeyframeThumbTask implements Runnable {
            private GenerateKeyframeThumbTask() {
                VideoRecorder.this = r1;
            }

            @Override // java.lang.Runnable
            public void run() {
                TextureView textureView = InstantCameraView.this.textureView;
                if (textureView != null) {
                    try {
                        final Bitmap bitmap = textureView.getBitmap(AndroidUtilities.m107dp(56), AndroidUtilities.m107dp(56));
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$VideoRecorder$GenerateKeyframeThumbTask$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                InstantCameraView.VideoRecorder.GenerateKeyframeThumbTask.this.lambda$run$0(bitmap);
                            }
                        });
                    } catch (Exception e) {
                        FileLog.m102e(e);
                    }
                }
            }

            public /* synthetic */ void lambda$run$0(Bitmap bitmap) {
                if ((bitmap == null || bitmap.getPixel(0, 0) == 0) && VideoRecorder.this.keyframeThumbs.size() > 1) {
                    VideoRecorder.this.keyframeThumbs.add((Bitmap) VideoRecorder.this.keyframeThumbs.get(VideoRecorder.this.keyframeThumbs.size() - 1));
                } else {
                    VideoRecorder.this.keyframeThumbs.add(bitmap);
                }
            }
        }

        public void handlePauseRecording() {
            this.pauseRecorder = true;
            if (InstantCameraView.this.previewFile != null) {
                InstantCameraView.this.previewFile.delete();
                InstantCameraView.this.previewFile = null;
            }
            InstantCameraView instantCameraView = InstantCameraView.this;
            instantCameraView.previewFile = StoryEntry.makeCacheFile(instantCameraView.currentAccount, true);
            try {
                FileLog.m105d("InstantCamera handlePauseRecording drain encoders");
                drainEncoder(false);
            } catch (Exception e) {
                FileLog.m102e(e);
            }
            MP4Builder mP4Builder = this.mediaMuxer;
            if (mP4Builder != null) {
                InstantCameraView instantCameraView2 = InstantCameraView.this;
                if (!instantCameraView2.WRITE_TO_FILE_IN_BACKGROUND) {
                    try {
                        mP4Builder.finishMovie(instantCameraView2.previewFile);
                    } catch (Exception e2) {
                        FileLog.m102e(e2);
                    }
                } else {
                    final CountDownLatch countDownLatch = new CountDownLatch(1);
                    this.fileWriteQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$VideoRecorder$$ExternalSyntheticLambda12
                        @Override // java.lang.Runnable
                        public final void run() {
                            InstantCameraView.VideoRecorder.this.lambda$handlePauseRecording$4(countDownLatch);
                        }
                    });
                    try {
                        countDownLatch.await();
                    } catch (InterruptedException e3) {
                        e3.printStackTrace();
                    }
                }
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$VideoRecorder$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    InstantCameraView.VideoRecorder.this.lambda$handlePauseRecording$5();
                }
            });
        }

        public /* synthetic */ void lambda$handlePauseRecording$4(CountDownLatch countDownLatch) {
            try {
                this.mediaMuxer.finishMovie(InstantCameraView.this.previewFile);
            } catch (Exception e) {
                e.printStackTrace();
            }
            countDownLatch.countDown();
        }

        public /* synthetic */ void lambda$handlePauseRecording$5() {
            InstantCameraView.this.videoEditedInfo = new VideoEditedInfo();
            InstantCameraView.this.videoEditedInfo.roundVideo = true;
            InstantCameraView.this.videoEditedInfo.startTime = -1L;
            InstantCameraView.this.videoEditedInfo.endTime = -1L;
            InstantCameraView.this.videoEditedInfo.file = InstantCameraView.this.file;
            InstantCameraView.this.videoEditedInfo.encryptedFile = InstantCameraView.this.encryptedFile;
            InstantCameraView.this.videoEditedInfo.key = InstantCameraView.this.key;
            InstantCameraView.this.videoEditedInfo.f1576iv = InstantCameraView.this.f1863iv;
            InstantCameraView.this.videoEditedInfo.estimatedSize = Math.max(1L, InstantCameraView.this.size);
            InstantCameraView.this.videoEditedInfo.framerate = 25;
            VideoEditedInfo videoEditedInfo = InstantCameraView.this.videoEditedInfo;
            InstantCameraView.this.videoEditedInfo.originalWidth = 360;
            videoEditedInfo.resultWidth = 360;
            VideoEditedInfo videoEditedInfo2 = InstantCameraView.this.videoEditedInfo;
            InstantCameraView.this.videoEditedInfo.originalHeight = 360;
            videoEditedInfo2.resultHeight = 360;
            InstantCameraView.this.videoEditedInfo.originalPath = InstantCameraView.this.previewFile.getAbsolutePath();
            setupVideoPlayer(InstantCameraView.this.previewFile);
            InstantCameraView.this.videoEditedInfo.estimatedDuration = InstantCameraView.this.recordedTime;
            NotificationCenter.getInstance(InstantCameraView.this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.audioDidSent, Integer.valueOf(InstantCameraView.this.recordingGuid), InstantCameraView.this.videoEditedInfo, InstantCameraView.this.previewFile.getAbsolutePath(), this.keyframeThumbs);
        }

        public void handleResumeRecording() {
            this.pauseRecorder = false;
        }

        private void setupVideoPlayer(File file) {
            InstantCameraView.this.videoPlayer = new VideoPlayer();
            InstantCameraView.this.videoPlayer.setDelegate(new VideoPlayer.VideoPlayerDelegate() { // from class: org.telegram.ui.Components.InstantCameraView.VideoRecorder.2
                @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
                public void onRenderedFirstFrame() {
                }

                @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
                public /* synthetic */ void onRenderedFirstFrame(AnalyticsListener.EventTime eventTime) {
                    VideoPlayer.VideoPlayerDelegate.CC.$default$onRenderedFirstFrame(this, eventTime);
                }

                @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
                public /* synthetic */ void onSeekFinished(AnalyticsListener.EventTime eventTime) {
                    VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekFinished(this, eventTime);
                }

                @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
                public /* synthetic */ void onSeekStarted(AnalyticsListener.EventTime eventTime) {
                    VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekStarted(this, eventTime);
                }

                @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
                public boolean onSurfaceDestroyed(SurfaceTexture surfaceTexture) {
                    return false;
                }

                @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
                public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
                }

                @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
                public void onVideoSizeChanged(int i, int i2, int i3, float f) {
                }

                {
                    VideoRecorder.this = this;
                }

                @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
                public void onStateChanged(boolean z, int i) {
                    if (InstantCameraView.this.videoPlayer != null && InstantCameraView.this.videoPlayer.isPlaying() && i == 4) {
                        InstantCameraView.this.videoPlayer.seekTo(InstantCameraView.this.videoEditedInfo.startTime > 0 ? InstantCameraView.this.videoEditedInfo.startTime : 0L);
                    }
                }

                @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
                public void onError(VideoPlayer videoPlayer, Exception exc) {
                    FileLog.m102e(exc);
                }
            });
            InstantCameraView.this.videoPlayer.setTextureView(InstantCameraView.this.textureView);
            InstantCameraView.this.videoPlayer.preparePlayer(Uri.fromFile(file), "other");
            InstantCameraView.this.videoPlayer.play();
            InstantCameraView.this.videoPlayer.setMute(true);
            InstantCameraView.this.startProgressTimer();
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ObjectAnimator.ofFloat(InstantCameraView.this.switchCameraButton, View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofInt(InstantCameraView.this.paint, AnimationProperties.PAINT_ALPHA, 0), ObjectAnimator.ofFloat(InstantCameraView.this.muteImageView, View.ALPHA, 1.0f));
            animatorSet.setDuration(180L);
            animatorSet.setInterpolator(new DecelerateInterpolator());
            animatorSet.start();
            EGL14.eglDestroySurface(this.eglDisplay, this.eglSurface);
            this.eglSurface = EGL14.EGL_NO_SURFACE;
            Surface surface = this.surface;
            if (surface != null) {
                surface.release();
                this.surface = null;
            }
            android.opengl.EGLDisplay eGLDisplay = this.eglDisplay;
            if (eGLDisplay != EGL14.EGL_NO_DISPLAY) {
                android.opengl.EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
                EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
                EGL14.eglDestroyContext(this.eglDisplay, this.eglContext);
                EGL14.eglReleaseThread();
                EGL14.eglTerminate(this.eglDisplay);
            }
            this.eglDisplay = EGL14.EGL_NO_DISPLAY;
            this.eglContext = EGL14.EGL_NO_CONTEXT;
            this.eglConfig = null;
        }

        public void handleStopRecording(final int i, final int i2) {
            boolean z;
            DispatchQueue dispatchQueue;
            if (i != 1 || ((InstantCameraView.this.videoEditedInfo != null && InstantCameraView.this.videoEditedInfo.needConvert()) || InstantCameraView.this.delegate.isInScheduleMode())) {
                z = true;
            } else {
                if (!this.sentMedia) {
                    this.sentMedia = true;
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$VideoRecorder$$ExternalSyntheticLambda8
                        @Override // java.lang.Runnable
                        public final void run() {
                            InstantCameraView.VideoRecorder.this.lambda$handleStopRecording$6(i2);
                        }
                    });
                }
                z = false;
            }
            if (this.running && !this.pauseRecorder) {
                FileLog.m105d("InstantCamera handleStopRecording running=false");
                this.sendWhenDone = i;
                this.sendWhenDoneTTL = i2;
                this.running = false;
                return;
            }
            try {
                FileLog.m105d("InstantCamera handleStopRecording drain encoders");
                drainEncoder(true);
            } catch (Exception e) {
                FileLog.m102e(e);
            }
            MediaCodec mediaCodec = this.videoEncoder;
            if (mediaCodec != null) {
                try {
                    mediaCodec.stop();
                    this.videoEncoder.release();
                    this.videoEncoder = null;
                } catch (Exception e2) {
                    FileLog.m102e(e2);
                }
            }
            MediaCodec mediaCodec2 = this.audioEncoder;
            if (mediaCodec2 != null) {
                try {
                    mediaCodec2.stop();
                    this.audioEncoder.release();
                    this.audioEncoder = null;
                    setBluetoothScoOn(false);
                } catch (Exception e3) {
                    FileLog.m102e(e3);
                }
            }
            if (InstantCameraView.this.previewFile != null) {
                InstantCameraView.this.previewFile.delete();
                InstantCameraView.this.previewFile = null;
            }
            MP4Builder mP4Builder = this.mediaMuxer;
            if (mP4Builder != null) {
                if (InstantCameraView.this.WRITE_TO_FILE_IN_BACKGROUND) {
                    final CountDownLatch countDownLatch = new CountDownLatch(1);
                    this.fileWriteQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$VideoRecorder$$ExternalSyntheticLambda13
                        @Override // java.lang.Runnable
                        public final void run() {
                            InstantCameraView.VideoRecorder.this.lambda$handleStopRecording$7(countDownLatch);
                        }
                    });
                    try {
                        countDownLatch.await();
                    } catch (InterruptedException e4) {
                        e4.printStackTrace();
                    }
                } else {
                    try {
                        mP4Builder.finishMovie();
                    } catch (Exception e5) {
                        FileLog.m102e(e5);
                    }
                }
                FileLog.m105d("InstantCamera handleStopRecording finish muxer");
                if (this.writingToDifferentFile) {
                    if (this.videoFile.exists()) {
                        try {
                            this.videoFile.delete();
                        } catch (Exception e6) {
                            FileLog.m104e("InstantCamera copying fileToWrite to videoFile, deleting videoFile error " + this.videoFile);
                            FileLog.m102e(e6);
                        }
                    }
                    if (!this.fileToWrite.renameTo(this.videoFile)) {
                        FileLog.m104e("InstantCamera unable to rename file, try move file");
                        try {
                            AndroidUtilities.copyFile(this.fileToWrite, this.videoFile);
                            this.fileToWrite.delete();
                        } catch (IOException e7) {
                            FileLog.m102e(e7);
                            FileLog.m104e("InstantCamera unable to move file");
                        }
                    }
                }
            }
            if (i != 2 && (dispatchQueue = this.generateKeyframeThumbsQueue) != null) {
                dispatchQueue.cleanupQueue();
                this.generateKeyframeThumbsQueue.recycle();
                this.generateKeyframeThumbsQueue = null;
            }
            FileLog.m105d("InstantCamera handleStopRecording send " + i);
            if (i == 0) {
                FileLoader.getInstance(InstantCameraView.this.currentAccount).cancelFileUpload(this.videoFile.getAbsolutePath(), false);
                try {
                    this.fileToWrite.delete();
                } catch (Throwable unused) {
                }
                try {
                    this.videoFile.delete();
                } catch (Throwable unused2) {
                }
            } else {
                if (z && (i != 1 || !this.sentMedia)) {
                    this.sentMedia = true;
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$VideoRecorder$$ExternalSyntheticLambda9
                        @Override // java.lang.Runnable
                        public final void run() {
                            InstantCameraView.VideoRecorder.this.lambda$handleStopRecording$10(i, i2);
                        }
                    });
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$VideoRecorder$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        InstantCameraView.VideoRecorder.this.lambda$handleStopRecording$11();
                    }
                });
            }
            EGL14.eglDestroySurface(this.eglDisplay, this.eglSurface);
            this.eglSurface = EGL14.EGL_NO_SURFACE;
            Surface surface = this.surface;
            if (surface != null) {
                surface.release();
                this.surface = null;
            }
            android.opengl.EGLDisplay eGLDisplay = this.eglDisplay;
            if (eGLDisplay != EGL14.EGL_NO_DISPLAY) {
                android.opengl.EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
                EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
                EGL14.eglDestroyContext(this.eglDisplay, this.eglContext);
                EGL14.eglReleaseThread();
                EGL14.eglTerminate(this.eglDisplay);
            }
            this.eglDisplay = EGL14.EGL_NO_DISPLAY;
            this.eglContext = EGL14.EGL_NO_CONTEXT;
            this.eglConfig = null;
            this.handler.exit();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$VideoRecorder$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    InstantCameraView.VideoRecorder.this.lambda$handleStopRecording$12();
                }
            });
        }

        public /* synthetic */ void lambda$handleStopRecording$6(int i) {
            InstantCameraView.this.videoEditedInfo = new VideoEditedInfo();
            InstantCameraView.this.videoEditedInfo.startTime = -1L;
            InstantCameraView.this.videoEditedInfo.endTime = -1L;
            InstantCameraView.this.videoEditedInfo.estimatedSize = Math.max(1L, InstantCameraView.this.size);
            InstantCameraView.this.videoEditedInfo.roundVideo = true;
            InstantCameraView.this.videoEditedInfo.file = InstantCameraView.this.file;
            InstantCameraView.this.videoEditedInfo.encryptedFile = InstantCameraView.this.encryptedFile;
            InstantCameraView.this.videoEditedInfo.key = InstantCameraView.this.key;
            InstantCameraView.this.videoEditedInfo.f1576iv = InstantCameraView.this.f1863iv;
            InstantCameraView.this.videoEditedInfo.framerate = 25;
            VideoEditedInfo videoEditedInfo = InstantCameraView.this.videoEditedInfo;
            InstantCameraView.this.videoEditedInfo.originalWidth = 360;
            videoEditedInfo.resultWidth = 360;
            VideoEditedInfo videoEditedInfo2 = InstantCameraView.this.videoEditedInfo;
            InstantCameraView.this.videoEditedInfo.originalHeight = 360;
            videoEditedInfo2.resultHeight = 360;
            InstantCameraView.this.videoEditedInfo.originalPath = this.videoFile.getAbsolutePath();
            InstantCameraView.this.videoEditedInfo.notReadyYet = true;
            InstantCameraView.this.videoEditedInfo.thumb = InstantCameraView.this.firstFrameThumb;
            InstantCameraView.this.videoEditedInfo.estimatedDuration = InstantCameraView.this.recordedTime;
            InstantCameraView.this.firstFrameThumb = null;
            MediaController.PhotoEntry photoEntry = new MediaController.PhotoEntry(0, 0, 0L, this.videoFile.getAbsolutePath(), 0, true, 0, 0, 0L);
            photoEntry.ttl = i;
            InstantCameraView.this.delegate.sendMedia(photoEntry, InstantCameraView.this.videoEditedInfo, true, 0, false, null);
        }

        public /* synthetic */ void lambda$handleStopRecording$7(CountDownLatch countDownLatch) {
            try {
                this.mediaMuxer.finishMovie();
            } catch (Exception e) {
                e.printStackTrace();
            }
            countDownLatch.countDown();
        }

        public /* synthetic */ void lambda$handleStopRecording$10(int i, final int i2) {
            if (InstantCameraView.this.videoEditedInfo == null) {
                InstantCameraView.this.videoEditedInfo = new VideoEditedInfo();
                InstantCameraView.this.videoEditedInfo.startTime = -1L;
                InstantCameraView.this.videoEditedInfo.endTime = -1L;
            }
            if (InstantCameraView.this.videoEditedInfo.needConvert()) {
                InstantCameraView.this.file = null;
                InstantCameraView.this.encryptedFile = null;
                InstantCameraView.this.key = null;
                InstantCameraView.this.f1863iv = null;
                double d = InstantCameraView.this.videoEditedInfo.estimatedDuration;
                InstantCameraView.this.videoEditedInfo.estimatedDuration = (InstantCameraView.this.videoEditedInfo.endTime >= 0 ? InstantCameraView.this.videoEditedInfo.endTime : InstantCameraView.this.videoEditedInfo.estimatedDuration) - (InstantCameraView.this.videoEditedInfo.startTime >= 0 ? InstantCameraView.this.videoEditedInfo.startTime : 0L);
                InstantCameraView.this.videoEditedInfo.estimatedSize = Math.max(1L, (long) (InstantCameraView.this.size * (InstantCameraView.this.videoEditedInfo.estimatedDuration / d)));
                InstantCameraView.this.videoEditedInfo.bitrate = 1000000;
                if (InstantCameraView.this.videoEditedInfo.startTime > 0) {
                    InstantCameraView.this.videoEditedInfo.startTime *= 1000;
                }
                if (InstantCameraView.this.videoEditedInfo.endTime > 0) {
                    InstantCameraView.this.videoEditedInfo.endTime *= 1000;
                }
                FileLoader.getInstance(InstantCameraView.this.currentAccount).cancelFileUpload(InstantCameraView.this.cameraFile.getAbsolutePath(), false);
            } else {
                InstantCameraView.this.videoEditedInfo.estimatedSize = Math.max(1L, InstantCameraView.this.size);
            }
            InstantCameraView.this.videoEditedInfo.roundVideo = true;
            InstantCameraView.this.videoEditedInfo.file = InstantCameraView.this.file;
            InstantCameraView.this.videoEditedInfo.encryptedFile = InstantCameraView.this.encryptedFile;
            InstantCameraView.this.videoEditedInfo.key = InstantCameraView.this.key;
            InstantCameraView.this.videoEditedInfo.f1576iv = InstantCameraView.this.f1863iv;
            InstantCameraView.this.videoEditedInfo.framerate = 25;
            VideoEditedInfo videoEditedInfo = InstantCameraView.this.videoEditedInfo;
            InstantCameraView.this.videoEditedInfo.originalWidth = 360;
            videoEditedInfo.resultWidth = 360;
            VideoEditedInfo videoEditedInfo2 = InstantCameraView.this.videoEditedInfo;
            InstantCameraView.this.videoEditedInfo.originalHeight = 360;
            videoEditedInfo2.resultHeight = 360;
            InstantCameraView.this.videoEditedInfo.originalPath = this.videoFile.getAbsolutePath();
            if (i == 1) {
                if (InstantCameraView.this.delegate.isInScheduleMode() || InstantCameraView.this.delegate.isTemplatesChannel(true, true)) {
                    AlertsCreator.createScheduleDatePickerDialog(InstantCameraView.this.delegate.getParentActivity(), InstantCameraView.this.delegate.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.Components.InstantCameraView$VideoRecorder$$ExternalSyntheticLambda15
                        @Override // org.telegram.p043ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                        public final void didSelectDate(boolean z, int i3, String str) {
                            InstantCameraView.VideoRecorder.this.lambda$handleStopRecording$8(i2, z, i3, str);
                        }

                        @Override // org.telegram.p043ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                        public /* synthetic */ ArrayList getSelectedDialogs() {
                            return AlertsCreator.ScheduleDatePickerDelegate.CC.$default$getSelectedDialogs(this);
                        }
                    }, new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$VideoRecorder$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            InstantCameraView.VideoRecorder.this.lambda$handleStopRecording$9();
                        }
                    }, InstantCameraView.this.resourcesProvider, InstantCameraView.this.delegate.getChatActivity());
                    return;
                }
                MediaController.PhotoEntry photoEntry = new MediaController.PhotoEntry(0, 0, 0L, this.videoFile.getAbsolutePath(), 0, true, 0, 0, 0L);
                photoEntry.ttl = i2;
                InstantCameraView.this.delegate.sendMedia(photoEntry, InstantCameraView.this.videoEditedInfo, true, 0, false, null);
                return;
            }
            setupVideoPlayer(this.videoFile);
            InstantCameraView.this.videoEditedInfo.estimatedDuration = InstantCameraView.this.recordedTime;
            NotificationCenter.getInstance(InstantCameraView.this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.audioDidSent, Integer.valueOf(InstantCameraView.this.recordingGuid), InstantCameraView.this.videoEditedInfo, this.videoFile.getAbsolutePath(), this.keyframeThumbs);
        }

        public /* synthetic */ void lambda$handleStopRecording$8(int i, boolean z, int i2, String str) {
            MediaController.PhotoEntry photoEntry = new MediaController.PhotoEntry(0, 0, 0L, this.videoFile.getAbsolutePath(), 0, true, 0, 0, 0L);
            photoEntry.ttl = i;
            InstantCameraView.this.delegate.sendMedia(photoEntry, InstantCameraView.this.videoEditedInfo, z, i2, false, str);
            InstantCameraView.this.startAnimation(false, false);
        }

        public /* synthetic */ void lambda$handleStopRecording$9() {
            InstantCameraView.this.startAnimation(false, false);
        }

        public /* synthetic */ void lambda$handleStopRecording$11() {
            if (this.sentMedia && InstantCameraView.this.videoEditedInfo != null) {
                InstantCameraView.this.videoEditedInfo.notReadyYet = false;
            }
            didWriteData(this.videoFile, 0L, true);
            MediaController.getInstance().requestAudioFocus(false);
        }

        public /* synthetic */ void lambda$handleStopRecording$12() {
            InstantCameraView.this.videoEncoder = null;
        }

        private void setBluetoothScoOn(boolean z) {
            AudioManager audioManager = (AudioManager) ApplicationLoader.applicationContext.getSystemService("audio");
            if (!(audioManager.isBluetoothScoAvailableOffCall() && SharedConfig.recordViaSco) && z) {
                return;
            }
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            if (defaultAdapter != null) {
                try {
                    if (defaultAdapter.getProfileConnectionState(1) != 2) {
                    }
                    if (!z && !audioManager.isBluetoothScoOn()) {
                        audioManager.startBluetoothSco();
                        return;
                    } else if (z && audioManager.isBluetoothScoOn()) {
                        audioManager.stopBluetoothSco();
                        return;
                    }
                } catch (SecurityException unused) {
                    return;
                } catch (Throwable th) {
                    FileLog.m102e(th);
                    return;
                }
            }
            if (z) {
                return;
            }
            if (!z) {
            }
            if (z) {
            }
        }

        public void prepareEncoder(final boolean z) {
            long j;
            setBluetoothScoOn(true);
            try {
                int minBufferSize = AudioRecord.getMinBufferSize(OpusUtil.SAMPLE_RATE, 16, 2);
                if (minBufferSize <= 0) {
                    minBufferSize = 3584;
                }
                int i = 49152 < minBufferSize ? ((minBufferSize / 2048) + 1) * 2048 * 2 : 49152;
                this.buffers.clear();
                for (int i2 = 0; i2 < 3; i2++) {
                    this.buffers.add(new AudioBufferInfo());
                }
                if (z) {
                    this.prevVideoLast = this.videoLast + this.videoLastDt;
                    this.prevAudioLast = this.audioLast + this.audioLastDt;
                    this.firstVideoFrameSincePause = true;
                    j = 0;
                } else {
                    this.prevVideoLast = -1L;
                    this.prevAudioLast = -1L;
                    j = 0;
                    this.currentTimestamp = 0L;
                }
                this.lastTimestamp = -1L;
                this.lastCommitedFrameTime = j;
                this.audioStartTime = -1L;
                this.audioFirst = -1L;
                this.videoFirst = -1L;
                this.videoLast = -1L;
                this.videoDiff = -1L;
                this.audioLast = -1L;
                this.skippedFirst = false;
                AudioRecord audioRecord = new AudioRecord(0, OpusUtil.SAMPLE_RATE, 16, 2, i);
                this.audioRecorder = audioRecord;
                audioRecord.startRecording();
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m105d("InstantCamera initied audio record with channels " + this.audioRecorder.getChannelCount() + " sample rate = " + this.audioRecorder.getSampleRate() + " bufferSize = " + i);
                }
                this.pauseRecorder = false;
                Thread thread = new Thread(this.recorderRunnable);
                thread.setPriority(10);
                thread.start();
                this.audioBufferInfo = new MediaCodec.BufferInfo();
                this.videoBufferInfo = new MediaCodec.BufferInfo();
                MediaFormat mediaFormat = new MediaFormat();
                mediaFormat.setString("mime", "audio/mp4a-latm");
                mediaFormat.setInteger("sample-rate", OpusUtil.SAMPLE_RATE);
                mediaFormat.setInteger("channel-count", 1);
                mediaFormat.setInteger("bitrate", MessagesController.getInstance(InstantCameraView.this.currentAccount).roundAudioBitrate * 1024);
                mediaFormat.setInteger("max-input-size", CacheDataSink.DEFAULT_BUFFER_SIZE);
                MediaCodec createEncoderByType = MediaCodec.createEncoderByType("audio/mp4a-latm");
                this.audioEncoder = createEncoderByType;
                createEncoderByType.configure(mediaFormat, (Surface) null, (MediaCrypto) null, 1);
                this.audioEncoder.start();
                this.videoEncoder = MediaCodec.createEncoderByType("video/avc");
                this.firstEncode = true;
                MediaFormat createVideoFormat = MediaFormat.createVideoFormat("video/avc", this.videoWidth, this.videoHeight);
                createVideoFormat.setInteger("color-format", 2130708361);
                createVideoFormat.setInteger("bitrate", this.videoBitrate);
                createVideoFormat.setInteger("frame-rate", 30);
                createVideoFormat.setInteger("i-frame-interval", 1);
                this.videoEncoder.configure(createVideoFormat, (Surface) null, (MediaCrypto) null, 1);
                this.surface = this.videoEncoder.createInputSurface();
                this.videoEncoder.start();
                if (!z) {
                    boolean isSdCardPath = ImageLoader.isSdCardPath(this.videoFile);
                    this.fileToWrite = this.videoFile;
                    if (isSdCardPath) {
                        File file = new File(ApplicationLoader.getFilesDirFixed(), "camera_tmp.mp4");
                        this.fileToWrite = file;
                        if (file.exists()) {
                            this.fileToWrite.delete();
                        }
                        this.writingToDifferentFile = true;
                    }
                    Mp4Movie mp4Movie = new Mp4Movie();
                    mp4Movie.setCacheFile(this.fileToWrite);
                    mp4Movie.setRotation(0);
                    mp4Movie.setSize(this.videoWidth, this.videoHeight);
                    MP4Builder createMovie = new MP4Builder().createMovie(mp4Movie, InstantCameraView.this.isSecretChat, false);
                    this.mediaMuxer = createMovie;
                    createMovie.setAllowSyncFiles(InstantCameraView.this.allowSendingWhileRecording = SharedConfig.deviceIsHigh());
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$VideoRecorder$$ExternalSyntheticLambda14
                    @Override // java.lang.Runnable
                    public final void run() {
                        InstantCameraView.VideoRecorder.this.lambda$prepareEncoder$13(z);
                    }
                });
                if (this.eglDisplay != EGL14.EGL_NO_DISPLAY) {
                    throw new RuntimeException("EGL already set up");
                }
                android.opengl.EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
                this.eglDisplay = eglGetDisplay;
                if (eglGetDisplay == EGL14.EGL_NO_DISPLAY) {
                    throw new RuntimeException("unable to get EGL14 display");
                }
                int[] iArr = new int[2];
                if (!EGL14.eglInitialize(eglGetDisplay, iArr, 0, iArr, 1)) {
                    this.eglDisplay = null;
                    throw new RuntimeException("unable to initialize EGL14");
                }
                if (this.eglContext == EGL14.EGL_NO_CONTEXT) {
                    android.opengl.EGLConfig[] eGLConfigArr = new android.opengl.EGLConfig[1];
                    if (!EGL14.eglChooseConfig(this.eglDisplay, new int[]{12324, 8, 12323, 8, 12322, 8, 12321, 8, 12352, 4, EglBase.EGL_RECORDABLE_ANDROID, 1, 12344}, 0, eGLConfigArr, 0, 1, new int[1], 0)) {
                        throw new RuntimeException("Unable to find a suitable EGLConfig");
                    }
                    this.eglContext = EGL14.eglCreateContext(this.eglDisplay, eGLConfigArr[0], this.sharedEglContext, new int[]{12440, 2, 12344}, 0);
                    this.eglConfig = eGLConfigArr[0];
                }
                EGL14.eglQueryContext(this.eglDisplay, this.eglContext, 12440, new int[1], 0);
                if (this.eglSurface != EGL14.EGL_NO_SURFACE) {
                    throw new IllegalStateException("surface already created");
                }
                android.opengl.EGLSurface eglCreateWindowSurface = EGL14.eglCreateWindowSurface(this.eglDisplay, this.eglConfig, this.surface, new int[]{12344}, 0);
                this.eglSurface = eglCreateWindowSurface;
                if (eglCreateWindowSurface == null) {
                    throw new RuntimeException("surface was null");
                }
                if (!EGL14.eglMakeCurrent(this.eglDisplay, eglCreateWindowSurface, eglCreateWindowSurface, this.eglContext)) {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m104e("eglMakeCurrent failed " + GLUtils.getEGLErrorString(EGL14.eglGetError()));
                    }
                    throw new RuntimeException("eglMakeCurrent failed");
                }
                GLES20.glBlendFunc(770, 771);
                int loadShader = InstantCameraView.this.loadShader(35633, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n   gl_Position = uMVPMatrix * aPosition;\n   vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n");
                InstantCameraView instantCameraView = InstantCameraView.this;
                int loadShader2 = instantCameraView.loadShader(35632, instantCameraView.createFragmentShader(instantCameraView.previewSize));
                if (loadShader == 0 || loadShader2 == 0) {
                    return;
                }
                int glCreateProgram = GLES20.glCreateProgram();
                this.drawProgram = glCreateProgram;
                GLES20.glAttachShader(glCreateProgram, loadShader);
                GLES20.glAttachShader(this.drawProgram, loadShader2);
                GLES20.glLinkProgram(this.drawProgram);
                int[] iArr2 = new int[1];
                GLES20.glGetProgramiv(this.drawProgram, 35714, iArr2, 0);
                if (iArr2[0] == 0) {
                    GLES20.glDeleteProgram(this.drawProgram);
                    this.drawProgram = 0;
                    return;
                }
                this.positionHandle = GLES20.glGetAttribLocation(this.drawProgram, "aPosition");
                this.textureHandle = GLES20.glGetAttribLocation(this.drawProgram, "aTextureCoord");
                this.previewSizeHandle = GLES20.glGetUniformLocation(this.drawProgram, "preview");
                this.resolutionHandle = GLES20.glGetUniformLocation(this.drawProgram, "resolution");
                this.alphaHandle = GLES20.glGetUniformLocation(this.drawProgram, "alpha");
                this.vertexMatrixHandle = GLES20.glGetUniformLocation(this.drawProgram, "uMVPMatrix");
                this.textureMatrixHandle = GLES20.glGetUniformLocation(this.drawProgram, "uSTMatrix");
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        public /* synthetic */ void lambda$prepareEncoder$13(boolean z) {
            if (InstantCameraView.this.cancelled) {
                return;
            }
            try {
                InstantCameraView.this.performHapticFeedback(3, 2);
            } catch (Exception unused) {
            }
            AndroidUtilities.lockOrientation(InstantCameraView.this.delegate.getParentActivity());
            InstantCameraView instantCameraView = InstantCameraView.this;
            instantCameraView.recordPlusTime = z ? instantCameraView.recordedTime : 0L;
            InstantCameraView.this.recordStartTime = System.currentTimeMillis();
            InstantCameraView.this.recording = true;
            InstantCameraView.this.invalidate();
            NotificationCenter.getInstance(InstantCameraView.this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.recordStarted, Integer.valueOf(InstantCameraView.this.recordingGuid), Boolean.FALSE);
        }

        private void didWriteData(File file, long j, boolean z) {
            if (this.videoConvertFirstWrite) {
                FileLoader.getInstance(InstantCameraView.this.currentAccount).uploadFile(file.toString(), InstantCameraView.this.isSecretChat, false, 1L, ConnectionsManager.FileTypeVideo, false);
                this.videoConvertFirstWrite = false;
                if (z) {
                    FileLoader.getInstance(InstantCameraView.this.currentAccount).checkUploadNewDataAvailable(file.toString(), InstantCameraView.this.isSecretChat, j, z ? file.length() : 0L);
                    return;
                }
                return;
            }
            FileLoader.getInstance(InstantCameraView.this.currentAccount).checkUploadNewDataAvailable(file.toString(), InstantCameraView.this.isSecretChat, j, z ? file.length() : 0L);
        }

        public void drainEncoder(boolean z) throws Exception {
            ByteBuffer outputBuffer;
            ByteBuffer byteBuffer;
            ByteBuffer byteBuffer2;
            ByteBuffer outputBuffer2;
            if (z) {
                this.videoEncoder.signalEndOfInputStream();
            }
            int i = 21;
            ByteBuffer[] outputBuffers = Build.VERSION.SDK_INT < 21 ? this.videoEncoder.getOutputBuffers() : null;
            while (true) {
                int dequeueOutputBuffer = this.videoEncoder.dequeueOutputBuffer(this.videoBufferInfo, 10000L);
                if (dequeueOutputBuffer != -1) {
                    if (dequeueOutputBuffer != -3) {
                        if (dequeueOutputBuffer != -2) {
                            if (dequeueOutputBuffer >= 0) {
                                if (Build.VERSION.SDK_INT < i) {
                                    outputBuffer = outputBuffers[dequeueOutputBuffer];
                                } else {
                                    outputBuffer = this.videoEncoder.getOutputBuffer(dequeueOutputBuffer);
                                }
                                if (outputBuffer == null) {
                                    throw new RuntimeException("encoderOutputBuffer " + dequeueOutputBuffer + " was null");
                                }
                                MediaCodec.BufferInfo bufferInfo = this.videoBufferInfo;
                                int i2 = bufferInfo.size;
                                if (i2 > 1) {
                                    int i3 = bufferInfo.flags;
                                    if ((i3 & 2) == 0) {
                                        int i4 = this.prependHeaderSize;
                                        if (i4 != 0 && (i3 & 1) != 0) {
                                            bufferInfo.offset += i4;
                                            bufferInfo.size = i2 - i4;
                                        }
                                        if (this.firstEncode && (i3 & 1) != 0) {
                                            if (bufferInfo.size > 100) {
                                                outputBuffer.position(bufferInfo.offset);
                                                byte[] bArr = new byte[100];
                                                outputBuffer.get(bArr);
                                                int i5 = 0;
                                                int i6 = 0;
                                                while (true) {
                                                    if (i5 >= 96) {
                                                        break;
                                                    }
                                                    if (bArr[i5] == 0 && bArr[i5 + 1] == 0 && bArr[i5 + 2] == 0 && bArr[i5 + 3] == 1 && (i6 = i6 + 1) > 1) {
                                                        MediaCodec.BufferInfo bufferInfo2 = this.videoBufferInfo;
                                                        bufferInfo2.offset += i5;
                                                        bufferInfo2.size -= i5;
                                                        break;
                                                    }
                                                    i5++;
                                                }
                                            }
                                            this.firstEncode = false;
                                        }
                                        if (InstantCameraView.this.WRITE_TO_FILE_IN_BACKGROUND) {
                                            final MediaCodec.BufferInfo bufferInfo3 = new MediaCodec.BufferInfo();
                                            MediaCodec.BufferInfo bufferInfo4 = this.videoBufferInfo;
                                            bufferInfo3.size = bufferInfo4.size;
                                            bufferInfo3.offset = bufferInfo4.offset;
                                            bufferInfo3.flags = bufferInfo4.flags;
                                            bufferInfo3.presentationTimeUs = bufferInfo4.presentationTimeUs;
                                            final ByteBuffer cloneByteBuffer = AndroidUtilities.cloneByteBuffer(outputBuffer);
                                            this.fileWriteQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$VideoRecorder$$ExternalSyntheticLambda10
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    InstantCameraView.VideoRecorder.this.lambda$drainEncoder$14(cloneByteBuffer, bufferInfo3);
                                                }
                                            });
                                        } else {
                                            long writeSampleData = this.mediaMuxer.writeSampleData(this.videoTrackIndex, outputBuffer, this.videoBufferInfo, true);
                                            if (writeSampleData != 0 && !this.writingToDifferentFile && InstantCameraView.this.allowSendingWhileRecording) {
                                                didWriteData(this.videoFile, writeSampleData, false);
                                            }
                                        }
                                    } else if (this.videoTrackIndex == -5) {
                                        byte[] bArr2 = new byte[i2];
                                        outputBuffer.limit(bufferInfo.offset + i2);
                                        outputBuffer.position(this.videoBufferInfo.offset);
                                        outputBuffer.get(bArr2);
                                        for (int i7 = this.videoBufferInfo.size - 1; i7 >= 0 && i7 > 3; i7--) {
                                            if (bArr2[i7] == 1 && bArr2[i7 - 1] == 0 && bArr2[i7 - 2] == 0) {
                                                int i8 = i7 - 3;
                                                if (bArr2[i8] == 0) {
                                                    byteBuffer = ByteBuffer.allocate(i8);
                                                    byteBuffer2 = ByteBuffer.allocate(this.videoBufferInfo.size - i8);
                                                    byteBuffer.put(bArr2, 0, i8).position(0);
                                                    byteBuffer2.put(bArr2, i8, this.videoBufferInfo.size - i8).position(0);
                                                    break;
                                                }
                                            }
                                        }
                                        byteBuffer = null;
                                        byteBuffer2 = null;
                                        MediaFormat createVideoFormat = MediaFormat.createVideoFormat("video/avc", this.videoWidth, this.videoHeight);
                                        if (byteBuffer != null && byteBuffer2 != null) {
                                            createVideoFormat.setByteBuffer("csd-0", byteBuffer);
                                            createVideoFormat.setByteBuffer("csd-1", byteBuffer2);
                                        }
                                        this.videoTrackIndex = this.mediaMuxer.addTrack(createVideoFormat, false);
                                    }
                                }
                                this.videoEncoder.releaseOutputBuffer(dequeueOutputBuffer, false);
                                if ((this.videoBufferInfo.flags & 4) != 0) {
                                    break;
                                }
                            } else {
                                continue;
                            }
                        } else {
                            MediaFormat outputFormat = this.videoEncoder.getOutputFormat();
                            if (this.videoTrackIndex == -5) {
                                this.videoTrackIndex = this.mediaMuxer.addTrack(outputFormat, false);
                                if (outputFormat.containsKey("prepend-sps-pps-to-idr-frames") && outputFormat.getInteger("prepend-sps-pps-to-idr-frames") == 1) {
                                    this.prependHeaderSize = outputFormat.getByteBuffer("csd-0").limit() + outputFormat.getByteBuffer("csd-1").limit();
                                }
                            }
                        }
                    } else if (Build.VERSION.SDK_INT < i) {
                        outputBuffers = this.videoEncoder.getOutputBuffers();
                    }
                    i = 21;
                } else if (!z || this.pauseRecorder) {
                    break;
                } else {
                    i = 21;
                }
            }
            if (Build.VERSION.SDK_INT < 21) {
                outputBuffers = this.audioEncoder.getOutputBuffers();
            }
            while (true) {
                int dequeueOutputBuffer2 = this.audioEncoder.dequeueOutputBuffer(this.audioBufferInfo, 0L);
                if (dequeueOutputBuffer2 == -1) {
                    if (!z) {
                        return;
                    }
                    if ((!this.running && this.sendWhenDone == 0) || this.pauseRecorder) {
                        return;
                    }
                } else if (dequeueOutputBuffer2 == -3) {
                    if (Build.VERSION.SDK_INT < 21) {
                        outputBuffers = this.audioEncoder.getOutputBuffers();
                    }
                } else if (dequeueOutputBuffer2 == -2) {
                    MediaFormat outputFormat2 = this.audioEncoder.getOutputFormat();
                    if (this.audioTrackIndex == -5) {
                        this.audioTrackIndex = this.mediaMuxer.addTrack(outputFormat2, true);
                    }
                } else if (dequeueOutputBuffer2 < 0) {
                    continue;
                } else {
                    if (Build.VERSION.SDK_INT < 21) {
                        outputBuffer2 = outputBuffers[dequeueOutputBuffer2];
                    } else {
                        outputBuffer2 = this.audioEncoder.getOutputBuffer(dequeueOutputBuffer2);
                    }
                    if (outputBuffer2 == null) {
                        throw new RuntimeException("encoderOutputBuffer " + dequeueOutputBuffer2 + " was null");
                    }
                    MediaCodec.BufferInfo bufferInfo5 = this.audioBufferInfo;
                    if ((bufferInfo5.flags & 2) != 0) {
                        bufferInfo5.size = 0;
                    }
                    if (bufferInfo5.size != 0) {
                        if (InstantCameraView.this.WRITE_TO_FILE_IN_BACKGROUND) {
                            final MediaCodec.BufferInfo bufferInfo6 = new MediaCodec.BufferInfo();
                            MediaCodec.BufferInfo bufferInfo7 = this.audioBufferInfo;
                            bufferInfo6.size = bufferInfo7.size;
                            bufferInfo6.offset = bufferInfo7.offset;
                            bufferInfo6.flags = bufferInfo7.flags;
                            bufferInfo6.presentationTimeUs = bufferInfo7.presentationTimeUs;
                            final ByteBuffer cloneByteBuffer2 = AndroidUtilities.cloneByteBuffer(outputBuffer2);
                            this.fileWriteQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$VideoRecorder$$ExternalSyntheticLambda11
                                @Override // java.lang.Runnable
                                public final void run() {
                                    InstantCameraView.VideoRecorder.this.lambda$drainEncoder$15(cloneByteBuffer2, bufferInfo6);
                                }
                            });
                            MediaCodec mediaCodec = this.audioEncoder;
                            if (mediaCodec != null) {
                                mediaCodec.releaseOutputBuffer(dequeueOutputBuffer2, false);
                            }
                        } else {
                            long writeSampleData2 = this.mediaMuxer.writeSampleData(this.audioTrackIndex, outputBuffer2, bufferInfo5, false);
                            if (writeSampleData2 != 0 && !this.writingToDifferentFile && InstantCameraView.this.allowSendingWhileRecording) {
                                didWriteData(this.videoFile, writeSampleData2, false);
                            }
                            MediaCodec mediaCodec2 = this.audioEncoder;
                            if (mediaCodec2 != null) {
                                mediaCodec2.releaseOutputBuffer(dequeueOutputBuffer2, false);
                            }
                        }
                    } else {
                        MediaCodec mediaCodec3 = this.audioEncoder;
                        if (mediaCodec3 != null) {
                            mediaCodec3.releaseOutputBuffer(dequeueOutputBuffer2, false);
                        }
                    }
                    if ((this.audioBufferInfo.flags & 4) != 0) {
                        return;
                    }
                }
            }
        }

        public /* synthetic */ void lambda$drainEncoder$14(ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
            long j;
            try {
                j = this.mediaMuxer.writeSampleData(this.videoTrackIndex, byteBuffer, bufferInfo, true);
            } catch (Exception e) {
                e.printStackTrace();
                j = 0;
            }
            if (j == 0 || this.writingToDifferentFile || !InstantCameraView.this.allowSendingWhileRecording) {
                return;
            }
            didWriteData(this.videoFile, j, false);
        }

        public /* synthetic */ void lambda$drainEncoder$15(ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
            long j;
            try {
                j = this.mediaMuxer.writeSampleData(this.audioTrackIndex, byteBuffer, bufferInfo, false);
            } catch (Exception e) {
                e.printStackTrace();
                j = 0;
            }
            if (j == 0 || this.writingToDifferentFile || !InstantCameraView.this.allowSendingWhileRecording) {
                return;
            }
            didWriteData(this.videoFile, j, false);
        }

        protected void finalize() throws Throwable {
            DispatchQueue dispatchQueue = this.fileWriteQueue;
            if (dispatchQueue != null) {
                dispatchQueue.recycle();
                this.fileWriteQueue = null;
            }
            try {
                android.opengl.EGLDisplay eGLDisplay = this.eglDisplay;
                if (eGLDisplay != EGL14.EGL_NO_DISPLAY) {
                    android.opengl.EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
                    EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
                    EGL14.eglDestroyContext(this.eglDisplay, this.eglContext);
                    EGL14.eglReleaseThread();
                    EGL14.eglTerminate(this.eglDisplay);
                    this.eglDisplay = EGL14.EGL_NO_DISPLAY;
                    this.eglContext = EGL14.EGL_NO_CONTEXT;
                    this.eglConfig = null;
                }
            } finally {
                super.finalize();
            }
        }
    }

    public String createFragmentShader(Size size) {
        return (SharedConfig.deviceIsLow() || !allowBigSizeCamera() || ((float) Math.max(size.getHeight(), size.getWidth())) * 0.7f < ((float) MessagesController.getInstance(this.currentAccount).roundVideoSize)) ? "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform float alpha;\nuniform vec2 preview;\nuniform vec2 resolution;\nuniform samplerExternalOES sTexture;\nvoid main() {\n   vec4 textColor = texture2D(sTexture, vTextureCoord);\n   vec2 coord = resolution * 0.5;\n   float radius = 0.51 * resolution.x;\n   float d = length(coord - gl_FragCoord.xy) - radius;\n   float t = clamp(d, 0.0, 1.0);\n   vec3 color = mix(textColor.rgb, vec3(1, 1, 1), t);\n   gl_FragColor = vec4(color * alpha, alpha);\n}\n" : "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform vec2 resolution;\nuniform vec2 preview;\nuniform float alpha;\nuniform samplerExternalOES sTexture;\nvoid main() {\n   vec2 coord = resolution * 0.5;\n   float radius = 0.51 * resolution.x;\n   float d = length(coord - gl_FragCoord.xy) - radius;\n   float t = clamp(d, 0.0, 1.0);\n   if (t == 0.0) {\n       vec2 c_textureSize = preview;\n       vec2 c_onePixel = (1.0 / c_textureSize);\n       vec2 uv = vTextureCoord;\n       vec2 pixel = uv * c_textureSize + 0.5;\n       vec2 frac = fract(pixel);\n       pixel = (floor(pixel) / c_textureSize) - vec2(c_onePixel);\n       vec4 tl = texture2D(sTexture, pixel + vec2(0.0         , 0.0));\n       vec4 tr = texture2D(sTexture, pixel + vec2(c_onePixel.x, 0.0));\n       vec4 bl = texture2D(sTexture, pixel + vec2(0.0         , c_onePixel.y));\n       vec4 br = texture2D(sTexture, pixel + vec2(c_onePixel.x, c_onePixel.y));\n       vec4 x1 = mix(tl, tr, frac.x);\n       vec4 x2 = mix(bl, br, frac.x);\n       gl_FragColor = mix(x1, x2, frac.y) * alpha;   } else {\n       gl_FragColor = vec4(1, 1, 1, alpha);\n   }\n}\n";
    }

    /* renamed from: org.telegram.ui.Components.InstantCameraView$InstantViewCameraContainer */
    /* loaded from: classes6.dex */
    public class InstantViewCameraContainer extends FrameLayout {
        float imageProgress;
        ImageReceiver imageReceiver;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InstantViewCameraContainer(Context context) {
            super(context);
            InstantCameraView.this = r1;
            r1.setWillNotDraw(false);
        }

        public void setImageReceiver(ImageReceiver imageReceiver) {
            if (this.imageReceiver == null) {
                this.imageProgress = BitmapDescriptorFactory.HUE_RED;
            }
            this.imageReceiver = imageReceiver;
            invalidate();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            super.dispatchDraw(canvas);
            float f = this.imageProgress;
            if (f != 1.0f) {
                float f2 = f + 0.064f;
                this.imageProgress = f2;
                if (f2 > 1.0f) {
                    this.imageProgress = 1.0f;
                }
                invalidate();
            }
            if (this.imageReceiver != null) {
                canvas.save();
                if (this.imageReceiver.getImageWidth() != InstantCameraView.this.textureViewSize) {
                    float imageWidth = InstantCameraView.this.textureViewSize / this.imageReceiver.getImageWidth();
                    canvas.scale(imageWidth, imageWidth);
                }
                canvas.translate(-this.imageReceiver.getImageX(), -this.imageReceiver.getImageY());
                float alpha = this.imageReceiver.getAlpha();
                this.imageReceiver.setAlpha(this.imageProgress);
                this.imageReceiver.draw(canvas);
                this.imageReceiver.setAlpha(alpha);
                canvas.restore();
            }
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        VideoPlayer videoPlayer;
        if (motionEvent.getAction() == 0 && this.delegate != null && (videoPlayer = this.videoPlayer) != null) {
            boolean z = !videoPlayer.isMuted();
            this.videoPlayer.setMute(z);
            AnimatorSet animatorSet = this.muteAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.muteAnimation = animatorSet2;
            Animator[] animatorArr = new Animator[3];
            ImageView imageView = this.muteImageView;
            Property property = View.ALPHA;
            float[] fArr = new float[1];
            fArr[0] = z ? 1.0f : 0.0f;
            animatorArr[0] = ObjectAnimator.ofFloat(imageView, property, fArr);
            ImageView imageView2 = this.muteImageView;
            Property property2 = View.SCALE_X;
            float[] fArr2 = new float[1];
            fArr2[0] = z ? 1.0f : 0.5f;
            animatorArr[1] = ObjectAnimator.ofFloat(imageView2, property2, fArr2);
            ImageView imageView3 = this.muteImageView;
            Property property3 = View.SCALE_Y;
            float[] fArr3 = new float[1];
            fArr3[0] = z ? 1.0f : 0.5f;
            animatorArr[2] = ObjectAnimator.ofFloat(imageView3, property3, fArr3);
            animatorSet2.playTogether(animatorArr);
            this.muteAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.InstantCameraView.12
                {
                    InstantCameraView.this = this;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (animator.equals(InstantCameraView.this.muteAnimation)) {
                        InstantCameraView.this.muteAnimation = null;
                    }
                }
            });
            this.muteAnimation.setDuration(180L);
            this.muteAnimation.setInterpolator(new DecelerateInterpolator());
            this.muteAnimation.start();
        }
        if (motionEvent.getActionMasked() == 0 || motionEvent.getActionMasked() == 5) {
            if (this.maybePinchToZoomTouchMode && !this.isInPinchToZoomTouchMode && motionEvent.getPointerCount() == 2 && this.finishZoomTransition == null && this.recording) {
                this.pinchStartDistance = (float) Math.hypot(motionEvent.getX(1) - motionEvent.getX(0), motionEvent.getY(1) - motionEvent.getY(0));
                this.pinchScale = 1.0f;
                this.pointerId1 = motionEvent.getPointerId(0);
                this.pointerId2 = motionEvent.getPointerId(1);
                this.isInPinchToZoomTouchMode = true;
            }
            if (motionEvent.getActionMasked() == 0) {
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(this.cameraContainer.getX(), this.cameraContainer.getY(), this.cameraContainer.getX() + this.cameraContainer.getMeasuredWidth(), this.cameraContainer.getY() + this.cameraContainer.getMeasuredHeight());
                this.maybePinchToZoomTouchMode = rectF.contains(motionEvent.getX(), motionEvent.getY());
            }
            return true;
        }
        if (motionEvent.getActionMasked() == 2 && this.isInPinchToZoomTouchMode) {
            int i = -1;
            int i2 = -1;
            for (int i3 = 0; i3 < motionEvent.getPointerCount(); i3++) {
                if (this.pointerId1 == motionEvent.getPointerId(i3)) {
                    i = i3;
                }
                if (this.pointerId2 == motionEvent.getPointerId(i3)) {
                    i2 = i3;
                }
            }
            if (i == -1 || i2 == -1) {
                this.isInPinchToZoomTouchMode = false;
                finishZoom();
                return false;
            }
            float hypot = ((float) Math.hypot(motionEvent.getX(i2) - motionEvent.getX(i), motionEvent.getY(i2) - motionEvent.getY(i))) / this.pinchStartDistance;
            this.pinchScale = hypot;
            this.cameraSession.setZoom(Math.min(1.0f, Math.max((float) BitmapDescriptorFactory.HUE_RED, hypot - 1.0f)));
        } else if ((motionEvent.getActionMasked() == 1 || ((motionEvent.getActionMasked() == 6 && checkPointerIds(motionEvent)) || motionEvent.getActionMasked() == 3)) && this.isInPinchToZoomTouchMode) {
            this.isInPinchToZoomTouchMode = false;
            finishZoom();
        }
        return true;
    }

    public void finishZoom() {
        if (this.finishZoomTransition != null) {
            return;
        }
        float min = Math.min(1.0f, Math.max((float) BitmapDescriptorFactory.HUE_RED, this.pinchScale - 1.0f));
        if (min > BitmapDescriptorFactory.HUE_RED) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(min, BitmapDescriptorFactory.HUE_RED);
            this.finishZoomTransition = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.InstantCameraView$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    InstantCameraView.this.lambda$finishZoom$6(valueAnimator);
                }
            });
            this.finishZoomTransition.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.InstantCameraView.13
                {
                    InstantCameraView.this = this;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    InstantCameraView instantCameraView = InstantCameraView.this;
                    if (instantCameraView.finishZoomTransition != null) {
                        instantCameraView.finishZoomTransition = null;
                    }
                }
            });
            this.finishZoomTransition.setDuration(350L);
            this.finishZoomTransition.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.finishZoomTransition.start();
        }
    }

    public /* synthetic */ void lambda$finishZoom$6(ValueAnimator valueAnimator) {
        CameraSession cameraSession = this.cameraSession;
        if (cameraSession != null) {
            cameraSession.setZoom(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }
}
