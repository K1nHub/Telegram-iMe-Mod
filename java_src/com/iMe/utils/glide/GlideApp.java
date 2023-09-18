package com.iMe.utils.glide;

import android.content.Context;
import com.bumptech.glide.Glide;
/* loaded from: classes6.dex */
public final class GlideApp {
    public static GlideRequests with(Context context) {
        return (GlideRequests) Glide.with(context);
    }
}
