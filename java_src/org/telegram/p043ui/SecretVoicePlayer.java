package org.telegram.p043ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Insets;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.Layout;
import android.text.style.CharacterStyle;
import android.view.KeyEvent;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.utils.Callbacks$Callback;
import java.io.File;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.ChatMessageCell;
import org.telegram.p043ui.Cells.TextSelectionHelper;
import org.telegram.p043ui.Components.AnimatedEmojiSpan;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.AudioVisualizerDrawable;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.EarListener;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.ScaleStateListAnimator;
import org.telegram.p043ui.Components.SeekBarWaveform;
import org.telegram.p043ui.Components.ThanosEffect;
import org.telegram.p043ui.Components.TimerParticles;
import org.telegram.p043ui.Components.VideoPlayer;
import org.telegram.p043ui.SecretVoicePlayer;
import org.telegram.p043ui.Stories.recorder.HintView2;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$KeyboardButton;
import org.telegram.tgnet.TLRPC$ReactionCount;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$WebPage;
/* renamed from: org.telegram.ui.SecretVoicePlayer */
/* loaded from: classes5.dex */
public class SecretVoicePlayer extends Dialog {
    private AudioVisualizerDrawable audioVisualizerDrawable;
    private AlertDialog backDialog;
    private Bitmap blurBitmap;
    private Paint blurBitmapPaint;
    private BitmapShader blurBitmapShader;
    private Matrix blurMatrix;
    private ChatMessageCell cell;
    private Runnable checkTimeRunnable;
    private float clipBottom;
    private float clipTop;
    private Runnable closeAction;
    private TextView closeButton;
    private FrameLayout containerView;
    public final Context context;
    private boolean dismissing;
    private float dtx;
    private float dty;
    private EarListener earListener;
    private boolean hasDestTranslation;
    private boolean hasTranslation;
    private float heightdiff;
    private HintView2 hintView;
    private final Rect insets;
    private boolean isRound;
    private MessageObject messageObject;
    private ChatMessageCell myCell;
    private ValueAnimator open2Animator;
    private Runnable openAction;
    private ValueAnimator openAnimator;
    private float openProgress;
    private float openProgress2;
    private VideoPlayer player;
    private float progress;
    private final RectF rect;
    private boolean renderedFirstFrame;
    private Theme.ResourcesProvider resourcesProvider;
    private boolean setCellInvisible;
    private TextureView textureView;
    private ThanosEffect thanosEffect;

    /* renamed from: tx */
    private float f1994tx;

    /* renamed from: ty */
    private float f1995ty;
    private FrameLayout windowView;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$dismiss$7() {
    }

    public SecretVoicePlayer(Context context) {
        super(context, C3632R.style.TransparentDialog);
        this.insets = new Rect();
        this.rect = new RectF();
        this.clipTop = BitmapDescriptorFactory.HUE_RED;
        this.clipBottom = BitmapDescriptorFactory.HUE_RED;
        this.checkTimeRunnable = new Runnable() { // from class: org.telegram.ui.SecretVoicePlayer$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                SecretVoicePlayer.this.checkTime();
            }
        };
        this.progress = BitmapDescriptorFactory.HUE_RED;
        this.dismissing = false;
        this.context = context;
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.SecretVoicePlayer.1
            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                if (SecretVoicePlayer.this.openProgress > BitmapDescriptorFactory.HUE_RED && SecretVoicePlayer.this.blurBitmapPaint != null) {
                    SecretVoicePlayer.this.blurMatrix.reset();
                    float width = getWidth() / SecretVoicePlayer.this.blurBitmap.getWidth();
                    SecretVoicePlayer.this.blurMatrix.postScale(width, width);
                    SecretVoicePlayer.this.blurBitmapShader.setLocalMatrix(SecretVoicePlayer.this.blurMatrix);
                    SecretVoicePlayer.this.blurBitmapPaint.setAlpha((int) (SecretVoicePlayer.this.openProgress * 255.0f));
                    canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), SecretVoicePlayer.this.blurBitmapPaint);
                }
                if (SecretVoicePlayer.this.setCellInvisible && SecretVoicePlayer.this.cell != null) {
                    SecretVoicePlayer.this.cell.setVisibility(4);
                    SecretVoicePlayer.this.setCellInvisible = false;
                }
                super.dispatchDraw(canvas);
            }

            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
                if (keyEvent != null && keyEvent.getKeyCode() == 4 && keyEvent.getAction() == 1) {
                    SecretVoicePlayer.this.dismiss();
                    return true;
                }
                return super.dispatchKeyEventPreIme(keyEvent);
            }

            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                super.onLayout(z, i, i2, i3, i4);
                SecretVoicePlayer.this.setupTranslation();
            }
        };
        this.windowView = frameLayout;
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SecretVoicePlayer$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SecretVoicePlayer.this.lambda$new$0(view);
            }
        });
        FrameLayout frameLayout2 = new FrameLayout(context) { // from class: org.telegram.ui.SecretVoicePlayer.2
            private final Path clipPath = new Path();

            @Override // android.view.ViewGroup
            protected boolean drawChild(Canvas canvas, View view, long j) {
                if (view != SecretVoicePlayer.this.myCell && view != SecretVoicePlayer.this.hintView) {
                    if (view == SecretVoicePlayer.this.textureView) {
                        canvas.save();
                        this.clipPath.rewind();
                        this.clipPath.addCircle(SecretVoicePlayer.this.myCell.getX() + SecretVoicePlayer.this.rect.centerX(), SecretVoicePlayer.this.myCell.getY() + SecretVoicePlayer.this.rect.centerY(), SecretVoicePlayer.this.rect.width() / 2.0f, Path.Direction.CW);
                        canvas.clipPath(this.clipPath);
                        canvas.clipRect(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.lerp(SecretVoicePlayer.this.clipTop, (float) BitmapDescriptorFactory.HUE_RED, SecretVoicePlayer.this.openProgress), getWidth(), AndroidUtilities.lerp(SecretVoicePlayer.this.clipBottom, getHeight(), SecretVoicePlayer.this.openProgress));
                        canvas.translate(-SecretVoicePlayer.this.textureView.getX(), -SecretVoicePlayer.this.textureView.getY());
                        canvas.translate(SecretVoicePlayer.this.myCell.getX() + SecretVoicePlayer.this.rect.left, SecretVoicePlayer.this.myCell.getY() + SecretVoicePlayer.this.rect.top);
                        canvas.scale(SecretVoicePlayer.this.rect.width() / SecretVoicePlayer.this.textureView.getMeasuredWidth(), SecretVoicePlayer.this.rect.height() / SecretVoicePlayer.this.textureView.getMeasuredHeight(), SecretVoicePlayer.this.textureView.getX(), SecretVoicePlayer.this.textureView.getY());
                        boolean drawChild = super.drawChild(canvas, view, j);
                        canvas.restore();
                        return drawChild;
                    }
                    return super.drawChild(canvas, view, j);
                }
                canvas.save();
                canvas.clipRect(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.lerp(SecretVoicePlayer.this.clipTop, (float) BitmapDescriptorFactory.HUE_RED, SecretVoicePlayer.this.openProgress), getWidth(), AndroidUtilities.lerp(SecretVoicePlayer.this.clipBottom, getHeight(), SecretVoicePlayer.this.openProgress));
                boolean drawChild2 = super.drawChild(canvas, view, j);
                canvas.restore();
                return drawChild2;
            }
        };
        this.containerView = frameLayout2;
        frameLayout2.setClipToPadding(false);
        this.windowView.addView(this.containerView, LayoutHelper.createFrame(-1, -1, 119));
        if (Build.VERSION.SDK_INT >= 21) {
            this.windowView.setFitsSystemWindows(true);
            this.windowView.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: org.telegram.ui.SecretVoicePlayer.3
                @Override // android.view.View.OnApplyWindowInsetsListener
                public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                    int i = Build.VERSION.SDK_INT;
                    if (i < 30) {
                        SecretVoicePlayer.this.insets.set(windowInsets.getStableInsetLeft(), windowInsets.getStableInsetTop(), windowInsets.getStableInsetRight(), windowInsets.getStableInsetBottom());
                    } else {
                        Insets insets = windowInsets.getInsets(WindowInsetsCompat.Type.displayCutout() | WindowInsetsCompat.Type.systemBars());
                        SecretVoicePlayer.this.insets.set(insets.left, insets.top, insets.right, insets.bottom);
                    }
                    SecretVoicePlayer.this.containerView.setPadding(SecretVoicePlayer.this.insets.left, SecretVoicePlayer.this.insets.top, SecretVoicePlayer.this.insets.right, SecretVoicePlayer.this.insets.bottom);
                    SecretVoicePlayer.this.windowView.requestLayout();
                    if (i >= 30) {
                        return WindowInsets.CONSUMED;
                    }
                    return windowInsets.consumeSystemWindowInsets();
                }
            });
        }
        if (SharedConfig.raiseToListen) {
            this.earListener = new EarListener(context);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        if (this.closeAction == null) {
            dismiss();
        }
    }

    private void prepareBlur(final View view) {
        if (view != null) {
            view.setVisibility(4);
        }
        AndroidUtilities.makeGlobalBlurBitmap(new Utilities.Callback() { // from class: org.telegram.ui.SecretVoicePlayer$$ExternalSyntheticLambda11
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                SecretVoicePlayer.this.lambda$prepareBlur$1(view, (Bitmap) obj);
            }
        }, 14.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareBlur$1(View view, Bitmap bitmap) {
        if (view != null) {
            view.setVisibility(0);
        }
        this.blurBitmap = bitmap;
        Paint paint = new Paint(1);
        this.blurBitmapPaint = paint;
        Bitmap bitmap2 = this.blurBitmap;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap2, tileMode, tileMode);
        this.blurBitmapShader = bitmapShader;
        paint.setShader(bitmapShader);
        ColorMatrix colorMatrix = new ColorMatrix();
        AndroidUtilities.adjustSaturationColorMatrix(colorMatrix, Theme.isCurrentThemeDark() ? 0.05f : 0.25f);
        AndroidUtilities.adjustBrightnessColorMatrix(colorMatrix, Theme.isCurrentThemeDark() ? -0.02f : -0.04f);
        this.blurBitmapPaint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        this.blurMatrix = new Matrix();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        window.setWindowAnimations(C3632R.style.DialogNoAnimation);
        setContentView(this.windowView, new ViewGroup.LayoutParams(-1, -1));
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.height = -1;
        attributes.gravity = 119;
        attributes.dimAmount = BitmapDescriptorFactory.HUE_RED;
        int i = attributes.flags & (-3);
        attributes.flags = i;
        attributes.softInputMode = 48;
        int i2 = i | 131072;
        attributes.flags = i2;
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 21) {
            attributes.flags = i2 | (-2013200128);
        }
        if (!BuildVars.DEBUG_PRIVATE_VERSION) {
            attributes.flags |= 8192;
        }
        int i4 = attributes.flags | 1024;
        attributes.flags = i4;
        attributes.flags = i4 | 128;
        if (i3 >= 28) {
            attributes.layoutInDisplayCutoutMode = 1;
        }
        window.setAttributes(attributes);
        this.windowView.setSystemUiVisibility(1284);
        AndroidUtilities.setLightNavigationBar(this.windowView, !Theme.isCurrentThemeDark());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupTranslation() {
        if (this.hasTranslation || this.windowView.getWidth() <= 0) {
            return;
        }
        ChatMessageCell chatMessageCell = this.cell;
        if (chatMessageCell != null) {
            int[] iArr = new int[2];
            chatMessageCell.getLocationOnScreen(iArr);
            int width = this.windowView.getWidth();
            Rect rect = this.insets;
            this.f1994tx = (iArr[0] - this.insets.left) - ((((width - rect.left) - rect.right) - this.cell.getWidth()) / 2.0f);
            int height = this.windowView.getHeight();
            Rect rect2 = this.insets;
            this.f1995ty = (iArr[1] - this.insets.top) - (((((height - rect2.top) - rect2.bottom) - this.cell.getHeight()) - this.heightdiff) / 2.0f);
            if (!this.hasDestTranslation) {
                this.hasDestTranslation = true;
                this.dtx = BitmapDescriptorFactory.HUE_RED;
                float clamp = (Utilities.clamp(iArr[1] + (this.cell.getHeight() / 2.0f), this.windowView.getHeight() * 0.7f, this.windowView.getHeight() * 0.3f) - (this.cell.getHeight() / 2.0f)) - ((this.windowView.getHeight() - this.cell.getHeight()) / 2.0f);
                this.dty = clamp;
                if (this.isRound) {
                    this.dty = BitmapDescriptorFactory.HUE_RED;
                } else {
                    this.dty = AndroidUtilities.lerp((float) BitmapDescriptorFactory.HUE_RED, clamp, 0.78f);
                }
            }
            updateTranslation();
        } else {
            this.f1995ty = BitmapDescriptorFactory.HUE_RED;
            this.f1994tx = BitmapDescriptorFactory.HUE_RED;
        }
        this.hasTranslation = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTranslation() {
        if (this.thanosEffect != null) {
            return;
        }
        this.myCell.setTranslationX(AndroidUtilities.lerp(this.f1994tx, this.dtx, this.openProgress));
        this.myCell.setTranslationY(AndroidUtilities.lerp(this.f1995ty, this.dty, this.openProgress));
        HintView2 hintView2 = this.hintView;
        if (hintView2 != null) {
            hintView2.setTranslationX(AndroidUtilities.lerp(this.f1994tx, this.dtx, this.openProgress));
            this.hintView.setTranslationY(AndroidUtilities.lerp(this.f1995ty, this.dty, this.openProgress));
        }
    }

    public void setCell(ChatMessageCell chatMessageCell, Runnable runnable, Runnable runnable2) {
        ChatMessageCell chatMessageCell2;
        this.openAction = runnable;
        this.closeAction = runnable2;
        ChatMessageCell chatMessageCell3 = this.myCell;
        if (chatMessageCell3 != null) {
            this.containerView.removeView(chatMessageCell3);
            this.myCell = null;
        }
        this.cell = chatMessageCell;
        MessageObject messageObject = chatMessageCell != null ? chatMessageCell.getMessageObject() : null;
        this.messageObject = messageObject;
        this.isRound = messageObject != null && messageObject.isRoundVideo();
        ChatMessageCell chatMessageCell4 = this.cell;
        this.resourcesProvider = chatMessageCell4 != null ? chatMessageCell4.getResourcesProvider() : null;
        int i = 360;
        if (this.cell != null) {
            this.clipTop = chatMessageCell.parentBoundsTop;
            this.clipBottom = chatMessageCell.parentBoundsBottom;
            if (chatMessageCell.getParent() instanceof View) {
                View view = (View) chatMessageCell.getParent();
                this.clipTop += view.getY();
                this.clipBottom += view.getY();
            }
            final int width = this.cell.getWidth();
            int height = this.cell.getHeight();
            if (this.isRound) {
                height = Math.min(AndroidUtilities.m107dp(360), Math.min(width, AndroidUtilities.displaySize.y));
            }
            final int i2 = height;
            this.heightdiff = i2 - this.cell.getHeight();
            int ceil = (int) Math.ceil((Math.min(width, i2) * 0.92f) / AndroidUtilities.density);
            ChatMessageCell chatMessageCell5 = new ChatMessageCell(getContext(), false, null, this.cell.getResourcesProvider()) { // from class: org.telegram.ui.SecretVoicePlayer.4
                private Paint clipPaint;
                private RadialGradient radialGradient;
                private Matrix radialMatrix;
                private Paint radialPaint;
                private TimerParticles timerParticles;
                private boolean setRect = false;
                final RectF fromRect = new RectF();
                final RectF toRect = new RectF();
                private Path clipPath = new Path();
                private Paint progressPaint = new Paint(1);
                private AnimatedFloat renderedFirstFrameT = new AnimatedFloat((float) BitmapDescriptorFactory.HUE_RED, this, 0, 120, new LinearInterpolator());

                @Override // org.telegram.p043ui.Cells.ChatMessageCell, org.telegram.p043ui.Cells.BaseCell
                public int getBoundsLeft() {
                    return 0;
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell, android.view.View
                public void setPressed(boolean z) {
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell, org.telegram.p043ui.Cells.BaseCell
                public int getBoundsRight() {
                    return getWidth();
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // org.telegram.p043ui.Cells.ChatMessageCell, android.view.View
                public void onDraw(Canvas canvas) {
                    if (SecretVoicePlayer.this.isRound) {
                        if (!this.setRect) {
                            this.fromRect.set(getPhotoImage().getImageX(), getPhotoImage().getImageY(), getPhotoImage().getImageX2(), getPhotoImage().getImageY2());
                            float min = Math.min(getMeasuredWidth(), getMeasuredHeight()) * 0.92f;
                            this.toRect.set((getMeasuredWidth() - min) / 2.0f, (getMeasuredHeight() - min) / 2.0f, (getMeasuredWidth() + min) / 2.0f, (getMeasuredHeight() + min) / 2.0f);
                            this.setRect = true;
                            this.radialGradient = new RadialGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, 48.0f, new int[]{-1, -1, 0}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.8f, 1.0f}, Shader.TileMode.CLAMP);
                            Paint paint = new Paint(1);
                            this.radialPaint = paint;
                            paint.setShader(this.radialGradient);
                            this.radialPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
                            this.radialMatrix = new Matrix();
                        }
                        AndroidUtilities.lerp(this.fromRect, this.toRect, SecretVoicePlayer.this.openProgress, SecretVoicePlayer.this.rect);
                        setImageCoords(SecretVoicePlayer.this.rect.left, SecretVoicePlayer.this.rect.top, SecretVoicePlayer.this.rect.width(), SecretVoicePlayer.this.rect.height());
                        getPhotoImage().setRoundRadius((int) SecretVoicePlayer.this.rect.width());
                        if (SecretVoicePlayer.this.openProgress > BitmapDescriptorFactory.HUE_RED && SecretVoicePlayer.this.renderedFirstFrame) {
                            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), 255, 31);
                        }
                        this.radialProgressAlpha = 1.0f - SecretVoicePlayer.this.openProgress;
                    }
                    super.onDraw(canvas);
                    if (SecretVoicePlayer.this.isRound && SecretVoicePlayer.this.openProgress > BitmapDescriptorFactory.HUE_RED && SecretVoicePlayer.this.renderedFirstFrame) {
                        canvas.restore();
                    }
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell
                public void drawTime(Canvas canvas, float f, boolean z) {
                    canvas.save();
                    if (SecretVoicePlayer.this.isRound) {
                        int i3 = this.timeWidth;
                        int i4 = 0;
                        if (SecretVoicePlayer.this.messageObject != null && SecretVoicePlayer.this.messageObject.isOutOwner()) {
                            if (SecretVoicePlayer.this.messageObject != null && SecretVoicePlayer.this.messageObject.type == 19) {
                                i4 = 4;
                            }
                            i4 += 20;
                        }
                        canvas.translate(((this.toRect.right - (i3 + AndroidUtilities.m107dp(8 + i4))) - this.timeX) * SecretVoicePlayer.this.openProgress, BitmapDescriptorFactory.HUE_RED);
                    }
                    super.drawTime(canvas, f, z);
                    canvas.restore();
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // org.telegram.p043ui.Cells.ChatMessageCell
                public void drawRadialProgress(Canvas canvas) {
                    super.drawRadialProgress(canvas);
                }

                @Override // android.view.View
                public void setVisibility(int i3) {
                    super.setVisibility(i3);
                    if (SecretVoicePlayer.this.textureView == null || i3 != 8) {
                        return;
                    }
                    SecretVoicePlayer.this.textureView.setVisibility(i3);
                }

                private Paint getClipPaint() {
                    if (this.clipPaint == null) {
                        Paint paint = new Paint(1);
                        this.clipPaint = paint;
                        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
                    }
                    return this.clipPaint;
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell
                public void drawBlurredPhoto(Canvas canvas) {
                    if (this.radialPaint != null) {
                        if (SecretVoicePlayer.this.openProgress > BitmapDescriptorFactory.HUE_RED) {
                            if (SecretVoicePlayer.this.renderedFirstFrame) {
                                if (this.drawingToBitmap) {
                                    Bitmap bitmap = SecretVoicePlayer.this.textureView.getBitmap();
                                    if (bitmap != null) {
                                        canvas.save();
                                        this.clipPath.rewind();
                                        this.clipPath.addCircle(SecretVoicePlayer.this.rect.centerX(), SecretVoicePlayer.this.rect.centerY(), SecretVoicePlayer.this.rect.width() / 2.0f, Path.Direction.CW);
                                        canvas.clipPath(this.clipPath);
                                        canvas.scale(SecretVoicePlayer.this.rect.width() / bitmap.getWidth(), SecretVoicePlayer.this.rect.height() / bitmap.getHeight());
                                        canvas.translate(SecretVoicePlayer.this.rect.left, SecretVoicePlayer.this.rect.top);
                                        canvas.drawBitmap(bitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (Paint) null);
                                        canvas.restore();
                                        bitmap.recycle();
                                    }
                                } else {
                                    canvas.drawCircle(SecretVoicePlayer.this.rect.centerX(), SecretVoicePlayer.this.rect.centerY(), SecretVoicePlayer.this.rect.width() / 2.0f, getClipPaint());
                                }
                                getPhotoImage().setAlpha(Math.max(1.0f - this.renderedFirstFrameT.set(SecretVoicePlayer.this.renderedFirstFrame), 1.0f - SecretVoicePlayer.this.openProgress));
                                getPhotoImage().draw(canvas);
                            } else {
                                getPhotoImage().draw(canvas);
                            }
                        }
                        this.radialMatrix.reset();
                        float width2 = (SecretVoicePlayer.this.rect.width() / 76.8f) * SecretVoicePlayer.this.openProgress2;
                        this.radialMatrix.postScale(width2, width2);
                        this.radialMatrix.postTranslate(SecretVoicePlayer.this.rect.centerX(), SecretVoicePlayer.this.rect.centerY());
                        this.radialGradient.setLocalMatrix(this.radialMatrix);
                        canvas.saveLayerAlpha(SecretVoicePlayer.this.rect, 255, 31);
                        super.drawBlurredPhoto(canvas);
                        canvas.save();
                        canvas.drawRect(SecretVoicePlayer.this.rect, this.radialPaint);
                        canvas.restore();
                        canvas.restore();
                    } else {
                        super.drawBlurredPhoto(canvas);
                    }
                    canvas.saveLayerAlpha(SecretVoicePlayer.this.rect, (int) (SecretVoicePlayer.this.openProgress2 * 178.0f), 31);
                    this.progressPaint.setStyle(Paint.Style.STROKE);
                    this.progressPaint.setStrokeWidth(AndroidUtilities.m108dp(3.33f));
                    this.progressPaint.setColor(-1);
                    this.progressPaint.setStrokeCap(Paint.Cap.ROUND);
                    RectF rectF = AndroidUtilities.rectTmp;
                    rectF.set(SecretVoicePlayer.this.rect);
                    rectF.inset(AndroidUtilities.m107dp(7), AndroidUtilities.m107dp(7));
                    canvas.drawArc(rectF, -90.0f, (1.0f - SecretVoicePlayer.this.progress) * (-360.0f), false, this.progressPaint);
                    if (this.timerParticles == null) {
                        TimerParticles timerParticles = new TimerParticles(120);
                        this.timerParticles = timerParticles;
                        timerParticles.big = true;
                    }
                    this.progressPaint.setStrokeWidth(AndroidUtilities.m108dp(2.8f));
                    this.timerParticles.draw(canvas, this.progressPaint, rectF, (1.0f - SecretVoicePlayer.this.progress) * (-360.0f), 1.0f);
                    canvas.restore();
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell
                public void drawBlurredPhotoParticles(Canvas canvas) {
                    AndroidUtilities.lerp(1.0f, 1.5f, SecretVoicePlayer.this.openProgress2);
                    super.drawBlurredPhotoParticles(canvas);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell, android.view.View
                protected void onMeasure(int i3, int i4) {
                    setMeasuredDimension(width, i2);
                }
            };
            this.myCell = chatMessageCell5;
            this.cell.copyVisiblePartTo(chatMessageCell5);
            this.myCell.copySpoilerEffect2AttachIndexFrom(this.cell);
            this.myCell.setDelegate(new ChatMessageCell.ChatMessageCellDelegate(this) { // from class: org.telegram.ui.SecretVoicePlayer.5
                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean canDrawOutboundsContent() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$canDrawOutboundsContent(this);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public boolean canPerformActions() {
                    return false;
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didLongPress(ChatMessageCell chatMessageCell6, float f, float f2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPress(this, chatMessageCell6, f, f2);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didLongPressBotButton(ChatMessageCell chatMessageCell6, TLRPC$KeyboardButton tLRPC$KeyboardButton) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressBotButton(this, chatMessageCell6, tLRPC$KeyboardButton);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean didLongPressChannelAvatar(ChatMessageCell chatMessageCell6, TLRPC$Chat tLRPC$Chat, int i3, float f, float f2) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressChannelAvatar(this, chatMessageCell6, tLRPC$Chat, i3, f, f2);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean didLongPressUserAvatar(ChatMessageCell chatMessageCell6, TLRPC$User tLRPC$User, float f, float f2, boolean z) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressUserAvatar(this, chatMessageCell6, tLRPC$User, f, f2, z);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressAdditionalSideButton(ChatMessageCell chatMessageCell6) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressAdditionalSideButton(this, chatMessageCell6);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean didPressAnimatedEmoji(ChatMessageCell chatMessageCell6, AnimatedEmojiSpan animatedEmojiSpan) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressAnimatedEmoji(this, chatMessageCell6, animatedEmojiSpan);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressBotButton(ChatMessageCell chatMessageCell6, TLRPC$KeyboardButton tLRPC$KeyboardButton) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressBotButton(this, chatMessageCell6, tLRPC$KeyboardButton);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressCancelSendButton(ChatMessageCell chatMessageCell6) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCancelSendButton(this, chatMessageCell6);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressChannelAvatar(ChatMessageCell chatMessageCell6, TLRPC$Chat tLRPC$Chat, int i3, float f, float f2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressChannelAvatar(this, chatMessageCell6, tLRPC$Chat, i3, f, f2);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressChannelRecommendation(ChatMessageCell chatMessageCell6, TLRPC$Chat tLRPC$Chat, boolean z) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressChannelRecommendation(this, chatMessageCell6, tLRPC$Chat, z);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressChannelRecommendationsClose(ChatMessageCell chatMessageCell6) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressChannelRecommendationsClose(this, chatMessageCell6);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressCodeCopy(ChatMessageCell chatMessageCell6, MessageObject.TextLayoutBlock textLayoutBlock) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCodeCopy(this, chatMessageCell6, textLayoutBlock);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressCommentButton(ChatMessageCell chatMessageCell6) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCommentButton(this, chatMessageCell6);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressExtendedMediaPreview(ChatMessageCell chatMessageCell6, TLRPC$KeyboardButton tLRPC$KeyboardButton) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressExtendedMediaPreview(this, chatMessageCell6, tLRPC$KeyboardButton);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressForkTranscribeButton(ChatMessageCell chatMessageCell6) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressForkTranscribeButton(this, chatMessageCell6);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressGiveawayChatButton(ChatMessageCell chatMessageCell6, int i3) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressGiveawayChatButton(this, chatMessageCell6, i3);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressHiddenForward(ChatMessageCell chatMessageCell6) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressHiddenForward(this, chatMessageCell6);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressHint(ChatMessageCell chatMessageCell6, int i3) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressHint(this, chatMessageCell6, i3);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressImage(ChatMessageCell chatMessageCell6, float f, float f2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressImage(this, chatMessageCell6, f, f2);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressInstantButton(ChatMessageCell chatMessageCell6, int i3) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressInstantButton(this, chatMessageCell6, i3);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressMoreChannelRecommendations(ChatMessageCell chatMessageCell6) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressMoreChannelRecommendations(this, chatMessageCell6);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressOther(ChatMessageCell chatMessageCell6, float f, float f2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressOther(this, chatMessageCell6, f, f2);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressReaction(ChatMessageCell chatMessageCell6, TLRPC$ReactionCount tLRPC$ReactionCount, boolean z) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressReaction(this, chatMessageCell6, tLRPC$ReactionCount, z);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressReplyMessage(ChatMessageCell chatMessageCell6, int i3) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressReplyMessage(this, chatMessageCell6, i3);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressSideButton(ChatMessageCell chatMessageCell6) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressSideButton(this, chatMessageCell6);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressSponsoredClose() {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressSponsoredClose(this);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressTime(ChatMessageCell chatMessageCell6) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressTime(this, chatMessageCell6);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressTopicButton(ChatMessageCell chatMessageCell6) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressTopicButton(this, chatMessageCell6);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressUrl(ChatMessageCell chatMessageCell6, CharacterStyle characterStyle, boolean z) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressUrl(this, chatMessageCell6, characterStyle, z);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressUserAvatar(ChatMessageCell chatMessageCell6, TLRPC$User tLRPC$User, float f, float f2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressUserAvatar(this, chatMessageCell6, tLRPC$User, f, f2);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressUserStatus(ChatMessageCell chatMessageCell6, TLRPC$User tLRPC$User, TLRPC$Document tLRPC$Document) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressUserStatus(this, chatMessageCell6, tLRPC$User, tLRPC$Document);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressViaBot(ChatMessageCell chatMessageCell6, String str) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressViaBot(this, chatMessageCell6, str);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressViaBotNotInline(ChatMessageCell chatMessageCell6, long j) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressViaBotNotInline(this, chatMessageCell6, j);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressVoteButtons(ChatMessageCell chatMessageCell6, ArrayList arrayList, int i3, int i4, int i5) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressVoteButtons(this, chatMessageCell6, arrayList, i3, i4, i5);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressWebPage(ChatMessageCell chatMessageCell6, TLRPC$WebPage tLRPC$WebPage, String str, boolean z) {
                    Browser.openUrl(chatMessageCell6.getContext(), str);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didStartVideoStream(MessageObject messageObject2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didStartVideoStream(this, messageObject2);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ String getAdminRank(long j) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getAdminRank(this, j);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ PinchToZoomHelper getPinchToZoomHelper() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getPinchToZoomHelper(this);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ String getProgressLoadingBotButtonUrl(ChatMessageCell chatMessageCell6) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getProgressLoadingBotButtonUrl(this, chatMessageCell6);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ CharacterStyle getProgressLoadingLink(ChatMessageCell chatMessageCell6) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getProgressLoadingLink(this, chatMessageCell6);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ TextSelectionHelper.ChatListTextSelectionHelper getTextSelectionHelper() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getTextSelectionHelper(this);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean hasSelectedMessages() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$hasSelectedMessages(this);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void invalidateBlur() {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$invalidateBlur(this);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean isAllowForkTranscribe() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isAllowForkTranscribe(this);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean isInPreviewMode() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isInPreviewMode(this);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean isLandscape() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isLandscape(this);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean isProgressLoading(ChatMessageCell chatMessageCell6, int i3) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isProgressLoading(this, chatMessageCell6, i3);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean isReplyOrSelf() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isReplyOrSelf(this);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean keyboardIsOpened() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$keyboardIsOpened(this);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean needDrawTranslateButton(ChatMessageCell chatMessageCell6) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$needDrawTranslateButton(this, chatMessageCell6);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void needOpenWebView(MessageObject messageObject2, String str, String str2, String str3, String str4, int i3, int i4) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$needOpenWebView(this, messageObject2, str, str2, str3, str4, i3, i4);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean needPlayMessage(ChatMessageCell chatMessageCell6, MessageObject messageObject2, boolean z) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$needPlayMessage(this, chatMessageCell6, messageObject2, z);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void needReloadPolls() {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$needReloadPolls(this);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void needShowPremiumBulletin(int i3) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$needShowPremiumBulletin(this, i3);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean onAccessibilityAction(int i3, Bundle bundle) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$onAccessibilityAction(this, i3, bundle);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void onDiceFinished() {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$onDiceFinished(this);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void runWithActivationCheck(Callbacks$Callback callbacks$Callback) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$runWithActivationCheck(this, callbacks$Callback);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void setShouldNotRepeatSticker(MessageObject messageObject2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$setShouldNotRepeatSticker(this, messageObject2);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean shouldDrawThreadProgress(ChatMessageCell chatMessageCell6) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$shouldDrawThreadProgress(this, chatMessageCell6);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean shouldRepeatSticker(MessageObject messageObject2) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$shouldRepeatSticker(this, messageObject2);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean shouldShowTopicButton() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$shouldShowTopicButton(this);
                }

                @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void videoTimerReached() {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$videoTimerReached(this);
                }
            });
            ChatMessageCell chatMessageCell6 = this.myCell;
            MessageObject messageObject2 = this.messageObject;
            MessageObject.GroupedMessages currentMessagesGroup = this.cell.getCurrentMessagesGroup();
            ChatMessageCell chatMessageCell7 = this.cell;
            chatMessageCell6.setMessageObject(messageObject2, currentMessagesGroup, chatMessageCell7.pinnedBottom, chatMessageCell7.pinnedTop);
            if (!this.isRound) {
                AudioVisualizerDrawable audioVisualizerDrawable = new AudioVisualizerDrawable();
                this.audioVisualizerDrawable = audioVisualizerDrawable;
                audioVisualizerDrawable.setParentView(this.myCell);
                this.myCell.overrideAudioVisualizer(this.audioVisualizerDrawable);
                if (this.myCell.getSeekBarWaveform() != null) {
                    this.myCell.getSeekBarWaveform().setExplosionRate(this.openProgress);
                }
            }
            this.hasTranslation = false;
            this.containerView.addView(this.myCell, new FrameLayout.LayoutParams(this.cell.getWidth(), i2, 17));
            i = ceil;
        }
        TextureView textureView = this.textureView;
        if (textureView != null) {
            this.containerView.removeView(textureView);
            this.textureView = null;
        }
        if (this.isRound) {
            this.renderedFirstFrame = false;
            TextureView textureView2 = new TextureView(this.context);
            this.textureView = textureView2;
            this.containerView.addView(textureView2, 0, LayoutHelper.createFrame(i, i));
        }
        MediaController.getInstance().pauseByRewind();
        VideoPlayer videoPlayer = this.player;
        if (videoPlayer != null) {
            videoPlayer.pause();
            this.player.releasePlayer(true);
            this.player = null;
        }
        ChatMessageCell chatMessageCell8 = this.cell;
        if (chatMessageCell8 != null && chatMessageCell8.getMessageObject() != null) {
            File pathToAttach = FileLoader.getInstance(this.cell.getMessageObject().currentAccount).getPathToAttach(this.cell.getMessageObject().getDocument());
            if (pathToAttach != null && !pathToAttach.exists()) {
                pathToAttach = new File(pathToAttach.getPath() + ".enc");
            }
            if ((pathToAttach == null || !pathToAttach.exists()) && (pathToAttach = FileLoader.getInstance(this.cell.getMessageObject().currentAccount).getPathToMessage(this.cell.getMessageObject().messageOwner)) != null && !pathToAttach.exists()) {
                pathToAttach = new File(pathToAttach.getPath() + ".enc");
            }
            if ((pathToAttach == null || !pathToAttach.exists()) && this.cell.getMessageObject().messageOwner.attachPath != null) {
                pathToAttach = new File(this.cell.getMessageObject().messageOwner.attachPath);
            }
            if (pathToAttach == null || !pathToAttach.exists()) {
                return;
            }
            VideoPlayer videoPlayer2 = new VideoPlayer();
            this.player = videoPlayer2;
            videoPlayer2.setDelegate(new C70836());
            if (this.audioVisualizerDrawable != null) {
                this.player.setAudioVisualizerDelegate(new VideoPlayer.AudioVisualizerDelegate() { // from class: org.telegram.ui.SecretVoicePlayer.7
                    @Override // org.telegram.p043ui.Components.VideoPlayer.AudioVisualizerDelegate
                    public void onVisualizerUpdate(boolean z, boolean z2, float[] fArr) {
                        SecretVoicePlayer.this.audioVisualizerDrawable.setWaveform(z, z2, fArr);
                    }

                    @Override // org.telegram.p043ui.Components.VideoPlayer.AudioVisualizerDelegate
                    public boolean needUpdate() {
                        return SecretVoicePlayer.this.audioVisualizerDrawable.getParentView() != null;
                    }
                });
            }
            if (this.isRound) {
                this.player.setTextureView(this.textureView);
            }
            this.player.preparePlayer(Uri.fromFile(pathToAttach), "other");
            this.player.play();
            EarListener earListener = this.earListener;
            if (earListener != null) {
                earListener.attachPlayer(this.player);
            }
        }
        HintView2 hintView2 = this.hintView;
        if (hintView2 != null) {
            this.containerView.removeView(hintView2);
            this.hintView = null;
        }
        MessageObject messageObject3 = this.messageObject;
        boolean z = messageObject3 != null && messageObject3.isOutOwner();
        MessageObject messageObject4 = this.messageObject;
        if (messageObject4 != null && messageObject4.getDialogId() != UserConfig.getInstance(this.messageObject.currentAccount).getClientUserId()) {
            HintView2 hintView22 = new HintView2(this.context, 3);
            this.hintView = hintView22;
            hintView22.setMultilineText(true);
            if (z) {
                String str = "";
                long dialogId = this.messageObject.getDialogId();
                if (dialogId > 0) {
                    TLRPC$User user = MessagesController.getInstance(this.messageObject.currentAccount).getUser(Long.valueOf(dialogId));
                    if (user != null) {
                        str = UserObject.getFirstName(user);
                    }
                } else {
                    TLRPC$Chat chat = MessagesController.getInstance(this.messageObject.currentAccount).getChat(Long.valueOf(-dialogId));
                    if (chat != null) {
                        str = chat.title;
                    }
                }
                this.hintView.setText(AndroidUtilities.replaceTags(LocaleController.formatString(this.isRound ? C3632R.string.VideoOnceOutHint : C3632R.string.VoiceOnceOutHint, str)));
            } else {
                this.hintView.setText(AndroidUtilities.replaceTags(LocaleController.getString(this.isRound ? C3632R.string.VideoOnceHint : C3632R.string.VoiceOnceHint)));
            }
            this.hintView.setRounding(12.0f);
            this.hintView.setPadding(AndroidUtilities.m107dp((z || this.cell.pinnedBottom) ? 0 : 6), 0, 0, 0);
            if (this.isRound) {
                this.hintView.setJointPx(0.5f, BitmapDescriptorFactory.HUE_RED);
                this.hintView.setTextAlign(Layout.Alignment.ALIGN_CENTER);
            } else {
                this.hintView.setJointPx(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m107dp(34));
                this.hintView.setTextAlign(Layout.Alignment.ALIGN_NORMAL);
            }
            this.hintView.setTextSize(14);
            HintView2 hintView23 = this.hintView;
            hintView23.setMaxWidthPx(HintView2.cutInFancyHalf(hintView23.getText(), this.hintView.getTextPaint()));
            if (this.isRound) {
                this.containerView.addView(this.hintView, LayoutHelper.createFrame((int) ((this.cell.getWidth() / AndroidUtilities.density) * 0.6f), 150.0f, 17, (float) BitmapDescriptorFactory.HUE_RED, (-75.0f) - (((this.cell.getHeight() + this.heightdiff) / AndroidUtilities.density) / 2.0f), (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED));
            } else {
                this.containerView.addView(this.hintView, LayoutHelper.createFrame((int) ((this.cell.getWidth() / AndroidUtilities.density) * 0.6f), 150.0f, 17, ((((this.cell.getWidth() * (-0.39999998f)) / 2.0f) + this.cell.getBoundsLeft()) / AndroidUtilities.density) + 1.0f, ((-75.0f) - ((this.cell.getHeight() / AndroidUtilities.density) / 2.0f)) - 8.0f, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED));
            }
            this.hintView.show();
        }
        TextView textView = this.closeButton;
        if (textView != null) {
            this.containerView.removeView(textView);
            this.closeButton = null;
        }
        TextView textView2 = new TextView(this.context);
        this.closeButton = textView2;
        textView2.setTextColor(-1);
        this.closeButton.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        if (Theme.isCurrentThemeDark()) {
            this.closeButton.setBackground(Theme.createSimpleSelectorRoundRectDrawable(64, 553648127, 872415231));
        } else {
            this.closeButton.setBackground(Theme.createSimpleSelectorRoundRectDrawable(64, 771751936, 1140850688));
        }
        this.closeButton.setPadding(AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(6));
        ScaleStateListAnimator.apply(this.closeButton);
        this.closeButton.setText(LocaleController.getString(z ? C3632R.string.VoiceOnceClose : C3632R.string.VoiceOnceDeleteClose));
        this.closeButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SecretVoicePlayer$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                SecretVoicePlayer.this.lambda$setCell$2(view2);
            }
        });
        this.containerView.addView(this.closeButton, LayoutHelper.createFrame(-2, -2, 81, 0, 0, 0, 18));
        if (z || (chatMessageCell2 = this.myCell) == null || chatMessageCell2.getMessageObject() == null || this.myCell.getMessageObject().messageOwner == null) {
            return;
        }
        this.myCell.getMessageObject().messageOwner.media_unread = false;
        this.myCell.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.SecretVoicePlayer$6 */
    /* loaded from: classes5.dex */
    public class C70836 implements VideoPlayer.VideoPlayerDelegate {
        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onError(VideoPlayer videoPlayer, Exception exc) {
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

        C70836() {
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onStateChanged(boolean z, int i) {
            if (i != 4) {
                AndroidUtilities.cancelRunOnUIThread(SecretVoicePlayer.this.checkTimeRunnable);
                AndroidUtilities.runOnUIThread(SecretVoicePlayer.this.checkTimeRunnable, 16L);
                return;
            }
            SecretVoicePlayer.this.dismiss();
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onRenderedFirstFrame() {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.SecretVoicePlayer$6$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    SecretVoicePlayer.C70836.this.lambda$onRenderedFirstFrame$0();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onRenderedFirstFrame$0() {
            SecretVoicePlayer.this.renderedFirstFrame = true;
            SecretVoicePlayer.this.myCell.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setCell$2(View view) {
        dismiss();
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        prepareBlur(this.cell);
        this.setCellInvisible = true;
        animateOpenTo(true, null);
        Runnable runnable = this.openAction;
        if (runnable != null) {
            AndroidUtilities.runOnUIThread(runnable);
            this.openAction = null;
        }
        EarListener earListener = this.earListener;
        if (earListener != null) {
            earListener.attach();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkTime() {
        VideoPlayer videoPlayer = this.player;
        if (videoPlayer == null) {
            return;
        }
        this.progress = ((float) videoPlayer.getCurrentPosition()) / ((float) this.player.getDuration());
        ChatMessageCell chatMessageCell = this.myCell;
        if (chatMessageCell != null) {
            chatMessageCell.overrideDuration((this.player.getDuration() - this.player.getCurrentPosition()) / 1000);
            this.myCell.updatePlayingMessageProgress();
            SeekBarWaveform seekBarWaveform = this.myCell.getSeekBarWaveform();
            if (seekBarWaveform != null) {
                seekBarWaveform.explodeAt(this.progress);
            }
        }
        if (this.player.isPlaying()) {
            AndroidUtilities.cancelRunOnUIThread(this.checkTimeRunnable);
            AndroidUtilities.runOnUIThread(this.checkTimeRunnable, 16L);
        }
    }

    public boolean isShown() {
        return !this.dismissing;
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        MessageObject messageObject;
        AlertDialog alertDialog = this.backDialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
            this.backDialog = null;
        } else if (!this.dismissing && (messageObject = this.messageObject) != null && !messageObject.isOutOwner()) {
            AlertDialog create = new AlertDialog.Builder(getContext(), this.resourcesProvider).setTitle(LocaleController.getString(this.isRound ? C3632R.string.VideoOnceCloseTitle : C3632R.string.VoiceOnceCloseTitle)).setMessage(LocaleController.getString(this.isRound ? C3632R.string.VideoOnceCloseMessage : C3632R.string.VoiceOnceCloseMessage)).setPositiveButton(LocaleController.getString(C3632R.string.Continue), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.SecretVoicePlayer$$ExternalSyntheticLambda3
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    SecretVoicePlayer.this.lambda$onBackPressed$3(dialogInterface, i);
                }
            }).setNegativeButton(LocaleController.getString(C3632R.string.Delete), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.SecretVoicePlayer$$ExternalSyntheticLambda2
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    SecretVoicePlayer.this.lambda$onBackPressed$4(dialogInterface, i);
                }
            }).create();
            this.backDialog = create;
            create.show();
            TextView textView = (TextView) this.backDialog.getButton(-2);
            if (textView != null) {
                textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
            }
        } else {
            super.onBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBackPressed$3(DialogInterface dialogInterface, int i) {
        AlertDialog alertDialog = this.backDialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBackPressed$4(DialogInterface dialogInterface, int i) {
        AlertDialog alertDialog = this.backDialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
            this.backDialog = null;
        }
        dismiss();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        ChatMessageCell chatMessageCell;
        if (this.dismissing) {
            return;
        }
        AlertDialog alertDialog = this.backDialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
            this.backDialog = null;
        }
        this.dismissing = true;
        HintView2 hintView2 = this.hintView;
        if (hintView2 != null) {
            hintView2.hide();
        }
        VideoPlayer videoPlayer = this.player;
        if (videoPlayer != null) {
            videoPlayer.pause();
            this.player.releasePlayer(true);
            this.player = null;
        }
        if (!this.isRound && (chatMessageCell = this.myCell) != null && chatMessageCell.getSeekBarWaveform() != null) {
            this.myCell.getSeekBarWaveform().setExplosionRate(this.openProgress);
        }
        this.hasTranslation = false;
        setupTranslation();
        animateOpenTo(false, new Runnable() { // from class: org.telegram.ui.SecretVoicePlayer$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                SecretVoicePlayer.this.lambda$dismiss$6();
            }
        });
        this.windowView.invalidate();
        Runnable runnable = this.closeAction;
        if (runnable != null) {
            ChatMessageCell chatMessageCell2 = this.cell;
            if (chatMessageCell2 != null) {
                chatMessageCell2.makeVisibleAfterChange = true;
            }
            AndroidUtilities.runOnUIThread(runnable);
            this.closeAction = null;
            this.myCell.setInvalidateCallback(new Runnable() { // from class: org.telegram.ui.SecretVoicePlayer$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    SecretVoicePlayer.lambda$dismiss$7();
                }
            });
            ThanosEffect thanosEffect = new ThanosEffect(this.context, null);
            this.thanosEffect = thanosEffect;
            this.windowView.addView(thanosEffect, LayoutHelper.createFrame(-1, -1, 119));
            this.thanosEffect.animate(this.myCell, 1.5f, new Runnable() { // from class: org.telegram.ui.SecretVoicePlayer$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    SecretVoicePlayer.this.lambda$dismiss$8();
                }
            });
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.flags |= 16;
            getWindow().setAttributes(attributes);
        }
        EarListener earListener = this.earListener;
        if (earListener != null) {
            earListener.detach();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismiss$6() {
        if (this.thanosEffect == null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.SecretVoicePlayer$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    SecretVoicePlayer.this.lambda$dismiss$5();
                }
            });
            ChatMessageCell chatMessageCell = this.cell;
            if (chatMessageCell != null) {
                chatMessageCell.setVisibility(0);
                this.cell.invalidate();
            }
        }
        MediaController.getInstance().tryResumePausedAudio();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismiss$5() {
        super.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismiss$8() {
        super.dismiss();
    }

    private void animateOpenTo(final boolean z, final Runnable runnable) {
        ValueAnimator valueAnimator = this.openAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.open2Animator;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
        setupTranslation();
        float[] fArr = new float[2];
        fArr[0] = this.openProgress;
        fArr[1] = z ? 1.0f : 0.0f;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        this.openAnimator = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.SecretVoicePlayer$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                SecretVoicePlayer.this.lambda$animateOpenTo$9(z, valueAnimator3);
            }
        });
        this.openAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.SecretVoicePlayer.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                SecretVoicePlayer.this.openProgress = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                SecretVoicePlayer.this.windowView.invalidate();
                SecretVoicePlayer.this.containerView.invalidate();
                SecretVoicePlayer.this.updateTranslation();
                if (SecretVoicePlayer.this.closeButton != null) {
                    SecretVoicePlayer.this.closeButton.setAlpha(SecretVoicePlayer.this.openProgress);
                }
                if (SecretVoicePlayer.this.isRound) {
                    SecretVoicePlayer.this.myCell.invalidate();
                }
                if (!SecretVoicePlayer.this.isRound && SecretVoicePlayer.this.myCell != null && SecretVoicePlayer.this.myCell.getSeekBarWaveform() != null) {
                    SecretVoicePlayer.this.myCell.getSeekBarWaveform().setExplosionRate(SecretVoicePlayer.this.openProgress);
                }
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        });
        long j = (z || this.closeAction != null) ? 520L : 330L;
        ValueAnimator valueAnimator3 = this.openAnimator;
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        valueAnimator3.setInterpolator(cubicBezierInterpolator);
        this.openAnimator.setDuration(j);
        this.openAnimator.start();
        float[] fArr2 = new float[2];
        fArr2[0] = this.openProgress2;
        fArr2[1] = z ? 1.0f : 0.0f;
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(fArr2);
        this.open2Animator = ofFloat2;
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.SecretVoicePlayer$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator4) {
                SecretVoicePlayer.this.lambda$animateOpenTo$10(valueAnimator4);
            }
        });
        this.open2Animator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.SecretVoicePlayer.9
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                SecretVoicePlayer.this.openProgress2 = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                if (SecretVoicePlayer.this.isRound) {
                    SecretVoicePlayer.this.myCell.invalidate();
                }
            }
        });
        this.open2Animator.setDuration(((float) j) * 1.5f);
        this.open2Animator.setInterpolator(cubicBezierInterpolator);
        this.open2Animator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateOpenTo$9(boolean z, ValueAnimator valueAnimator) {
        ChatMessageCell chatMessageCell;
        this.openProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.windowView.invalidate();
        this.containerView.invalidate();
        if (this.isRound) {
            this.myCell.invalidate();
        }
        updateTranslation();
        TextView textView = this.closeButton;
        if (textView != null) {
            textView.setAlpha(this.openProgress);
        }
        if (this.isRound || (chatMessageCell = this.myCell) == null || chatMessageCell.getSeekBarWaveform() == null) {
            return;
        }
        this.myCell.getSeekBarWaveform().setExplosionRate((z ? CubicBezierInterpolator.EASE_OUT : CubicBezierInterpolator.EASE_IN).getInterpolation(Utilities.clamp(this.openProgress * 1.25f, 1.0f, (float) BitmapDescriptorFactory.HUE_RED)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateOpenTo$10(ValueAnimator valueAnimator) {
        this.openProgress2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        if (this.isRound) {
            this.myCell.invalidate();
        }
    }
}
