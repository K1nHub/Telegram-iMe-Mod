package com.google.android.exoplayer2.video;

import android.graphics.SurfaceTexture;
/* loaded from: classes.dex */
public interface VideoListener {

    /* renamed from: com.google.android.exoplayer2.video.VideoListener$-CC  reason: invalid class name */
    /* loaded from: classes.dex */
    public final /* synthetic */ class CC {
        public static void $default$onSurfaceSizeChanged(VideoListener videoListener, int i, int i2) {
        }
    }

    boolean onSurfaceDestroyed(SurfaceTexture surfaceTexture);

    void onSurfaceSizeChanged(int i, int i2);

    void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture);
}
