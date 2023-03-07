package com.facebook.flipper.plugins.network;

import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Response;
/* compiled from: FlipperOkhttpInterceptor.kt */
/* loaded from: classes.dex */
public final class FlipperOkhttpInterceptor implements Interceptor {
    public FlipperOkhttpInterceptor(NetworkFlipperPlugin plugin) {
        Intrinsics.checkNotNullParameter(plugin, "plugin");
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) {
        Intrinsics.checkNotNullParameter(chain, "chain");
        return chain.proceed(chain.request());
    }
}
