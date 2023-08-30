package com.otaliastudios.gif;
/* loaded from: classes4.dex */
public interface GIFListener {
    void onGIFCompressionCanceled();

    void onGIFCompressionCompleted();

    void onGIFCompressionFailed(Throwable th);

    void onGIFCompressionProgress(double d);
}
