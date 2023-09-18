package com.iMe.utils.glide;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.ImageViewTarget;
import com.bumptech.glide.request.target.Target;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SvgSoftwareLayerSetter.kt */
/* loaded from: classes6.dex */
public final class SvgSoftwareLayerSetter implements RequestListener<Drawable> {
    @Override // com.bumptech.glide.request.RequestListener
    public boolean onLoadFailed(GlideException glideException, Object model, Target<Drawable> target, boolean z) {
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(target, "target");
        ImageViewTarget imageViewTarget = target instanceof ImageViewTarget ? (ImageViewTarget) target : null;
        ImageView view = imageViewTarget != null ? imageViewTarget.getView() : null;
        if (view != null) {
            view.setLayerType(0, null);
        }
        return false;
    }

    @Override // com.bumptech.glide.request.RequestListener
    public boolean onResourceReady(Drawable drawable, Object model, Target<Drawable> target, DataSource dataSource, boolean z) {
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(target, "target");
        Intrinsics.checkNotNullParameter(dataSource, "dataSource");
        ImageViewTarget imageViewTarget = target instanceof ImageViewTarget ? (ImageViewTarget) target : null;
        ImageView view = imageViewTarget != null ? imageViewTarget.getView() : null;
        if (view != null) {
            view.setLayerType(1, null);
            return false;
        }
        return false;
    }
}
