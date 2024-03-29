package org.telegram.p043ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.BaseCell;
import org.telegram.p043ui.Components.SeekBar;
import org.telegram.tgnet.TLRPC$DocumentAttribute;
import org.telegram.tgnet.TLRPC$TL_documentAttributeAudio;
/* renamed from: org.telegram.ui.Components.PopupAudioView */
/* loaded from: classes6.dex */
public class PopupAudioView extends BaseCell implements SeekBar.SeekBarDelegate, DownloadController.FileDownloadProgressListener {
    private int TAG;
    private int buttonPressed;
    private int buttonState;
    private int buttonX;
    private int buttonY;
    private int currentAccount;
    protected MessageObject currentMessageObject;
    private String lastTimeString;
    private ProgressView progressView;
    private SeekBar seekBar;
    private int seekBarX;
    private int seekBarY;
    private StaticLayout timeLayout;
    private TextPaint timePaint;
    int timeWidth;
    private int timeX;
    private boolean wasLayout;

    @Override // org.telegram.p043ui.Components.SeekBar.SeekBarDelegate
    public /* synthetic */ boolean isSeekBarDragAllowed() {
        return SeekBar.SeekBarDelegate.CC.$default$isSeekBarDragAllowed(this);
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onProgressUpload(String str, long j, long j2, boolean z) {
    }

    @Override // org.telegram.p043ui.Components.SeekBar.SeekBarDelegate
    public /* synthetic */ void onSeekBarContinuousDrag(float f) {
        SeekBar.SeekBarDelegate.CC.$default$onSeekBarContinuousDrag(this, f);
    }

    @Override // org.telegram.p043ui.Components.SeekBar.SeekBarDelegate
    public /* synthetic */ void onSeekBarPressed() {
        SeekBar.SeekBarDelegate.CC.$default$onSeekBarPressed(this);
    }

    @Override // org.telegram.p043ui.Components.SeekBar.SeekBarDelegate
    public /* synthetic */ void onSeekBarReleased() {
        SeekBar.SeekBarDelegate.CC.$default$onSeekBarReleased(this);
    }

    @Override // org.telegram.p043ui.Components.SeekBar.SeekBarDelegate
    public /* synthetic */ boolean reverseWaveform() {
        return SeekBar.SeekBarDelegate.CC.$default$reverseWaveform(this);
    }

    public PopupAudioView(Context context) {
        super(context);
        this.wasLayout = false;
        this.buttonState = 0;
        this.buttonPressed = 0;
        this.timeWidth = 0;
        this.lastTimeString = null;
        TextPaint textPaint = new TextPaint(1);
        this.timePaint = textPaint;
        textPaint.setTextSize(AndroidUtilities.m107dp(16));
        this.TAG = DownloadController.getInstance(this.currentAccount).generateObserverTag();
        SeekBar seekBar = new SeekBar(this);
        this.seekBar = seekBar;
        seekBar.setDelegate(this);
        this.progressView = new ProgressView();
    }

    public void setMessageObject(MessageObject messageObject) {
        if (this.currentMessageObject != messageObject) {
            this.currentAccount = messageObject.currentAccount;
            SeekBar seekBar = this.seekBar;
            int i = Theme.key_chat_inAudioSeekbar;
            int color = Theme.getColor(i);
            int color2 = Theme.getColor(i);
            int i2 = Theme.key_chat_inAudioSeekbarFill;
            seekBar.setColors(color, color2, Theme.getColor(i2), Theme.getColor(i2), Theme.getColor(Theme.key_chat_inAudioSeekbarSelected));
            this.progressView.setProgressColors(-2497813, -7944712);
            this.currentMessageObject = messageObject;
            this.wasLayout = false;
            requestLayout();
        }
        updateButtonState();
    }

    public final MessageObject getMessageObject() {
        return this.currentMessageObject;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.m107dp(56));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.currentMessageObject == null) {
            return;
        }
        this.seekBarX = AndroidUtilities.m107dp(54);
        this.buttonX = AndroidUtilities.m107dp(10);
        this.timeX = (getMeasuredWidth() - this.timeWidth) - AndroidUtilities.m107dp(16);
        this.seekBar.setSize((getMeasuredWidth() - AndroidUtilities.m107dp(70)) - this.timeWidth, AndroidUtilities.m107dp(30));
        this.progressView.width = (getMeasuredWidth() - AndroidUtilities.m107dp(94)) - this.timeWidth;
        this.progressView.height = AndroidUtilities.m107dp(30);
        this.seekBarY = AndroidUtilities.m107dp(13);
        this.buttonY = AndroidUtilities.m107dp(10);
        updateProgress();
        if (z || !this.wasLayout) {
            this.wasLayout = true;
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        int i2;
        if (this.currentMessageObject == null) {
            return;
        }
        if (!this.wasLayout) {
            requestLayout();
            return;
        }
        Point point = AndroidUtilities.displaySize;
        int i3 = point.y;
        int i4 = point.x;
        if (getParent() instanceof View) {
            View view = (View) getParent();
            int measuredWidth = view.getMeasuredWidth();
            i2 = view.getMeasuredHeight();
            i = measuredWidth;
        } else {
            i = i4;
            i2 = i3;
        }
        Theme.chat_msgInMediaDrawable.setTop((int) getY(), i, i2, false, false);
        BaseCell.setDrawableBounds((Drawable) Theme.chat_msgInMediaDrawable, 0, 0, getMeasuredWidth(), getMeasuredHeight());
        Theme.chat_msgInMediaDrawable.draw(canvas);
        if (this.currentMessageObject == null) {
            return;
        }
        canvas.save();
        int i5 = this.buttonState;
        if (i5 == 0 || i5 == 1) {
            canvas.translate(this.seekBarX, this.seekBarY);
            this.seekBar.draw(canvas);
        } else {
            canvas.translate(this.seekBarX + AndroidUtilities.m107dp(12), this.seekBarY);
            this.progressView.draw(canvas);
        }
        canvas.restore();
        int i6 = this.buttonState;
        this.timePaint.setColor(-6182221);
        Drawable drawable = Theme.chat_fileStatesDrawable[i6][this.buttonPressed];
        int m107dp = AndroidUtilities.m107dp(36);
        BaseCell.setDrawableBounds(drawable, ((m107dp - drawable.getIntrinsicWidth()) / 2) + this.buttonX, ((m107dp - drawable.getIntrinsicHeight()) / 2) + this.buttonY);
        drawable.draw(canvas);
        canvas.save();
        canvas.translate(this.timeX, AndroidUtilities.m107dp(18));
        this.timeLayout.draw(canvas);
        canvas.restore();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00a7, code lost:
        if (r1 <= (r0 + r4)) goto L20;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r8) {
        /*
            r7 = this;
            float r0 = r8.getX()
            float r1 = r8.getY()
            org.telegram.ui.Components.SeekBar r2 = r7.seekBar
            int r3 = r8.getAction()
            float r4 = r8.getX()
            int r5 = r7.seekBarX
            float r5 = (float) r5
            float r4 = r4 - r5
            float r5 = r8.getY()
            int r6 = r7.seekBarY
            float r6 = (float) r6
            float r5 = r5 - r6
            boolean r2 = r2.onTouch(r3, r4, r5)
            r3 = 1
            if (r2 == 0) goto L37
            int r8 = r8.getAction()
            if (r8 != 0) goto L32
            android.view.ViewParent r8 = r7.getParent()
            r8.requestDisallowInterceptTouchEvent(r3)
        L32:
            r7.invalidate()
            goto Lb4
        L37:
            r4 = 36
            int r4 = org.telegram.messenger.AndroidUtilities.m107dp(r4)
            int r5 = r8.getAction()
            if (r5 != 0) goto L64
            int r5 = r7.buttonX
            float r6 = (float) r5
            int r6 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r6 < 0) goto Lae
            int r5 = r5 + r4
            float r5 = (float) r5
            int r0 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r0 > 0) goto Lae
            int r0 = r7.buttonY
            float r5 = (float) r0
            int r5 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r5 < 0) goto Lae
            int r0 = r0 + r4
            float r0 = (float) r0
            int r0 = (r1 > r0 ? 1 : (r1 == r0 ? 0 : -1))
            if (r0 > 0) goto Lae
            r7.buttonPressed = r3
            r7.invalidate()
            r2 = r3
            goto Lae
        L64:
            int r5 = r7.buttonPressed
            if (r5 != r3) goto Lae
            int r5 = r8.getAction()
            r6 = 0
            if (r5 != r3) goto L7b
            r7.buttonPressed = r6
            r7.playSoundEffect(r6)
            r7.didPressedButton()
            r7.invalidate()
            goto Lae
        L7b:
            int r3 = r8.getAction()
            r5 = 3
            if (r3 != r5) goto L88
            r7.buttonPressed = r6
            r7.invalidate()
            goto Lae
        L88:
            int r3 = r8.getAction()
            r5 = 2
            if (r3 != r5) goto Lae
            int r3 = r7.buttonX
            float r5 = (float) r3
            int r5 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r5 < 0) goto La9
            int r3 = r3 + r4
            float r3 = (float) r3
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 > 0) goto La9
            int r0 = r7.buttonY
            float r3 = (float) r0
            int r3 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r3 < 0) goto La9
            int r0 = r0 + r4
            float r0 = (float) r0
            int r0 = (r1 > r0 ? 1 : (r1 == r0 ? 0 : -1))
            if (r0 <= 0) goto Lae
        La9:
            r7.buttonPressed = r6
            r7.invalidate()
        Lae:
            if (r2 != 0) goto Lb4
            boolean r2 = super.onTouchEvent(r8)
        Lb4:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.PopupAudioView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    private void didPressedButton() {
        int i = this.buttonState;
        if (i == 0) {
            boolean playMessage = MediaController.getInstance().playMessage(this.currentMessageObject);
            if (!this.currentMessageObject.isOut() && this.currentMessageObject.isContentUnread() && this.currentMessageObject.messageOwner.peer_id.channel_id == 0) {
                MessagesController.getInstance(this.currentAccount).markMessageContentAsRead(this.currentMessageObject);
                this.currentMessageObject.setContentIsRead();
            }
            if (playMessage) {
                this.buttonState = 1;
                invalidate();
            }
        } else if (i == 1) {
            if (MediaController.getInstance().lambda$startAudioAgain$7(this.currentMessageObject)) {
                this.buttonState = 0;
                invalidate();
            }
        } else if (i == 2) {
            FileLoader.getInstance(this.currentAccount).loadFile(this.currentMessageObject.getDocument(), this.currentMessageObject, 1, 0);
            this.buttonState = 4;
            invalidate();
        } else if (i == 3) {
            FileLoader.getInstance(this.currentAccount).cancelLoadFile(this.currentMessageObject.getDocument());
            this.buttonState = 2;
            invalidate();
        }
    }

    public void updateProgress() {
        int i;
        if (this.currentMessageObject == null) {
            return;
        }
        if (!this.seekBar.isDragging()) {
            this.seekBar.setProgress(this.currentMessageObject.audioProgress);
        }
        if (!MediaController.getInstance().isPlayingMessage(this.currentMessageObject)) {
            i = 0;
            int i2 = 0;
            while (true) {
                if (i2 >= this.currentMessageObject.getDocument().attributes.size()) {
                    break;
                }
                TLRPC$DocumentAttribute tLRPC$DocumentAttribute = this.currentMessageObject.getDocument().attributes.get(i2);
                if (tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeAudio) {
                    i = (int) tLRPC$DocumentAttribute.duration;
                    break;
                }
                i2++;
            }
        } else {
            i = this.currentMessageObject.audioProgressSec;
        }
        String formatLongDuration = AndroidUtilities.formatLongDuration(i);
        String str = this.lastTimeString;
        if (str == null || (str != null && !str.equals(formatLongDuration))) {
            this.timeWidth = (int) Math.ceil(this.timePaint.measureText(formatLongDuration));
            this.timeLayout = new StaticLayout(formatLongDuration, this.timePaint, this.timeWidth, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        }
        invalidate();
    }

    public void downloadAudioIfNeed() {
        if (this.buttonState == 2) {
            FileLoader.getInstance(this.currentAccount).loadFile(this.currentMessageObject.getDocument(), this.currentMessageObject, 1, 0);
            this.buttonState = 3;
            invalidate();
        }
    }

    public void updateButtonState() {
        String fileName = this.currentMessageObject.getFileName();
        if (FileLoader.getInstance(this.currentAccount).getPathToMessage(this.currentMessageObject.messageOwner).exists()) {
            DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this);
            boolean isPlayingMessage = MediaController.getInstance().isPlayingMessage(this.currentMessageObject);
            if (!isPlayingMessage || (isPlayingMessage && MediaController.getInstance().isMessagePaused())) {
                this.buttonState = 0;
            } else {
                this.buttonState = 1;
            }
            this.progressView.setProgress(BitmapDescriptorFactory.HUE_RED);
        } else {
            DownloadController.getInstance(this.currentAccount).addLoadingFileObserver(fileName, this);
            if (!FileLoader.getInstance(this.currentAccount).isLoadingFile(fileName)) {
                this.buttonState = 2;
                this.progressView.setProgress(BitmapDescriptorFactory.HUE_RED);
            } else {
                this.buttonState = 3;
                Float fileProgress = ImageLoader.getInstance().getFileProgress(fileName);
                if (fileProgress != null) {
                    this.progressView.setProgress(fileProgress.floatValue());
                } else {
                    this.progressView.setProgress(BitmapDescriptorFactory.HUE_RED);
                }
            }
        }
        updateProgress();
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onFailedDownload(String str, boolean z) {
        updateButtonState();
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onSuccessDownload(String str) {
        updateButtonState();
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onProgressDownload(String str, long j, long j2) {
        this.progressView.setProgress(Math.min(1.0f, ((float) j) / ((float) j2)));
        if (this.buttonState != 3) {
            updateButtonState();
        }
        invalidate();
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public int getObserverTag() {
        return this.TAG;
    }

    @Override // org.telegram.p043ui.Components.SeekBar.SeekBarDelegate
    public void onSeekBarDrag(float f) {
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null) {
            return;
        }
        messageObject.audioProgress = f;
        MediaController.getInstance().seekToProgress(this.currentMessageObject, f);
    }
}
