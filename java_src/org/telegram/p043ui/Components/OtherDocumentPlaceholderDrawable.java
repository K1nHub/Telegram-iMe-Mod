package org.telegram.p043ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import com.google.android.exoplayer2.extractor.p015ts.PsExtractor;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.io.File;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3473R;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.UserConfig;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$Message;
/* renamed from: org.telegram.ui.Components.OtherDocumentPlaceholderDrawable */
/* loaded from: classes7.dex */
public class OtherDocumentPlaceholderDrawable extends RecyclableDrawable implements DownloadController.FileDownloadProgressListener {
    private int TAG;
    private String ext;
    private String fileName;
    private String fileSize;
    private boolean loaded;
    private boolean loading;
    private MessageObject parentMessageObject;
    private View parentView;
    private String progress;
    private boolean progressVisible;
    private Drawable thumbDrawable;
    private static Paint paint = new Paint();
    private static Paint progressPaint = new Paint(1);
    private static TextPaint docPaint = new TextPaint(1);
    private static TextPaint namePaint = new TextPaint(1);
    private static TextPaint sizePaint = new TextPaint(1);
    private static TextPaint buttonPaint = new TextPaint(1);
    private static TextPaint percentPaint = new TextPaint(1);
    private static TextPaint openPaint = new TextPaint(1);
    private static DecelerateInterpolator decelerateInterpolator = new DecelerateInterpolator();
    private long lastUpdateTime = 0;
    private float currentProgress = BitmapDescriptorFactory.HUE_RED;
    private float animationProgressStart = BitmapDescriptorFactory.HUE_RED;
    private long currentProgressTime = 0;
    private float animatedProgressValue = BitmapDescriptorFactory.HUE_RED;
    private float animatedAlphaValue = 1.0f;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -1;
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onProgressUpload(String str, long j, long j2, boolean z) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    static {
        progressPaint.setStrokeCap(Paint.Cap.ROUND);
        paint.setColor(-14209998);
        docPaint.setColor(-1);
        namePaint.setColor(-1);
        sizePaint.setColor(-10327179);
        buttonPaint.setColor(-10327179);
        percentPaint.setColor(-1);
        openPaint.setColor(-1);
        docPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        namePaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        buttonPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        percentPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        openPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
    }

    public OtherDocumentPlaceholderDrawable(Context context, View view, MessageObject messageObject) {
        docPaint.setTextSize(AndroidUtilities.m72dp(14));
        namePaint.setTextSize(AndroidUtilities.m72dp(19));
        sizePaint.setTextSize(AndroidUtilities.m72dp(15));
        buttonPaint.setTextSize(AndroidUtilities.m72dp(15));
        percentPaint.setTextSize(AndroidUtilities.m72dp(15));
        openPaint.setTextSize(AndroidUtilities.m72dp(15));
        progressPaint.setStrokeWidth(AndroidUtilities.m72dp(2));
        this.parentView = view;
        this.parentMessageObject = messageObject;
        this.TAG = DownloadController.getInstance(messageObject.currentAccount).generateObserverTag();
        TLRPC$Document document = messageObject.getDocument();
        if (document != null) {
            String documentFileName = FileLoader.getDocumentFileName(messageObject.getDocument());
            this.fileName = documentFileName;
            if (TextUtils.isEmpty(documentFileName)) {
                this.fileName = AppMeasurementSdk.ConditionalUserProperty.NAME;
            }
            int lastIndexOf = this.fileName.lastIndexOf(46);
            String upperCase = lastIndexOf == -1 ? "" : this.fileName.substring(lastIndexOf + 1).toUpperCase();
            this.ext = upperCase;
            if (((int) Math.ceil(docPaint.measureText(upperCase))) > AndroidUtilities.m72dp(40)) {
                this.ext = TextUtils.ellipsize(this.ext, docPaint, AndroidUtilities.m72dp(40), TextUtils.TruncateAt.END).toString();
            }
            this.thumbDrawable = context.getResources().getDrawable(AndroidUtilities.getThumbForNameOrMime(this.fileName, messageObject.getDocument().mime_type, true)).mutate();
            this.fileSize = AndroidUtilities.formatFileSize(document.size);
            if (((int) Math.ceil(namePaint.measureText(this.fileName))) > AndroidUtilities.m72dp(320)) {
                this.fileName = TextUtils.ellipsize(this.fileName, namePaint, AndroidUtilities.m72dp(320), TextUtils.TruncateAt.END).toString();
            }
        }
        checkFileExist();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        Drawable drawable = this.thumbDrawable;
        if (drawable != null) {
            drawable.setAlpha(i);
        }
        paint.setAlpha(i);
        docPaint.setAlpha(i);
        namePaint.setAlpha(i);
        sizePaint.setAlpha(i);
        buttonPaint.setAlpha(i);
        percentPaint.setAlpha(i);
        openPaint.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        String string;
        int m72dp;
        TextPaint textPaint;
        String str;
        Rect bounds = getBounds();
        int width = bounds.width();
        int height = bounds.height();
        canvas.save();
        canvas.translate(bounds.left, bounds.top);
        canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, width, height, paint);
        int m72dp2 = (height - AndroidUtilities.m72dp((int) PsExtractor.VIDEO_STREAM_MASK)) / 2;
        int m72dp3 = (width - AndroidUtilities.m72dp(48)) / 2;
        this.thumbDrawable.setBounds(m72dp3, m72dp2, AndroidUtilities.m72dp(48) + m72dp3, AndroidUtilities.m72dp(48) + m72dp2);
        this.thumbDrawable.draw(canvas);
        canvas.drawText(this.ext, (width - ((int) Math.ceil(docPaint.measureText(this.ext)))) / 2, AndroidUtilities.m72dp(31) + m72dp2, docPaint);
        canvas.drawText(this.fileName, (width - ((int) Math.ceil(namePaint.measureText(this.fileName)))) / 2, AndroidUtilities.m72dp(96) + m72dp2, namePaint);
        canvas.drawText(this.fileSize, (width - ((int) Math.ceil(sizePaint.measureText(this.fileSize)))) / 2, AndroidUtilities.m72dp(125) + m72dp2, sizePaint);
        if (this.loaded) {
            string = LocaleController.getString("OpenFile", C3473R.string.OpenFile);
            textPaint = openPaint;
            m72dp = 0;
        } else {
            if (this.loading) {
                string = LocaleController.getString("Cancel", C3473R.string.Cancel).toUpperCase();
            } else {
                string = LocaleController.getString("TapToDownload", C3473R.string.TapToDownload);
            }
            m72dp = AndroidUtilities.m72dp(28);
            textPaint = buttonPaint;
        }
        canvas.drawText(string, (width - ((int) Math.ceil(textPaint.measureText(string)))) / 2, AndroidUtilities.m72dp(235) + m72dp2 + m72dp, textPaint);
        if (this.progressVisible) {
            if (this.progress != null) {
                canvas.drawText(this.progress, (width - ((int) Math.ceil(percentPaint.measureText(str)))) / 2, AndroidUtilities.m72dp(210) + m72dp2, percentPaint);
            }
            int m72dp4 = (width - AndroidUtilities.m72dp((int) PsExtractor.VIDEO_STREAM_MASK)) / 2;
            int m72dp5 = m72dp2 + AndroidUtilities.m72dp(232);
            progressPaint.setColor(-10327179);
            progressPaint.setAlpha((int) (this.animatedAlphaValue * 255.0f));
            float f = m72dp5;
            canvas.drawRect(((int) (AndroidUtilities.m72dp((int) PsExtractor.VIDEO_STREAM_MASK) * this.animatedProgressValue)) + m72dp4, f, AndroidUtilities.m72dp((int) PsExtractor.VIDEO_STREAM_MASK) + m72dp4, AndroidUtilities.m72dp(2) + m72dp5, progressPaint);
            progressPaint.setColor(-1);
            progressPaint.setAlpha((int) (this.animatedAlphaValue * 255.0f));
            float f2 = m72dp4;
            canvas.drawRect(f2, f, f2 + (AndroidUtilities.m72dp((int) PsExtractor.VIDEO_STREAM_MASK) * this.animatedProgressValue), m72dp5 + AndroidUtilities.m72dp(2), progressPaint);
            updateAnimation();
        }
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.parentView.getMeasuredWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.parentView.getMeasuredHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.parentView.getMeasuredWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.parentView.getMeasuredHeight();
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onFailedDownload(String str, boolean z) {
        checkFileExist();
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onSuccessDownload(String str) {
        setProgress(1.0f, true);
        checkFileExist();
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onProgressDownload(String str, long j, long j2) {
        if (!this.progressVisible) {
            checkFileExist();
        }
        setProgress(Math.min(1.0f, ((float) j) / ((float) j2)), true);
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public int getObserverTag() {
        return this.TAG;
    }

    @Override // org.telegram.p043ui.Components.RecyclableDrawable
    public void recycle() {
        DownloadController.getInstance(this.parentMessageObject.currentAccount).removeLoadingFileObserver(this);
        this.parentView = null;
        this.parentMessageObject = null;
    }

    public void checkFileExist() {
        MessageObject messageObject = this.parentMessageObject;
        if (messageObject != null) {
            TLRPC$Message tLRPC$Message = messageObject.messageOwner;
            if (tLRPC$Message.media != null) {
                String str = null;
                if ((TextUtils.isEmpty(tLRPC$Message.attachPath) || !new File(this.parentMessageObject.messageOwner.attachPath).exists()) && !FileLoader.getInstance(UserConfig.selectedAccount).getPathToMessage(this.parentMessageObject.messageOwner).exists()) {
                    str = FileLoader.getAttachFileName(this.parentMessageObject.getDocument());
                }
                this.loaded = false;
                if (str == null) {
                    this.progressVisible = false;
                    this.loading = false;
                    this.loaded = true;
                    DownloadController.getInstance(this.parentMessageObject.currentAccount).removeLoadingFileObserver(this);
                } else {
                    DownloadController.getInstance(this.parentMessageObject.currentAccount).addLoadingFileObserver(str, this);
                    boolean isLoadingFile = FileLoader.getInstance(this.parentMessageObject.currentAccount).isLoadingFile(str);
                    this.loading = isLoadingFile;
                    if (isLoadingFile) {
                        this.progressVisible = true;
                        Float fileProgress = ImageLoader.getInstance().getFileProgress(str);
                        if (fileProgress == null) {
                            fileProgress = Float.valueOf((float) BitmapDescriptorFactory.HUE_RED);
                        }
                        setProgress(fileProgress.floatValue(), false);
                    } else {
                        this.progressVisible = false;
                    }
                }
                this.parentView.invalidate();
            }
        }
        this.loading = false;
        this.loaded = true;
        this.progressVisible = false;
        setProgress(BitmapDescriptorFactory.HUE_RED, false);
        DownloadController.getInstance(this.parentMessageObject.currentAccount).removeLoadingFileObserver(this);
        this.parentView.invalidate();
    }

    private void updateAnimation() {
        long currentTimeMillis = System.currentTimeMillis();
        long j = currentTimeMillis - this.lastUpdateTime;
        this.lastUpdateTime = currentTimeMillis;
        float f = this.animatedProgressValue;
        if (f != 1.0f) {
            float f2 = this.currentProgress;
            if (f != f2) {
                float f3 = this.animationProgressStart;
                float f4 = f2 - f3;
                if (f4 > BitmapDescriptorFactory.HUE_RED) {
                    long j2 = this.currentProgressTime + j;
                    this.currentProgressTime = j2;
                    if (j2 >= 300) {
                        this.animatedProgressValue = f2;
                        this.animationProgressStart = f2;
                        this.currentProgressTime = 0L;
                    } else {
                        this.animatedProgressValue = f3 + (f4 * decelerateInterpolator.getInterpolation(((float) j2) / 300.0f));
                    }
                }
                this.parentView.invalidate();
            }
        }
        float f5 = this.animatedProgressValue;
        if (f5 < 1.0f || f5 != 1.0f) {
            return;
        }
        float f6 = this.animatedAlphaValue;
        if (f6 != BitmapDescriptorFactory.HUE_RED) {
            float f7 = f6 - (((float) j) / 200.0f);
            this.animatedAlphaValue = f7;
            if (f7 <= BitmapDescriptorFactory.HUE_RED) {
                this.animatedAlphaValue = BitmapDescriptorFactory.HUE_RED;
            }
            this.parentView.invalidate();
        }
    }

    public void setProgress(float f, boolean z) {
        if (!z) {
            this.animatedProgressValue = f;
            this.animationProgressStart = f;
        } else {
            this.animationProgressStart = this.animatedProgressValue;
        }
        this.progress = String.format("%d%%", Integer.valueOf((int) (100.0f * f)));
        if (f != 1.0f) {
            this.animatedAlphaValue = 1.0f;
        }
        this.currentProgress = f;
        this.currentProgressTime = 0L;
        this.lastUpdateTime = System.currentTimeMillis();
        this.parentView.invalidate();
    }
}
