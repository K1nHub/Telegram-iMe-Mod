package org.telegram.p044ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashMap;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3290R;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.RLottieDrawable;
/* renamed from: org.telegram.ui.DownloadProgressIcon */
/* loaded from: classes5.dex */
public class DownloadProgressIcon extends View implements NotificationCenter.NotificationCenterDelegate {
    private int currentAccount;
    int currentColor;
    ArrayList<ProgressObserver> currentListeners;
    float currentProgress;
    RLottieDrawable downloadCompleteDrawable;
    ImageReceiver downloadCompleteImageReceiver;
    RLottieDrawable downloadDrawable;
    ImageReceiver downloadImageReceiver;
    Paint paint;
    Paint paint2;
    float progress;
    float progressDt;
    boolean showCompletedIcon;

    public DownloadProgressIcon(int i, Context context) {
        super(context);
        this.paint = new Paint(1);
        this.paint2 = new Paint(1);
        this.currentListeners = new ArrayList<>();
        this.downloadImageReceiver = new ImageReceiver(this);
        this.downloadCompleteImageReceiver = new ImageReceiver(this);
        this.currentAccount = i;
        RLottieDrawable rLottieDrawable = new RLottieDrawable(C3290R.raw.download_progress, "download_progress", AndroidUtilities.m54dp(28), AndroidUtilities.m54dp(28), true, null);
        this.downloadDrawable = rLottieDrawable;
        int i2 = Theme.key_actionBarDefaultIcon;
        rLottieDrawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i2), PorterDuff.Mode.MULTIPLY));
        RLottieDrawable rLottieDrawable2 = new RLottieDrawable(C3290R.raw.download_finish, "download_finish", AndroidUtilities.m54dp(28), AndroidUtilities.m54dp(28), true, null);
        this.downloadCompleteDrawable = rLottieDrawable2;
        rLottieDrawable2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i2), PorterDuff.Mode.MULTIPLY));
        this.downloadImageReceiver.setImageBitmap(this.downloadDrawable);
        this.downloadCompleteImageReceiver.setImageBitmap(this.downloadCompleteDrawable);
        this.downloadImageReceiver.setAutoRepeat(1);
        this.downloadDrawable.setAutoRepeat(1);
        this.downloadDrawable.start();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 1073741824));
        int m54dp = AndroidUtilities.m54dp(15);
        float f = m54dp;
        int i3 = m54dp * 2;
        this.downloadImageReceiver.setImageCoords(f, f, getMeasuredWidth() - i3, getMeasuredHeight() - i3);
        this.downloadCompleteImageReceiver.setImageCoords(f, f, getMeasuredWidth() - i3, getMeasuredHeight() - i3);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (getAlpha() == BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        int i = this.currentColor;
        int i2 = Theme.key_actionBarDefaultIcon;
        if (i != Theme.getColor(i2)) {
            this.currentColor = Theme.getColor(i2);
            this.paint.setColor(Theme.getColor(i2));
            this.paint2.setColor(Theme.getColor(i2));
            this.downloadImageReceiver.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i2), PorterDuff.Mode.MULTIPLY));
            this.downloadCompleteImageReceiver.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i2), PorterDuff.Mode.MULTIPLY));
            this.paint2.setAlpha(100);
        }
        float f = this.currentProgress;
        float f2 = this.progress;
        if (f != f2) {
            float f3 = this.progressDt;
            float f4 = f + f3;
            this.currentProgress = f4;
            if (f3 > BitmapDescriptorFactory.HUE_RED && f4 > f2) {
                this.currentProgress = f2;
            } else if (f3 < BitmapDescriptorFactory.HUE_RED && f4 < f2) {
                this.currentProgress = f2;
            } else {
                invalidate();
            }
        }
        float m55dp = AndroidUtilities.m55dp(1.0f);
        float m54dp = AndroidUtilities.m54dp(16);
        RectF rectF = AndroidUtilities.rectTmp;
        float measuredHeight = (getMeasuredHeight() / 2) + AndroidUtilities.m54dp(8);
        float f5 = measuredHeight - m55dp;
        float f6 = measuredHeight + m55dp;
        rectF.set(m54dp, f5, getMeasuredWidth() - m54dp, f6);
        canvas.drawRoundRect(rectF, m55dp, m55dp, this.paint2);
        rectF.set(m54dp, f5, ((getMeasuredWidth() - (2.0f * m54dp)) * this.currentProgress) + m54dp, f6);
        canvas.drawRoundRect(rectF, m55dp, m55dp, this.paint);
        canvas.save();
        canvas.clipRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), f5);
        if (this.progress != 1.0f) {
            this.showCompletedIcon = false;
        }
        if (this.showCompletedIcon) {
            this.downloadCompleteImageReceiver.draw(canvas);
        } else {
            this.downloadImageReceiver.draw(canvas);
        }
        if (this.progress == 1.0f && !this.showCompletedIcon && this.downloadDrawable.getCurrentFrame() == 0) {
            this.downloadCompleteDrawable.setCurrentFrame(0, false);
            this.downloadCompleteDrawable.start();
            this.showCompletedIcon = true;
        }
        canvas.restore();
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        updateDownloadingListeners();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.onDownloadingFilesChanged);
        this.downloadImageReceiver.onAttachedToWindow();
        this.downloadCompleteImageReceiver.onAttachedToWindow();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        detachCurrentListeners();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.onDownloadingFilesChanged);
        this.downloadImageReceiver.onDetachedFromWindow();
        this.downloadCompleteImageReceiver.onDetachedFromWindow();
    }

    private void updateDownloadingListeners() {
        DownloadController downloadController = DownloadController.getInstance(this.currentAccount);
        HashMap hashMap = new HashMap();
        for (int i = 0; i < this.currentListeners.size(); i++) {
            hashMap.put(this.currentListeners.get(i).fileName, this.currentListeners.get(i));
            DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this.currentListeners.get(i));
        }
        this.currentListeners.clear();
        for (int i2 = 0; i2 < downloadController.downloadingFiles.size(); i2++) {
            String fileName = downloadController.downloadingFiles.get(i2).getFileName();
            if (FileLoader.getInstance(this.currentAccount).isLoadingFile(fileName)) {
                ProgressObserver progressObserver = (ProgressObserver) hashMap.get(fileName);
                if (progressObserver == null) {
                    progressObserver = new ProgressObserver(fileName);
                }
                DownloadController.getInstance(this.currentAccount).addLoadingFileObserver(fileName, progressObserver);
                this.currentListeners.add(progressObserver);
            }
        }
        if (this.currentListeners.size() == 0) {
            if (getVisibility() == 0 && getAlpha() == 1.0f) {
                return;
            }
            if (DownloadController.getInstance(this.currentAccount).hasUnviewedDownloads()) {
                this.progress = 1.0f;
                this.currentProgress = 1.0f;
                return;
            }
            this.progress = BitmapDescriptorFactory.HUE_RED;
            this.currentProgress = BitmapDescriptorFactory.HUE_RED;
        }
    }

    public void updateProgress() {
        MessagesStorage.getInstance(this.currentAccount);
        long j = 0;
        long j2 = 0;
        for (int i = 0; i < this.currentListeners.size(); i++) {
            j += this.currentListeners.get(i).total;
            j2 += this.currentListeners.get(i).downloaded;
        }
        if (j == 0) {
            this.progress = 1.0f;
        } else {
            this.progress = ((float) j2) / ((float) j);
        }
        float f = this.progress;
        if (f > 1.0f) {
            this.progress = 1.0f;
        } else if (f < BitmapDescriptorFactory.HUE_RED) {
            this.progress = BitmapDescriptorFactory.HUE_RED;
        }
        this.progressDt = ((this.progress - this.currentProgress) * 16.0f) / 150.0f;
        invalidate();
    }

    private void detachCurrentListeners() {
        for (int i = 0; i < this.currentListeners.size(); i++) {
            DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this.currentListeners.get(i));
        }
        this.currentListeners.clear();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.onDownloadingFilesChanged) {
            updateDownloadingListeners();
            updateProgress();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.DownloadProgressIcon$ProgressObserver */
    /* loaded from: classes5.dex */
    public class ProgressObserver implements DownloadController.FileDownloadProgressListener {
        long downloaded;
        private final String fileName;
        long total;

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public int getObserverTag() {
            return 0;
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onFailedDownload(String str, boolean z) {
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onProgressUpload(String str, long j, long j2, boolean z) {
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onSuccessDownload(String str) {
        }

        private ProgressObserver(String str) {
            this.fileName = str;
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onProgressDownload(String str, long j, long j2) {
            this.downloaded = j;
            this.total = j2;
            DownloadProgressIcon.this.updateProgress();
        }
    }
}
