package org.telegram.p043ui.Components;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import android.util.StateSet;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.utils.Callbacks$Callback;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.ChatMessageCell;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$InputPeer;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_messages_transcribeAudio;
import org.telegram.tgnet.TLRPC$TL_messages_transcribedAudio;
/* renamed from: org.telegram.ui.Components.TranscribeButton */
/* loaded from: classes6.dex */
public class TranscribeButton {
    private static final int[] pressedState = {16842910, 16842919};
    private static HashMap<Integer, MessageObject> transcribeOperationsByDialogPosition;
    private static HashMap<Long, MessageObject> transcribeOperationsById;
    private static ArrayList<Integer> videoTranscriptionsOpen;

    /* renamed from: a */
    private float f1977a;
    private final AnimatedFloat animatedDrawLock;

    /* renamed from: b */
    private float f1978b;
    private float backgroundBack;
    private int backgroundColor;
    private Paint backgroundPaint;
    private Path boundsPath;
    private Paint clipLockPaint;
    private int color;
    private int diameter;
    private boolean drawLock;
    private int iconColor;
    private RLottieDrawable inIconDrawable;
    private int inIconDrawableAlpha;
    private boolean isForkTranscribe;
    private boolean isOpen;
    private boolean loading;
    private final AnimatedFloat loadingFloat;
    private Path lockHandlePath;
    private float lockHandlePathDensity;
    private Paint lockPaint;
    private Paint lockStrokePaint;
    private RLottieDrawable outIconDrawable;
    private int outIconDrawableAlpha;
    private ChatMessageCell parent;
    private boolean premium;
    private Rect pressBounds;
    private Path progressClipPath;
    private int radius;
    private int rippleColor;
    private SeekBarWaveform seekBar;
    private float[] segments;
    private Drawable selectorDrawable;
    private boolean shouldBeOpen;
    private Paint strokePaint;
    private boolean clickedToOpen = false;
    private boolean pressed = false;
    private final FastOutSlowInInterpolator interpolator = new FastOutSlowInInterpolator();
    private long start = SystemClock.elapsedRealtime();
    private Rect bounds = new Rect(0, 0, AndroidUtilities.m107dp(30), AndroidUtilities.m107dp(30));

    public void drawGradientBackground(Canvas canvas, Rect rect, float f) {
        throw null;
    }

    protected void onOpen() {
        throw null;
    }

    public void onTap() {
        onTap(true);
    }

    public static boolean finishTranscription(MessageObject messageObject, long j, String str) {
        return finishTranscription(messageObject, j, str, false);
    }

    public TranscribeButton(ChatMessageCell chatMessageCell, SeekBarWaveform seekBarWaveform) {
        boolean z = false;
        this.parent = chatMessageCell;
        this.seekBar = seekBarWaveform;
        Rect rect = new Rect(this.bounds);
        this.pressBounds = rect;
        rect.inset(AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(8));
        RLottieDrawable rLottieDrawable = new RLottieDrawable(C3632R.raw.transcribe_out, "transcribe_out", AndroidUtilities.m107dp(26), AndroidUtilities.m107dp(26));
        this.outIconDrawable = rLottieDrawable;
        rLottieDrawable.setCurrentFrame(0);
        this.outIconDrawable.setCallback(chatMessageCell);
        this.outIconDrawable.setOnFinishCallback(new Runnable() { // from class: org.telegram.ui.Components.TranscribeButton$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                TranscribeButton.this.lambda$new$0();
            }
        }, 19);
        this.outIconDrawable.setAllowDecodeSingleFrame(true);
        RLottieDrawable rLottieDrawable2 = new RLottieDrawable(C3632R.raw.transcribe_in, "transcribe_in", AndroidUtilities.m107dp(26), AndroidUtilities.m107dp(26));
        this.inIconDrawable = rLottieDrawable2;
        rLottieDrawable2.setCurrentFrame(0);
        this.inIconDrawable.setCallback(chatMessageCell);
        this.inIconDrawable.setMasterParent(chatMessageCell);
        this.inIconDrawable.setOnFinishCallback(new Runnable() { // from class: org.telegram.ui.Components.TranscribeButton$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                TranscribeButton.this.lambda$new$1();
            }
        }, 19);
        this.inIconDrawable.setAllowDecodeSingleFrame(true);
        this.isOpen = false;
        this.shouldBeOpen = false;
        if (chatMessageCell.getMessageObject() != null && UserConfig.getInstance(chatMessageCell.getMessageObject().currentAccount).isPremium()) {
            z = true;
        }
        this.premium = z;
        if (!z && chatMessageCell.isAllowForkTranscribe()) {
            this.isForkTranscribe = true;
            this.premium = true;
        }
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.loadingFloat = new AnimatedFloat(chatMessageCell, 250L, cubicBezierInterpolator);
        this.animatedDrawLock = new AnimatedFloat(chatMessageCell, 250L, cubicBezierInterpolator);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        this.outIconDrawable.stop();
        this.inIconDrawable.stop();
        this.shouldBeOpen = true;
        this.isOpen = true;
        this.inIconDrawable.setCurrentFrame(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        this.inIconDrawable.stop();
        this.outIconDrawable.stop();
        this.shouldBeOpen = false;
        this.isOpen = false;
        this.outIconDrawable.setCurrentFrame(0);
    }

    public void setLock(boolean z, boolean z2) {
        ChatMessageCell chatMessageCell;
        if (this.drawLock != z && (chatMessageCell = this.parent) != null) {
            chatMessageCell.invalidate();
        }
        this.drawLock = z;
        if (z2) {
            return;
        }
        this.animatedDrawLock.set(z, true);
    }

    public void setLoading(boolean z, boolean z2) {
        this.loading = z;
        this.seekBar.setLoading(z);
        if (!z2) {
            this.loadingFloat.set(this.loading, true);
        } else if (this.loadingFloat.get() <= BitmapDescriptorFactory.HUE_RED) {
            this.start = SystemClock.elapsedRealtime();
        }
        ChatMessageCell chatMessageCell = this.parent;
        if (chatMessageCell != null) {
            chatMessageCell.invalidate();
        }
    }

    public void setOpen(boolean z, boolean z2) {
        if (!this.shouldBeOpen && z && this.clickedToOpen) {
            this.clickedToOpen = false;
            onOpen();
        }
        boolean z3 = this.shouldBeOpen;
        this.shouldBeOpen = z;
        if (!z2) {
            this.isOpen = z;
            this.inIconDrawable.stop();
            this.outIconDrawable.stop();
            this.inIconDrawable.setCurrentFrame(0);
            this.outIconDrawable.setCurrentFrame(0);
        } else if (z && !z3) {
            this.isOpen = false;
            this.inIconDrawable.setCurrentFrame(0);
            this.outIconDrawable.setCurrentFrame(0);
            this.outIconDrawable.start();
        } else if (!z && z3) {
            this.isOpen = true;
            this.outIconDrawable.setCurrentFrame(0);
            this.inIconDrawable.setCurrentFrame(0);
            this.inIconDrawable.start();
        }
        ChatMessageCell chatMessageCell = this.parent;
        if (chatMessageCell != null) {
            chatMessageCell.invalidate();
        }
    }

    public boolean onTouch(int i, float f, float f2) {
        if (i == 1 || i == 3) {
            if (this.pressed && i == 1) {
                onTap();
                return true;
            }
            this.pressed = false;
            return false;
        } else if (this.pressBounds.contains((int) f, (int) f2)) {
            if (i == 0) {
                this.pressed = true;
            }
            if (this.pressed && Build.VERSION.SDK_INT >= 21) {
                Drawable drawable = this.selectorDrawable;
                if (drawable instanceof RippleDrawable) {
                    drawable.setHotspot(f, f2);
                    this.selectorDrawable.setState(pressedState);
                    this.parent.invalidate();
                }
            }
            return true;
        } else {
            return false;
        }
    }

    public void onTap(boolean z) {
        boolean z2;
        ChatMessageCell chatMessageCell = this.parent;
        if (chatMessageCell == null) {
            return;
        }
        if (this.isForkTranscribe && z) {
            Drawable drawable = this.selectorDrawable;
            if (drawable instanceof RippleDrawable) {
                drawable.setState(StateSet.NOTHING);
                this.parent.invalidate();
            }
            this.pressed = false;
            this.parent.getDelegate().runWithActivationCheck(new Callbacks$Callback() { // from class: org.telegram.ui.Components.TranscribeButton$$ExternalSyntheticLambda0
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    TranscribeButton.this.lambda$onTap$2();
                }
            });
            return;
        }
        this.clickedToOpen = false;
        boolean z3 = this.shouldBeOpen;
        boolean z4 = !z3;
        if (!z3) {
            z2 = !this.loading;
            if ((this.premium || canTranscribeTrial(chatMessageCell.getMessageObject())) && this.parent.getMessageObject().isSent()) {
                setLoading(true, true);
            }
        } else {
            setOpen(false, true);
            setLoading(false, true);
            z2 = true;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            Drawable drawable2 = this.selectorDrawable;
            if (drawable2 instanceof RippleDrawable) {
                drawable2.setState(StateSet.NOTHING);
                this.parent.invalidate();
            }
        }
        this.pressed = false;
        if (z2) {
            if (!this.premium && z4) {
                if (canTranscribeTrial(this.parent.getMessageObject()) || (this.parent.getMessageObject() != null && this.parent.getMessageObject().messageOwner != null && !TextUtils.isEmpty(this.parent.getMessageObject().messageOwner.voiceTranscription))) {
                    transcribePressed(this.parent.getMessageObject(), z4, this.parent.getDelegate(), this.isForkTranscribe ? this.parent : null);
                    return;
                } else if (this.parent.getDelegate() != null) {
                    if (MessagesController.getInstance(this.parent.currentAccount).transcribeAudioTrialWeeklyNumber > 0) {
                        this.parent.getDelegate().needShowPremiumBulletin(3);
                        return;
                    } else {
                        this.parent.getDelegate().needShowPremiumBulletin(0);
                        return;
                    }
                } else {
                    return;
                }
            }
            if (z4) {
                this.clickedToOpen = true;
            }
            transcribePressed(this.parent.getMessageObject(), z4, this.parent.getDelegate(), this.isForkTranscribe ? this.parent : null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTap$2() {
        onTap(false);
    }

    public void setColor(int i, int i2, boolean z, float f) {
        boolean z2 = this.color != i;
        this.color = i;
        this.iconColor = i;
        int alphaComponent = ColorUtils.setAlphaComponent(i, (int) (Color.alpha(i) * 0.156f));
        this.backgroundColor = alphaComponent;
        this.backgroundBack = f;
        this.rippleColor = Theme.blendOver(alphaComponent, ColorUtils.setAlphaComponent(i, (int) (Color.alpha(i) * (Theme.isCurrentThemeDark() ? 0.3f : 0.2f))));
        if (this.backgroundPaint == null) {
            this.backgroundPaint = new Paint();
        }
        this.backgroundPaint.setColor(this.backgroundColor);
        Paint paint = this.backgroundPaint;
        paint.setAlpha((int) (paint.getAlpha() * (1.0f - f)));
        if (z2 || this.selectorDrawable == null) {
            Drawable createSimpleSelectorRoundRectDrawable = Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m107dp(8), 0, this.rippleColor);
            this.selectorDrawable = createSimpleSelectorRoundRectDrawable;
            createSimpleSelectorRoundRectDrawable.setCallback(this.parent);
        }
        if (z2) {
            this.inIconDrawable.beginApplyLayerColors();
            this.inIconDrawable.setLayerColor("Artboard Outlines.**", this.iconColor);
            this.inIconDrawable.commitApplyLayerColors();
            this.inIconDrawable.setAllowDecodeSingleFrame(true);
            this.inIconDrawable.updateCurrentFrame(0L, false);
            RLottieDrawable rLottieDrawable = this.inIconDrawable;
            int alpha = Color.alpha(i);
            this.inIconDrawableAlpha = alpha;
            rLottieDrawable.setAlpha(alpha);
            this.outIconDrawable.beginApplyLayerColors();
            this.outIconDrawable.setLayerColor("Artboard Outlines.**", this.iconColor);
            this.outIconDrawable.commitApplyLayerColors();
            this.outIconDrawable.setAllowDecodeSingleFrame(true);
            this.outIconDrawable.updateCurrentFrame(0L, false);
            RLottieDrawable rLottieDrawable2 = this.outIconDrawable;
            int alpha2 = Color.alpha(i);
            this.outIconDrawableAlpha = alpha2;
            rLottieDrawable2.setAlpha(alpha2);
        }
        if (this.strokePaint == null) {
            Paint paint2 = new Paint(1);
            this.strokePaint = paint2;
            paint2.setStyle(Paint.Style.STROKE);
            this.strokePaint.setStrokeCap(Paint.Cap.ROUND);
        }
        this.strokePaint.setColor(i);
    }

    public void setBounds(int i, int i2, int i3, int i4, int i5) {
        if (i3 != this.bounds.width() || i4 != this.bounds.height()) {
            float f = i3 / 2.0f;
            float f2 = i5;
            float f3 = i4 / 2.0f;
            this.f1977a = (float) ((Math.atan((f - f2) / f3) * 180.0d) / 3.141592653589793d);
            this.f1978b = (float) ((Math.atan(f / (f3 - f2)) * 180.0d) / 3.141592653589793d);
        }
        this.bounds.set(i, i2, i + i3, i2 + i4);
        int min = Math.min(Math.min(i3, i4) / 2, i5);
        this.radius = min;
        this.diameter = min * 2;
    }

    public int width() {
        return this.bounds.width();
    }

    public int height() {
        return this.bounds.height();
    }

    public void draw(Canvas canvas, float f) {
        this.pressBounds.set(this.bounds.left - AndroidUtilities.m107dp(8), this.bounds.top - AndroidUtilities.m107dp(8), this.bounds.right + AndroidUtilities.m107dp(8), this.bounds.bottom + AndroidUtilities.m107dp(8));
        Path path = this.boundsPath;
        if (path == null) {
            this.boundsPath = new Path();
        } else {
            path.rewind();
        }
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(this.bounds);
        Path path2 = this.boundsPath;
        int i = this.radius;
        path2.addRoundRect(rectF, i, i, Path.Direction.CW);
        canvas.save();
        canvas.clipPath(this.boundsPath);
        float f2 = this.backgroundBack;
        if (f2 * f > BitmapDescriptorFactory.HUE_RED) {
            drawGradientBackground(canvas, this.bounds, f2 * f);
        }
        Paint paint = this.backgroundPaint;
        if (paint != null) {
            int alpha = paint.getAlpha();
            this.backgroundPaint.setAlpha((int) (alpha * f));
            canvas.drawRect(this.bounds, this.backgroundPaint);
            this.backgroundPaint.setAlpha(alpha);
        }
        Drawable drawable = this.selectorDrawable;
        if (drawable != null) {
            drawable.setBounds(this.bounds);
            this.selectorDrawable.draw(canvas);
        }
        canvas.restore();
        float f3 = this.loadingFloat.set(this.loading ? 1.0f : 0.0f);
        if (f3 > BitmapDescriptorFactory.HUE_RED) {
            float[] segments = getSegments(((float) (SystemClock.elapsedRealtime() - this.start)) * 0.75f);
            Path path3 = this.progressClipPath;
            if (path3 == null) {
                this.progressClipPath = new Path();
            } else {
                path3.rewind();
            }
            float max = Math.max(40.0f * f3, segments[1] - segments[0]);
            float f4 = segments[0] + ((1.0f - f3) * max * (this.loading ? 0.0f : 1.0f));
            float f5 = (max * f3) + f4;
            float f6 = f4 % 360.0f;
            float f7 = f5 % 360.0f;
            if (f6 < BitmapDescriptorFactory.HUE_RED) {
                f6 += 360.0f;
            }
            float f8 = f6;
            if (f7 < BitmapDescriptorFactory.HUE_RED) {
                f7 += 360.0f;
            }
            float f9 = f7;
            Path path4 = this.progressClipPath;
            int centerX = this.bounds.centerX();
            Rect rect = this.bounds;
            int i2 = rect.top;
            addLine(path4, centerX, i2, rect.right - this.radius, i2, f8, f9, BitmapDescriptorFactory.HUE_RED, this.f1977a);
            Path path5 = this.progressClipPath;
            Rect rect2 = this.bounds;
            addCorner(path5, rect2.right, rect2.top, this.diameter, 1, f8, f9, this.f1977a, this.f1978b);
            Path path6 = this.progressClipPath;
            Rect rect3 = this.bounds;
            int i3 = rect3.right;
            int i4 = rect3.top;
            int i5 = this.radius;
            float f10 = this.f1978b;
            addLine(path6, i3, i4 + i5, i3, rect3.bottom - i5, f8, f9, f10, 180.0f - f10);
            Path path7 = this.progressClipPath;
            Rect rect4 = this.bounds;
            addCorner(path7, rect4.right, rect4.bottom, this.diameter, 2, f8, f9, 180.0f - this.f1978b, 180.0f - this.f1977a);
            Path path8 = this.progressClipPath;
            Rect rect5 = this.bounds;
            int i6 = rect5.right;
            int i7 = this.radius;
            int i8 = rect5.bottom;
            int i9 = rect5.left + i7;
            float f11 = this.f1977a;
            addLine(path8, i6 - i7, i8, i9, i8, f8, f9, 180.0f - f11, f11 + 180.0f);
            Path path9 = this.progressClipPath;
            Rect rect6 = this.bounds;
            addCorner(path9, rect6.left, rect6.bottom, this.diameter, 3, f8, f9, this.f1977a + 180.0f, this.f1978b + 180.0f);
            Path path10 = this.progressClipPath;
            Rect rect7 = this.bounds;
            int i10 = rect7.left;
            int i11 = rect7.bottom;
            int i12 = this.radius;
            int i13 = rect7.top + i12;
            float f12 = this.f1978b;
            addLine(path10, i10, i11 - i12, i10, i13, f8, f9, f12 + 180.0f, 360.0f - f12);
            Path path11 = this.progressClipPath;
            Rect rect8 = this.bounds;
            addCorner(path11, rect8.left, rect8.top, this.diameter, 4, f8, f9, 360.0f - this.f1978b, 360.0f - this.f1977a);
            Path path12 = this.progressClipPath;
            Rect rect9 = this.bounds;
            addLine(path12, rect9.left + this.radius, rect9.top, rect9.centerX(), this.bounds.top, f8, f9, 360.0f - this.f1977a, 360.0f);
            this.strokePaint.setStrokeWidth(AndroidUtilities.m108dp(1.5f));
            int alpha2 = this.strokePaint.getAlpha();
            this.strokePaint.setAlpha((int) (alpha2 * f));
            canvas.drawPath(this.progressClipPath, this.strokePaint);
            this.strokePaint.setAlpha(alpha2);
            this.parent.invalidate();
        }
        canvas.save();
        canvas.translate(this.bounds.centerX() + AndroidUtilities.m107dp(-13), this.bounds.centerY() + AndroidUtilities.m107dp(-13));
        canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m107dp(26), AndroidUtilities.m107dp(26), 255, 31);
        if (this.isOpen) {
            this.inIconDrawable.setAlpha((int) (this.inIconDrawableAlpha * f));
            this.inIconDrawable.draw(canvas);
        } else {
            this.outIconDrawable.setAlpha((int) (this.outIconDrawableAlpha * f));
            this.outIconDrawable.draw(canvas);
        }
        drawLock(canvas);
        canvas.restore();
        canvas.restore();
    }

    private void drawLock(Canvas canvas) {
        float f = this.animatedDrawLock.set((!this.drawLock || this.isOpen || this.loading) ? false : true);
        if (f <= BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        canvas.save();
        canvas.translate(AndroidUtilities.m107dp(18), AndroidUtilities.m107dp(12));
        if (this.clipLockPaint == null) {
            Paint paint = new Paint(1);
            this.clipLockPaint = paint;
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        }
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(BitmapDescriptorFactory.HUE_RED, -AndroidUtilities.m108dp(0.4f), AndroidUtilities.m108dp(6.666f), AndroidUtilities.m108dp(8.733f));
        canvas.scale(f, f, rectF.centerX(), rectF.centerY());
        canvas.drawRoundRect(rectF, AndroidUtilities.m107dp(2), AndroidUtilities.m107dp(2), this.clipLockPaint);
        if (this.lockPaint == null) {
            this.lockPaint = new Paint(1);
        }
        this.lockPaint.setColor(this.iconColor);
        int i = (int) (f * 255.0f);
        this.lockPaint.setAlpha(i);
        rectF.set(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m108dp(3.33f), AndroidUtilities.m108dp(6.666f), AndroidUtilities.m108dp(8.33f));
        canvas.drawRoundRect(rectF, AndroidUtilities.m108dp(1.33f), AndroidUtilities.m108dp(1.33f), this.lockPaint);
        if (this.lockHandlePath == null || Math.abs(this.lockHandlePathDensity - AndroidUtilities.density) > 0.1f) {
            this.lockHandlePathDensity = AndroidUtilities.density;
            Path path = new Path();
            this.lockHandlePath = path;
            path.moveTo(AndroidUtilities.m108dp(1.66f), AndroidUtilities.m108dp(3.33f));
            this.lockHandlePath.lineTo(AndroidUtilities.m108dp(1.66f), AndroidUtilities.m107dp(2));
            rectF.set(AndroidUtilities.m108dp(1.66f), AndroidUtilities.m108dp(0.33f), AndroidUtilities.m108dp(4.99f), AndroidUtilities.m108dp(3.6599998f));
            this.lockHandlePath.arcTo(rectF, -180.0f, 180.0f, false);
            this.lockHandlePath.lineTo(AndroidUtilities.m107dp(5), AndroidUtilities.m108dp(3.33f));
        }
        if (this.lockStrokePaint == null) {
            Paint paint2 = new Paint(1);
            this.lockStrokePaint = paint2;
            paint2.setStyle(Paint.Style.STROKE);
        }
        this.lockStrokePaint.setStrokeWidth(AndroidUtilities.m107dp(1));
        this.lockStrokePaint.setColor(this.iconColor);
        this.lockStrokePaint.setAlpha(i);
        canvas.drawPath(this.lockHandlePath, this.lockStrokePaint);
        canvas.restore();
    }

    private float[] getSegments(long j) {
        int i;
        if (this.segments == null) {
            this.segments = new float[2];
        }
        long j2 = j % 5400;
        float[] fArr = this.segments;
        float f = ((float) (1520 * j2)) / 5400.0f;
        fArr[0] = f - 20.0f;
        fArr[1] = f;
        for (int i2 = 0; i2 < 4; i2++) {
            float[] fArr2 = this.segments;
            fArr2[1] = fArr2[1] + (this.interpolator.getInterpolation(((float) (j2 - (i2 * 1350))) / 667.0f) * 250.0f);
            float[] fArr3 = this.segments;
            fArr3[0] = fArr3[0] + (this.interpolator.getInterpolation(((float) (j2 - (i + 667))) / 667.0f) * 250.0f);
        }
        return this.segments;
    }

    private void addLine(Path path, int i, int i2, int i3, int i4, float f, float f2, float f3, float f4) {
        if (i == i3 && i2 == i4) {
            return;
        }
        if (f > f2) {
            float f5 = f4 - f3;
            addLine(path, i, i2, i3, i4, (f - f3) / f5, 1.0f);
            addLine(path, i, i2, i3, i4, BitmapDescriptorFactory.HUE_RED, (f2 - f3) / f5);
            return;
        }
        float f6 = f4 - f3;
        addLine(path, i, i2, i3, i4, Math.max((float) BitmapDescriptorFactory.HUE_RED, f - f3) / f6, (Math.min(f2, f4) - f3) / f6);
    }

    private void addLine(Path path, int i, int i2, int i3, int i4, float f, float f2) {
        if (i == i3 && i2 == i4) {
            return;
        }
        float clamp = MathUtils.clamp(f, (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
        float clamp2 = MathUtils.clamp(f2, (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
        if (clamp2 - clamp <= BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        path.moveTo(AndroidUtilities.lerp(i, i3, clamp), AndroidUtilities.lerp(i2, i4, clamp));
        path.lineTo(AndroidUtilities.lerp(i, i3, clamp2), AndroidUtilities.lerp(i2, i4, clamp2));
    }

    private void addCorner(Path path, int i, int i2, int i3, int i4, float f, float f2, float f3, float f4) {
        if (f > f2) {
            float f5 = f4 - f3;
            addCorner(path, i, i2, i3, i4, (f - f3) / f5, 1.0f);
            addCorner(path, i, i2, i3, i4, BitmapDescriptorFactory.HUE_RED, (f2 - f3) / f5);
            return;
        }
        float f6 = f4 - f3;
        addCorner(path, i, i2, i3, i4, Math.max((float) BitmapDescriptorFactory.HUE_RED, f - f3) / f6, (Math.min(f2, f4) - f3) / f6);
    }

    private void addCorner(Path path, int i, int i2, int i3, int i4, float f, float f2) {
        float clamp = MathUtils.clamp(f, (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
        float clamp2 = MathUtils.clamp(f2, (float) BitmapDescriptorFactory.HUE_RED, 1.0f) - clamp;
        if (clamp2 <= BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        if (i4 == 1) {
            AndroidUtilities.rectTmp.set(i - i3, i2, i, i2 + i3);
        } else if (i4 == 2) {
            AndroidUtilities.rectTmp.set(i - i3, i2 - i3, i, i2);
        } else if (i4 == 3) {
            AndroidUtilities.rectTmp.set(i, i2 - i3, i + i3, i2);
        } else if (i4 == 4) {
            AndroidUtilities.rectTmp.set(i, i2, i + i3, i2 + i3);
        }
        path.addArc(AndroidUtilities.rectTmp, ((i4 * 90) - 180) + (clamp * 90.0f), clamp2 * 90.0f);
    }

    /* renamed from: org.telegram.ui.Components.TranscribeButton$LoadingPointsSpan */
    /* loaded from: classes6.dex */
    public static class LoadingPointsSpan extends ImageSpan {
        private static LoadingPointsDrawable drawable;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public LoadingPointsSpan() {
            /*
                r6 = this;
                org.telegram.ui.Components.TranscribeButton$LoadingPointsDrawable r0 = org.telegram.p043ui.Components.TranscribeButton.LoadingPointsSpan.drawable
                if (r0 != 0) goto Ld
                org.telegram.ui.Components.TranscribeButton$LoadingPointsDrawable r0 = new org.telegram.ui.Components.TranscribeButton$LoadingPointsDrawable
                android.text.TextPaint r1 = org.telegram.p043ui.ActionBar.Theme.chat_msgTextPaint
                r0.<init>(r1)
                org.telegram.p043ui.Components.TranscribeButton.LoadingPointsSpan.drawable = r0
            Ld:
                r1 = 0
                r6.<init>(r0, r1)
                android.text.TextPaint r0 = org.telegram.p043ui.ActionBar.Theme.chat_msgTextPaint
                float r0 = r0.getTextSize()
                r2 = 1063507722(0x3f63d70a, float:0.89)
                float r0 = r0 * r2
                r2 = 1017370378(0x3ca3d70a, float:0.02)
                float r2 = r2 * r0
                int r2 = (int) r2
                android.graphics.drawable.Drawable r3 = r6.getDrawable()
                int r4 = (int) r0
                r5 = 1067450368(0x3fa00000, float:1.25)
                float r0 = r0 * r5
                int r0 = (int) r0
                int r0 = r0 + r2
                r3.setBounds(r1, r2, r4, r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.TranscribeButton.LoadingPointsSpan.<init>():void");
        }

        @Override // android.text.style.ReplacementSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            float textSize = textPaint.getTextSize() * 0.89f;
            int i = (int) (0.02f * textSize);
            getDrawable().setBounds(0, i, (int) textSize, ((int) (textSize * 1.25f)) + i);
            super.updateDrawState(textPaint);
        }
    }

    /* renamed from: org.telegram.ui.Components.TranscribeButton$LoadingPointsDrawable */
    /* loaded from: classes6.dex */
    private static class LoadingPointsDrawable extends Drawable {
        private int lastColor;
        private RLottieDrawable lottie;
        private Paint paint;

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }

        public LoadingPointsDrawable(TextPaint textPaint) {
            this.paint = textPaint;
            float textSize = textPaint.getTextSize() * 0.89f;
            RLottieDrawable rLottieDrawable = new RLottieDrawable(this, C3632R.raw.dots_loading, "dots_loading", (int) textSize, (int) (textSize * 1.25f)) { // from class: org.telegram.ui.Components.TranscribeButton.LoadingPointsDrawable.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // org.telegram.p043ui.Components.RLottieDrawable
                public boolean hasParentView() {
                    return true;
                }
            };
            this.lottie = rLottieDrawable;
            rLottieDrawable.setAutoRepeat(1);
            this.lottie.setCurrentFrame((int) ((((float) SystemClock.elapsedRealtime()) / 16.0f) % 60.0f));
            this.lottie.setAllowDecodeSingleFrame(true);
            this.lottie.start();
        }

        public void setColor(int i) {
            this.lottie.beginApplyLayerColors();
            this.lottie.setLayerColor("Comp 1.**", i);
            this.lottie.commitApplyLayerColors();
            this.lottie.setAllowDecodeSingleFrame(true);
            this.lottie.updateCurrentFrame(0L, false);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            int color = this.paint.getColor();
            if (color != this.lastColor) {
                setColor(color);
                this.lastColor = color;
            }
            this.lottie.draw(canvas);
        }
    }

    private static int reqInfoHash(MessageObject messageObject) {
        if (messageObject == null) {
            return 0;
        }
        return Objects.hash(Integer.valueOf(messageObject.currentAccount), Long.valueOf(messageObject.getDialogId()), Integer.valueOf(messageObject.getId()));
    }

    public static void openVideoTranscription(MessageObject messageObject) {
        if (messageObject == null || isVideoTranscriptionOpen(messageObject)) {
            return;
        }
        if (videoTranscriptionsOpen == null) {
            videoTranscriptionsOpen = new ArrayList<>(1);
        }
        videoTranscriptionsOpen.add(Integer.valueOf(reqInfoHash(messageObject)));
    }

    public static boolean isVideoTranscriptionOpen(MessageObject messageObject) {
        return videoTranscriptionsOpen != null && (!messageObject.isRoundVideo() || videoTranscriptionsOpen.contains(Integer.valueOf(reqInfoHash(messageObject))));
    }

    public static void resetVideoTranscriptionsOpen() {
        ArrayList<Integer> arrayList = videoTranscriptionsOpen;
        if (arrayList != null) {
            arrayList.clear();
        }
    }

    public static boolean isTranscribing(MessageObject messageObject) {
        HashMap<Long, MessageObject> hashMap;
        TLRPC$Message tLRPC$Message;
        HashMap<Integer, MessageObject> hashMap2 = transcribeOperationsByDialogPosition;
        return (hashMap2 != null && (hashMap2.containsValue(messageObject) || transcribeOperationsByDialogPosition.containsKey(Integer.valueOf(reqInfoHash(messageObject))))) || !((hashMap = transcribeOperationsById) == null || messageObject == null || (tLRPC$Message = messageObject.messageOwner) == null || !hashMap.containsKey(Long.valueOf(tLRPC$Message.voiceTranscriptionId)));
    }

    private static void transcribePressed(final MessageObject messageObject, boolean z, final ChatMessageCell.ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell) {
        if (messageObject == null || messageObject.messageOwner == null || !messageObject.isSent()) {
            return;
        }
        final int i = messageObject.currentAccount;
        final long elapsedRealtime = SystemClock.elapsedRealtime();
        TLRPC$InputPeer inputPeer = MessagesController.getInstance(i).getInputPeer(messageObject.messageOwner.peer_id);
        final long peerDialogId = DialogObject.getPeerDialogId(inputPeer);
        TLRPC$Message tLRPC$Message = messageObject.messageOwner;
        final int i2 = tLRPC$Message.f1626id;
        if (z) {
            if (tLRPC$Message.voiceTranscription != null && tLRPC$Message.voiceTranscriptionFinal) {
                openVideoTranscription(messageObject);
                messageObject.messageOwner.voiceTranscriptionOpen = true;
                MessagesStorage.getInstance(i).updateMessageVoiceTranscriptionOpen(peerDialogId, i2, messageObject.messageOwner);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.TranscribeButton$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        TranscribeButton.lambda$transcribePressed$3(i, messageObject);
                    }
                });
                return;
            }
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m105d("sending Transcription request, msg_id=" + i2 + " dialog_id=" + peerDialogId);
            }
            TLRPC$TL_messages_transcribeAudio tLRPC$TL_messages_transcribeAudio = new TLRPC$TL_messages_transcribeAudio();
            tLRPC$TL_messages_transcribeAudio.peer = inputPeer;
            tLRPC$TL_messages_transcribeAudio.msg_id = i2;
            if (transcribeOperationsByDialogPosition == null) {
                transcribeOperationsByDialogPosition = new HashMap<>();
            }
            transcribeOperationsByDialogPosition.put(Integer.valueOf(reqInfoHash(messageObject)), messageObject);
            int i3 = UserConfig.getInstance(i).isPremium() ? 0 : 1024;
            if (chatMessageCell != null) {
                chatMessageCell.getDelegate().didPressForkTranscribeButton(chatMessageCell);
                return;
            } else {
                ConnectionsManager.getInstance(i).sendRequest(tLRPC$TL_messages_transcribeAudio, new RequestDelegate() { // from class: org.telegram.ui.Components.TranscribeButton$$ExternalSyntheticLambda10
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                        TranscribeButton.lambda$transcribePressed$7(i, chatMessageCellDelegate, messageObject, elapsedRealtime, peerDialogId, i2, tLObject, tLRPC$TL_error);
                    }
                }, i3);
                return;
            }
        }
        HashMap<Integer, MessageObject> hashMap = transcribeOperationsByDialogPosition;
        if (hashMap != null) {
            hashMap.remove(Integer.valueOf(reqInfoHash(messageObject)));
        }
        messageObject.messageOwner.voiceTranscriptionOpen = false;
        MessagesStorage.getInstance(i).updateMessageVoiceTranscriptionOpen(peerDialogId, i2, messageObject.messageOwner);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.TranscribeButton$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                TranscribeButton.lambda$transcribePressed$8(i, messageObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$transcribePressed$3(int i, MessageObject messageObject) {
        NotificationCenter notificationCenter = NotificationCenter.getInstance(i);
        int i2 = NotificationCenter.voiceTranscriptionUpdate;
        Boolean bool = Boolean.TRUE;
        notificationCenter.lambda$postNotificationNameOnUIThread$1(i2, messageObject, null, null, bool, bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$transcribePressed$7(final int i, final ChatMessageCell.ChatMessageCellDelegate chatMessageCellDelegate, final MessageObject messageObject, long j, long j2, int i2, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        long j3;
        boolean z;
        String str;
        final String str2 = "";
        if (tLObject instanceof TLRPC$TL_messages_transcribedAudio) {
            final TLRPC$TL_messages_transcribedAudio tLRPC$TL_messages_transcribedAudio = (TLRPC$TL_messages_transcribedAudio) tLObject;
            String str3 = tLRPC$TL_messages_transcribedAudio.text;
            long j4 = tLRPC$TL_messages_transcribedAudio.transcription_id;
            z = !tLRPC$TL_messages_transcribedAudio.pending;
            if (!TextUtils.isEmpty(str3)) {
                str2 = str3;
            } else if (!z) {
                str2 = null;
            }
            if ((tLRPC$TL_messages_transcribedAudio.flags & 2) != 0) {
                MessagesController.getInstance(i).updateTranscribeAudioTrialCurrentNumber(tLRPC$TL_messages_transcribedAudio.trial_remains_num);
                MessagesController.getInstance(i).updateTranscribeAudioTrialCooldownUntil(tLRPC$TL_messages_transcribedAudio.trial_remains_until_date);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.TranscribeButton$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        TranscribeButton.lambda$transcribePressed$4(ChatMessageCell.ChatMessageCellDelegate.this, tLRPC$TL_messages_transcribedAudio);
                    }
                });
            }
            if (transcribeOperationsById == null) {
                transcribeOperationsById = new HashMap<>();
            }
            transcribeOperationsById.put(Long.valueOf(j4), messageObject);
            messageObject.messageOwner.voiceTranscriptionId = j4;
            j3 = j4;
        } else if (tLRPC$TL_error != null && (str = tLRPC$TL_error.text) != null && str.startsWith("FLOOD_WAIT_")) {
            MessagesController.getInstance(i).updateTranscribeAudioTrialCurrentNumber(0);
            MessagesController.getInstance(i).updateTranscribeAudioTrialCooldownUntil(ConnectionsManager.getInstance(i).getCurrentTime() + Utilities.parseInt((CharSequence) tLRPC$TL_error.text).intValue());
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.TranscribeButton$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    TranscribeButton.lambda$transcribePressed$5(MessageObject.this, chatMessageCellDelegate, i);
                }
            });
            return;
        } else {
            j3 = 0;
            z = true;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime() - j;
        openVideoTranscription(messageObject);
        TLRPC$Message tLRPC$Message = messageObject.messageOwner;
        tLRPC$Message.voiceTranscriptionOpen = true;
        tLRPC$Message.voiceTranscriptionFinal = z;
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m105d("Transcription request sent, received final=" + z + " id=" + j3 + " text=" + str2);
        }
        final long j5 = j3;
        MessagesStorage.getInstance(i).updateMessageVoiceTranscription(j2, i2, str2, messageObject.messageOwner);
        if (z) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.TranscribeButton$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    TranscribeButton.finishTranscription(MessageObject.this, j5, str2);
                }
            }, Math.max(0L, 350 - elapsedRealtime));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$transcribePressed$4(ChatMessageCell.ChatMessageCellDelegate chatMessageCellDelegate, TLRPC$TL_messages_transcribedAudio tLRPC$TL_messages_transcribedAudio) {
        if (chatMessageCellDelegate != null) {
            chatMessageCellDelegate.needShowPremiumBulletin(tLRPC$TL_messages_transcribedAudio.trial_remains_num > 0 ? 1 : 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$transcribePressed$5(MessageObject messageObject, ChatMessageCell.ChatMessageCellDelegate chatMessageCellDelegate, int i) {
        HashMap<Integer, MessageObject> hashMap = transcribeOperationsByDialogPosition;
        if (hashMap != null) {
            hashMap.remove(Integer.valueOf(reqInfoHash(messageObject)));
        }
        if (chatMessageCellDelegate != null) {
            chatMessageCellDelegate.needShowPremiumBulletin(3);
        }
        NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.voiceTranscriptionUpdate, messageObject);
        NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateTranscriptionLock, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$transcribePressed$8(int i, MessageObject messageObject) {
        NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.voiceTranscriptionUpdate, messageObject, null, null, Boolean.FALSE, null);
    }

    public static boolean finishTranscription(MessageObject messageObject, final long j, final String str, boolean z) {
        MessageObject messageObject2 = null;
        try {
            HashMap<Long, MessageObject> hashMap = transcribeOperationsById;
            if (hashMap != null && hashMap.containsKey(Long.valueOf(j))) {
                messageObject2 = transcribeOperationsById.remove(Long.valueOf(j));
            }
            final MessageObject messageObject3 = messageObject == null ? messageObject2 : messageObject;
            if (messageObject3 != null && messageObject3.messageOwner != null) {
                HashMap<Integer, MessageObject> hashMap2 = transcribeOperationsByDialogPosition;
                if (hashMap2 != null) {
                    hashMap2.remove(Integer.valueOf(reqInfoHash(messageObject3)));
                }
                messageObject3.messageOwner.voiceTranscriptionFinal = true;
                final boolean z2 = z && str == null;
                if (!z2) {
                    MessagesStorage.getInstance(messageObject3.currentAccount).updateMessageVoiceTranscription(messageObject3.getDialogId(), messageObject3.getId(), str, messageObject3.messageOwner);
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.TranscribeButton$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        TranscribeButton.lambda$finishTranscription$9(MessageObject.this, j, str, z2);
                    }
                });
                return true;
            }
        } catch (Exception unused) {
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$finishTranscription$9(MessageObject messageObject, long j, String str, boolean z) {
        NotificationCenter notificationCenter = NotificationCenter.getInstance(messageObject.currentAccount);
        int i = NotificationCenter.voiceTranscriptionUpdate;
        Object[] objArr = new Object[5];
        objArr[0] = messageObject;
        objArr[1] = Long.valueOf(j);
        objArr[2] = str;
        objArr[3] = z ? Boolean.FALSE : Boolean.TRUE;
        objArr[4] = Boolean.TRUE;
        notificationCenter.lambda$postNotificationNameOnUIThread$1(i, objArr);
    }

    public static void showOffTranscribe(MessageObject messageObject) {
        showOffTranscribe(messageObject, true);
    }

    public static void showOffTranscribe(final MessageObject messageObject, boolean z) {
        TLRPC$Message tLRPC$Message;
        if (messageObject == null || (tLRPC$Message = messageObject.messageOwner) == null) {
            return;
        }
        tLRPC$Message.voiceTranscriptionForce = true;
        MessagesStorage.getInstance(messageObject.currentAccount).updateMessageVoiceTranscriptionOpen(messageObject.getDialogId(), messageObject.getId(), messageObject.messageOwner);
        if (z) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.TranscribeButton$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    TranscribeButton.lambda$showOffTranscribe$10(MessageObject.this);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showOffTranscribe$10(MessageObject messageObject) {
        NotificationCenter.getInstance(messageObject.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.voiceTranscriptionUpdate, messageObject);
    }

    public static boolean canTranscribeTrial(MessageObject messageObject) {
        if (messageObject == null || messageObject.messageOwner == null) {
            return false;
        }
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(messageObject.currentAccount);
        MessagesController messagesController = MessagesController.getInstance(messageObject.currentAccount);
        if (messagesController.transcribeAudioTrialWeeklyNumber <= 0 || messageObject.getDuration() > messagesController.transcribeAudioTrialDurationMax) {
            return false;
        }
        return messagesController.transcribeAudioTrialCooldownUntil == 0 || connectionsManager.getCurrentTime() > messagesController.transcribeAudioTrialCooldownUntil || messagesController.transcribeAudioTrialCurrentNumber > 0;
    }

    public static int getTranscribeTrialCount(int i) {
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(i);
        MessagesController messagesController = MessagesController.getInstance(i);
        if (messagesController.transcribeAudioTrialWeeklyNumber <= 0) {
            return 0;
        }
        if (messagesController.transcribeAudioTrialCooldownUntil == 0 || connectionsManager.getCurrentTime() > messagesController.transcribeAudioTrialCooldownUntil) {
            return messagesController.transcribeAudioTrialWeeklyNumber;
        }
        return messagesController.transcribeAudioTrialCurrentNumber;
    }

    public static boolean showTranscribeLock(MessageObject messageObject) {
        TLRPC$Message tLRPC$Message;
        if (messageObject == null || (tLRPC$Message = messageObject.messageOwner) == null || !TextUtils.isEmpty(tLRPC$Message.voiceTranscription)) {
            return false;
        }
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(messageObject.currentAccount);
        MessagesController messagesController = MessagesController.getInstance(messageObject.currentAccount);
        return !UserConfig.getInstance(messageObject.currentAccount).isPremium() && messagesController.transcribeAudioTrialCooldownUntil != 0 && connectionsManager.getCurrentTime() <= messagesController.transcribeAudioTrialCooldownUntil && messagesController.transcribeAudioTrialCurrentNumber <= 0;
    }
}
