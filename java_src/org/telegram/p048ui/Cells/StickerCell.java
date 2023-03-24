package org.telegram.p048ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.AccelerateInterpolator;
import android.widget.FrameLayout;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.BackupImageView;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.Premium.PremiumLockIconView;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$DocumentAttribute;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$TL_documentAttributeSticker;
/* renamed from: org.telegram.ui.Cells.StickerCell */
/* loaded from: classes5.dex */
public class StickerCell extends FrameLayout {
    private boolean clearsInputField;
    private BackupImageView imageView;
    private boolean isPremiumSticker;
    private long lastUpdateTime;
    private Object parentObject;
    private PremiumLockIconView premiumIconView;
    private float scale;
    private boolean scaled;
    private boolean showPremiumLock;
    private TLRPC$Document sticker;

    static {
        new AccelerateInterpolator(0.5f);
    }

    public StickerCell(Context context) {
        super(context);
        BackupImageView backupImageView = new BackupImageView(context);
        this.imageView = backupImageView;
        backupImageView.setAspectFit(true);
        this.imageView.setLayerNum(1);
        addView(this.imageView, LayoutHelper.createFrame(66, 66, 1, 0, 5, 0, 0));
        setFocusable(true);
        PremiumLockIconView premiumLockIconView = new PremiumLockIconView(context, PremiumLockIconView.TYPE_STICKERS_PREMIUM_LOCKED);
        this.premiumIconView = premiumLockIconView;
        premiumLockIconView.setPadding(AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4));
        this.premiumIconView.setImageReceiver(this.imageView.getImageReceiver());
        addView(this.premiumIconView, LayoutHelper.createFrame(24, 24, 81, 0, 0, 0, 0));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(76) + getPaddingLeft() + getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(78), 1073741824));
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        if (this.imageView.getImageReceiver().getPressed() != z) {
            this.imageView.getImageReceiver().setPressed(z ? 1 : 0);
            this.imageView.invalidate();
        }
        super.setPressed(z);
    }

    public void setClearsInputField(boolean z) {
        this.clearsInputField = z;
    }

    public boolean isClearsInputField() {
        return this.clearsInputField;
    }

    public void setSticker(TLRPC$Document tLRPC$Document, Object obj) {
        this.parentObject = obj;
        boolean isPremiumSticker = MessageObject.isPremiumSticker(tLRPC$Document);
        this.isPremiumSticker = isPremiumSticker;
        if (isPremiumSticker) {
            this.premiumIconView.setColor(Theme.getColor("windowBackgroundWhite"));
            this.premiumIconView.setWaitingImage();
        }
        if (tLRPC$Document != null) {
            TLRPC$PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(tLRPC$Document.thumbs, 90);
            SvgHelper.SvgDrawable svgThumb = DocumentObject.getSvgThumb(tLRPC$Document, "windowBackgroundGray", 1.0f);
            if (MessageObject.canAutoplayAnimatedSticker(tLRPC$Document)) {
                if (svgThumb != null) {
                    this.imageView.setImage(ImageLocation.getForDocument(tLRPC$Document), "80_80", (String) null, svgThumb, this.parentObject);
                } else if (closestPhotoSizeWithSize != null) {
                    this.imageView.setImage(ImageLocation.getForDocument(tLRPC$Document), "80_80", ImageLocation.getForDocument(closestPhotoSizeWithSize, tLRPC$Document), (String) null, 0, this.parentObject);
                } else {
                    this.imageView.setImage(ImageLocation.getForDocument(tLRPC$Document), "80_80", (String) null, (Drawable) null, this.parentObject);
                }
            } else if (svgThumb == null) {
                this.imageView.setImage(ImageLocation.getForDocument(closestPhotoSizeWithSize, tLRPC$Document), (String) null, "webp", (Drawable) null, this.parentObject);
            } else if (closestPhotoSizeWithSize != null) {
                this.imageView.setImage(ImageLocation.getForDocument(closestPhotoSizeWithSize, tLRPC$Document), (String) null, "webp", svgThumb, this.parentObject);
            } else {
                this.imageView.setImage(ImageLocation.getForDocument(tLRPC$Document), (String) null, "webp", svgThumb, this.parentObject);
            }
        }
        this.sticker = tLRPC$Document;
        Drawable background = getBackground();
        if (background != null) {
            background.setAlpha(230);
            background.setColorFilter(new PorterDuffColorFilter(Theme.getColor("chat_stickersHintPanel"), PorterDuff.Mode.MULTIPLY));
        }
        updatePremiumStatus(false);
    }

    public TLRPC$Document getSticker() {
        return this.sticker;
    }

    public Object getParentObject() {
        return this.parentObject;
    }

    public void setScaled(boolean z) {
        this.scaled = z;
        this.lastUpdateTime = System.currentTimeMillis();
        invalidate();
    }

    public boolean showingBitmap() {
        return this.imageView.getImageReceiver().getBitmap() != null;
    }

    public MessageObject.SendAnimationData getSendAnimationData() {
        ImageReceiver imageReceiver = this.imageView.getImageReceiver();
        if (imageReceiver.hasNotThumb()) {
            MessageObject.SendAnimationData sendAnimationData = new MessageObject.SendAnimationData();
            int[] iArr = new int[2];
            this.imageView.getLocationInWindow(iArr);
            sendAnimationData.f1438x = imageReceiver.getCenterX() + iArr[0];
            sendAnimationData.f1439y = imageReceiver.getCenterY() + iArr[1];
            sendAnimationData.width = imageReceiver.getImageWidth();
            sendAnimationData.height = imageReceiver.getImageHeight();
            return sendAnimationData;
        }
        return null;
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        boolean z;
        boolean drawChild = super.drawChild(canvas, view, j);
        if (view == this.imageView && (((z = this.scaled) && this.scale != 0.8f) || (!z && this.scale != 1.0f))) {
            long currentTimeMillis = System.currentTimeMillis();
            long j2 = currentTimeMillis - this.lastUpdateTime;
            this.lastUpdateTime = currentTimeMillis;
            if (this.scaled) {
                float f = this.scale;
                if (f != 0.8f) {
                    float f2 = f - (((float) j2) / 400.0f);
                    this.scale = f2;
                    if (f2 < 0.8f) {
                        this.scale = 0.8f;
                    }
                    this.imageView.setScaleX(this.scale);
                    this.imageView.setScaleY(this.scale);
                    this.imageView.invalidate();
                    invalidate();
                }
            }
            float f3 = this.scale + (((float) j2) / 400.0f);
            this.scale = f3;
            if (f3 > 1.0f) {
                this.scale = 1.0f;
            }
            this.imageView.setScaleX(this.scale);
            this.imageView.setScaleY(this.scale);
            this.imageView.invalidate();
            invalidate();
        }
        return drawChild;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (this.sticker == null) {
            return;
        }
        String str = null;
        for (int i = 0; i < this.sticker.attributes.size(); i++) {
            TLRPC$DocumentAttribute tLRPC$DocumentAttribute = this.sticker.attributes.get(i);
            if (tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeSticker) {
                String str2 = tLRPC$DocumentAttribute.alt;
                str = (str2 == null || str2.length() <= 0) ? null : tLRPC$DocumentAttribute.alt;
            }
        }
        if (str != null) {
            accessibilityNodeInfo.setText(str + " " + LocaleController.getString("AttachSticker", C3301R.string.AttachSticker));
        } else {
            accessibilityNodeInfo.setText(LocaleController.getString("AttachSticker", C3301R.string.AttachSticker));
        }
        accessibilityNodeInfo.setEnabled(true);
    }

    private void updatePremiumStatus(boolean z) {
        if (this.isPremiumSticker) {
            this.showPremiumLock = true;
        } else {
            this.showPremiumLock = false;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.premiumIconView.getLayoutParams();
        if (!UserConfig.getInstance(UserConfig.selectedAccount).isPremium()) {
            int m50dp = AndroidUtilities.m50dp(24);
            layoutParams.width = m50dp;
            layoutParams.height = m50dp;
            layoutParams.gravity = 81;
            layoutParams.rightMargin = 0;
            layoutParams.bottomMargin = 0;
            this.premiumIconView.setPadding(AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4));
        } else {
            int m50dp2 = AndroidUtilities.m50dp(16);
            layoutParams.width = m50dp2;
            layoutParams.height = m50dp2;
            layoutParams.gravity = 85;
            layoutParams.bottomMargin = AndroidUtilities.m50dp(8);
            layoutParams.rightMargin = AndroidUtilities.m50dp(8);
            this.premiumIconView.setPadding(AndroidUtilities.m50dp(1), AndroidUtilities.m50dp(1), AndroidUtilities.m50dp(1), AndroidUtilities.m50dp(1));
        }
        this.premiumIconView.setLocked(!UserConfig.getInstance(UserConfig.selectedAccount).isPremium());
        AndroidUtilities.updateViewVisibilityAnimated(this.premiumIconView, this.showPremiumLock, 0.9f, z);
        invalidate();
    }
}
