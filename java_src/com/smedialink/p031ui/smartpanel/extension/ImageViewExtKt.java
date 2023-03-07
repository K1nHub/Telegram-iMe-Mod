package com.smedialink.p031ui.smartpanel.extension;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3158R;
/* compiled from: ImageViewExt.kt */
/* renamed from: com.smedialink.ui.smartpanel.extension.ImageViewExtKt */
/* loaded from: classes3.dex */
public final class ImageViewExtKt {
    public static /* synthetic */ void loadFrom$default(ImageView imageView, String str, Context context, Drawable drawable, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            drawable = null;
        }
        if ((i & 8) != 0) {
            z = false;
        }
        loadFrom(imageView, str, context, drawable, z);
    }

    public static final void loadFrom(ImageView imageView, String url, Context context, Drawable drawable, boolean z) {
        RequestBuilder fitCenter;
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(context, "context");
        if (url.length() > 0) {
            RequestBuilder<Drawable> load = Glide.with(context).load(url);
            if (drawable != null) {
                load = (RequestBuilder) load.placeholder(drawable).error(drawable);
            }
            if (z) {
                fitCenter = load.circleCrop();
            } else {
                fitCenter = load.fitCenter();
            }
            fitCenter.diskCacheStrategy(DiskCacheStrategy.ALL).into(imageView);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [android.graphics.drawable.Drawable] */
    public static final void loadFrom(ImageView imageView, String url, Context context, Integer num, boolean z) {
        GradientDrawable gradientDrawable;
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(context, "context");
        if (num != null) {
            gradientDrawable = ContextCompat.getDrawable(context, num.intValue());
        } else {
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setShape(1);
            gradientDrawable2.setColor(ColorStateList.valueOf(ContextCompat.getColor(context, C3158R.C3159color.placeholder_color)));
            gradientDrawable = gradientDrawable2;
        }
        loadFrom(imageView, url, context, gradientDrawable, z);
    }
}
