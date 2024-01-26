package org.telegram.p043ui.Components.Crop;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.os.Build;
import android.text.TextPaint;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
/* renamed from: org.telegram.ui.Components.Crop.CropRotationWheel */
/* loaded from: classes6.dex */
public class CropRotationWheel extends FrameLayout {
    private ImageView aspectRatioButton;
    private Paint bluePaint;
    private String degreesText;
    private TextPaint degreesTextPaint;
    private ImageView mirrorButton;
    private float prevX;
    protected float rotation;
    private ImageView rotation90Button;
    private RotationWheelListener rotationListener;
    private RectF tempRect;
    private Paint whitePaint;

    /* renamed from: org.telegram.ui.Components.Crop.CropRotationWheel$RotationWheelListener */
    /* loaded from: classes6.dex */
    public interface RotationWheelListener {
        void aspectRatioPressed();

        boolean mirror();

        void onChange(float f);

        void onEnd(float f);

        void onStart();

        boolean rotate90Pressed();
    }

    public void setFreeform(boolean z) {
    }

    public CropRotationWheel(Context context) {
        super(context);
        this.tempRect = new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        Paint paint = new Paint();
        this.whitePaint = paint;
        paint.setStyle(Paint.Style.FILL);
        this.whitePaint.setColor(-1);
        this.whitePaint.setAlpha(255);
        this.whitePaint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.bluePaint = paint2;
        paint2.setStyle(Paint.Style.FILL);
        this.bluePaint.setColor(-11420173);
        this.bluePaint.setAlpha(255);
        this.bluePaint.setAntiAlias(true);
        ImageView imageView = new ImageView(context);
        this.mirrorButton = imageView;
        imageView.setImageResource(C3632R.C3634drawable.msg_photo_flip);
        this.mirrorButton.setBackgroundDrawable(Theme.createSelectorDrawable(1090519039));
        this.mirrorButton.setScaleType(ImageView.ScaleType.CENTER);
        this.mirrorButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Crop.CropRotationWheel$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CropRotationWheel.this.lambda$new$0(view);
            }
        });
        this.mirrorButton.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Components.Crop.CropRotationWheel$$ExternalSyntheticLambda3
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean lambda$new$1;
                lambda$new$1 = CropRotationWheel.this.lambda$new$1(view);
                return lambda$new$1;
            }
        });
        this.mirrorButton.setContentDescription(LocaleController.getString("AccDescrMirror", C3632R.string.AccDescrMirror));
        addView(this.mirrorButton, LayoutHelper.createFrame(70, 64, 19));
        ImageView imageView2 = new ImageView(context);
        this.aspectRatioButton = imageView2;
        imageView2.setImageResource(C3632R.C3634drawable.msg_photo_cropfix);
        this.aspectRatioButton.setBackgroundDrawable(Theme.createSelectorDrawable(1090519039));
        this.aspectRatioButton.setScaleType(ImageView.ScaleType.CENTER);
        this.aspectRatioButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Crop.CropRotationWheel$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CropRotationWheel.this.lambda$new$2(view);
            }
        });
        this.aspectRatioButton.setVisibility(8);
        this.aspectRatioButton.setContentDescription(LocaleController.getString("AccDescrAspectRatio", C3632R.string.AccDescrAspectRatio));
        addView(this.aspectRatioButton, LayoutHelper.createFrame(70, 64, 19));
        ImageView imageView3 = new ImageView(context);
        this.rotation90Button = imageView3;
        imageView3.setImageResource(C3632R.C3634drawable.msg_photo_rotate);
        this.rotation90Button.setBackgroundDrawable(Theme.createSelectorDrawable(1090519039));
        this.rotation90Button.setScaleType(ImageView.ScaleType.CENTER);
        this.rotation90Button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Crop.CropRotationWheel$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CropRotationWheel.this.lambda$new$3(view);
            }
        });
        this.rotation90Button.setContentDescription(LocaleController.getString("AccDescrRotate", C3632R.string.AccDescrRotate));
        addView(this.rotation90Button, LayoutHelper.createFrame(70, 64, 21));
        TextPaint textPaint = new TextPaint(1);
        this.degreesTextPaint = textPaint;
        textPaint.setColor(-1);
        this.degreesTextPaint.setTextSize(AndroidUtilities.m107dp(14));
        setWillNotDraw(false);
        setRotation(BitmapDescriptorFactory.HUE_RED, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        RotationWheelListener rotationWheelListener = this.rotationListener;
        if (rotationWheelListener != null) {
            setMirrored(rotationWheelListener.mirror());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$1(View view) {
        this.aspectRatioButton.callOnClick();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        RotationWheelListener rotationWheelListener = this.rotationListener;
        if (rotationWheelListener != null) {
            rotationWheelListener.aspectRatioPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(View view) {
        RotationWheelListener rotationWheelListener = this.rotationListener;
        if (rotationWheelListener != null) {
            setRotated(rotationWheelListener.rotate90Pressed());
        }
    }

    public void setMirrored(boolean z) {
        this.mirrorButton.setColorFilter(z ? new PorterDuffColorFilter(Theme.getColor(Theme.key_chat_editMediaButton), PorterDuff.Mode.MULTIPLY) : null);
    }

    public void setRotated(boolean z) {
        this.rotation90Button.setColorFilter(z ? new PorterDuffColorFilter(Theme.getColor(Theme.key_chat_editMediaButton), PorterDuff.Mode.MULTIPLY) : null);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i), AndroidUtilities.m107dp(400)), 1073741824), i2);
    }

    public void reset(boolean z) {
        setRotation(BitmapDescriptorFactory.HUE_RED, false);
        if (z) {
            setMirrored(false);
        }
        setRotated(false);
    }

    public void setListener(RotationWheelListener rotationWheelListener) {
        this.rotationListener = rotationWheelListener;
    }

    public void setRotation(float f, boolean z) {
        this.rotation = f;
        if (Math.abs(f) < 0.099d) {
            f = Math.abs(f);
        }
        this.degreesText = String.format("%.1fº", Float.valueOf(f));
        invalidate();
    }

    @Override // android.view.View
    public float getRotation() {
        return this.rotation;
    }

    public void setAspectLock(boolean z) {
        this.aspectRatioButton.setColorFilter(z ? new PorterDuffColorFilter(-11420173, PorterDuff.Mode.MULTIPLY) : null);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        float x = motionEvent.getX();
        if (actionMasked == 0) {
            this.prevX = x;
            RotationWheelListener rotationWheelListener = this.rotationListener;
            if (rotationWheelListener != null) {
                rotationWheelListener.onStart();
            }
        } else if (actionMasked == 1 || actionMasked == 3) {
            RotationWheelListener rotationWheelListener2 = this.rotationListener;
            if (rotationWheelListener2 != null) {
                rotationWheelListener2.onEnd(this.rotation);
            }
            AndroidUtilities.makeAccessibilityAnnouncement(String.format("%.1f°", Float.valueOf(this.rotation)));
        } else if (actionMasked == 2) {
            float max = Math.max(-45.0f, Math.min(45.0f, this.rotation + ((float) ((((this.prevX - x) / AndroidUtilities.density) / 3.141592653589793d) / 1.649999976158142d))));
            if (Build.VERSION.SDK_INT >= 27) {
                try {
                    if ((Math.abs(max - 45.0f) < 0.001f && Math.abs(this.rotation - 45.0f) >= 0.001f) || (Math.abs(max - (-45.0f)) < 0.001f && Math.abs(this.rotation - (-45.0f)) >= 0.001f)) {
                        performHapticFeedback(3, 1);
                    } else if (Math.floor(this.rotation / 2.5f) != Math.floor(max / 2.5f)) {
                        performHapticFeedback(9, 1);
                    }
                } catch (Exception unused) {
                }
            }
            if (Math.abs(max - this.rotation) > 0.001d) {
                if (Math.abs(max) < 0.05d) {
                    max = BitmapDescriptorFactory.HUE_RED;
                }
                setRotation(max, false);
                RotationWheelListener rotationWheelListener3 = this.rotationListener;
                if (rotationWheelListener3 != null) {
                    rotationWheelListener3.onChange(this.rotation);
                }
                this.prevX = x;
            }
        }
        return true;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = getWidth();
        int height = getHeight();
        float f = (-this.rotation) * 2.0f;
        float f2 = f % 5.0f;
        int floor = (int) Math.floor(f / 5.0f);
        int i = 0;
        while (i < 16) {
            Paint paint = this.whitePaint;
            if (i < floor || (i == 0 && f2 < BitmapDescriptorFactory.HUE_RED)) {
                paint = this.bluePaint;
            }
            int i2 = i;
            drawLine(canvas, i, f2, width, height, i == floor || (i == 0 && floor == -1), paint);
            if (i2 != 0) {
                int i3 = -i2;
                drawLine(canvas, i3, f2, width, height, i3 == floor + 1, i3 > floor ? this.bluePaint : this.whitePaint);
            }
            i = i2 + 1;
        }
        this.bluePaint.setAlpha(255);
        this.tempRect.left = (width - AndroidUtilities.m108dp(2.5f)) / 2;
        this.tempRect.top = (height - AndroidUtilities.m107dp(22)) / 2;
        this.tempRect.right = (AndroidUtilities.m108dp(2.5f) + width) / 2;
        this.tempRect.bottom = (height + AndroidUtilities.m107dp(22)) / 2;
        canvas.drawRoundRect(this.tempRect, AndroidUtilities.m107dp(2), AndroidUtilities.m107dp(2), this.bluePaint);
        canvas.drawText(this.degreesText, (width - this.degreesTextPaint.measureText(this.degreesText)) / 2.0f, AndroidUtilities.m107dp(14), this.degreesTextPaint);
    }

    protected void drawLine(Canvas canvas, int i, float f, int i2, int i3, boolean z, Paint paint) {
        int m107dp = (int) ((i2 / 2.0f) - AndroidUtilities.m107dp(70));
        int cos = (int) (m107dp * Math.cos(Math.toRadians(90.0f - ((i * 5) + f))));
        int i4 = (i2 / 2) + cos;
        float abs = Math.abs(cos) / m107dp;
        int min = Math.min(255, Math.max(0, (int) ((1.0f - (abs * abs)) * 255.0f)));
        if (z) {
            paint = this.bluePaint;
        }
        Paint paint2 = paint;
        paint2.setAlpha(min);
        int i5 = z ? 4 : 2;
        int m107dp2 = AndroidUtilities.m107dp(z ? 16 : 12);
        int i6 = i5 / 2;
        canvas.drawRect(i4 - i6, (i3 - m107dp2) / 2, i4 + i6, (i3 + m107dp2) / 2, paint2);
    }
}
