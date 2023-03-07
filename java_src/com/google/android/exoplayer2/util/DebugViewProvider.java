package com.google.android.exoplayer2.util;

import android.view.SurfaceView;
/* loaded from: classes.dex */
public interface DebugViewProvider {
    public static final DebugViewProvider NONE = DebugViewProvider$$ExternalSyntheticLambda0.INSTANCE;

    /* renamed from: com.google.android.exoplayer2.util.DebugViewProvider$-CC  reason: invalid class name */
    /* loaded from: classes.dex */
    public final /* synthetic */ class CC {
        static {
            DebugViewProvider debugViewProvider = DebugViewProvider.NONE;
        }

        public static /* synthetic */ SurfaceView lambda$static$0(int i, int i2) {
            return null;
        }
    }

    SurfaceView getDebugPreviewSurfaceView(int i, int i2);
}
