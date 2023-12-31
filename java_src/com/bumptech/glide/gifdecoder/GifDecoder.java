package com.bumptech.glide.gifdecoder;

import android.graphics.Bitmap;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public interface GifDecoder {

    /* loaded from: classes.dex */
    public interface BitmapProvider {
        Bitmap obtain(int i, int i2, Bitmap.Config config);

        byte[] obtainByteArray(int i);

        int[] obtainIntArray(int i);

        void release(Bitmap bitmap);

        void release(byte[] bArr);

        void release(int[] iArr);
    }

    void advance();

    void clear();

    int getByteSize();

    int getCurrentFrameIndex();

    ByteBuffer getData();

    int getDelay(int i);

    int getFrameCount();

    int getNextDelay();

    Bitmap getNextFrame();

    void resetFrameIndex();

    void setData(GifHeader gifHeader, byte[] bArr);

    void setDefaultBitmapConfig(Bitmap.Config config);
}
