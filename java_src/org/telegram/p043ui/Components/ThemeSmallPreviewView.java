package org.telegram.p043ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import com.google.android.exoplayer2.extractor.p015ts.TsExtractor;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ChatThemeController;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SvgHelper;
import org.telegram.p043ui.ActionBar.EmojiThemes;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ChatBackgroundDrawable;
import org.telegram.p043ui.Components.ChatThemeBottomSheet;
import org.telegram.tgnet.ResultCallback;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_theme;
import org.telegram.tgnet.TLRPC$WallPaper;
import org.telegram.tgnet.TLRPC$WallPaperSettings;
/* renamed from: org.telegram.ui.Components.ThemeSmallPreviewView */
/* loaded from: classes6.dex */
public class ThemeSmallPreviewView extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    private final float BUBBLE_HEIGHT;
    private final float BUBBLE_WIDTH;
    private final float INNER_RADIUS;
    private final float INNER_RECT_SPACE;
    private final float STROKE_RADIUS;
    ThemeDrawable animateOutThemeDrawable;
    Runnable animationCancelRunnable;
    boolean attached;
    private final Paint backgroundFillPaint;
    private BackupImageView backupImageView;
    private float changeThemeProgress;
    ChatBackgroundDrawable chatBackgroundDrawable;
    public ChatThemeBottomSheet.ChatThemeItem chatThemeItem;
    private final Path clipPath;
    private final int currentAccount;
    private int currentType;
    public TLRPC$WallPaper fallbackWallpaper;
    boolean isSelected;
    public int lastThemeIndex;
    Theme.MessageDrawable messageDrawableIn;
    Theme.MessageDrawable messageDrawableOut;
    private TextPaint noThemeTextPaint;
    Paint outlineBackgroundPaint;
    int patternColor;
    private final RectF rectF;
    private final Theme.ResourcesProvider resourcesProvider;
    private float selectionProgress;
    private ValueAnimator strokeAlphaAnimator;
    private StaticLayout textLayout;
    ThemeDrawable themeDrawable;

    /* JADX INFO: Access modifiers changed from: protected */
    public int noThemeStringTextSize() {
        return 14;
    }

    public ThemeSmallPreviewView(Context context, int i, Theme.ResourcesProvider resourcesProvider, int i2) {
        super(context);
        this.STROKE_RADIUS = AndroidUtilities.m107dp(8);
        this.INNER_RADIUS = AndroidUtilities.m107dp(6);
        this.INNER_RECT_SPACE = AndroidUtilities.m107dp(4);
        this.BUBBLE_HEIGHT = AndroidUtilities.m107dp(21);
        this.BUBBLE_WIDTH = AndroidUtilities.m107dp(41);
        this.themeDrawable = new ThemeDrawable();
        this.changeThemeProgress = 1.0f;
        this.outlineBackgroundPaint = new Paint(1);
        this.backgroundFillPaint = new Paint(1);
        this.rectF = new RectF();
        this.clipPath = new Path();
        this.messageDrawableOut = new Theme.MessageDrawable(0, true, false);
        this.messageDrawableIn = new Theme.MessageDrawable(0, false, false);
        this.currentType = i2;
        this.currentAccount = i;
        this.resourcesProvider = resourcesProvider;
        setBackgroundColor(getThemedColor(Theme.key_dialogBackgroundGray));
        BackupImageView backupImageView = new BackupImageView(context);
        this.backupImageView = backupImageView;
        backupImageView.getImageReceiver().setCrossfadeWithOldImage(true);
        this.backupImageView.getImageReceiver().setAllowStartLottieAnimation(false);
        this.backupImageView.getImageReceiver().setAutoRepeat(0);
        if (i2 == 0 || i2 == 3 || i2 == 2) {
            addView(this.backupImageView, LayoutHelper.createFrame(28, 28, 81, 0, 0, 0, 12));
        } else {
            addView(this.backupImageView, LayoutHelper.createFrame(36, 36, 81, 0, 0, 0, 12));
        }
        this.outlineBackgroundPaint.setStrokeWidth(AndroidUtilities.m107dp(2));
        this.outlineBackgroundPaint.setStyle(Paint.Style.STROKE);
        this.outlineBackgroundPaint.setColor(551805923);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3 = this.currentType;
        if (i3 == 1 || i3 == 4) {
            int size = View.MeasureSpec.getSize(i);
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec((int) (size * 1.2f), 1073741824));
        } else {
            int m107dp = AndroidUtilities.m107dp(i3 == 0 ? 77 : 83);
            int size2 = View.MeasureSpec.getSize(i2);
            if (size2 == 0) {
                size2 = (int) (m107dp * 1.35f);
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(m107dp, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
        }
        BackupImageView backupImageView = this.backupImageView;
        backupImageView.setPivotY(backupImageView.getMeasuredHeight());
        BackupImageView backupImageView2 = this.backupImageView;
        backupImageView2.setPivotX(backupImageView2.getMeasuredWidth() / 2.0f);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i == i3 && i2 == i4) {
            return;
        }
        RectF rectF = this.rectF;
        float f = this.INNER_RECT_SPACE;
        rectF.set(f, f, i - f, i2 - f);
        this.clipPath.reset();
        Path path = this.clipPath;
        RectF rectF2 = this.rectF;
        float f2 = this.INNER_RADIUS;
        path.addRoundRect(rectF2, f2, f2, Path.Direction.CW);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        ThemeDrawable themeDrawable;
        ThemeDrawable themeDrawable2;
        if (this.chatThemeItem == null) {
            super.dispatchDraw(canvas);
            return;
        }
        if (this.chatBackgroundDrawable != null) {
            canvas.save();
            canvas.clipPath(this.clipPath);
            this.chatBackgroundDrawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            this.chatBackgroundDrawable.draw(canvas);
            canvas.restore();
        }
        if (this.changeThemeProgress != 1.0f && (themeDrawable2 = this.animateOutThemeDrawable) != null) {
            themeDrawable2.drawBackground(canvas, 1.0f);
        }
        float f = this.changeThemeProgress;
        if (f != BitmapDescriptorFactory.HUE_RED) {
            this.themeDrawable.drawBackground(canvas, f);
        }
        if (this.changeThemeProgress != 1.0f && (themeDrawable = this.animateOutThemeDrawable) != null) {
            themeDrawable.draw(canvas, 1.0f);
        }
        float f2 = this.changeThemeProgress;
        if (f2 != BitmapDescriptorFactory.HUE_RED) {
            this.themeDrawable.draw(canvas, f2);
        }
        float f3 = this.changeThemeProgress;
        if (f3 != 1.0f) {
            float f4 = f3 + 0.10666667f;
            this.changeThemeProgress = f4;
            if (f4 >= 1.0f) {
                this.changeThemeProgress = 1.0f;
            }
            invalidate();
        }
        super.dispatchDraw(canvas);
    }

    public void setFallbackWallpaper(TLRPC$WallPaper tLRPC$WallPaper) {
        if (this.fallbackWallpaper != tLRPC$WallPaper) {
            this.fallbackWallpaper = tLRPC$WallPaper;
            ChatThemeBottomSheet.ChatThemeItem chatThemeItem = this.chatThemeItem;
            if (chatThemeItem != null) {
                EmojiThemes emojiThemes = chatThemeItem.chatTheme;
                if (emojiThemes == null || emojiThemes.wallpaper == null) {
                    this.chatThemeItem = null;
                    setItem(chatThemeItem, false);
                }
            }
        }
    }

    public void setItem(final ChatThemeBottomSheet.ChatThemeItem chatThemeItem, boolean z) {
        TLRPC$TL_theme tLRPC$TL_theme;
        TLRPC$Document tLRPC$Document;
        ChatBackgroundDrawable chatBackgroundDrawable;
        ChatBackgroundDrawable chatBackgroundDrawable2;
        boolean z2 = this.chatThemeItem != chatThemeItem;
        int i = this.lastThemeIndex;
        int i2 = chatThemeItem.themeIndex;
        boolean z3 = i != i2;
        this.lastThemeIndex = i2;
        this.chatThemeItem = chatThemeItem;
        TLRPC$Document emojiAnimatedSticker = chatThemeItem.chatTheme.getEmoticon() != null ? MediaDataController.getInstance(this.currentAccount).getEmojiAnimatedSticker(chatThemeItem.chatTheme.getEmoticon()) : null;
        if (z2) {
            Runnable runnable = this.animationCancelRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                this.animationCancelRunnable = null;
            }
            this.backupImageView.animate().cancel();
            this.backupImageView.setScaleX(1.0f);
            this.backupImageView.setScaleY(1.0f);
        }
        if (z2) {
            Drawable svgThumb = emojiAnimatedSticker != null ? DocumentObject.getSvgThumb(emojiAnimatedSticker, Theme.key_emptyListPlaceholder, 0.2f) : null;
            if (svgThumb == null) {
                Emoji.preloadEmoji(chatThemeItem.chatTheme.getEmoticon());
                svgThumb = Emoji.getEmojiDrawable(chatThemeItem.chatTheme.getEmoticon());
            }
            this.backupImageView.setImage(ImageLocation.getForDocument(emojiAnimatedSticker), "50_50", svgThumb, (Object) null);
            TLRPC$WallPaper tLRPC$WallPaper = chatThemeItem.chatTheme.wallpaper;
            if (tLRPC$WallPaper == null) {
                tLRPC$WallPaper = this.fallbackWallpaper;
            }
            if (tLRPC$WallPaper != null) {
                if (this.attached && (chatBackgroundDrawable2 = this.chatBackgroundDrawable) != null) {
                    chatBackgroundDrawable2.onDetachedFromWindow(this);
                }
                ChatBackgroundDrawable chatBackgroundDrawable3 = new ChatBackgroundDrawable(tLRPC$WallPaper, false, true);
                this.chatBackgroundDrawable = chatBackgroundDrawable3;
                chatBackgroundDrawable3.setParent(this);
                if (this.attached) {
                    this.chatBackgroundDrawable.onAttachedToWindow(this);
                }
            } else {
                if (this.attached && (chatBackgroundDrawable = this.chatBackgroundDrawable) != null) {
                    chatBackgroundDrawable.onDetachedFromWindow(this);
                }
                this.chatBackgroundDrawable = null;
            }
        }
        this.backupImageView.setVisibility((!chatThemeItem.chatTheme.showAsDefaultStub || this.fallbackWallpaper == null) ? 0 : 8);
        if (z2 || z3) {
            if (z) {
                this.changeThemeProgress = BitmapDescriptorFactory.HUE_RED;
                this.animateOutThemeDrawable = this.themeDrawable;
                this.themeDrawable = new ThemeDrawable();
                invalidate();
            } else {
                this.changeThemeProgress = 1.0f;
            }
            updatePreviewBackground(this.themeDrawable);
            TLRPC$TL_theme tlTheme = chatThemeItem.chatTheme.getTlTheme(this.lastThemeIndex);
            if (tlTheme != null) {
                final long j = tlTheme.f1739id;
                TLRPC$WallPaper wallpaper = chatThemeItem.chatTheme.getWallpaper(this.lastThemeIndex);
                if (wallpaper != null) {
                    final int i3 = wallpaper.settings.intensity;
                    chatThemeItem.chatTheme.loadWallpaperThumb(this.lastThemeIndex, new ResultCallback() { // from class: org.telegram.ui.Components.ThemeSmallPreviewView$$ExternalSyntheticLambda5
                        @Override // org.telegram.tgnet.ResultCallback
                        public final void onComplete(Object obj) {
                            ThemeSmallPreviewView.this.lambda$setItem$0(j, chatThemeItem, i3, (Pair) obj);
                        }

                        @Override // org.telegram.tgnet.ResultCallback
                        public /* synthetic */ void onError(TLRPC$TL_error tLRPC$TL_error) {
                            ResultCallback.CC.$default$onError(this, tLRPC$TL_error);
                        }
                    });
                }
            } else {
                SparseArray<Theme.ThemeAccent> sparseArray = chatThemeItem.chatTheme.getThemeInfo(this.lastThemeIndex).themeAccentsMap;
                Theme.ThemeAccent themeAccent = sparseArray != null ? sparseArray.get(chatThemeItem.chatTheme.getAccentId(this.lastThemeIndex)) : null;
                if (themeAccent != null && (tLRPC$TL_theme = themeAccent.info) != null && tLRPC$TL_theme.settings.size() > 0) {
                    final TLRPC$WallPaper tLRPC$WallPaper2 = themeAccent.info.settings.get(0).wallpaper;
                    if (tLRPC$WallPaper2 != null && (tLRPC$Document = tLRPC$WallPaper2.document) != null) {
                        ImageLocation forDocument = ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(tLRPC$Document.thumbs, 120), tLRPC$Document);
                        ImageReceiver imageReceiver = new ImageReceiver();
                        imageReceiver.setAllowLoadingOnAttachedOnly(false);
                        imageReceiver.setImage(forDocument, "120_140", null, null, null, 1);
                        imageReceiver.setDelegate(new ImageReceiver.ImageReceiverDelegate() { // from class: org.telegram.ui.Components.ThemeSmallPreviewView$$ExternalSyntheticLambda4
                            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
                            public final void didSetImage(ImageReceiver imageReceiver2, boolean z4, boolean z5, boolean z6) {
                                ThemeSmallPreviewView.this.lambda$setItem$1(chatThemeItem, tLRPC$WallPaper2, imageReceiver2, z4, z5, z6);
                            }

                            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
                            public /* synthetic */ void onAnimationReady(ImageReceiver imageReceiver2) {
                                ImageReceiver.ImageReceiverDelegate.CC.$default$onAnimationReady(this, imageReceiver2);
                            }
                        });
                        ImageLoader.getInstance().loadImageForImageReceiver(imageReceiver);
                    }
                } else if (themeAccent != null && themeAccent.info == null) {
                    final int i4 = (int) (themeAccent.patternIntensity * 100.0f);
                    Drawable drawable = chatThemeItem.previewDrawable;
                    if (drawable instanceof MotionBackgroundDrawable) {
                        ((MotionBackgroundDrawable) drawable).setPatternBitmap(i4);
                    }
                    ChatThemeController.chatThemeQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.ThemeSmallPreviewView$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            ThemeSmallPreviewView.this.lambda$setItem$3(chatThemeItem, i4);
                        }
                    });
                }
            }
        }
        if (!z) {
            this.backupImageView.animate().cancel();
            this.backupImageView.setScaleX(1.0f);
            this.backupImageView.setScaleY(1.0f);
            AndroidUtilities.cancelRunOnUIThread(this.animationCancelRunnable);
            if (this.backupImageView.getImageReceiver().getLottieAnimation() != null) {
                this.backupImageView.getImageReceiver().getLottieAnimation().stop();
                this.backupImageView.getImageReceiver().getLottieAnimation().setCurrentFrame(0, false);
            }
        }
        EmojiThemes emojiThemes = this.chatThemeItem.chatTheme;
        if (emojiThemes == null || emojiThemes.showAsDefaultStub) {
            setContentDescription(LocaleController.getString(C3632R.string.ChatNoTheme));
        } else {
            setContentDescription(emojiThemes.getEmoticon());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setItem$0(long j, ChatThemeBottomSheet.ChatThemeItem chatThemeItem, int i, Pair pair) {
        if (pair == null || ((Long) pair.first).longValue() != j) {
            return;
        }
        Drawable drawable = chatThemeItem.previewDrawable;
        if (drawable instanceof MotionBackgroundDrawable) {
            MotionBackgroundDrawable motionBackgroundDrawable = (MotionBackgroundDrawable) drawable;
            motionBackgroundDrawable.setPatternBitmap(i >= 0 ? 100 : -100, prescaleBitmap((Bitmap) pair.second), true);
            motionBackgroundDrawable.setPatternColorFilter(this.patternColor);
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setItem$1(ChatThemeBottomSheet.ChatThemeItem chatThemeItem, TLRPC$WallPaper tLRPC$WallPaper, ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
        Bitmap bitmap;
        ImageReceiver.BitmapHolder bitmapSafe = imageReceiver.getBitmapSafe();
        if (!z || bitmapSafe == null || (bitmap = bitmapSafe.bitmap) == null) {
            return;
        }
        Drawable drawable = chatThemeItem.previewDrawable;
        if (drawable instanceof MotionBackgroundDrawable) {
            MotionBackgroundDrawable motionBackgroundDrawable = (MotionBackgroundDrawable) drawable;
            TLRPC$WallPaperSettings tLRPC$WallPaperSettings = tLRPC$WallPaper.settings;
            motionBackgroundDrawable.setPatternBitmap((tLRPC$WallPaperSettings == null || tLRPC$WallPaperSettings.intensity >= 0) ? 100 : -100, prescaleBitmap(bitmap), true);
            motionBackgroundDrawable.setPatternColorFilter(this.patternColor);
            invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setItem$3(final ChatThemeBottomSheet.ChatThemeItem chatThemeItem, final int i) {
        final Bitmap bitmap = SvgHelper.getBitmap(C3632R.raw.default_pattern, AndroidUtilities.m107dp(120), AndroidUtilities.m107dp(140), -16777216, AndroidUtilities.density);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ThemeSmallPreviewView$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                ThemeSmallPreviewView.this.lambda$setItem$2(chatThemeItem, i, bitmap);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setItem$2(ChatThemeBottomSheet.ChatThemeItem chatThemeItem, int i, Bitmap bitmap) {
        Drawable drawable = chatThemeItem.previewDrawable;
        if (drawable instanceof MotionBackgroundDrawable) {
            MotionBackgroundDrawable motionBackgroundDrawable = (MotionBackgroundDrawable) drawable;
            motionBackgroundDrawable.setPatternBitmap(i, prescaleBitmap(bitmap), true);
            motionBackgroundDrawable.setPatternColorFilter(this.patternColor);
            invalidate();
        }
    }

    public void setSelected(final boolean z, boolean z2) {
        if (!z2) {
            ValueAnimator valueAnimator = this.strokeAlphaAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.isSelected = z;
            this.selectionProgress = z ? 1.0f : 0.0f;
            invalidate();
            return;
        }
        if (this.isSelected != z) {
            float f = this.selectionProgress;
            ValueAnimator valueAnimator2 = this.strokeAlphaAnimator;
            if (valueAnimator2 != null) {
                valueAnimator2.cancel();
            }
            float[] fArr = new float[2];
            fArr[0] = f;
            fArr[1] = z ? 1.0f : 0.0f;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
            this.strokeAlphaAnimator = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ThemeSmallPreviewView$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                    ThemeSmallPreviewView.this.lambda$setSelected$4(valueAnimator3);
                }
            });
            this.strokeAlphaAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ThemeSmallPreviewView.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    ThemeSmallPreviewView.this.selectionProgress = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                    ThemeSmallPreviewView.this.invalidate();
                }
            });
            this.strokeAlphaAnimator.setDuration(250L);
            this.strokeAlphaAnimator.start();
        }
        this.isSelected = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setSelected$4(ValueAnimator valueAnimator) {
        this.selectionProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    private Bitmap prescaleBitmap(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        float max = Math.max(AndroidUtilities.m107dp(120) / bitmap.getWidth(), AndroidUtilities.m107dp(140) / bitmap.getHeight());
        if (bitmap.getWidth() <= 0 || bitmap.getHeight() <= 0 || Math.abs(max - 1.0f) < 0.0125f) {
            return bitmap;
        }
        int width = (int) (bitmap.getWidth() * max);
        int height = (int) (bitmap.getHeight() * max);
        return (height <= 0 || width <= 0) ? bitmap : Bitmap.createScaledBitmap(bitmap, width, height, true);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.backgroundFillPaint.setColor(getThemedColor(Theme.key_dialogBackgroundGray));
        TextPaint textPaint = this.noThemeTextPaint;
        if (textPaint != null) {
            textPaint.setColor(getThemedColor(Theme.key_chat_emojiPanelTrendingDescription));
        }
        invalidate();
    }

    private void fillOutBubblePaint(Paint paint, List<Integer> list) {
        if (list.size() > 1) {
            int[] iArr = new int[list.size()];
            for (int i = 0; i != list.size(); i++) {
                iArr[i] = list.get(i).intValue();
            }
            float m107dp = this.INNER_RECT_SPACE + AndroidUtilities.m107dp(8);
            paint.setShader(new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, m107dp, (float) BitmapDescriptorFactory.HUE_RED, m107dp + this.BUBBLE_HEIGHT, iArr, (float[]) null, Shader.TileMode.CLAMP));
            return;
        }
        paint.setShader(null);
    }

    public void updatePreviewBackground(ThemeDrawable themeDrawable) {
        EmojiThemes emojiThemes;
        int i;
        ChatThemeBottomSheet.ChatThemeItem chatThemeItem = this.chatThemeItem;
        if (chatThemeItem == null || (emojiThemes = chatThemeItem.chatTheme) == null) {
            return;
        }
        EmojiThemes.ThemeItem themeItem = emojiThemes.getThemeItem(chatThemeItem.themeIndex);
        themeDrawable.inBubblePaint.setColor(themeItem.inBubbleColor);
        themeDrawable.outBubblePaintSecond.setColor(themeItem.outBubbleColor);
        if (this.chatThemeItem.chatTheme.showAsDefaultStub) {
            i = getThemedColor(Theme.key_featuredStickers_addButton);
        } else {
            i = themeItem.outLineColor;
        }
        int alpha = themeDrawable.strokePaint.getAlpha();
        themeDrawable.strokePaint.setColor(i);
        themeDrawable.strokePaint.setAlpha(alpha);
        ChatThemeBottomSheet.ChatThemeItem chatThemeItem2 = this.chatThemeItem;
        TLRPC$TL_theme tlTheme = chatThemeItem2.chatTheme.getTlTheme(chatThemeItem2.themeIndex);
        if (tlTheme != null) {
            ChatThemeBottomSheet.ChatThemeItem chatThemeItem3 = this.chatThemeItem;
            int settingsIndex = chatThemeItem3.chatTheme.getSettingsIndex(chatThemeItem3.themeIndex);
            fillOutBubblePaint(themeDrawable.outBubblePaintSecond, tlTheme.settings.get(settingsIndex).message_colors);
            themeDrawable.outBubblePaintSecond.setAlpha(255);
            getPreviewDrawable(tlTheme, settingsIndex);
        } else {
            ChatThemeBottomSheet.ChatThemeItem chatThemeItem4 = this.chatThemeItem;
            getPreviewDrawable(chatThemeItem4.chatTheme.getThemeItem(chatThemeItem4.themeIndex));
        }
        themeDrawable.previewDrawable = this.chatThemeItem.previewDrawable;
        invalidate();
    }

    private Drawable getPreviewDrawable(TLRPC$TL_theme tLRPC$TL_theme, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        MotionBackgroundDrawable motionBackgroundDrawable;
        if (this.chatThemeItem == null) {
            return null;
        }
        if (i >= 0) {
            TLRPC$WallPaperSettings tLRPC$WallPaperSettings = tLRPC$TL_theme.settings.get(i).wallpaper.settings;
            int i6 = tLRPC$WallPaperSettings.background_color;
            int i7 = tLRPC$WallPaperSettings.second_background_color;
            int i8 = tLRPC$WallPaperSettings.third_background_color;
            i4 = tLRPC$WallPaperSettings.fourth_background_color;
            i2 = i7;
            i5 = i6;
            i3 = i8;
        } else {
            i2 = 0;
            i3 = 0;
            i4 = 0;
            i5 = 0;
        }
        if (i2 != 0) {
            motionBackgroundDrawable = new MotionBackgroundDrawable(i5, i2, i3, i4, true);
            this.patternColor = motionBackgroundDrawable.getPatternColor();
        } else {
            motionBackgroundDrawable = new MotionBackgroundDrawable(i5, i5, i5, i5, true);
            this.patternColor = -16777216;
        }
        this.chatThemeItem.previewDrawable = motionBackgroundDrawable;
        return motionBackgroundDrawable;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Drawable getPreviewDrawable(EmojiThemes.ThemeItem themeItem) {
        MotionBackgroundDrawable motionBackgroundDrawable = null;
        motionBackgroundDrawable = null;
        if (this.chatThemeItem == null) {
            return null;
        }
        int i = themeItem.patternBgColor;
        int i2 = themeItem.patternBgGradientColor1;
        int i3 = themeItem.patternBgGradientColor2;
        int i4 = themeItem.patternBgGradientColor3;
        int i5 = themeItem.patternBgRotation;
        if (themeItem.themeInfo.getAccent(false) != null) {
            if (i2 != 0) {
                MotionBackgroundDrawable motionBackgroundDrawable2 = new MotionBackgroundDrawable(i, i2, i3, i4, i5, true);
                this.patternColor = motionBackgroundDrawable2.getPatternColor();
                motionBackgroundDrawable = motionBackgroundDrawable2;
            } else {
                MotionBackgroundDrawable motionBackgroundDrawable3 = new MotionBackgroundDrawable(i, i, i, i, i5, true);
                this.patternColor = -16777216;
                motionBackgroundDrawable = motionBackgroundDrawable3;
            }
        } else if (i != 0 && i2 != 0) {
            motionBackgroundDrawable = new MotionBackgroundDrawable(i, i2, i3, i4, i5, true);
        } else if (i != 0) {
            motionBackgroundDrawable = new ColorDrawable(i);
        } else {
            Theme.ThemeInfo themeInfo = themeItem.themeInfo;
            if (themeInfo != null && (themeInfo.previewWallpaperOffset > 0 || themeInfo.pathToWallpaper != null)) {
                Theme.ThemeInfo themeInfo2 = themeItem.themeInfo;
                Bitmap scaledBitmap = AndroidUtilities.getScaledBitmap(AndroidUtilities.m107dp(112), AndroidUtilities.m107dp((int) TsExtractor.TS_STREAM_TYPE_SPLICE_INFO), themeInfo2.pathToWallpaper, themeInfo2.pathToFile, themeInfo2.previewWallpaperOffset);
                if (scaledBitmap != null) {
                    BitmapDrawable bitmapDrawable = new BitmapDrawable(scaledBitmap);
                    bitmapDrawable.setFilterBitmap(true);
                    motionBackgroundDrawable = bitmapDrawable;
                }
            } else {
                EmojiThemes emojiThemes = this.chatThemeItem.chatTheme;
                if (emojiThemes == null || !emojiThemes.showAsDefaultStub) {
                    motionBackgroundDrawable = new MotionBackgroundDrawable(-2368069, -9722489, -2762611, -7817084, true);
                }
            }
        }
        this.chatThemeItem.previewDrawable = motionBackgroundDrawable;
        return motionBackgroundDrawable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public StaticLayout getNoThemeStaticLayout() {
        StaticLayout staticLayout = this.textLayout;
        if (staticLayout != null) {
            return staticLayout;
        }
        TextPaint textPaint = new TextPaint((int) TsExtractor.TS_STREAM_TYPE_AC3);
        this.noThemeTextPaint = textPaint;
        textPaint.setColor(getThemedColor(Theme.key_chat_emojiPanelTrendingDescription));
        this.noThemeTextPaint.setTextSize(AndroidUtilities.m107dp(noThemeStringTextSize()));
        this.noThemeTextPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        int m107dp = AndroidUtilities.m107dp(52);
        int i = this.currentType;
        if (i == 3 || i == 4) {
            m107dp = AndroidUtilities.m107dp(77);
        }
        int i2 = m107dp;
        StaticLayout createStaticLayout2 = StaticLayoutEx.createStaticLayout2(noThemeString(), this.noThemeTextPaint, i2, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, true, TextUtils.TruncateAt.END, i2, 3);
        this.textLayout = createStaticLayout2;
        return createStaticLayout2;
    }

    protected String noThemeString() {
        return LocaleController.getString(C3632R.string.ChatNoTheme);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    public void playEmojiAnimation() {
        if (this.backupImageView.getImageReceiver().getLottieAnimation() != null) {
            AndroidUtilities.cancelRunOnUIThread(this.animationCancelRunnable);
            this.backupImageView.setVisibility(0);
            if (!this.backupImageView.getImageReceiver().getLottieAnimation().isRunning) {
                this.backupImageView.getImageReceiver().getLottieAnimation().setCurrentFrame(0, true);
                this.backupImageView.getImageReceiver().getLottieAnimation().start();
            }
            this.backupImageView.animate().scaleX(2.0f).scaleY(2.0f).setDuration(300L).setInterpolator(AndroidUtilities.overshootInterpolator).start();
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.ThemeSmallPreviewView$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    ThemeSmallPreviewView.this.lambda$playEmojiAnimation$5();
                }
            };
            this.animationCancelRunnable = runnable;
            AndroidUtilities.runOnUIThread(runnable, 2500L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$playEmojiAnimation$5() {
        this.animationCancelRunnable = null;
        this.backupImageView.animate().scaleX(1.0f).scaleY(1.0f).setDuration(150L).setInterpolator(CubicBezierInterpolator.DEFAULT).start();
    }

    public void cancelAnimation() {
        Runnable runnable = this.animationCancelRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.animationCancelRunnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.ThemeSmallPreviewView$ThemeDrawable */
    /* loaded from: classes6.dex */
    public class ThemeDrawable {
        private final Paint inBubblePaint;
        private final Paint outBubblePaintSecond;
        Drawable previewDrawable;
        private final Paint strokePaint;

        ThemeDrawable() {
            Paint paint = new Paint(1);
            this.strokePaint = paint;
            this.outBubblePaintSecond = new Paint(1);
            this.inBubblePaint = new Paint(1);
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(AndroidUtilities.m107dp(2));
        }

        public void drawBackground(Canvas canvas, float f) {
            EmojiThemes emojiThemes;
            if (this.previewDrawable != null) {
                canvas.save();
                canvas.clipPath(ThemeSmallPreviewView.this.clipPath);
                Drawable drawable = this.previewDrawable;
                if (drawable instanceof BitmapDrawable) {
                    float intrinsicWidth = drawable.getIntrinsicWidth();
                    float intrinsicHeight = this.previewDrawable.getIntrinsicHeight();
                    if (intrinsicWidth / intrinsicHeight > ThemeSmallPreviewView.this.getWidth() / ThemeSmallPreviewView.this.getHeight()) {
                        int width = (int) ((ThemeSmallPreviewView.this.getWidth() * intrinsicHeight) / intrinsicWidth);
                        int width2 = (width - ThemeSmallPreviewView.this.getWidth()) / 2;
                        this.previewDrawable.setBounds(width2, 0, width + width2, ThemeSmallPreviewView.this.getHeight());
                    } else {
                        int height = (int) ((ThemeSmallPreviewView.this.getHeight() * intrinsicHeight) / intrinsicWidth);
                        int height2 = (ThemeSmallPreviewView.this.getHeight() - height) / 2;
                        this.previewDrawable.setBounds(0, height2, ThemeSmallPreviewView.this.getWidth(), height + height2);
                    }
                } else {
                    drawable.setBounds(0, 0, ThemeSmallPreviewView.this.getWidth(), ThemeSmallPreviewView.this.getHeight());
                }
                this.previewDrawable.setAlpha((int) (255.0f * f));
                this.previewDrawable.draw(canvas);
                Drawable drawable2 = this.previewDrawable;
                if ((drawable2 instanceof ColorDrawable) || ((drawable2 instanceof MotionBackgroundDrawable) && ((MotionBackgroundDrawable) drawable2).isOneColor())) {
                    int alpha = ThemeSmallPreviewView.this.outlineBackgroundPaint.getAlpha();
                    ThemeSmallPreviewView.this.outlineBackgroundPaint.setAlpha((int) (alpha * f));
                    float f2 = ThemeSmallPreviewView.this.INNER_RECT_SPACE;
                    RectF rectF = AndroidUtilities.rectTmp;
                    rectF.set(f2, f2, ThemeSmallPreviewView.this.getWidth() - f2, ThemeSmallPreviewView.this.getHeight() - f2);
                    canvas.drawRoundRect(rectF, ThemeSmallPreviewView.this.INNER_RADIUS, ThemeSmallPreviewView.this.INNER_RADIUS, ThemeSmallPreviewView.this.outlineBackgroundPaint);
                    ThemeSmallPreviewView.this.outlineBackgroundPaint.setAlpha(alpha);
                }
                canvas.restore();
                return;
            }
            ThemeSmallPreviewView themeSmallPreviewView = ThemeSmallPreviewView.this;
            ChatThemeBottomSheet.ChatThemeItem chatThemeItem = themeSmallPreviewView.chatThemeItem;
            if (chatThemeItem == null || (emojiThemes = chatThemeItem.chatTheme) == null || !emojiThemes.showAsDefaultStub || themeSmallPreviewView.chatBackgroundDrawable == null) {
                canvas.drawRoundRect(themeSmallPreviewView.rectF, ThemeSmallPreviewView.this.INNER_RADIUS, ThemeSmallPreviewView.this.INNER_RADIUS, ThemeSmallPreviewView.this.backgroundFillPaint);
            }
        }

        public void draw(Canvas canvas, float f) {
            int i;
            ThemeSmallPreviewView themeSmallPreviewView = ThemeSmallPreviewView.this;
            if (themeSmallPreviewView.isSelected || themeSmallPreviewView.strokeAlphaAnimator != null) {
                ChatThemeBottomSheet.ChatThemeItem chatThemeItem = ThemeSmallPreviewView.this.chatThemeItem;
                EmojiThemes.ThemeItem themeItem = chatThemeItem.chatTheme.getThemeItem(chatThemeItem.themeIndex);
                ThemeSmallPreviewView themeSmallPreviewView2 = ThemeSmallPreviewView.this;
                if (themeSmallPreviewView2.chatThemeItem.chatTheme.showAsDefaultStub) {
                    i = themeSmallPreviewView2.getThemedColor(Theme.key_featuredStickers_addButton);
                } else {
                    i = themeItem.outLineColor;
                }
                this.strokePaint.setColor(i);
                this.strokePaint.setAlpha((int) (ThemeSmallPreviewView.this.selectionProgress * f * 255.0f));
                float strokeWidth = (this.strokePaint.getStrokeWidth() * 0.5f) + (AndroidUtilities.m107dp(4) * (1.0f - ThemeSmallPreviewView.this.selectionProgress));
                ThemeSmallPreviewView.this.rectF.set(strokeWidth, strokeWidth, ThemeSmallPreviewView.this.getWidth() - strokeWidth, ThemeSmallPreviewView.this.getHeight() - strokeWidth);
                canvas.drawRoundRect(ThemeSmallPreviewView.this.rectF, ThemeSmallPreviewView.this.STROKE_RADIUS, ThemeSmallPreviewView.this.STROKE_RADIUS, this.strokePaint);
            }
            int i2 = (int) (f * 255.0f);
            this.outBubblePaintSecond.setAlpha(i2);
            this.inBubblePaint.setAlpha(i2);
            ThemeSmallPreviewView.this.rectF.set(ThemeSmallPreviewView.this.INNER_RECT_SPACE, ThemeSmallPreviewView.this.INNER_RECT_SPACE, ThemeSmallPreviewView.this.getWidth() - ThemeSmallPreviewView.this.INNER_RECT_SPACE, ThemeSmallPreviewView.this.getHeight() - ThemeSmallPreviewView.this.INNER_RECT_SPACE);
            ThemeSmallPreviewView themeSmallPreviewView3 = ThemeSmallPreviewView.this;
            EmojiThemes emojiThemes = themeSmallPreviewView3.chatThemeItem.chatTheme;
            if (emojiThemes != null && (!emojiThemes.showAsDefaultStub || emojiThemes.wallpaper != null)) {
                if (themeSmallPreviewView3.currentType != 4) {
                    if (ThemeSmallPreviewView.this.currentType != 2) {
                        float m107dp = ThemeSmallPreviewView.this.INNER_RECT_SPACE + AndroidUtilities.m107dp(8);
                        float m107dp2 = ThemeSmallPreviewView.this.INNER_RECT_SPACE + AndroidUtilities.m107dp(ThemeSmallPreviewView.this.currentType == 3 ? 5 : 22);
                        if (ThemeSmallPreviewView.this.currentType == 0 || ThemeSmallPreviewView.this.currentType == 3) {
                            ThemeSmallPreviewView.this.rectF.set(m107dp2, m107dp, (ThemeSmallPreviewView.this.BUBBLE_WIDTH * (ThemeSmallPreviewView.this.currentType == 3 ? 1.2f : 1.0f)) + m107dp2, ThemeSmallPreviewView.this.BUBBLE_HEIGHT + m107dp);
                        } else {
                            m107dp = ThemeSmallPreviewView.this.getMeasuredHeight() * 0.12f;
                            ThemeSmallPreviewView.this.rectF.set(ThemeSmallPreviewView.this.getMeasuredWidth() - (ThemeSmallPreviewView.this.getMeasuredWidth() * 0.65f), m107dp, ThemeSmallPreviewView.this.getMeasuredWidth() - (ThemeSmallPreviewView.this.getMeasuredWidth() * 0.1f), ThemeSmallPreviewView.this.getMeasuredHeight() * 0.32f);
                        }
                        Paint paint = ThemeSmallPreviewView.this.currentType == 3 ? this.inBubblePaint : this.outBubblePaintSecond;
                        if (ThemeSmallPreviewView.this.currentType == 0 || ThemeSmallPreviewView.this.currentType == 3) {
                            canvas.drawRoundRect(ThemeSmallPreviewView.this.rectF, ThemeSmallPreviewView.this.rectF.height() * 0.5f, ThemeSmallPreviewView.this.rectF.height() * 0.5f, paint);
                        } else {
                            ThemeSmallPreviewView themeSmallPreviewView4 = ThemeSmallPreviewView.this;
                            themeSmallPreviewView4.messageDrawableOut.setBounds((int) themeSmallPreviewView4.rectF.left, ((int) ThemeSmallPreviewView.this.rectF.top) - AndroidUtilities.m107dp(2), ((int) ThemeSmallPreviewView.this.rectF.right) + AndroidUtilities.m107dp(4), ((int) ThemeSmallPreviewView.this.rectF.bottom) + AndroidUtilities.m107dp(2));
                            ThemeSmallPreviewView themeSmallPreviewView5 = ThemeSmallPreviewView.this;
                            themeSmallPreviewView5.messageDrawableOut.setRoundRadius((int) (themeSmallPreviewView5.rectF.height() * 0.5f));
                            ThemeSmallPreviewView.this.messageDrawableOut.draw(canvas, paint);
                        }
                        if (ThemeSmallPreviewView.this.currentType == 0 || ThemeSmallPreviewView.this.currentType == 3) {
                            float m107dp3 = ThemeSmallPreviewView.this.INNER_RECT_SPACE + AndroidUtilities.m107dp(5);
                            float m107dp4 = m107dp + ThemeSmallPreviewView.this.BUBBLE_HEIGHT + AndroidUtilities.m107dp(4);
                            ThemeSmallPreviewView.this.rectF.set(m107dp3, m107dp4, (ThemeSmallPreviewView.this.BUBBLE_WIDTH * (ThemeSmallPreviewView.this.currentType == 3 ? 0.8f : 1.0f)) + m107dp3, ThemeSmallPreviewView.this.BUBBLE_HEIGHT + m107dp4);
                        } else {
                            ThemeSmallPreviewView.this.rectF.set(ThemeSmallPreviewView.this.getMeasuredWidth() * 0.1f, ThemeSmallPreviewView.this.getMeasuredHeight() * 0.35f, ThemeSmallPreviewView.this.getMeasuredWidth() * 0.65f, ThemeSmallPreviewView.this.getMeasuredHeight() * 0.55f);
                        }
                        if (ThemeSmallPreviewView.this.currentType == 0 || ThemeSmallPreviewView.this.currentType == 3) {
                            canvas.drawRoundRect(ThemeSmallPreviewView.this.rectF, ThemeSmallPreviewView.this.rectF.height() * 0.5f, ThemeSmallPreviewView.this.rectF.height() * 0.5f, this.inBubblePaint);
                            return;
                        }
                        ThemeSmallPreviewView themeSmallPreviewView6 = ThemeSmallPreviewView.this;
                        themeSmallPreviewView6.messageDrawableIn.setBounds(((int) themeSmallPreviewView6.rectF.left) - AndroidUtilities.m107dp(4), ((int) ThemeSmallPreviewView.this.rectF.top) - AndroidUtilities.m107dp(2), (int) ThemeSmallPreviewView.this.rectF.right, ((int) ThemeSmallPreviewView.this.rectF.bottom) + AndroidUtilities.m107dp(2));
                        ThemeSmallPreviewView themeSmallPreviewView7 = ThemeSmallPreviewView.this;
                        themeSmallPreviewView7.messageDrawableIn.setRoundRadius((int) (themeSmallPreviewView7.rectF.height() * 0.5f));
                        ThemeSmallPreviewView.this.messageDrawableIn.draw(canvas, this.inBubblePaint);
                        return;
                    }
                    ThemeSmallPreviewView themeSmallPreviewView8 = ThemeSmallPreviewView.this;
                    if (themeSmallPreviewView8.chatThemeItem.icon != null) {
                        canvas.drawBitmap(ThemeSmallPreviewView.this.chatThemeItem.icon, (themeSmallPreviewView8.getWidth() - ThemeSmallPreviewView.this.chatThemeItem.icon.getWidth()) * 0.5f, AndroidUtilities.m107dp(21), (Paint) null);
                    }
                }
            } else if (themeSmallPreviewView3.fallbackWallpaper == null) {
                canvas.drawRoundRect(themeSmallPreviewView3.rectF, ThemeSmallPreviewView.this.INNER_RADIUS, ThemeSmallPreviewView.this.INNER_RADIUS, ThemeSmallPreviewView.this.backgroundFillPaint);
                canvas.save();
                StaticLayout noThemeStaticLayout = ThemeSmallPreviewView.this.getNoThemeStaticLayout();
                canvas.translate((ThemeSmallPreviewView.this.getWidth() - noThemeStaticLayout.getWidth()) * 0.5f, AndroidUtilities.m107dp(18));
                noThemeStaticLayout.draw(canvas);
                canvas.restore();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
        this.attached = true;
        ChatBackgroundDrawable chatBackgroundDrawable = this.chatBackgroundDrawable;
        if (chatBackgroundDrawable != null) {
            chatBackgroundDrawable.onAttachedToWindow(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
        this.attached = false;
        ChatBackgroundDrawable chatBackgroundDrawable = this.chatBackgroundDrawable;
        if (chatBackgroundDrawable != null) {
            chatBackgroundDrawable.onDetachedFromWindow(this);
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.emojiLoaded) {
            invalidate();
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setEnabled(true);
        accessibilityNodeInfo.setSelected(this.isSelected);
    }
}
