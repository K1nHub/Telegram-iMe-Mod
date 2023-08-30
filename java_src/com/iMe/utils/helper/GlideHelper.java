package com.iMe.utils.helper;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.Headers;
import com.bumptech.glide.request.target.CustomTarget;
import com.bumptech.glide.request.transition.Transition;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.utils.helper.binancepay.BinancePayHelper;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GlideHelper.kt */
/* loaded from: classes4.dex */
public final class GlideHelper {
    public static final GlideHelper INSTANCE = new GlideHelper();

    private GlideHelper() {
    }

    public static final void loadBinanceImageAsBitmap(Context context, String url, Callbacks$Callback1<Bitmap> callback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(callback, "callback");
        INSTANCE.internalLoad(context, new GlideUrl(url, new Headers() { // from class: com.iMe.utils.helper.GlideHelper$$ExternalSyntheticLambda0
            @Override // com.bumptech.glide.load.model.Headers
            public final Map getHeaders() {
                Map loadBinanceImageAsBitmap$lambda$0;
                loadBinanceImageAsBitmap$lambda$0 = GlideHelper.loadBinanceImageAsBitmap$lambda$0();
                return loadBinanceImageAsBitmap$lambda$0;
            }
        }), callback, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Map loadBinanceImageAsBitmap$lambda$0() {
        return BinancePayHelper.INSTANCE.getRefererHeader();
    }

    public static final void loadImageAsBitmap(Context context, String url, Callbacks$Callback1<Bitmap> callback, boolean z) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(callback, "callback");
        INSTANCE.internalLoad(context, new GlideUrl(url), callback, z);
    }

    private final void internalLoad(Context context, GlideUrl glideUrl, final Callbacks$Callback1<Bitmap> callbacks$Callback1, boolean z) {
        RequestBuilder centerCrop = Glide.with(context).asBitmap().load(glideUrl).dontAnimate().centerCrop();
        if (z) {
            centerCrop = centerCrop.circleCrop();
        }
        centerCrop.diskCacheStrategy(DiskCacheStrategy.ALL).into((RequestBuilder) new CustomTarget<Bitmap>() { // from class: com.iMe.utils.helper.GlideHelper$internalLoad$2
            @Override // com.bumptech.glide.request.target.Target
            public void onLoadCleared(Drawable drawable) {
            }

            @Override // com.bumptech.glide.request.target.Target
            public /* bridge */ /* synthetic */ void onResourceReady(Object obj, Transition transition) {
                onResourceReady((Bitmap) obj, (Transition<? super Bitmap>) transition);
            }

            public void onResourceReady(Bitmap resource, Transition<? super Bitmap> transition) {
                Intrinsics.checkNotNullParameter(resource, "resource");
                callbacks$Callback1.invoke(resource);
            }
        });
    }
}
