package org.telegram.p043ui.Cells;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
/* renamed from: org.telegram.ui.Cells.PhotoAttachPermissionCell */
/* loaded from: classes5.dex */
public class PhotoAttachPermissionCell extends FrameLayout {
    private ImageView imageView;
    private ImageView imageView2;
    private int itemSize;
    private final Theme.ResourcesProvider resourcesProvider;
    private TextView textView;

    public PhotoAttachPermissionCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.resourcesProvider = resourcesProvider;
        ImageView imageView = new ImageView(context);
        this.imageView = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        this.imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_chat_attachPermissionImage), PorterDuff.Mode.MULTIPLY));
        addView(this.imageView, LayoutHelper.createFrame(44, 44, 17, 5, 0, 0, 27));
        ImageView imageView2 = new ImageView(context);
        this.imageView2 = imageView2;
        imageView2.setScaleType(ImageView.ScaleType.CENTER);
        this.imageView2.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_chat_attachPermissionMark), PorterDuff.Mode.MULTIPLY));
        addView(this.imageView2, LayoutHelper.createFrame(44, 44, 17, 5, 0, 0, 27));
        TextView textView = new TextView(context);
        this.textView = textView;
        textView.setTextColor(getThemedColor(Theme.key_chat_attachPermissionText));
        this.textView.setTextSize(1, 12.0f);
        this.textView.setGravity(17);
        addView(this.textView, LayoutHelper.createFrame(-2, -2, 17, 5, 13, 5, 0));
        this.itemSize = AndroidUtilities.m54dp(80);
    }

    public void setItemSize(int i) {
        this.itemSize = i;
    }

    public void setType(int i) {
        if (i == 0) {
            this.imageView.setImageResource(C3417R.C3419drawable.permissions_camera1);
            this.imageView2.setImageResource(C3417R.C3419drawable.permissions_camera2);
            this.textView.setText(LocaleController.getString("CameraPermissionText", C3417R.string.CameraPermissionText));
            this.imageView.setLayoutParams(LayoutHelper.createFrame(44, 44, 17, 5, 0, 0, 27));
            this.imageView2.setLayoutParams(LayoutHelper.createFrame(44, 44, 17, 5, 0, 0, 27));
            return;
        }
        this.imageView.setImageResource(C3417R.C3419drawable.permissions_gallery1);
        this.imageView2.setImageResource(C3417R.C3419drawable.permissions_gallery2);
        this.textView.setText(LocaleController.getString("GalleryPermissionText", C3417R.string.GalleryPermissionText));
        this.imageView.setLayoutParams(LayoutHelper.createFrame(44, 44, 17, 0, 0, 2, 27));
        this.imageView2.setLayoutParams(LayoutHelper.createFrame(44, 44, 17, 0, 0, 2, 27));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(this.itemSize, 1073741824), View.MeasureSpec.makeMeasureSpec(this.itemSize + AndroidUtilities.m54dp(5), 1073741824));
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }
}
