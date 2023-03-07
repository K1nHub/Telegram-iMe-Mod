package org.telegram.p048ui.Components;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.SystemClock;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.Pair;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Collections;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.Utilities;
/* renamed from: org.telegram.ui.Components.SeekBar */
/* loaded from: classes6.dex */
public class SeekBar {
    private static Paint paint;
    private static int thumbWidth;
    private static Path tmpPath;
    private static float[] tmpRadii;
    private int backgroundColor;
    private int backgroundSelectedColor;
    private float bufferedProgress;
    private int cacheColor;
    private int circleColor;
    private float currentRadius;
    private SeekBarDelegate delegate;
    private int height;
    private CharSequence lastCaption;
    private long lastTimestampUpdate;
    private long lastUpdateTime;
    private long lastVideoDuration;
    private View parentView;
    private int progressColor;
    private boolean selected;
    private float thumbProgress;
    private StaticLayout[] timestampLabel;
    private TextPaint timestampLabelPaint;
    private ArrayList<Pair<Float, URLSpanNoUnderline>> timestamps;
    private int width;
    private int thumbX = 0;
    private int draggingThumbX = 0;
    private int thumbDX = 0;
    private boolean pressed = false;
    private RectF rect = new RectF();
    private int lineHeight = AndroidUtilities.m50dp(2);
    private float alpha = 1.0f;
    private float timestampsAppearing = BitmapDescriptorFactory.HUE_RED;
    private int currentTimestamp = -1;
    private float timestampChangeT = 1.0f;

    /* renamed from: org.telegram.ui.Components.SeekBar$SeekBarDelegate */
    /* loaded from: classes6.dex */
    public interface SeekBarDelegate {

        /* renamed from: org.telegram.ui.Components.SeekBar$SeekBarDelegate$-CC  reason: invalid class name */
        /* loaded from: classes6.dex */
        public final /* synthetic */ class CC {
            public static void $default$onSeekBarContinuousDrag(SeekBarDelegate seekBarDelegate, float f) {
            }

            public static void $default$onSeekBarPressed(SeekBarDelegate seekBarDelegate) {
            }

            public static void $default$onSeekBarReleased(SeekBarDelegate seekBarDelegate) {
            }
        }

        void onSeekBarContinuousDrag(float f);

        void onSeekBarDrag(float f);

        void onSeekBarPressed();

        void onSeekBarReleased();
    }

    protected void onTimestampUpdate(URLSpanNoUnderline uRLSpanNoUnderline) {
    }

    public SeekBar(View view) {
        if (paint == null) {
            paint = new Paint(1);
        }
        this.parentView = view;
        thumbWidth = AndroidUtilities.m50dp(24);
        this.currentRadius = AndroidUtilities.m50dp(6);
    }

    public void setDelegate(SeekBarDelegate seekBarDelegate) {
        this.delegate = seekBarDelegate;
    }

    public boolean onTouch(int i, float f, float f2) {
        SeekBarDelegate seekBarDelegate;
        if (i == 0) {
            int i2 = this.height;
            int i3 = thumbWidth;
            int i4 = (i2 - i3) / 2;
            if (f >= (-i4)) {
                int i5 = this.width;
                if (f <= i5 + i4 && f2 >= BitmapDescriptorFactory.HUE_RED && f2 <= i2) {
                    int i6 = this.thumbX;
                    if (i6 - i4 > f || f > i6 + i3 + i4) {
                        int i7 = ((int) f) - (i3 / 2);
                        this.thumbX = i7;
                        if (i7 < 0) {
                            this.thumbX = 0;
                        } else if (i7 > i5 - i3) {
                            this.thumbX = i5 - i3;
                        }
                    }
                    this.pressed = true;
                    int i8 = this.thumbX;
                    this.draggingThumbX = i8;
                    this.thumbDX = (int) (f - i8);
                    return true;
                }
            }
        } else if (i == 1 || i == 3) {
            if (this.pressed) {
                int i9 = this.draggingThumbX;
                this.thumbX = i9;
                if (i == 1 && (seekBarDelegate = this.delegate) != null) {
                    seekBarDelegate.onSeekBarDrag(i9 / (this.width - thumbWidth));
                }
                this.pressed = false;
                return true;
            }
        } else if (i == 2 && this.pressed) {
            int i10 = (int) (f - this.thumbDX);
            this.draggingThumbX = i10;
            if (i10 < 0) {
                this.draggingThumbX = 0;
            } else {
                int i11 = this.width;
                int i12 = thumbWidth;
                if (i10 > i11 - i12) {
                    this.draggingThumbX = i11 - i12;
                }
            }
            SeekBarDelegate seekBarDelegate2 = this.delegate;
            if (seekBarDelegate2 != null) {
                seekBarDelegate2.onSeekBarContinuousDrag(this.draggingThumbX / (this.width - thumbWidth));
            }
            return true;
        }
        return false;
    }

    public void setColors(int i, int i2, int i3, int i4, int i5) {
        this.backgroundColor = i;
        this.cacheColor = i2;
        this.circleColor = i4;
        this.progressColor = i3;
        this.backgroundSelectedColor = i5;
    }

    public void setAlpha(float f) {
        this.alpha = f;
    }

    public void setProgress(float f) {
        this.thumbProgress = f;
        int ceil = (int) Math.ceil((this.width - thumbWidth) * f);
        this.thumbX = ceil;
        if (ceil < 0) {
            this.thumbX = 0;
            return;
        }
        int i = this.width;
        int i2 = thumbWidth;
        if (ceil > i - i2) {
            this.thumbX = i - i2;
        }
    }

    public void setBufferedProgress(float f) {
        this.bufferedProgress = f;
    }

    public float getProgress() {
        return this.thumbX / (this.width - thumbWidth);
    }

    public boolean isDragging() {
        return this.pressed;
    }

    public void setSelected(boolean z) {
        this.selected = z;
    }

    public void setSize(int i, int i2) {
        if (this.width == i && this.height == i2) {
            return;
        }
        this.width = i;
        this.height = i2;
        setProgress(this.thumbProgress);
    }

    public int getWidth() {
        return this.width - thumbWidth;
    }

    public void draw(Canvas canvas) {
        int i;
        float f = this.alpha;
        if (f <= BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        if (f < 1.0f) {
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.width, this.height, (int) (f * 255.0f), 31);
        }
        RectF rectF = this.rect;
        int i2 = thumbWidth;
        int i3 = this.height;
        int i4 = this.lineHeight;
        rectF.set(i2 / 2, (i3 / 2) - (i4 / 2), this.width - (i2 / 2), (i3 / 2) + (i4 / 2));
        paint.setColor(this.selected ? this.backgroundSelectedColor : this.backgroundColor);
        drawProgressBar(canvas, this.rect, paint);
        if (this.bufferedProgress > BitmapDescriptorFactory.HUE_RED) {
            paint.setColor(this.selected ? this.backgroundSelectedColor : this.cacheColor);
            RectF rectF2 = this.rect;
            int i5 = thumbWidth;
            int i6 = this.height;
            int i7 = this.lineHeight;
            rectF2.set(i5 / 2, (i6 / 2) - (i7 / 2), (i5 / 2) + (this.bufferedProgress * (this.width - i5)), (i6 / 2) + (i7 / 2));
            drawProgressBar(canvas, this.rect, paint);
        }
        RectF rectF3 = this.rect;
        float f2 = thumbWidth / 2;
        int i8 = this.height;
        int i9 = this.lineHeight;
        rectF3.set(f2, (i8 / 2) - (i9 / 2), (i / 2) + (this.pressed ? this.draggingThumbX : this.thumbX), (i8 / 2) + (i9 / 2));
        paint.setColor(this.progressColor);
        drawProgressBar(canvas, this.rect, paint);
        paint.setColor(this.circleColor);
        float m50dp = AndroidUtilities.m50dp(this.pressed ? 8 : 6);
        if (this.currentRadius != m50dp) {
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.lastUpdateTime;
            if (elapsedRealtime > 18) {
                elapsedRealtime = 16;
            }
            float f3 = this.currentRadius;
            if (f3 < m50dp) {
                float m50dp2 = f3 + (AndroidUtilities.m50dp(1) * (((float) elapsedRealtime) / 60.0f));
                this.currentRadius = m50dp2;
                if (m50dp2 > m50dp) {
                    this.currentRadius = m50dp;
                }
            } else {
                float m50dp3 = f3 - (AndroidUtilities.m50dp(1) * (((float) elapsedRealtime) / 60.0f));
                this.currentRadius = m50dp3;
                if (m50dp3 < m50dp) {
                    this.currentRadius = m50dp;
                }
            }
            View view = this.parentView;
            if (view != null) {
                view.invalidate();
            }
        }
        canvas.drawCircle((this.pressed ? this.draggingThumbX : this.thumbX) + (thumbWidth / 2), this.height / 2, this.currentRadius, paint);
        if (this.alpha < 1.0f) {
            canvas.restore();
        }
        updateTimestampAnimation();
    }

    public void clearTimestamps() {
        this.timestamps = null;
        this.currentTimestamp = -1;
        this.timestampsAppearing = BitmapDescriptorFactory.HUE_RED;
        StaticLayout[] staticLayoutArr = this.timestampLabel;
        if (staticLayoutArr != null) {
            staticLayoutArr[1] = null;
            staticLayoutArr[0] = null;
        }
        this.lastCaption = null;
        this.lastVideoDuration = -1L;
    }

    public void updateTimestamps(MessageObject messageObject, Long l) {
        Integer parseInt;
        String str;
        if (messageObject == null) {
            clearTimestamps();
            return;
        }
        if (l == null) {
            l = Long.valueOf(messageObject.getDuration() * 1000);
        }
        if (l == null || l.longValue() < 0) {
            clearTimestamps();
            return;
        }
        CharSequence charSequence = messageObject.caption;
        if (messageObject.isYouTubeVideo()) {
            if (messageObject.youtubeDescription == null && (str = messageObject.messageOwner.media.webpage.description) != null) {
                messageObject.youtubeDescription = SpannableString.valueOf(str);
                MessageObject.addUrlsByPattern(messageObject.isOut(), messageObject.youtubeDescription, false, 3, (int) l.longValue(), false);
            }
            charSequence = messageObject.youtubeDescription;
        }
        if (charSequence == this.lastCaption && this.lastVideoDuration == l.longValue()) {
            return;
        }
        this.lastCaption = charSequence;
        this.lastVideoDuration = l.longValue();
        if (!(charSequence instanceof Spanned)) {
            this.timestamps = null;
            this.currentTimestamp = -1;
            this.timestampsAppearing = BitmapDescriptorFactory.HUE_RED;
            StaticLayout[] staticLayoutArr = this.timestampLabel;
            if (staticLayoutArr != null) {
                staticLayoutArr[1] = null;
                staticLayoutArr[0] = null;
                return;
            }
            return;
        }
        Spanned spanned = (Spanned) charSequence;
        try {
            URLSpanNoUnderline[] uRLSpanNoUnderlineArr = (URLSpanNoUnderline[]) spanned.getSpans(0, spanned.length(), URLSpanNoUnderline.class);
            this.timestamps = new ArrayList<>();
            this.timestampsAppearing = BitmapDescriptorFactory.HUE_RED;
            if (this.timestampLabelPaint == null) {
                TextPaint textPaint = new TextPaint(1);
                this.timestampLabelPaint = textPaint;
                textPaint.setTextSize(AndroidUtilities.m50dp(12));
                this.timestampLabelPaint.setColor(-1);
            }
            for (URLSpanNoUnderline uRLSpanNoUnderline : uRLSpanNoUnderlineArr) {
                try {
                    if (uRLSpanNoUnderline != null && uRLSpanNoUnderline.getURL() != null && uRLSpanNoUnderline.label != null && uRLSpanNoUnderline.getURL().startsWith("audio?") && (parseInt = Utilities.parseInt((CharSequence) uRLSpanNoUnderline.getURL().substring(6))) != null && parseInt.intValue() >= 0) {
                        float intValue = ((float) (parseInt.intValue() * 1000)) / ((float) l.longValue());
                        Emoji.replaceEmoji(new SpannableStringBuilder(uRLSpanNoUnderline.label), this.timestampLabelPaint.getFontMetricsInt(), AndroidUtilities.m50dp(14), false);
                        this.timestamps.add(new Pair<>(Float.valueOf(intValue), uRLSpanNoUnderline));
                    }
                } catch (Exception e) {
                    FileLog.m45e(e);
                }
            }
            Collections.sort(this.timestamps, SeekBar$$ExternalSyntheticLambda0.INSTANCE);
        } catch (Exception e2) {
            FileLog.m45e(e2);
            this.timestamps = null;
            this.currentTimestamp = -1;
            this.timestampsAppearing = BitmapDescriptorFactory.HUE_RED;
            StaticLayout[] staticLayoutArr2 = this.timestampLabel;
            if (staticLayoutArr2 != null) {
                staticLayoutArr2[1] = null;
                staticLayoutArr2[0] = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$updateTimestamps$0(Pair pair, Pair pair2) {
        if (((Float) pair.first).floatValue() > ((Float) pair2.first).floatValue()) {
            return 1;
        }
        return ((Float) pair2.first).floatValue() > ((Float) pair.first).floatValue() ? -1 : 0;
    }

    private void drawProgressBar(Canvas canvas, RectF rectF, Paint paint2) {
        int i;
        float f;
        float f2 = thumbWidth / 2.0f;
        ArrayList<Pair<Float, URLSpanNoUnderline>> arrayList = this.timestamps;
        if (arrayList == null || arrayList.isEmpty()) {
            canvas.drawRoundRect(rectF, f2, f2, paint2);
            return;
        }
        float f3 = rectF.bottom;
        int i2 = thumbWidth;
        float f4 = i2 / 2.0f;
        float f5 = this.width - (i2 / 2.0f);
        AndroidUtilities.rectTmp.set(rectF);
        float m51dp = AndroidUtilities.m51dp(this.timestampsAppearing * 1.0f) / 2.0f;
        if (tmpPath == null) {
            tmpPath = new Path();
        }
        tmpPath.reset();
        float m50dp = AndroidUtilities.m50dp(4) / (f5 - f4);
        int i3 = 0;
        while (true) {
            if (i3 >= this.timestamps.size()) {
                i3 = -1;
                break;
            } else if (((Float) this.timestamps.get(i3).first).floatValue() >= m50dp) {
                break;
            } else {
                i3++;
            }
        }
        if (i3 < 0) {
            i3 = 0;
        }
        int i4 = 1;
        int size = this.timestamps.size() - 1;
        while (true) {
            if (size < 0) {
                i = -1;
                break;
            } else if (1.0f - ((Float) this.timestamps.get(size).first).floatValue() >= m50dp) {
                i = size + 1;
                break;
            } else {
                size--;
            }
        }
        if (i < 0) {
            i = this.timestamps.size();
        }
        int i5 = i3;
        while (i5 <= i) {
            float f6 = BitmapDescriptorFactory.HUE_RED;
            float floatValue = i5 == i3 ? BitmapDescriptorFactory.HUE_RED : ((Float) this.timestamps.get(i5 - 1).first).floatValue();
            float floatValue2 = i5 == i ? 1.0f : ((Float) this.timestamps.get(i5).first).floatValue();
            while (i5 != i && i5 != 0 && i5 < this.timestamps.size() - i4 && ((Float) this.timestamps.get(i5).first).floatValue() - floatValue <= m50dp) {
                i5++;
                floatValue2 = ((Float) this.timestamps.get(i5).first).floatValue();
            }
            RectF rectF2 = AndroidUtilities.rectTmp;
            rectF2.left = AndroidUtilities.lerp(f4, f5, floatValue) + (i5 > 0 ? m51dp : BitmapDescriptorFactory.HUE_RED);
            float lerp = AndroidUtilities.lerp(f4, f5, floatValue2);
            if (i5 < i) {
                f6 = m51dp;
            }
            float f7 = lerp - f6;
            rectF2.right = f7;
            float f8 = rectF.right;
            boolean z = f7 > f8;
            if (z) {
                rectF2.right = f8;
            }
            float f9 = rectF2.right;
            float f10 = rectF.left;
            if (f9 < f10) {
                f = m51dp;
            } else {
                if (rectF2.left < f10) {
                    rectF2.left = f10;
                }
                if (tmpRadii == null) {
                    tmpRadii = new float[8];
                }
                if (i5 == i3 || (z && rectF2.left >= rectF.left)) {
                    f = m51dp;
                    float[] fArr = tmpRadii;
                    fArr[7] = f2;
                    fArr[6] = f2;
                    fArr[1] = f2;
                    fArr[0] = f2;
                    float f11 = 0.7f * f2 * this.timestampsAppearing;
                    fArr[5] = f11;
                    fArr[4] = f11;
                    fArr[3] = f11;
                    fArr[2] = f11;
                } else if (i5 >= i) {
                    float[] fArr2 = tmpRadii;
                    f = m51dp;
                    float f12 = 0.7f * f2 * this.timestampsAppearing;
                    fArr2[7] = f12;
                    fArr2[6] = f12;
                    fArr2[1] = f12;
                    fArr2[0] = f12;
                    fArr2[5] = f2;
                    fArr2[4] = f2;
                    fArr2[3] = f2;
                    fArr2[2] = f2;
                } else {
                    f = m51dp;
                    float[] fArr3 = tmpRadii;
                    float f13 = this.timestampsAppearing * 0.7f * f2;
                    fArr3[5] = f13;
                    fArr3[4] = f13;
                    fArr3[3] = f13;
                    fArr3[2] = f13;
                    fArr3[7] = f13;
                    fArr3[6] = f13;
                    fArr3[1] = f13;
                    fArr3[0] = f13;
                }
                tmpPath.addRoundRect(rectF2, tmpRadii, Path.Direction.CW);
                if (z) {
                    break;
                }
            }
            i5++;
            m51dp = f;
            i4 = 1;
        }
        canvas.drawPath(tmpPath, paint2);
    }

    private void updateTimestampAnimation() {
        View view;
        ArrayList<Pair<Float, URLSpanNoUnderline>> arrayList = this.timestamps;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        float f = (this.pressed ? this.draggingThumbX : this.thumbX) / (this.width - thumbWidth);
        int size = this.timestamps.size() - 1;
        while (true) {
            if (size < 0) {
                size = -1;
                break;
            } else if (((Float) this.timestamps.get(size).first).floatValue() - 0.001f <= f) {
                break;
            } else {
                size--;
            }
        }
        if (this.timestampLabel == null) {
            this.timestampLabel = new StaticLayout[2];
        }
        int i = thumbWidth;
        Math.abs((i / 2.0f) - (this.width - (i / 2.0f)));
        AndroidUtilities.m50dp(66);
        if (size != this.currentTimestamp) {
            if (this.pressed && (view = this.parentView) != null) {
                try {
                    view.performHapticFeedback(9, 1);
                } catch (Exception unused) {
                }
            }
            this.currentTimestamp = size;
            if (size >= 0 && size < this.timestamps.size()) {
                onTimestampUpdate((URLSpanNoUnderline) this.timestamps.get(this.currentTimestamp).second);
            }
        }
        if (this.timestampChangeT < 1.0f) {
            this.timestampChangeT = Math.min(this.timestampChangeT + (((float) Math.min(17L, Math.abs(SystemClock.elapsedRealtime() - this.lastTimestampUpdate))) / (this.timestamps.size() > 8 ? 160.0f : 220.0f)), 1.0f);
            View view2 = this.parentView;
            if (view2 != null) {
                view2.invalidate();
            }
            this.lastTimestampUpdate = SystemClock.elapsedRealtime();
        }
        if (this.timestampsAppearing < 1.0f) {
            this.timestampsAppearing = Math.min(this.timestampsAppearing + (((float) Math.min(17L, Math.abs(SystemClock.elapsedRealtime() - this.lastTimestampUpdate))) / 200.0f), 1.0f);
            View view3 = this.parentView;
            if (view3 != null) {
                view3.invalidate();
            }
            SystemClock.elapsedRealtime();
        }
    }
}
