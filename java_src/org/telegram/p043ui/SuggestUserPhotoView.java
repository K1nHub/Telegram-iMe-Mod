package org.telegram.p043ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.Crop.CropAreaView;
import org.telegram.p043ui.Components.PhotoCropView;
import org.telegram.tgnet.TLObject;
/* renamed from: org.telegram.ui.SuggestUserPhotoView */
/* loaded from: classes5.dex */
public class SuggestUserPhotoView extends View {
    Drawable arrowDrawable;
    AvatarDrawable avatarDrawable;
    View containterView;
    ImageReceiver currentPhoto;
    ImageReceiver newPhoto;
    Path path;
    PhotoCropView photoCropView;

    public SuggestUserPhotoView(Context context) {
        super(context);
        this.currentPhoto = new ImageReceiver(this);
        this.newPhoto = new ImageReceiver(this);
        this.avatarDrawable = new AvatarDrawable();
        this.path = new Path();
        AvatarDrawable avatarDrawable = this.avatarDrawable;
        int i = UserConfig.selectedAccount;
        avatarDrawable.setInfo(i, UserConfig.getInstance(i).getCurrentUser());
        this.currentPhoto.setForUserOrChat(UserConfig.getInstance(UserConfig.selectedAccount).getCurrentUser(), this.avatarDrawable);
        this.newPhoto.setForUserOrChat(UserConfig.getInstance(UserConfig.selectedAccount).getCurrentUser(), this.avatarDrawable);
        Drawable drawable = ContextCompat.getDrawable(context, C3632R.C3634drawable.msg_arrow_avatar);
        this.arrowDrawable = drawable;
        drawable.setAlpha(100);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int measuredWidth = getMeasuredWidth() >> 1;
        int measuredHeight = getMeasuredHeight() - AndroidUtilities.m107dp(30);
        int m107dp = AndroidUtilities.m107dp(46) + measuredWidth;
        setImageCoords(this.currentPhoto, measuredWidth - AndroidUtilities.m107dp(46), measuredHeight);
        setImageCoords(this.newPhoto, m107dp, measuredHeight);
        Drawable drawable = this.arrowDrawable;
        drawable.setBounds(measuredWidth - (drawable.getIntrinsicWidth() / 2), measuredHeight - (this.arrowDrawable.getIntrinsicHeight() / 2), measuredWidth + (this.arrowDrawable.getIntrinsicWidth() / 2), (this.arrowDrawable.getIntrinsicHeight() / 2) + measuredHeight);
        this.arrowDrawable.draw(canvas);
        this.path.reset();
        this.path.addCircle(m107dp, measuredHeight, AndroidUtilities.m107dp(30), Path.Direction.CW);
        this.currentPhoto.draw(canvas);
        if (this.containterView != null) {
            float top = BitmapDescriptorFactory.HUE_RED - this.photoCropView.getTop();
            float left = BitmapDescriptorFactory.HUE_RED - this.photoCropView.getLeft();
            CropAreaView cropAreaView = this.photoCropView.cropView.areaView;
            float m107dp2 = AndroidUtilities.m107dp(60) / cropAreaView.size;
            float f = left - cropAreaView.left;
            canvas.save();
            canvas.clipPath(this.path);
            canvas.scale(m107dp2, m107dp2, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            canvas.translate(f, top - cropAreaView.top);
            canvas.translate((m107dp - AndroidUtilities.m107dp(30)) / m107dp2, (measuredHeight - AndroidUtilities.m107dp(30)) / m107dp2);
            PhotoViewer.getInstance().skipLastFrameDraw = true;
            this.containterView.draw(canvas);
            PhotoViewer.getInstance().skipLastFrameDraw = false;
            canvas.restore();
        }
        super.draw(canvas);
        this.containterView.invalidate();
        invalidate();
    }

    private void setImageCoords(ImageReceiver imageReceiver, int i, int i2) {
        imageReceiver.setImageCoords(i - AndroidUtilities.m107dp(30), i2 - AndroidUtilities.m107dp(30), AndroidUtilities.m107dp(60), AndroidUtilities.m107dp(60));
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        this.currentPhoto.setRoundRadius(AndroidUtilities.m107dp(30));
        this.newPhoto.setRoundRadius(AndroidUtilities.m107dp(30));
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(86), 1073741824));
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.currentPhoto.onAttachedToWindow();
        this.newPhoto.onAttachedToWindow();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.currentPhoto.onDetachedFromWindow();
        this.newPhoto.onDetachedFromWindow();
    }

    public void setImages(TLObject tLObject, View view, PhotoCropView photoCropView) {
        this.avatarDrawable.setInfo(tLObject);
        this.currentPhoto.setForUserOrChat(tLObject, this.avatarDrawable);
        this.containterView = view;
        this.photoCropView = photoCropView;
    }
}
