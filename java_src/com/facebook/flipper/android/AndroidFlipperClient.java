package com.facebook.flipper.android;

import android.content.Context;
import com.facebook.flipper.core.FlipperClient;
/* loaded from: classes.dex */
public final class AndroidFlipperClient {
    public static FlipperClient getInstance(Context context) {
        return new NoOpAndroidFlipperClient();
    }
}
