package com.iMe.utils.extentions.common;

import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.ImageViewCompat;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.utils.glide.GlideApp;
import com.iMe.utils.glide.GlideRequest;
import com.iMe.utils.glide.SvgSoftwareLayerSetter;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.Components.LoadingDrawable;
import timber.log.Timber;
/* compiled from: ImageViewExt.kt */
/* loaded from: classes4.dex */
public final class ImageViewExtKt {
    public static final void loadFrom(ImageView imageView, String url) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        loadFrom$default(imageView, url, null, false, 6, null);
    }

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

    public static final void setTint(ImageView imageView, int i) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        ImageViewCompat.setImageTintList(imageView, ColorStateList.valueOf(i));
    }

    public static /* synthetic */ void loadFrom$default(ImageView imageView, String str, Integer num, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            num = null;
        }
        if ((i & 4) != 0) {
            z = true;
        }
        loadFrom(imageView, str, num, z);
    }

    public static final void loadFrom(final ImageView imageView, final String url, Integer num, final boolean z) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        if (num != null) {
            Context context = imageView.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            loadFrom(imageView, url, context, ContextCompat.getDrawable(imageView.getContext(), num.intValue()), z);
            return;
        }
        final LoadingDrawable loadingDrawable = new LoadingDrawable();
        loadingDrawable.setColors(Theme.getColor(Theme.key_actionBarActionModeDefaultSelector), ViewExtKt.withAlpha(-1, 0.15f));
        loadingDrawable.setAppearByGradient(true);
        if (NumberExtKt.isZero(Integer.valueOf(imageView.getHeight()))) {
            if (!ViewCompat.isLaidOut(imageView) || imageView.isLayoutRequested()) {
                imageView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.iMe.utils.extentions.common.ImageViewExtKt$loadFrom$$inlined$doOnLayout$1
                    @Override // android.view.View.OnLayoutChangeListener
                    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                        Intrinsics.checkNotNullParameter(view, "view");
                        view.removeOnLayoutChangeListener(this);
                        LoadingDrawable.this.setRadiiDp(AndroidUtilities.m102dp(imageView.getHeight()));
                        ImageView imageView2 = imageView;
                        String str = url;
                        Context context2 = imageView2.getContext();
                        Intrinsics.checkNotNullExpressionValue(context2, "context");
                        ImageViewExtKt.loadFrom(imageView2, str, context2, LoadingDrawable.this, z);
                    }
                });
                return;
            }
            loadingDrawable.setRadiiDp(AndroidUtilities.m102dp(imageView.getHeight()));
            Context context2 = imageView.getContext();
            Intrinsics.checkNotNullExpressionValue(context2, "context");
            loadFrom(imageView, url, context2, loadingDrawable, z);
            return;
        }
        loadingDrawable.setRadiiDp(AndroidUtilities.m102dp(imageView.getHeight()));
        Context context3 = imageView.getContext();
        Intrinsics.checkNotNullExpressionValue(context3, "context");
        loadFrom(imageView, url, context3, loadingDrawable, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadFrom(ImageView imageView, String str, Context context, Drawable drawable, boolean z) {
        GlideRequest<Drawable> fitCenter;
        if (str.length() > 0) {
            if ((context instanceof Activity) && ((Activity) context).isDestroyed()) {
                return;
            }
            GlideRequest<Drawable> addListener = GlideApp.with(context).asDrawable().load(str).addListener((RequestListener<Drawable>) new SvgSoftwareLayerSetter());
            if (drawable != null) {
                addListener = addListener.placeholder(drawable).error(drawable);
            }
            if (z) {
                fitCenter = addListener.circleCrop();
            } else {
                fitCenter = addListener.fitCenter();
            }
            fitCenter.diskCacheStrategy(DiskCacheStrategy.DATA).into(imageView);
        }
    }

    public static final void setImageColor(ImageView imageView, int i) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        imageView.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN));
    }
}
