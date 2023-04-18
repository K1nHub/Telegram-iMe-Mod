package org.telegram.p044ui.Cells;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.OvershootInterpolator;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3242R;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.SvgHelper;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.BackupImageView;
import org.telegram.p044ui.Components.LayoutHelper;
import org.telegram.p044ui.Components.ProgressButton;
import org.telegram.p044ui.Components.ViewHelper;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$StickerSetCovered;
/* renamed from: org.telegram.ui.Cells.ArchivedStickerSetCell */
/* loaded from: classes5.dex */
public class ArchivedStickerSetCell extends FrameLayout implements Checkable {
    private final ProgressButton addButton;
    private AnimatorSet animatorSet;
    private final boolean checkable;
    private boolean checked;
    private Button currentButton;
    private final Button deleteButton;
    private final BackupImageView imageView;
    private boolean needDivider;
    private OnCheckedChangeListener onCheckedChangeListener;
    private TLRPC$StickerSetCovered stickersSet;
    private final TextView textView;
    private final TextView valueTextView;

    /* renamed from: org.telegram.ui.Cells.ArchivedStickerSetCell$OnCheckedChangeListener */
    /* loaded from: classes5.dex */
    public interface OnCheckedChangeListener {
        void onCheckedChanged(ArchivedStickerSetCell archivedStickerSetCell, boolean z);
    }

    public ArchivedStickerSetCell(Context context, boolean z) {
        super(context);
        this.checkable = z;
        if (z) {
            ProgressButton progressButton = new ProgressButton(context);
            this.addButton = progressButton;
            this.currentButton = progressButton;
            progressButton.setText(LocaleController.getString("Add", C3242R.string.Add));
            progressButton.setTextColor(Theme.getColor("featuredStickers_buttonText"));
            progressButton.setProgressColor(Theme.getColor("featuredStickers_buttonProgress"));
            progressButton.setBackgroundRoundRect(Theme.getColor("featuredStickers_addButton"), Theme.getColor("featuredStickers_addButtonPressed"));
            addView(progressButton, LayoutHelper.createFrameRelatively(-2.0f, 28.0f, 8388661, BitmapDescriptorFactory.HUE_RED, 18.0f, 14.0f, BitmapDescriptorFactory.HUE_RED));
            int m50dp = AndroidUtilities.m50dp(60);
            ProgressButton progressButton2 = new ProgressButton(context);
            this.deleteButton = progressButton2;
            progressButton2.setAllCaps(false);
            progressButton2.setMinWidth(m50dp);
            progressButton2.setMinimumWidth(m50dp);
            progressButton2.setTextSize(1, 14.0f);
            progressButton2.setTextColor(Theme.getColor("featuredStickers_removeButtonText"));
            progressButton2.setText(LocaleController.getString("StickersRemove", C3242R.string.StickersRemove));
            progressButton2.setBackground(Theme.getRoundRectSelectorDrawable(Theme.getColor("featuredStickers_removeButtonText")));
            progressButton2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            ViewHelper.setPadding(progressButton2, 8.0f, BitmapDescriptorFactory.HUE_RED, 8.0f, BitmapDescriptorFactory.HUE_RED);
            if (Build.VERSION.SDK_INT >= 21) {
                progressButton2.setOutlineProvider(null);
            }
            addView(progressButton2, LayoutHelper.createFrameRelatively(-2.0f, 28.0f, 8388661, BitmapDescriptorFactory.HUE_RED, 18.0f, 14.0f, BitmapDescriptorFactory.HUE_RED));
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: org.telegram.ui.Cells.ArchivedStickerSetCell$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ArchivedStickerSetCell.this.lambda$new$0(view);
                }
            };
            progressButton.setOnClickListener(onClickListener);
            progressButton2.setOnClickListener(onClickListener);
            syncButtons(false);
        } else {
            this.addButton = null;
            this.deleteButton = null;
        }
        TextView textView = new TextView(context);
        this.textView = textView;
        textView.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        textView.setTextSize(1, 16.0f);
        textView.setLines(1);
        textView.setMaxLines(1);
        textView.setSingleLine(true);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setGravity(LayoutHelper.getAbsoluteGravityStart());
        addView(textView, LayoutHelper.createFrameRelatively(-2.0f, -2.0f, 8388611, 71.0f, 10.0f, 21.0f, BitmapDescriptorFactory.HUE_RED));
        TextView textView2 = new TextView(context);
        this.valueTextView = textView2;
        textView2.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText2"));
        textView2.setTextSize(1, 13.0f);
        textView2.setLines(1);
        textView2.setMaxLines(1);
        textView2.setSingleLine(true);
        textView2.setGravity(LayoutHelper.getAbsoluteGravityStart());
        addView(textView2, LayoutHelper.createFrameRelatively(-2.0f, -2.0f, 8388611, 71.0f, 35.0f, 21.0f, BitmapDescriptorFactory.HUE_RED));
        BackupImageView backupImageView = new BackupImageView(context);
        this.imageView = backupImageView;
        backupImageView.setAspectFit(true);
        backupImageView.setLayerNum(1);
        addView(backupImageView, LayoutHelper.createFrameRelatively(48.0f, 48.0f, 8388659, 12.0f, 8.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        toggle();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(64) + (this.needDivider ? 1 : 0), 1073741824));
    }

    @Override // android.view.ViewGroup
    protected void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        if (this.checkable && view == this.textView) {
            i2 += Math.max(this.addButton.getMeasuredWidth(), this.deleteButton.getMeasuredWidth());
        }
        super.measureChildWithMargins(view, i, i2, i3, i4);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.needDivider) {
            canvas.drawLine(BitmapDescriptorFactory.HUE_RED, getHeight() - 1, getWidth() - getPaddingRight(), getHeight() - 1, Theme.dividerPaint);
        }
    }

    public void setDrawProgress(boolean z, boolean z2) {
        ProgressButton progressButton = this.addButton;
        if (progressButton != null) {
            progressButton.setDrawProgress(z, z2);
        }
    }

    public void setStickersSet(TLRPC$StickerSetCovered tLRPC$StickerSetCovered, boolean z) {
        ImageLocation forSticker;
        this.needDivider = z;
        this.stickersSet = tLRPC$StickerSetCovered;
        setWillNotDraw(!z);
        this.textView.setText(this.stickersSet.set.title);
        this.valueTextView.setText(LocaleController.formatPluralString("Stickers", tLRPC$StickerSetCovered.set.count, new Object[0]));
        TLRPC$Document tLRPC$Document = tLRPC$StickerSetCovered.cover;
        if (tLRPC$Document == null) {
            tLRPC$Document = !tLRPC$StickerSetCovered.covers.isEmpty() ? tLRPC$StickerSetCovered.covers.get(0) : null;
        }
        if (tLRPC$Document != null) {
            TLObject closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(tLRPC$StickerSetCovered.set.thumbs, 90);
            if (closestPhotoSizeWithSize == null) {
                closestPhotoSizeWithSize = tLRPC$Document;
            }
            SvgHelper.SvgDrawable svgThumb = DocumentObject.getSvgThumb(tLRPC$StickerSetCovered.set.thumbs, "windowBackgroundGray", 1.0f);
            boolean z2 = closestPhotoSizeWithSize instanceof TLRPC$Document;
            if (z2) {
                forSticker = ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(tLRPC$Document.thumbs, 90), tLRPC$Document);
            } else {
                forSticker = ImageLocation.getForSticker((TLRPC$PhotoSize) closestPhotoSizeWithSize, tLRPC$Document, tLRPC$StickerSetCovered.set.thumb_version);
            }
            ImageLocation imageLocation = forSticker;
            if (z2 && MessageObject.isAnimatedStickerDocument(tLRPC$Document, true)) {
                if (svgThumb != null) {
                    this.imageView.setImage(ImageLocation.getForDocument(tLRPC$Document), "50_50", svgThumb, 0, tLRPC$StickerSetCovered);
                    return;
                } else {
                    this.imageView.setImage(ImageLocation.getForDocument(tLRPC$Document), "50_50", imageLocation, (String) null, 0, tLRPC$StickerSetCovered);
                    return;
                }
            } else if (imageLocation != null && imageLocation.imageType == 1) {
                this.imageView.setImage(imageLocation, "50_50", "tgs", svgThumb, tLRPC$StickerSetCovered);
                return;
            } else {
                this.imageView.setImage(imageLocation, "50_50", "webp", svgThumb, tLRPC$StickerSetCovered);
                return;
            }
        }
        this.imageView.setImage((ImageLocation) null, (String) null, "webp", (Drawable) null, tLRPC$StickerSetCovered);
    }

    public TLRPC$StickerSetCovered getStickersSet() {
        return this.stickersSet;
    }

    private void syncButtons(boolean z) {
        if (this.checkable) {
            AnimatorSet animatorSet = this.animatorSet;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            boolean z2 = this.checked;
            float f = z2 ? 1.0f : 0.0f;
            float f2 = z2 ? 0.0f : 1.0f;
            if (z) {
                this.currentButton = z2 ? this.deleteButton : this.addButton;
                this.addButton.setVisibility(0);
                this.deleteButton.setVisibility(0);
                AnimatorSet animatorSet2 = new AnimatorSet();
                this.animatorSet = animatorSet2;
                animatorSet2.setDuration(250L);
                this.animatorSet.playTogether(ObjectAnimator.ofFloat(this.deleteButton, View.ALPHA, f), ObjectAnimator.ofFloat(this.deleteButton, View.SCALE_X, f), ObjectAnimator.ofFloat(this.deleteButton, View.SCALE_Y, f), ObjectAnimator.ofFloat(this.addButton, View.ALPHA, f2), ObjectAnimator.ofFloat(this.addButton, View.SCALE_X, f2), ObjectAnimator.ofFloat(this.addButton, View.SCALE_Y, f2));
                this.animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.ArchivedStickerSetCell.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (ArchivedStickerSetCell.this.currentButton == ArchivedStickerSetCell.this.addButton) {
                            ArchivedStickerSetCell.this.deleteButton.setVisibility(4);
                        } else {
                            ArchivedStickerSetCell.this.addButton.setVisibility(4);
                        }
                    }
                });
                this.animatorSet.setInterpolator(new OvershootInterpolator(1.02f));
                this.animatorSet.start();
                return;
            }
            this.deleteButton.setVisibility(z2 ? 0 : 4);
            this.deleteButton.setAlpha(f);
            this.deleteButton.setScaleX(f);
            this.deleteButton.setScaleY(f);
            this.addButton.setVisibility(this.checked ? 4 : 0);
            this.addButton.setAlpha(f2);
            this.addButton.setScaleX(f2);
            this.addButton.setScaleY(f2);
        }
    }

    public void setOnCheckedChangeListener(OnCheckedChangeListener onCheckedChangeListener) {
        this.onCheckedChangeListener = onCheckedChangeListener;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        setChecked(z, true);
    }

    public void setChecked(boolean z, boolean z2) {
        setChecked(z, z2, true);
    }

    public void setChecked(boolean z, boolean z2, boolean z3) {
        OnCheckedChangeListener onCheckedChangeListener;
        if (!this.checkable || this.checked == z) {
            return;
        }
        this.checked = z;
        syncButtons(z2);
        if (!z3 || (onCheckedChangeListener = this.onCheckedChangeListener) == null) {
            return;
        }
        onCheckedChangeListener.onCheckedChanged(this, z);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.checked;
    }

    @Override // android.widget.Checkable
    public void toggle() {
        if (this.checkable) {
            setChecked(!isChecked());
        }
    }
}