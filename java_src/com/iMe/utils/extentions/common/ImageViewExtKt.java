package com.iMe.utils.extentions.common;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import androidx.core.widget.ImageViewCompat;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3290R;
import timber.log.Timber;
/* compiled from: ImageViewExt.kt */
/* loaded from: classes4.dex */
public final class ImageViewExtKt {
    public static /* synthetic */ void withGlide$default(ImageView imageView, Object obj, Function0 function0, Function1 function1, int i, Object obj2) {
        if ((i & 2) != 0) {
            function0 = null;
        }
        if ((i & 4) != 0) {
            function1 = null;
        }
        withGlide(imageView, obj, function0, function1);
    }

    public static final <Image> void withGlide(ImageView imageView, Image image, final Function0<Unit> function0, final Function1<? super Drawable, Unit> function1) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        Glide.with(imageView).load(image).listener(new RequestListener<Drawable>() { // from class: com.iMe.utils.extentions.common.ImageViewExtKt$withGlide$1
            @Override // com.bumptech.glide.request.RequestListener
            public boolean onLoadFailed(GlideException glideException, Object obj, Target<Drawable> target, boolean z) {
                Timber.m7e("onLoadFailed: " + glideException, new Object[0]);
                Function0<Unit> function02 = function0;
                if (function02 != null) {
                    function02.invoke();
                }
                return false;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public boolean onResourceReady(Drawable drawable, Object obj, Target<Drawable> target, DataSource dataSource, boolean z) {
                Function1<Drawable, Unit> function12 = function1;
                if (function12 != null) {
                    function12.invoke(drawable);
                    return false;
                }
                return false;
            }
        }).into(imageView);
    }

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
    public static final void loadFromWithPlaceholderResId(ImageView imageView, String url, Context context, Integer num, boolean z) {
        GradientDrawable gradientDrawable;
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(context, "context");
        if (num != null) {
            gradientDrawable = ContextCompat.getDrawable(context, num.intValue());
        } else {
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setShape(1);
            gradientDrawable2.setColor(ColorStateList.valueOf(ContextCompat.getColor(context, C3290R.C3291color.placeholder_color)));
            gradientDrawable = gradientDrawable2;
        }
        loadFrom(imageView, url, context, gradientDrawable, z);
    }

    public static final void setTint(ImageView imageView, int i) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        ImageViewCompat.setImageTintList(imageView, ColorStateList.valueOf(i));
    }
}
