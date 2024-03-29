package org.telegram.p043ui.Components;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.SecureDocument;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Components.BackupImageView */
/* loaded from: classes6.dex */
public class BackupImageView extends View {
    public AnimatedEmojiDrawable animatedEmojiDrawable;
    boolean attached;
    private AvatarDrawable avatarDrawable;
    protected boolean blurAllowed;
    protected ImageReceiver blurImageReceiver;
    public boolean drawFromStart;
    protected boolean hasBlur;
    protected int height;
    protected ImageReceiver imageReceiver;
    ValueAnimator roundRadiusAnimator;
    public boolean shouldResetBackGroundOnLoaded;
    protected int width;

    public BackupImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.shouldResetBackGroundOnLoaded = false;
        this.width = -1;
        this.height = -1;
        ImageReceiver imageReceiver = new ImageReceiver(this);
        this.imageReceiver = imageReceiver;
        imageReceiver.setDelegate(new ImageReceiver.ImageReceiverDelegate() { // from class: org.telegram.ui.Components.BackupImageView$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
            public final void didSetImage(ImageReceiver imageReceiver2, boolean z, boolean z2, boolean z3) {
                BackupImageView.this.lambda$new$0(imageReceiver2, z, z2, z3);
            }

            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
            public /* synthetic */ void onAnimationReady(ImageReceiver imageReceiver2) {
                ImageReceiver.ImageReceiverDelegate.CC.$default$onAnimationReady(this, imageReceiver2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
        if (this.shouldResetBackGroundOnLoaded && z && !z2) {
            setBackground(null);
        }
    }

    public void setUser(TLRPC$User tLRPC$User) {
        this.imageReceiver.setRoundRadius(getContext().getResources().getDimensionPixelSize(C3632R.dimen.telegram_avatar_size_medium) / 2);
        AvatarDrawable avatarDrawable = new AvatarDrawable(tLRPC$User);
        avatarDrawable.setColor(Theme.getColor(Theme.key_avatar_backgroundInProfileBlue));
        setForUserOrChat(tLRPC$User, avatarDrawable);
    }

    public BackupImageView(Context context) {
        super(context);
        this.shouldResetBackGroundOnLoaded = false;
        this.width = -1;
        this.height = -1;
        ImageReceiver createImageReciever = createImageReciever();
        this.imageReceiver = createImageReciever;
        createImageReciever.setCrossfadeByScale(BitmapDescriptorFactory.HUE_RED);
        this.imageReceiver.setAllowLoadingOnAttachedOnly(true);
        this.imageReceiver.setDelegate(new ImageReceiver.ImageReceiverDelegate() { // from class: org.telegram.ui.Components.BackupImageView$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
            public final void didSetImage(ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
                BackupImageView.this.lambda$new$1(imageReceiver, z, z2, z3);
            }

            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
            public /* synthetic */ void onAnimationReady(ImageReceiver imageReceiver) {
                ImageReceiver.ImageReceiverDelegate.CC.$default$onAnimationReady(this, imageReceiver);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
        if (!z || z2) {
            return;
        }
        checkCreateBlurredImage();
    }

    protected ImageReceiver createImageReciever() {
        return new ImageReceiver(this);
    }

    public void setBlurAllowed(boolean z) {
        if (this.attached) {
            throw new IllegalStateException("You should call setBlurAllowed(...) only when detached!");
        }
        this.blurAllowed = z;
        if (z) {
            this.blurImageReceiver = new ImageReceiver();
        }
    }

    public void setHasBlur(boolean z) {
        if (z && !this.blurAllowed) {
            throw new IllegalStateException("You should call setBlurAllowed(...) before calling setHasBlur(true)!");
        }
        this.hasBlur = z;
        if (!z) {
            if (this.blurImageReceiver.getBitmap() != null && !this.blurImageReceiver.getBitmap().isRecycled()) {
                this.blurImageReceiver.getBitmap().recycle();
            }
            this.blurImageReceiver.setImageBitmap((Bitmap) null);
        }
        checkCreateBlurredImage();
    }

    public void onNewImageSet() {
        if (this.hasBlur) {
            if (this.blurImageReceiver.getBitmap() != null && !this.blurImageReceiver.getBitmap().isRecycled()) {
                this.blurImageReceiver.getBitmap().recycle();
            }
            this.blurImageReceiver.setImageBitmap((Bitmap) null);
            checkCreateBlurredImage();
        }
    }

    private void checkCreateBlurredImage() {
        Bitmap bitmap;
        if (!this.hasBlur || this.blurImageReceiver.getBitmap() != null || this.imageReceiver.getBitmap() == null || (bitmap = this.imageReceiver.getBitmap()) == null || bitmap.isRecycled()) {
            return;
        }
        this.blurImageReceiver.setImageBitmap(Utilities.stackBlurBitmapMax(bitmap));
        invalidate();
    }

    public void setOrientation(int i, boolean z) {
        this.imageReceiver.setOrientation(i, z);
    }

    public void setOrientation(int i, int i2, boolean z) {
        this.imageReceiver.setOrientation(i, i2, z);
    }

    public void setImage(SecureDocument secureDocument, String str) {
        setImage(ImageLocation.getForSecureDocument(secureDocument), str, (ImageLocation) null, (String) null, (Drawable) null, (Bitmap) null, (String) null, 0, (Object) null);
    }

    public void setImage(ImageLocation imageLocation, String str, String str2, Drawable drawable, Object obj) {
        setImage(imageLocation, str, (ImageLocation) null, (String) null, drawable, (Bitmap) null, str2, 0, obj);
    }

    public void setImage(ImageLocation imageLocation, String str, Drawable drawable, Object obj) {
        setImage(imageLocation, str, (ImageLocation) null, (String) null, drawable, (Bitmap) null, (String) null, 0, obj);
    }

    public void setImage(ImageLocation imageLocation, String str, ImageLocation imageLocation2, String str2, Drawable drawable, Object obj) {
        this.imageReceiver.setImage(imageLocation, str, imageLocation2, str2, null, null, drawable, 0L, null, obj, 1);
        onNewImageSet();
    }

    public void setImage(ImageLocation imageLocation, String str, Drawable drawable, int i, Object obj) {
        setImage(imageLocation, str, (ImageLocation) null, (String) null, drawable, (Bitmap) null, (String) null, i, obj);
    }

    public void clearImage() {
        this.imageReceiver.clearImage();
    }

    public void setForUserOrChat(TLObject tLObject, AvatarDrawable avatarDrawable) {
        this.imageReceiver.setForUserOrChat(tLObject, avatarDrawable);
        onNewImageSet();
    }

    public void setForUserOrChat(TLObject tLObject, AvatarDrawable avatarDrawable, Object obj) {
        this.imageReceiver.setForUserOrChat(tLObject, avatarDrawable, obj);
        onNewImageSet();
    }

    public void setImageMedia(ImageLocation imageLocation, String str, ImageLocation imageLocation2, String str2, Bitmap bitmap, int i, int i2, Object obj) {
        BackupImageView backupImageView;
        BitmapDrawable bitmapDrawable;
        if (bitmap != null) {
            backupImageView = this;
            bitmapDrawable = new BitmapDrawable((Resources) null, bitmap);
        } else {
            backupImageView = this;
            bitmapDrawable = null;
        }
        backupImageView.imageReceiver.setImage(imageLocation, str, imageLocation2, str2, null, null, bitmapDrawable, i, null, obj, i2);
        onNewImageSet();
    }

    public void setImage(ImageLocation imageLocation, String str, ImageLocation imageLocation2, String str2, int i, Object obj) {
        setImage(imageLocation, str, imageLocation2, str2, (Drawable) null, (Bitmap) null, (String) null, i, obj);
    }

    public void setImage(String str, String str2, Drawable drawable) {
        setImage(ImageLocation.getForPath(str), str2, (ImageLocation) null, (String) null, drawable, (Bitmap) null, (String) null, 0, (Object) null);
    }

    public void setImage(String str, String str2, String str3, String str4) {
        setImage(ImageLocation.getForPath(str), str2, ImageLocation.getForPath(str3), str4, (Drawable) null, (Bitmap) null, (String) null, 0, (Object) null);
    }

    public void setImage(ImageLocation imageLocation, String str, ImageLocation imageLocation2, String str2, Drawable drawable, Bitmap bitmap, String str3, int i, Object obj) {
        BackupImageView backupImageView;
        BitmapDrawable bitmapDrawable;
        if (bitmap != null) {
            backupImageView = this;
            bitmapDrawable = new BitmapDrawable((Resources) null, bitmap);
        } else {
            backupImageView = this;
            bitmapDrawable = drawable;
        }
        backupImageView.imageReceiver.setImage(imageLocation, str, imageLocation2, str2, bitmapDrawable, i, str3, obj, 0);
        onNewImageSet();
    }

    public void setImage(ImageLocation imageLocation, String str, ImageLocation imageLocation2, String str2, Drawable drawable, String str3, long j, int i, Object obj) {
        this.imageReceiver.setImage(imageLocation, str, imageLocation2, str2, drawable, j, str3, obj, i);
        onNewImageSet();
    }

    public void setImage(ImageLocation imageLocation, String str, ImageLocation imageLocation2, String str2, String str3, long j, int i, Object obj) {
        this.imageReceiver.setImage(imageLocation, str, imageLocation2, str2, null, j, str3, obj, i);
        onNewImageSet();
    }

    public void setImageMedia(VectorAvatarThumbDrawable vectorAvatarThumbDrawable, ImageLocation imageLocation, String str, ImageLocation imageLocation2, String str2, ImageLocation imageLocation3, String str3, String str4, int i, int i2, Object obj) {
        if (vectorAvatarThumbDrawable != null) {
            this.imageReceiver.setImageBitmap(vectorAvatarThumbDrawable);
        } else {
            this.imageReceiver.setImage(imageLocation, str, imageLocation2, str2, imageLocation3, str3, null, i, str4, obj, i2);
        }
        onNewImageSet();
    }

    public void setImageBitmap(Bitmap bitmap) {
        this.imageReceiver.setImageBitmap(bitmap);
        onNewImageSet();
    }

    public void setImageResource(int i) {
        this.imageReceiver.setImageBitmap(getResources().getDrawable(i));
        invalidate();
        onNewImageSet();
    }

    public void setImageResource(int i, int i2) {
        Drawable drawable = getResources().getDrawable(i);
        if (drawable != null) {
            drawable.setColorFilter(new PorterDuffColorFilter(i2, PorterDuff.Mode.MULTIPLY));
        }
        this.imageReceiver.setImageBitmap(drawable);
        invalidate();
        onNewImageSet();
    }

    public void setImageDrawable(Drawable drawable) {
        this.imageReceiver.setImageBitmap(drawable);
        onNewImageSet();
    }

    public void setLayerNum(int i) {
        this.imageReceiver.setLayerNum(i);
    }

    public void setRoundRadius(int i) {
        this.imageReceiver.setRoundRadius(i);
        if (this.blurAllowed) {
            this.blurImageReceiver.setRoundRadius(i);
        }
        invalidate();
    }

    public void setRoundRadius(int i, int i2, int i3, int i4) {
        this.imageReceiver.setRoundRadius(i, i2, i3, i4);
        if (this.blurAllowed) {
            this.blurImageReceiver.setRoundRadius(i, i2, i3, i4);
        }
        invalidate();
    }

    public int[] getRoundRadius() {
        return this.imageReceiver.getRoundRadius();
    }

    public void setAspectFit(boolean z) {
        this.imageReceiver.setAspectFit(z);
    }

    public ImageReceiver getImageReceiver() {
        return this.imageReceiver;
    }

    public void setSize(int i, int i2) {
        this.width = i;
        this.height = i2;
        invalidate();
    }

    public AvatarDrawable getAvatarDrawable() {
        if (this.avatarDrawable == null) {
            this.avatarDrawable = new AvatarDrawable();
        }
        return this.avatarDrawable;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.attached = false;
        this.imageReceiver.onDetachedFromWindow();
        if (this.blurAllowed) {
            this.blurImageReceiver.onDetachedFromWindow();
        }
        AnimatedEmojiDrawable animatedEmojiDrawable = this.animatedEmojiDrawable;
        if (animatedEmojiDrawable != null) {
            animatedEmojiDrawable.removeView(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.attached = true;
        this.imageReceiver.onAttachedToWindow();
        if (this.blurAllowed) {
            this.blurImageReceiver.onAttachedToWindow();
        }
        AnimatedEmojiDrawable animatedEmojiDrawable = this.animatedEmojiDrawable;
        if (animatedEmojiDrawable != null) {
            animatedEmojiDrawable.addView(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int i;
        AnimatedEmojiDrawable animatedEmojiDrawable = this.animatedEmojiDrawable;
        ImageReceiver imageReceiver = animatedEmojiDrawable != null ? animatedEmojiDrawable.getImageReceiver() : this.imageReceiver;
        if (imageReceiver == null) {
            return;
        }
        int i2 = this.width;
        if (i2 != -1 && (i = this.height) != -1) {
            if (this.drawFromStart) {
                imageReceiver.setImageCoords(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, i2, i);
                if (this.blurAllowed) {
                    this.blurImageReceiver.setImageCoords(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.width, this.height);
                }
            } else {
                int height = getHeight();
                int i3 = this.height;
                imageReceiver.setImageCoords((getWidth() - this.width) / 2, (height - i3) / 2, this.width, i3);
                if (this.blurAllowed) {
                    int height2 = getHeight();
                    int i4 = this.height;
                    this.blurImageReceiver.setImageCoords((getWidth() - this.width) / 2, (height2 - i4) / 2, this.width, i4);
                }
            }
        } else {
            imageReceiver.setImageCoords(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight());
            if (this.blurAllowed) {
                this.blurImageReceiver.setImageCoords(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight());
            }
        }
        imageReceiver.draw(canvas);
        if (this.blurAllowed) {
            this.blurImageReceiver.draw(canvas);
        }
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.imageReceiver.setColorFilter(colorFilter);
    }

    public void setAnimatedEmojiDrawable(AnimatedEmojiDrawable animatedEmojiDrawable) {
        AnimatedEmojiDrawable animatedEmojiDrawable2 = this.animatedEmojiDrawable;
        if (animatedEmojiDrawable2 == animatedEmojiDrawable) {
            return;
        }
        if (this.attached && animatedEmojiDrawable2 != null) {
            animatedEmojiDrawable2.removeView(this);
        }
        this.animatedEmojiDrawable = animatedEmojiDrawable;
        if (this.attached && animatedEmojiDrawable != null) {
            animatedEmojiDrawable.addView(this);
        }
        invalidate();
    }

    public void animateToRoundRadius(int i) {
        if (getRoundRadius()[0] != i) {
            ValueAnimator valueAnimator = this.roundRadiusAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            ValueAnimator ofInt = ValueAnimator.ofInt(getRoundRadius()[0], i);
            this.roundRadiusAnimator = ofInt;
            ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.BackupImageView.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    BackupImageView.this.setRoundRadius(((Integer) valueAnimator2.getAnimatedValue()).intValue());
                }
            });
            this.roundRadiusAnimator.setDuration(200L);
            this.roundRadiusAnimator.start();
        }
    }
}
