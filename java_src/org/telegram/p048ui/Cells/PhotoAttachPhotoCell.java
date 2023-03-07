package org.telegram.p048ui.Cells;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.AnimatedEmojiDrawable;
import org.telegram.p048ui.Components.BackupImageView;
import org.telegram.p048ui.Components.CheckBox2;
import org.telegram.p048ui.Components.CubicBezierInterpolator;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.spoilers.SpoilerEffect;
import org.telegram.p048ui.PhotoViewer;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$VideoSize;
/* renamed from: org.telegram.ui.Cells.PhotoAttachPhotoCell */
/* loaded from: classes5.dex */
public class PhotoAttachPhotoCell extends FrameLayout {
    private static Rect rect = new Rect();
    private AnimatorSet animator;
    private AnimatorSet animatorSet;
    private Paint backgroundPaint;
    private CheckBox2 checkBox;
    private FrameLayout checkFrame;
    private FrameLayout container;
    private Float crossfadeDuration;
    private PhotoAttachPhotoCellDelegate delegate;
    private boolean hasSpoiler;
    private BackupImageView imageView;
    private float imageViewCrossfadeProgress;
    private Bitmap imageViewCrossfadeSnapshot;
    private boolean isLast;
    private boolean isVertical;
    private int itemSize;
    private boolean itemSizeChanged;
    private Path path;
    private MediaController.PhotoEntry photoEntry;
    private boolean pressed;
    private final Theme.ResourcesProvider resourcesProvider;
    private MediaController.SearchImage searchEntry;
    private SpoilerEffect spoilerEffect;
    private float spoilerMaxRadius;
    private float spoilerRevealProgress;
    private float spoilerRevealX;
    private float spoilerRevealY;
    private FrameLayout videoInfoContainer;
    private TextView videoTextView;
    private boolean zoomOnSelect;

    /* renamed from: org.telegram.ui.Cells.PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate */
    /* loaded from: classes5.dex */
    public interface PhotoAttachPhotoCellDelegate {
        void onCheckClick(PhotoAttachPhotoCell photoAttachPhotoCell);
    }

    public PhotoAttachPhotoCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.zoomOnSelect = true;
        this.backgroundPaint = new Paint();
        this.spoilerEffect = new SpoilerEffect();
        this.path = new Path();
        this.imageViewCrossfadeProgress = 1.0f;
        this.resourcesProvider = resourcesProvider;
        setWillNotDraw(false);
        FrameLayout frameLayout = new FrameLayout(context);
        this.container = frameLayout;
        addView(frameLayout, LayoutHelper.createFrame(80, 80));
        this.spoilerEffect.setColor(ColorUtils.setAlphaComponent(-1, (int) (Color.alpha(-1) * 0.325f)));
        BackupImageView backupImageView = new BackupImageView(context) { // from class: org.telegram.ui.Cells.PhotoAttachPhotoCell.1
            private Paint crossfadePaint = new Paint(1);
            private long lastUpdate;

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p048ui.Components.BackupImageView, android.view.View
            public void onDraw(Canvas canvas) {
                AnimatedEmojiDrawable animatedEmojiDrawable = this.animatedEmojiDrawable;
                ImageReceiver imageReceiver = animatedEmojiDrawable != null ? animatedEmojiDrawable.getImageReceiver() : this.imageReceiver;
                if (imageReceiver == null) {
                    return;
                }
                if (this.width != -1 && this.height != -1) {
                    int height = getHeight();
                    int i = this.height;
                    imageReceiver.setImageCoords((getWidth() - this.width) / 2, (height - i) / 2, this.width, i);
                    int height2 = getHeight();
                    int i2 = this.height;
                    this.blurImageReceiver.setImageCoords((getWidth() - this.width) / 2, (height2 - i2) / 2, this.width, i2);
                } else {
                    imageReceiver.setImageCoords(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight());
                    this.blurImageReceiver.setImageCoords(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight());
                }
                imageReceiver.draw(canvas);
                if (PhotoAttachPhotoCell.this.hasSpoiler && PhotoAttachPhotoCell.this.spoilerRevealProgress != 1.0f && (PhotoAttachPhotoCell.this.photoEntry == null || !PhotoAttachPhotoCell.this.photoEntry.isAttachSpoilerRevealed)) {
                    if (PhotoAttachPhotoCell.this.spoilerRevealProgress != BitmapDescriptorFactory.HUE_RED) {
                        canvas.save();
                        PhotoAttachPhotoCell.this.path.rewind();
                        PhotoAttachPhotoCell.this.path.addCircle(PhotoAttachPhotoCell.this.spoilerRevealX, PhotoAttachPhotoCell.this.spoilerRevealY, PhotoAttachPhotoCell.this.spoilerMaxRadius * PhotoAttachPhotoCell.this.spoilerRevealProgress, Path.Direction.CW);
                        canvas.clipPath(PhotoAttachPhotoCell.this.path, Region.Op.DIFFERENCE);
                    }
                    this.blurImageReceiver.draw(canvas);
                    PhotoAttachPhotoCell.this.spoilerEffect.setBounds(0, 0, getWidth(), getHeight());
                    PhotoAttachPhotoCell.this.spoilerEffect.draw(canvas);
                    invalidate();
                    if (PhotoAttachPhotoCell.this.spoilerRevealProgress != BitmapDescriptorFactory.HUE_RED) {
                        canvas.restore();
                    }
                }
                if (PhotoAttachPhotoCell.this.imageViewCrossfadeProgress == 1.0f || PhotoAttachPhotoCell.this.imageViewCrossfadeSnapshot == null) {
                    if (PhotoAttachPhotoCell.this.imageViewCrossfadeProgress != 1.0f || PhotoAttachPhotoCell.this.imageViewCrossfadeSnapshot == null) {
                        return;
                    }
                    PhotoAttachPhotoCell.this.imageViewCrossfadeSnapshot.recycle();
                    PhotoAttachPhotoCell.this.imageViewCrossfadeSnapshot = null;
                    PhotoAttachPhotoCell.this.crossfadeDuration = null;
                    invalidate();
                    return;
                }
                this.crossfadePaint.setAlpha((int) (CubicBezierInterpolator.DEFAULT.getInterpolation(1.0f - PhotoAttachPhotoCell.this.imageViewCrossfadeProgress) * 255.0f));
                canvas.drawBitmap(PhotoAttachPhotoCell.this.imageViewCrossfadeSnapshot, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.crossfadePaint);
                long min = Math.min(16L, System.currentTimeMillis() - this.lastUpdate);
                float floatValue = PhotoAttachPhotoCell.this.crossfadeDuration == null ? 250.0f : PhotoAttachPhotoCell.this.crossfadeDuration.floatValue();
                PhotoAttachPhotoCell photoAttachPhotoCell = PhotoAttachPhotoCell.this;
                photoAttachPhotoCell.imageViewCrossfadeProgress = Math.min(1.0f, photoAttachPhotoCell.imageViewCrossfadeProgress + (((float) min) / floatValue));
                this.lastUpdate = System.currentTimeMillis();
                invalidate();
            }
        };
        this.imageView = backupImageView;
        backupImageView.setBlurAllowed(true);
        this.container.addView(this.imageView, LayoutHelper.createFrame(-1, -1));
        FrameLayout frameLayout2 = new FrameLayout(this, context) { // from class: org.telegram.ui.Cells.PhotoAttachPhotoCell.2
            private RectF rect = new RectF();

            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                this.rect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
                canvas.drawRoundRect(this.rect, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), Theme.chat_timeBackgroundPaint);
            }
        };
        this.videoInfoContainer = frameLayout2;
        frameLayout2.setWillNotDraw(false);
        this.videoInfoContainer.setPadding(AndroidUtilities.m50dp(5), 0, AndroidUtilities.m50dp(5), 0);
        this.container.addView(this.videoInfoContainer, LayoutHelper.createFrame(-2, 17, 83, 4, 0, 0, 4));
        ImageView imageView = new ImageView(context);
        imageView.setImageResource(C3158R.C3160drawable.play_mini_video);
        this.videoInfoContainer.addView(imageView, LayoutHelper.createFrame(-2, -2, 19));
        TextView textView = new TextView(context);
        this.videoTextView = textView;
        textView.setTextColor(-1);
        this.videoTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.videoTextView.setTextSize(1, 12.0f);
        this.videoTextView.setImportantForAccessibility(2);
        this.videoInfoContainer.addView(this.videoTextView, LayoutHelper.createFrame(-2, -2.0f, 19, 13.0f, -0.7f, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED));
        CheckBox2 checkBox2 = new CheckBox2(context, 24, resourcesProvider);
        this.checkBox = checkBox2;
        checkBox2.setDrawBackgroundAsArc(7);
        this.checkBox.setColor("chat_attachCheckBoxBackground", "chat_attachPhotoBackground", "chat_attachCheckBoxCheck");
        addView(this.checkBox, LayoutHelper.createFrame(26, 26, 51, 52, 4, 0, 0));
        this.checkBox.setVisibility(0);
        setFocusable(true);
        FrameLayout frameLayout3 = new FrameLayout(context);
        this.checkFrame = frameLayout3;
        addView(frameLayout3, LayoutHelper.createFrame(42, 42, 51, 38, 0, 0, 0));
        this.itemSize = AndroidUtilities.m50dp(80);
    }

    public void setHasSpoiler(boolean z) {
        setHasSpoiler(z, null);
    }

    public void setHasSpoiler(boolean z, Float f) {
        if (this.hasSpoiler != z) {
            this.spoilerRevealProgress = BitmapDescriptorFactory.HUE_RED;
            if (isLaidOut()) {
                Bitmap bitmap = this.imageViewCrossfadeSnapshot;
                this.imageViewCrossfadeSnapshot = AndroidUtilities.snapshotView(this.imageView);
                if (bitmap != null) {
                    bitmap.recycle();
                }
                this.imageViewCrossfadeProgress = BitmapDescriptorFactory.HUE_RED;
            } else {
                Bitmap bitmap2 = this.imageViewCrossfadeSnapshot;
                if (bitmap2 != null) {
                    bitmap2.recycle();
                    this.imageViewCrossfadeSnapshot = null;
                }
                this.imageViewCrossfadeProgress = 1.0f;
            }
            this.hasSpoiler = z;
            this.crossfadeDuration = f;
            this.imageView.setHasBlur(z);
            this.imageView.invalidate();
        }
    }

    public void setIsVertical(boolean z) {
        this.isVertical = z;
    }

    public void setItemSize(int i) {
        this.itemSize = i;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.container.getLayoutParams();
        int i2 = this.itemSize;
        layoutParams.height = i2;
        layoutParams.width = i2;
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.checkFrame.getLayoutParams();
        layoutParams2.gravity = 53;
        layoutParams2.leftMargin = 0;
        FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.checkBox.getLayoutParams();
        layoutParams3.gravity = 53;
        layoutParams3.leftMargin = 0;
        int m50dp = AndroidUtilities.m50dp(5);
        layoutParams3.topMargin = m50dp;
        layoutParams3.rightMargin = m50dp;
        this.checkBox.setDrawBackgroundAsArc(6);
        this.itemSizeChanged = true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.itemSizeChanged) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(this.itemSize, 1073741824), View.MeasureSpec.makeMeasureSpec(this.itemSize + AndroidUtilities.m50dp(5), 1073741824));
            return;
        }
        if (this.isVertical) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(80), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp((this.isLast ? 0 : 6) + 80), 1073741824));
        } else {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp((this.isLast ? 0 : 6) + 80), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(80), 1073741824));
        }
    }

    public MediaController.PhotoEntry getPhotoEntry() {
        return this.photoEntry;
    }

    public BackupImageView getImageView() {
        return this.imageView;
    }

    public float getScale() {
        return this.container.getScaleX();
    }

    public CheckBox2 getCheckBox() {
        return this.checkBox;
    }

    public FrameLayout getCheckFrame() {
        return this.checkFrame;
    }

    public View getVideoInfoContainer() {
        return this.videoInfoContainer;
    }

    public void setPhotoEntry(MediaController.PhotoEntry photoEntry, boolean z, boolean z2) {
        boolean z3 = false;
        this.pressed = false;
        this.photoEntry = photoEntry;
        this.isLast = z2;
        if (photoEntry.isVideo) {
            this.imageView.setOrientation(0, true);
            this.videoInfoContainer.setVisibility(0);
            this.videoTextView.setText(AndroidUtilities.formatShortDuration(this.photoEntry.duration));
        } else {
            this.videoInfoContainer.setVisibility(4);
        }
        MediaController.PhotoEntry photoEntry2 = this.photoEntry;
        String str = photoEntry2.thumbPath;
        if (str != null) {
            this.imageView.setImage(str, null, Theme.chat_attachEmptyDrawable);
        } else if (photoEntry2.path != null) {
            if (photoEntry2.isVideo) {
                BackupImageView backupImageView = this.imageView;
                backupImageView.setImage("vthumb://" + this.photoEntry.imageId + ":" + this.photoEntry.path, null, Theme.chat_attachEmptyDrawable);
            } else {
                this.imageView.setOrientation(photoEntry2.orientation, true);
                BackupImageView backupImageView2 = this.imageView;
                backupImageView2.setImage("thumb://" + this.photoEntry.imageId + ":" + this.photoEntry.path, null, Theme.chat_attachEmptyDrawable);
            }
        } else {
            this.imageView.setImageDrawable(Theme.chat_attachEmptyDrawable);
        }
        if (z && PhotoViewer.isShowingImage(this.photoEntry.path)) {
            z3 = true;
        }
        this.imageView.getImageReceiver().setVisible(!z3, true);
        CheckBox2 checkBox2 = this.checkBox;
        float f = BitmapDescriptorFactory.HUE_RED;
        checkBox2.setAlpha(z3 ? BitmapDescriptorFactory.HUE_RED : 1.0f);
        FrameLayout frameLayout = this.videoInfoContainer;
        if (!z3) {
            f = 1.0f;
        }
        frameLayout.setAlpha(f);
        requestLayout();
        setHasSpoiler(photoEntry.hasSpoiler);
    }

    public void setPhotoEntry(MediaController.SearchImage searchImage, boolean z, boolean z2) {
        this.pressed = false;
        this.searchEntry = searchImage;
        this.isLast = z2;
        Drawable drawable = this.zoomOnSelect ? Theme.chat_attachEmptyDrawable : getResources().getDrawable(C3158R.C3160drawable.nophotos);
        TLRPC$PhotoSize tLRPC$PhotoSize = searchImage.thumbPhotoSize;
        if (tLRPC$PhotoSize != null) {
            this.imageView.setImage(ImageLocation.getForPhoto(tLRPC$PhotoSize, searchImage.photo), (String) null, drawable, searchImage);
        } else {
            TLRPC$PhotoSize tLRPC$PhotoSize2 = searchImage.photoSize;
            if (tLRPC$PhotoSize2 != null) {
                this.imageView.setImage(ImageLocation.getForPhoto(tLRPC$PhotoSize2, searchImage.photo), "80_80", drawable, searchImage);
            } else {
                String str = searchImage.thumbPath;
                if (str != null) {
                    this.imageView.setImage(str, null, drawable);
                } else if (!TextUtils.isEmpty(searchImage.thumbUrl)) {
                    ImageLocation forPath = ImageLocation.getForPath(searchImage.thumbUrl);
                    if (searchImage.type == 1 && searchImage.thumbUrl.endsWith("mp4")) {
                        forPath.imageType = 2;
                    }
                    this.imageView.setImage(forPath, (String) null, drawable, searchImage);
                } else {
                    TLRPC$Document tLRPC$Document = searchImage.document;
                    if (tLRPC$Document != null) {
                        MessageObject.getDocumentVideoThumb(tLRPC$Document);
                        TLRPC$VideoSize documentVideoThumb = MessageObject.getDocumentVideoThumb(searchImage.document);
                        if (documentVideoThumb != null) {
                            this.imageView.setImage(ImageLocation.getForDocument(documentVideoThumb, searchImage.document), null, ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(searchImage.document.thumbs, 90), searchImage.document), "52_52", null, -1L, 1, searchImage);
                        } else {
                            this.imageView.setImage(ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(searchImage.document.thumbs, 320), searchImage.document), (String) null, drawable, searchImage);
                        }
                    } else {
                        this.imageView.setImageDrawable(drawable);
                    }
                }
            }
        }
        boolean z3 = z && PhotoViewer.isShowingImage(searchImage.getPathToAttach());
        this.imageView.getImageReceiver().setVisible(!z3, true);
        CheckBox2 checkBox2 = this.checkBox;
        float f = BitmapDescriptorFactory.HUE_RED;
        checkBox2.setAlpha(z3 ? BitmapDescriptorFactory.HUE_RED : 1.0f);
        FrameLayout frameLayout = this.videoInfoContainer;
        if (!z3) {
            f = 1.0f;
        }
        frameLayout.setAlpha(f);
        requestLayout();
        setHasSpoiler(false);
    }

    public boolean isChecked() {
        return this.checkBox.isChecked();
    }

    public void setChecked(int i, final boolean z, boolean z2) {
        this.checkBox.setChecked(i, z, z2);
        if (this.itemSizeChanged) {
            AnimatorSet animatorSet = this.animator;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.animator = null;
            }
            if (z2) {
                AnimatorSet animatorSet2 = new AnimatorSet();
                this.animator = animatorSet2;
                Animator[] animatorArr = new Animator[2];
                FrameLayout frameLayout = this.container;
                Property property = View.SCALE_X;
                float[] fArr = new float[1];
                fArr[0] = z ? 0.787f : 1.0f;
                animatorArr[0] = ObjectAnimator.ofFloat(frameLayout, property, fArr);
                FrameLayout frameLayout2 = this.container;
                Property property2 = View.SCALE_Y;
                float[] fArr2 = new float[1];
                fArr2[0] = z ? 0.787f : 1.0f;
                animatorArr[1] = ObjectAnimator.ofFloat(frameLayout2, property2, fArr2);
                animatorSet2.playTogether(animatorArr);
                this.animator.setDuration(200L);
                this.animator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.PhotoAttachPhotoCell.4
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (PhotoAttachPhotoCell.this.animator == null || !PhotoAttachPhotoCell.this.animator.equals(animator)) {
                            return;
                        }
                        PhotoAttachPhotoCell.this.animator = null;
                        if (z) {
                            return;
                        }
                        PhotoAttachPhotoCell.this.setBackgroundColor(0);
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                        if (PhotoAttachPhotoCell.this.animator == null || !PhotoAttachPhotoCell.this.animator.equals(animator)) {
                            return;
                        }
                        PhotoAttachPhotoCell.this.animator = null;
                    }
                });
                this.animator.start();
                return;
            }
            this.container.setScaleX(z ? 0.787f : 1.0f);
            this.container.setScaleY(z ? 0.787f : 1.0f);
        }
    }

    public void setNum(int i) {
        this.checkBox.setNum(i);
    }

    public void setOnCheckClickLisnener(View.OnClickListener onClickListener) {
        this.checkFrame.setOnClickListener(onClickListener);
    }

    public void setDelegate(PhotoAttachPhotoCellDelegate photoAttachPhotoCellDelegate) {
        this.delegate = photoAttachPhotoCellDelegate;
    }

    public void callDelegate() {
        this.delegate.onCheckClick(this);
    }

    public void showImage() {
        this.imageView.getImageReceiver().setVisible(true, true);
    }

    public void showCheck(boolean z) {
        if (z && this.checkBox.getAlpha() == 1.0f) {
            return;
        }
        if (z || this.checkBox.getAlpha() != BitmapDescriptorFactory.HUE_RED) {
            AnimatorSet animatorSet = this.animatorSet;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.animatorSet = null;
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.animatorSet = animatorSet2;
            animatorSet2.setInterpolator(new DecelerateInterpolator());
            this.animatorSet.setDuration(180L);
            AnimatorSet animatorSet3 = this.animatorSet;
            Animator[] animatorArr = new Animator[2];
            FrameLayout frameLayout = this.videoInfoContainer;
            Property property = View.ALPHA;
            float[] fArr = new float[1];
            fArr[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            animatorArr[0] = ObjectAnimator.ofFloat(frameLayout, property, fArr);
            CheckBox2 checkBox2 = this.checkBox;
            Property property2 = View.ALPHA;
            float[] fArr2 = new float[1];
            fArr2[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            animatorArr[1] = ObjectAnimator.ofFloat(checkBox2, property2, fArr2);
            animatorSet3.playTogether(animatorArr);
            this.animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.PhotoAttachPhotoCell.5
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (animator.equals(PhotoAttachPhotoCell.this.animatorSet)) {
                        PhotoAttachPhotoCell.this.animatorSet = null;
                    }
                }
            });
            this.animatorSet.start();
        }
    }

    @Override // android.view.View
    public void clearAnimation() {
        super.clearAnimation();
        AnimatorSet animatorSet = this.animator;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.animator = null;
            this.container.setScaleX(this.checkBox.isChecked() ? 0.787f : 1.0f);
            this.container.setScaleY(this.checkBox.isChecked() ? 0.787f : 1.0f);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            android.widget.FrameLayout r0 = r5.checkFrame
            android.graphics.Rect r1 = org.telegram.p048ui.Cells.PhotoAttachPhotoCell.rect
            r0.getHitRect(r1)
            int r0 = r6.getAction()
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L27
            android.graphics.Rect r0 = org.telegram.p048ui.Cells.PhotoAttachPhotoCell.rect
            float r3 = r6.getX()
            int r3 = (int) r3
            float r4 = r6.getY()
            int r4 = (int) r4
            boolean r0 = r0.contains(r3, r4)
            if (r0 == 0) goto L74
            r5.pressed = r1
            r5.invalidate()
            goto L75
        L27:
            boolean r0 = r5.pressed
            if (r0 == 0) goto L74
            int r0 = r6.getAction()
            if (r0 != r1) goto L49
            android.view.ViewParent r0 = r5.getParent()
            r0.requestDisallowInterceptTouchEvent(r1)
            r5.pressed = r2
            r5.playSoundEffect(r2)
            r5.sendAccessibilityEvent(r1)
            org.telegram.ui.Cells.PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate r0 = r5.delegate
            r0.onCheckClick(r5)
            r5.invalidate()
            goto L74
        L49:
            int r0 = r6.getAction()
            r1 = 3
            if (r0 != r1) goto L56
            r5.pressed = r2
            r5.invalidate()
            goto L74
        L56:
            int r0 = r6.getAction()
            r1 = 2
            if (r0 != r1) goto L74
            android.graphics.Rect r0 = org.telegram.p048ui.Cells.PhotoAttachPhotoCell.rect
            float r1 = r6.getX()
            int r1 = (int) r1
            float r3 = r6.getY()
            int r3 = (int) r3
            boolean r0 = r0.contains(r1, r3)
            if (r0 != 0) goto L74
            r5.pressed = r2
            r5.invalidate()
        L74:
            r1 = 0
        L75:
            if (r1 != 0) goto L7b
            boolean r1 = super.onTouchEvent(r6)
        L7b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.PhotoAttachPhotoCell.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        MediaController.PhotoEntry photoEntry;
        MediaController.SearchImage searchImage;
        if (!this.checkBox.isChecked() && this.container.getScaleX() == 1.0f && this.imageView.getImageReceiver().hasNotThumb() && this.imageView.getImageReceiver().getCurrentAlpha() == 1.0f && (((photoEntry = this.photoEntry) == null || !PhotoViewer.isShowingImage(photoEntry.path)) && ((searchImage = this.searchEntry) == null || !PhotoViewer.isShowingImage(searchImage.getPathToAttach())))) {
            return;
        }
        this.backgroundPaint.setColor(getThemedColor("chat_attachPhotoBackground"));
        canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.imageView.getMeasuredWidth(), this.imageView.getMeasuredHeight(), this.backgroundPaint);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setEnabled(true);
        StringBuilder sb = new StringBuilder();
        MediaController.PhotoEntry photoEntry = this.photoEntry;
        if (photoEntry != null && photoEntry.isVideo) {
            sb.append(LocaleController.getString("AttachVideo", C3158R.string.AttachVideo) + ", " + LocaleController.formatDuration(this.photoEntry.duration));
        } else {
            sb.append(LocaleController.getString("AttachPhoto", C3158R.string.AttachPhoto));
        }
        if (this.photoEntry != null) {
            sb.append(". ");
            sb.append(LocaleController.getInstance().formatterStats.format(this.photoEntry.dateTaken * 1000));
        }
        accessibilityNodeInfo.setText(sb);
        if (this.checkBox.isChecked()) {
            accessibilityNodeInfo.setSelected(true);
        }
        if (Build.VERSION.SDK_INT >= 21) {
            accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(C3158R.C3161id.acc_action_open_photo, LocaleController.getString("Open", C3158R.string.Open)));
        }
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i, Bundle bundle) {
        if (i == C3158R.C3161id.acc_action_open_photo) {
            View view = (View) getParent();
            view.dispatchTouchEvent(MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 0, getLeft(), (getTop() + getHeight()) - 1, 0));
            view.dispatchTouchEvent(MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 1, getLeft(), (getTop() + getHeight()) - 1, 0));
        }
        return super.performAccessibilityAction(i, bundle);
    }

    protected int getThemedColor(String str) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        Integer color = resourcesProvider != null ? resourcesProvider.getColor(str) : null;
        return color != null ? color.intValue() : Theme.getColor(str);
    }
}
