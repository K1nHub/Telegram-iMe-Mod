package org.telegram.p043ui.Stories.recorder;

import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3473R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.VideoEditedInfo;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.ButtonBounce;
import org.telegram.p043ui.Components.CircularProgressDrawable;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.RLottieDrawable;
import org.telegram.p043ui.Stories.recorder.DownloadButton;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$TL_message;
/* renamed from: org.telegram.ui.Stories.recorder.DownloadButton */
/* loaded from: classes7.dex */
public class DownloadButton extends ImageView {
    private BuildingVideo buildingVideo;
    private FrameLayout container;
    private int currentAccount;
    private StoryEntry currentEntry;
    private boolean downloading;
    private boolean downloadingVideo;
    private Utilities.Callback<Runnable> prepare;
    private boolean preparing;
    private CircularProgressDrawable progressDrawable;
    private Theme.ResourcesProvider resourcesProvider;
    private Uri savedToGalleryUri;
    private PreparingVideoToast toast;
    private boolean wasImageDownloading;
    private boolean wasVideoDownloading;

    public DownloadButton(Context context, Utilities.Callback<Runnable> callback, int i, FrameLayout frameLayout, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.wasImageDownloading = true;
        this.wasVideoDownloading = true;
        this.prepare = callback;
        this.currentAccount = i;
        this.container = frameLayout;
        this.resourcesProvider = resourcesProvider;
        setScaleType(ImageView.ScaleType.CENTER);
        setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.MULTIPLY));
        setBackground(Theme.createSelectorDrawable(553648127));
        setVisibility(8);
        setAlpha(BitmapDescriptorFactory.HUE_RED);
        setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.DownloadButton$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DownloadButton.this.lambda$new$0(view);
            }
        });
        this.progressDrawable = new CircularProgressDrawable(AndroidUtilities.m72dp(18), AndroidUtilities.m72dp(2), -1);
        updateImage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        onClick();
    }

    public void setEntry(StoryEntry storyEntry) {
        this.savedToGalleryUri = null;
        this.currentEntry = storyEntry;
        BuildingVideo buildingVideo = this.buildingVideo;
        if (buildingVideo != null) {
            buildingVideo.stop(true);
            this.buildingVideo = null;
        }
        PreparingVideoToast preparingVideoToast = this.toast;
        if (preparingVideoToast != null) {
            preparingVideoToast.hide();
            this.toast = null;
        }
        if (storyEntry == null) {
            this.downloading = false;
            updateImage();
        }
    }

    private void onClick() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 23 && ((i <= 28 || BuildVars.NO_SCOPED_STORAGE) && getContext().checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0)) {
            Activity findActivity = AndroidUtilities.findActivity(getContext());
            if (findActivity != null) {
                findActivity.requestPermissions(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 113);
            }
        } else if (this.downloading || this.currentEntry == null) {
        } else {
            if (this.savedToGalleryUri != null) {
                if (i >= 30) {
                    getContext().getContentResolver().delete(this.savedToGalleryUri, null);
                    this.savedToGalleryUri = null;
                } else if (i < 29) {
                    try {
                        new File(this.savedToGalleryUri.toString()).delete();
                    } catch (Exception e) {
                        FileLog.m67e(e);
                    }
                    this.savedToGalleryUri = null;
                }
            }
            this.downloading = true;
            PreparingVideoToast preparingVideoToast = this.toast;
            if (preparingVideoToast != null) {
                preparingVideoToast.hide();
                this.toast = null;
            }
            BuildingVideo buildingVideo = this.buildingVideo;
            if (buildingVideo != null) {
                buildingVideo.stop(true);
                this.buildingVideo = null;
            }
            Utilities.Callback<Runnable> callback = this.prepare;
            if (callback != null) {
                this.preparing = true;
                callback.run(new Runnable() { // from class: org.telegram.ui.Stories.recorder.DownloadButton$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        DownloadButton.this.onClickInternal();
                    }
                });
            }
            if (this.currentEntry.wouldBeVideo()) {
                this.downloadingVideo = true;
                PreparingVideoToast preparingVideoToast2 = new PreparingVideoToast(getContext());
                this.toast = preparingVideoToast2;
                preparingVideoToast2.setOnCancelListener(new Runnable() { // from class: org.telegram.ui.Stories.recorder.DownloadButton$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        DownloadButton.this.lambda$onClick$1();
                    }
                });
                this.container.addView(this.toast);
            } else {
                this.downloadingVideo = false;
            }
            updateImage();
            Utilities.Callback<Runnable> callback2 = this.prepare;
            if (callback2 != null) {
                this.preparing = true;
                callback2.run(new Runnable() { // from class: org.telegram.ui.Stories.recorder.DownloadButton$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        DownloadButton.this.onClickInternal();
                    }
                });
                return;
            }
            onClickInternal();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$1() {
        this.preparing = false;
        BuildingVideo buildingVideo = this.buildingVideo;
        if (buildingVideo != null) {
            buildingVideo.stop(true);
            this.buildingVideo = null;
        }
        PreparingVideoToast preparingVideoToast = this.toast;
        if (preparingVideoToast != null) {
            preparingVideoToast.hide();
        }
        this.downloading = false;
        updateImage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onClickInternal() {
        StoryEntry storyEntry;
        if (!this.preparing || (storyEntry = this.currentEntry) == null) {
            return;
        }
        this.preparing = false;
        if (storyEntry.wouldBeVideo()) {
            final File generateVideoPath = AndroidUtilities.generateVideoPath();
            this.buildingVideo = new BuildingVideo(this.currentAccount, this.currentEntry, generateVideoPath, new Runnable() { // from class: org.telegram.ui.Stories.recorder.DownloadButton$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    DownloadButton.this.lambda$onClickInternal$3(generateVideoPath);
                }
            }, new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.DownloadButton$$ExternalSyntheticLambda9
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    DownloadButton.this.lambda$onClickInternal$4((Float) obj);
                }
            }, new Runnable() { // from class: org.telegram.ui.Stories.recorder.DownloadButton$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    DownloadButton.this.lambda$onClickInternal$5();
                }
            });
        } else {
            final File generatePicturePath = AndroidUtilities.generatePicturePath(false, "png");
            if (generatePicturePath == null) {
                this.toast.setDone(C3473R.raw.error, LocaleController.getString("UnknownError"), 3500);
                this.downloading = false;
                updateImage();
                return;
            }
            Utilities.themeQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.recorder.DownloadButton$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    DownloadButton.this.lambda$onClickInternal$8(generatePicturePath);
                }
            });
        }
        updateImage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClickInternal$3(File file) {
        if (!this.downloading || this.currentEntry == null) {
            return;
        }
        MediaController.saveFile(file.getAbsolutePath(), getContext(), 1, null, null, new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.DownloadButton$$ExternalSyntheticLambda8
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                DownloadButton.this.lambda$onClickInternal$2((Uri) obj);
            }
        }, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClickInternal$2(Uri uri) {
        if (!this.downloading || this.currentEntry == null) {
            return;
        }
        this.toast.setDone(C3473R.raw.ic_save_to_gallery, LocaleController.getString("VideoSavedHint"), 3500);
        this.downloading = false;
        updateImage();
        this.savedToGalleryUri = uri;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClickInternal$4(Float f) {
        PreparingVideoToast preparingVideoToast = this.toast;
        if (preparingVideoToast != null) {
            preparingVideoToast.setProgress(f.floatValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClickInternal$5() {
        if (!this.downloading || this.currentEntry == null) {
            return;
        }
        this.toast.setDone(C3473R.raw.error, LocaleController.getString("VideoConvertFail"), 3500);
        this.downloading = false;
        updateImage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClickInternal$8(final File file) {
        this.currentEntry.buildPhoto(file);
        if (!this.downloading || this.currentEntry == null) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.DownloadButton$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                DownloadButton.this.lambda$onClickInternal$7(file);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClickInternal$7(File file) {
        MediaController.saveFile(file.getAbsolutePath(), getContext(), 0, null, null, new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.DownloadButton$$ExternalSyntheticLambda7
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                DownloadButton.this.lambda$onClickInternal$6((Uri) obj);
            }
        }, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClickInternal$6(Uri uri) {
        this.downloading = false;
        updateImage();
        PreparingVideoToast preparingVideoToast = this.toast;
        if (preparingVideoToast != null) {
            preparingVideoToast.hide();
            this.toast = null;
        }
        PreparingVideoToast preparingVideoToast2 = new PreparingVideoToast(getContext());
        this.toast = preparingVideoToast2;
        preparingVideoToast2.setDone(C3473R.raw.ic_save_to_gallery, LocaleController.getString("PhotoSavedHint"), DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS);
        this.container.addView(this.toast);
        this.savedToGalleryUri = uri;
    }

    private void updateImage() {
        boolean z = this.wasImageDownloading;
        boolean z2 = this.downloading;
        boolean z3 = true;
        if (z != (z2 && !this.downloadingVideo)) {
            boolean z4 = z2 && !this.downloadingVideo;
            this.wasImageDownloading = z4;
            if (z4) {
                AndroidUtilities.updateImageViewImageAnimated(this, this.progressDrawable);
            } else {
                AndroidUtilities.updateImageViewImageAnimated(this, C3473R.C3475drawable.media_download);
            }
        }
        if (this.wasVideoDownloading != (this.downloading && this.downloadingVideo)) {
            clearAnimation();
            ViewPropertyAnimator animate = animate();
            if (!this.downloading || !this.downloadingVideo) {
                z3 = false;
            }
            this.wasVideoDownloading = z3;
            animate.alpha(z3 ? 0.4f : 1.0f).start();
        }
    }

    public void showToast(int i, CharSequence charSequence) {
        PreparingVideoToast preparingVideoToast = this.toast;
        if (preparingVideoToast != null) {
            preparingVideoToast.hide();
            this.toast = null;
        }
        PreparingVideoToast preparingVideoToast2 = new PreparingVideoToast(getContext());
        this.toast = preparingVideoToast2;
        preparingVideoToast2.setDone(i, charSequence, 3500);
        this.container.addView(this.toast);
    }

    public void showFailedVideo() {
        showToast(C3473R.raw.error, LocaleController.getString("VideoConvertFail"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Stories.recorder.DownloadButton$BuildingVideo */
    /* loaded from: classes7.dex */
    public static class BuildingVideo implements NotificationCenter.NotificationCenterDelegate {
        final int currentAccount;
        final StoryEntry entry;
        final File file;
        private MessageObject messageObject;
        private final Runnable onCancel;
        private final Runnable onDone;
        private final Utilities.Callback<Float> onProgress;

        public BuildingVideo(int i, StoryEntry storyEntry, File file, Runnable runnable, Utilities.Callback<Float> callback, Runnable runnable2) {
            this.currentAccount = i;
            this.entry = storyEntry;
            this.file = file;
            this.onDone = runnable;
            this.onProgress = callback;
            this.onCancel = runnable2;
            start();
        }

        public void start() {
            if (this.messageObject != null) {
                return;
            }
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.filePreparingStarted);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.fileNewChunkAvailable);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.filePreparingFailed);
            TLRPC$TL_message tLRPC$TL_message = new TLRPC$TL_message();
            tLRPC$TL_message.f1546id = 1;
            tLRPC$TL_message.attachPath = this.file.getAbsolutePath();
            this.messageObject = new MessageObject(this.currentAccount, (TLRPC$Message) tLRPC$TL_message, (MessageObject) null, false, false);
            this.entry.getVideoEditedInfo(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.DownloadButton$BuildingVideo$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    DownloadButton.BuildingVideo.this.lambda$start$0((VideoEditedInfo) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$start$0(VideoEditedInfo videoEditedInfo) {
            MessageObject messageObject = this.messageObject;
            if (messageObject == null) {
                return;
            }
            messageObject.videoEditedInfo = videoEditedInfo;
            MediaController.getInstance().scheduleVideoConvert(this.messageObject);
        }

        public void stop(boolean z) {
            if (this.messageObject == null) {
                return;
            }
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.filePreparingStarted);
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.fileNewChunkAvailable);
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.filePreparingFailed);
            if (z) {
                MediaController.getInstance().cancelVideoConvert(this.messageObject);
            }
            this.messageObject = null;
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            if (i == NotificationCenter.filePreparingStarted) {
                MessageObject messageObject = (MessageObject) objArr[0];
            } else if (i == NotificationCenter.fileNewChunkAvailable) {
                if (((MessageObject) objArr[0]) == this.messageObject) {
                    String str = (String) objArr[1];
                    ((Long) objArr[2]).longValue();
                    long longValue = ((Long) objArr[3]).longValue();
                    float floatValue = ((Float) objArr[4]).floatValue();
                    Utilities.Callback<Float> callback = this.onProgress;
                    if (callback != null) {
                        callback.run(Float.valueOf(floatValue));
                    }
                    if (longValue > 0) {
                        this.onDone.run();
                        stop(false);
                    }
                }
            } else if (i == NotificationCenter.filePreparingFailed && ((MessageObject) objArr[0]) == this.messageObject) {
                stop(false);
                try {
                    File file = this.file;
                    if (file != null) {
                        file.delete();
                    }
                } catch (Exception unused) {
                }
                this.onCancel.run();
            }
        }
    }

    /* renamed from: org.telegram.ui.Stories.recorder.DownloadButton$PreparingVideoToast */
    /* loaded from: classes7.dex */
    public static class PreparingVideoToast extends View {
        private final Paint backgroundPaint;
        private final ButtonBounce cancelButton;
        private final RectF currentRect;
        private boolean deleted;
        private final Paint dimPaint;
        private StaticLayout doneLayout;
        private float doneLayoutLeft;
        private float doneLayoutWidth;
        private final Paint greyPaint;
        private final RectF hiddenRect;
        private Runnable hideRunnable;
        private RLottieDrawable lottieDrawable;
        private Runnable onCancel;
        private final RectF prepareRect;
        private boolean preparing;
        private final StaticLayout preparingLayout;
        private final float preparingLayoutLeft;
        private final float preparingLayoutWidth;
        private float progress;
        private final AnimatedFloat progressT;
        private final AnimatedFloat showT;
        private boolean shown;

        /* renamed from: t */
        private final AnimatedFloat f1891t;
        private final TextPaint textPaint;
        private final TextPaint textPaint2;
        private final RectF toastRect;
        private final Paint whitePaint;

        public PreparingVideoToast(Context context) {
            super(context);
            int i;
            float f;
            Paint paint = new Paint(1);
            this.dimPaint = paint;
            TextPaint textPaint = new TextPaint(1);
            this.textPaint = textPaint;
            TextPaint textPaint2 = new TextPaint(1);
            this.textPaint2 = textPaint2;
            Paint paint2 = new Paint(1);
            this.backgroundPaint = paint2;
            Paint paint3 = new Paint(1);
            this.whitePaint = paint3;
            Paint paint4 = new Paint(1);
            this.greyPaint = paint4;
            this.cancelButton = new ButtonBounce(this);
            this.shown = false;
            this.showT = new AnimatedFloat((float) BitmapDescriptorFactory.HUE_RED, this, 0L, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
            this.preparing = true;
            float f2 = BitmapDescriptorFactory.HUE_RED;
            this.progress = BitmapDescriptorFactory.HUE_RED;
            this.f1891t = new AnimatedFloat(this);
            this.progressT = new AnimatedFloat(this);
            this.prepareRect = new RectF();
            this.toastRect = new RectF();
            this.currentRect = new RectF();
            this.hiddenRect = new RectF();
            paint.setColor(1509949440);
            textPaint.setColor(-1);
            textPaint2.setColor(-1);
            paint2.setColor(-869783512);
            paint3.setColor(-1);
            paint4.setColor(872415231);
            paint3.setStyle(Paint.Style.STROKE);
            paint3.setStrokeCap(Paint.Cap.ROUND);
            paint3.setStrokeWidth(AndroidUtilities.m72dp(4));
            paint4.setStyle(Paint.Style.STROKE);
            paint4.setStrokeCap(Paint.Cap.ROUND);
            paint4.setStrokeWidth(AndroidUtilities.m72dp(4));
            textPaint.setTextSize(AndroidUtilities.m72dp(14));
            textPaint2.setTextSize(AndroidUtilities.dpf2(14.66f));
            StaticLayout staticLayout = new StaticLayout(LocaleController.getString("PreparingVideo"), textPaint, AndroidUtilities.displaySize.x, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            this.preparingLayout = staticLayout;
            if (staticLayout.getLineCount() > 0) {
                i = 0;
                f = staticLayout.getLineWidth(0);
            } else {
                i = 0;
                f = 0.0f;
            }
            this.preparingLayoutWidth = f;
            this.preparingLayoutLeft = staticLayout.getLineCount() > 0 ? staticLayout.getLineLeft(i) : f2;
            show();
        }

        @Override // android.view.View
        protected boolean verifyDrawable(Drawable drawable) {
            return drawable == this.lottieDrawable || super.verifyDrawable(drawable);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int saveCount = canvas.getSaveCount();
            float f = this.showT.set(this.shown ? 1.0f : 0.0f);
            float f2 = this.f1891t.set(this.preparing ? 0.0f : 1.0f);
            float f3 = 1.0f - f2;
            this.dimPaint.setAlpha((int) (90.0f * f3 * f));
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), this.dimPaint);
            float max = Math.max(this.preparingLayoutWidth, AndroidUtilities.m72dp(54)) + AndroidUtilities.m72dp(42);
            float m72dp = AndroidUtilities.m72dp(111) + this.preparingLayout.getHeight();
            this.prepareRect.set((getWidth() - max) / 2.0f, (getHeight() - m72dp) / 2.0f, (getWidth() + max) / 2.0f, (getHeight() + m72dp) / 2.0f);
            float m72dp2 = AndroidUtilities.m72dp(74) + this.doneLayoutWidth;
            float m72dp3 = AndroidUtilities.m72dp(48);
            this.toastRect.set((getWidth() - m72dp2) / 2.0f, (getHeight() - m72dp3) / 2.0f, (getWidth() + m72dp2) / 2.0f, (getHeight() + m72dp3) / 2.0f);
            AndroidUtilities.lerp(this.prepareRect, this.toastRect, f2, this.currentRect);
            int i = (f > 1.0f ? 1 : (f == 1.0f ? 0 : -1));
            if (i < 0 && this.preparing) {
                this.hiddenRect.set(getWidth() / 2.0f, getHeight() / 2.0f, getWidth() / 2.0f, getHeight() / 2.0f);
                RectF rectF = this.hiddenRect;
                RectF rectF2 = this.currentRect;
                AndroidUtilities.lerp(rectF, rectF2, f, rectF2);
            }
            if (i < 0 && !this.preparing) {
                canvas.scale(AndroidUtilities.lerp(0.8f, 1.0f, f), AndroidUtilities.lerp(0.8f, 1.0f, f), this.currentRect.centerX(), this.currentRect.centerY());
            }
            this.backgroundPaint.setAlpha((int) (204.0f * f));
            canvas.drawRoundRect(this.currentRect, AndroidUtilities.m72dp(10), AndroidUtilities.m72dp(10), this.backgroundPaint);
            canvas.save();
            canvas.clipRect(this.currentRect);
            if (f2 < 1.0f) {
                drawPreparing(canvas, f3 * f);
            }
            if (f2 > BitmapDescriptorFactory.HUE_RED) {
                drawToast(canvas, f2 * f);
            }
            canvas.restoreToCount(saveCount);
            if (f > BitmapDescriptorFactory.HUE_RED || this.shown || this.deleted) {
                return;
            }
            this.deleted = true;
            post(new Runnable() { // from class: org.telegram.ui.Stories.recorder.DownloadButton$PreparingVideoToast$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    DownloadButton.PreparingVideoToast.this.lambda$onDraw$0();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onDraw$0() {
            if (getParent() instanceof ViewGroup) {
                ((ViewGroup) getParent()).removeView(this);
            }
        }

        private void drawPreparing(Canvas canvas, float f) {
            float f2 = this.progressT.set(this.progress);
            float centerX = this.prepareRect.centerX();
            float m72dp = this.prepareRect.top + AndroidUtilities.m72dp(48);
            float m72dp2 = AndroidUtilities.m72dp(25);
            this.greyPaint.setAlpha((int) (51.0f * f));
            canvas.drawCircle(centerX, m72dp, m72dp2, this.greyPaint);
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(centerX - m72dp2, m72dp - m72dp2, centerX + m72dp2, m72dp2 + m72dp);
            int i = (int) (f * 255.0f);
            this.whitePaint.setAlpha(i);
            this.whitePaint.setStrokeWidth(AndroidUtilities.m72dp(4));
            canvas.drawArc(rectF, -90.0f, f2 * 360.0f, false, this.whitePaint);
            float scale = this.cancelButton.getScale(0.15f);
            canvas.save();
            canvas.scale(scale, scale, centerX, m72dp);
            this.whitePaint.setStrokeWidth(AndroidUtilities.m73dp(3.4f));
            canvas.drawLine(centerX - AndroidUtilities.m72dp(7), m72dp - AndroidUtilities.m72dp(7), centerX + AndroidUtilities.m72dp(7), m72dp + AndroidUtilities.m72dp(7), this.whitePaint);
            canvas.drawLine(centerX - AndroidUtilities.m72dp(7), m72dp + AndroidUtilities.m72dp(7), centerX + AndroidUtilities.m72dp(7), m72dp - AndroidUtilities.m72dp(7), this.whitePaint);
            canvas.restore();
            canvas.save();
            canvas.translate((this.prepareRect.left + AndroidUtilities.m72dp(21)) - this.preparingLayoutLeft, (this.prepareRect.bottom - AndroidUtilities.m72dp(18)) - this.preparingLayout.getHeight());
            this.textPaint.setAlpha(i);
            this.preparingLayout.draw(canvas);
            canvas.restore();
        }

        private void drawToast(Canvas canvas, float f) {
            RLottieDrawable rLottieDrawable = this.lottieDrawable;
            if (rLottieDrawable != null) {
                rLottieDrawable.setAlpha((int) (f * 255.0f));
                this.lottieDrawable.setBounds((int) (this.toastRect.left + AndroidUtilities.m72dp(9)), (int) (this.toastRect.top + AndroidUtilities.m72dp(6)), (int) (this.toastRect.left + AndroidUtilities.m72dp(45)), (int) (this.toastRect.top + AndroidUtilities.m72dp(42)));
                this.lottieDrawable.draw(canvas);
            }
            if (this.doneLayout != null) {
                canvas.save();
                canvas.translate((this.toastRect.left + AndroidUtilities.m72dp(52)) - this.doneLayoutLeft, this.toastRect.centerY() - (this.doneLayout.getHeight() / 2.0f));
                this.textPaint2.setAlpha((int) (f * 255.0f));
                this.doneLayout.draw(canvas);
                canvas.restore();
            }
        }

        public void setProgress(float f) {
            this.progress = f;
            invalidate();
        }

        public void setDone(int i, CharSequence charSequence, int i2) {
            RLottieDrawable rLottieDrawable = this.lottieDrawable;
            if (rLottieDrawable != null) {
                rLottieDrawable.setCallback(null);
                this.lottieDrawable.recycle(true);
            }
            RLottieDrawable rLottieDrawable2 = new RLottieDrawable(i, "" + i, AndroidUtilities.m72dp(36), AndroidUtilities.m72dp(36));
            this.lottieDrawable = rLottieDrawable2;
            rLottieDrawable2.setCallback(this);
            this.lottieDrawable.start();
            StaticLayout staticLayout = new StaticLayout(charSequence, this.textPaint2, AndroidUtilities.displaySize.x, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            this.doneLayout = staticLayout;
            int lineCount = staticLayout.getLineCount();
            float f = BitmapDescriptorFactory.HUE_RED;
            this.doneLayoutWidth = lineCount > 0 ? this.doneLayout.getLineWidth(0) : 0.0f;
            if (this.doneLayout.getLineCount() > 0) {
                f = this.doneLayout.getLineLeft(0);
            }
            this.doneLayoutLeft = f;
            this.preparing = false;
            invalidate();
            Runnable runnable = this.hideRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
            }
            Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Stories.recorder.DownloadButton$PreparingVideoToast$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    DownloadButton.PreparingVideoToast.this.hide();
                }
            };
            this.hideRunnable = runnable2;
            AndroidUtilities.runOnUIThread(runnable2, i2);
        }

        public void hide() {
            Runnable runnable = this.hideRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                this.hideRunnable = null;
            }
            this.shown = false;
            invalidate();
        }

        public void show() {
            this.shown = true;
            invalidate();
        }

        public void setOnCancelListener(Runnable runnable) {
            this.onCancel = runnable;
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean contains = this.currentRect.contains(motionEvent.getX(), motionEvent.getY());
            if (motionEvent.getAction() == 0 && (this.preparing || contains)) {
                this.cancelButton.setPressed(contains);
                return true;
            }
            if (motionEvent.getAction() == 1) {
                if (this.cancelButton.isPressed()) {
                    if (contains) {
                        if (this.preparing) {
                            Runnable runnable = this.onCancel;
                            if (runnable != null) {
                                runnable.run();
                            }
                        } else {
                            hide();
                        }
                    }
                    this.cancelButton.setPressed(false);
                    return true;
                }
            } else if (motionEvent.getAction() == 3) {
                this.cancelButton.setPressed(false);
                return true;
            }
            return super.onTouchEvent(motionEvent);
        }
    }
}
