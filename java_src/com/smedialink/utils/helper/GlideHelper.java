package com.smedialink.utils.helper;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.request.target.CustomTarget;
import com.bumptech.glide.request.transition.Transition;
import com.smedialink.utils.helper.binancepay.BinancePayHelper;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.fork.utils.Callbacks$Callback1;
/* compiled from: GlideHelper.kt */
/* loaded from: classes3.dex */
public final class GlideHelper {
    public static final GlideHelper INSTANCE = new GlideHelper();

    private GlideHelper() {
    }

    public static final void loadBinanceImageAsBitmap(Context context, String url, Callbacks$Callback1<Bitmap> callback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(callback, "callback");
        INSTANCE.internalLoad(context, new GlideUrl(url, GlideHelper$$ExternalSyntheticLambda0.INSTANCE), callback, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: loadBinanceImageAsBitmap$lambda-0  reason: not valid java name */
    public static final Map m1843loadBinanceImageAsBitmap$lambda0() {
        return BinancePayHelper.INSTANCE.getRefererHeader();
    }

    private final void internalLoad(Context context, GlideUrl glideUrl, final Callbacks$Callback1<Bitmap> callbacks$Callback1, boolean z) {
        RequestBuilder centerCrop = Glide.with(context).asBitmap().load(glideUrl).dontAnimate().centerCrop();
        if (z) {
            centerCrop.circleCrop();
        }
        centerCrop.diskCacheStrategy(DiskCacheStrategy.ALL).into((RequestBuilder) new CustomTarget<Bitmap>() { // from class: com.smedialink.utils.helper.GlideHelper$internalLoad$2
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
