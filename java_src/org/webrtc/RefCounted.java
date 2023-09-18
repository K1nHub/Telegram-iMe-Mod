package org.webrtc;
/* loaded from: classes7.dex */
public interface RefCounted {
    @CalledByNative
    void release();

    @CalledByNative
    void retain();
}
