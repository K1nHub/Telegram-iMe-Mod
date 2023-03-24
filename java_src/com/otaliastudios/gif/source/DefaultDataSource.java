package com.otaliastudios.gif.source;

import android.content.Context;
import android.media.MediaFormat;
import com.bumptech.glide.Glide;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.gifdecoder.GifHeader;
import com.bumptech.glide.gifdecoder.GifHeaderParser;
import com.bumptech.glide.gifdecoder.StandardGifDecoder;
import com.bumptech.glide.load.resource.gif.GifBitmapProvider;
import com.otaliastudios.gif.internal.Logger;
import com.otaliastudios.gif.source.DataSource;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.List;
/* loaded from: classes3.dex */
public abstract class DefaultDataSource implements DataSource {
    private Context mContext;
    private MediaFormat mFormat;
    private GifDecoder mGifDecoder;
    private int mGifFrames;
    private GifHeader mGifHeader;
    private int mGifFrame = 0;
    private long mLastTimestampUs = 10;
    private long mDurationUs = Long.MIN_VALUE;

    protected abstract InputStream openInputStream();

    static {
        new Logger(DefaultDataSource.class.getSimpleName());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public DefaultDataSource(Context context) {
        this.mContext = context.getApplicationContext();
    }

    private byte[] getInputStreamData() {
        try {
            InputStream openInputStream = openInputStream();
            byte[] bArr = new byte[16384];
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                int read = openInputStream.read(bArr, 0, 16384);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    byteArrayOutputStream.flush();
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    openInputStream.close();
                    byteArrayOutputStream.close();
                    return byteArray;
                }
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void ensureGifHeader() {
        if (this.mGifHeader != null) {
            return;
        }
        GifHeaderParser gifHeaderParser = new GifHeaderParser();
        gifHeaderParser.setData(getInputStreamData());
        this.mGifHeader = gifHeaderParser.parseHeader();
        gifHeaderParser.clear();
        if (this.mGifHeader.getStatus() == 0) {
            return;
        }
        throw new RuntimeException("Illegal status: " + this.mGifHeader.getStatus());
    }

    private void ensureGifDecoder() {
        if (this.mGifDecoder != null) {
            return;
        }
        ensureGifHeader();
        StandardGifDecoder standardGifDecoder = new StandardGifDecoder(new GifBitmapProvider(Glide.get(this.mContext).getBitmapPool(), Glide.get(this.mContext).getArrayPool()));
        this.mGifDecoder = standardGifDecoder;
        standardGifDecoder.setData(this.mGifHeader, getInputStreamData());
        this.mGifFrames = this.mGifDecoder.getFrameCount() + 1;
    }

    @Override // com.otaliastudios.gif.source.DataSource
    public long getDurationUs() {
        if (this.mDurationUs == Long.MIN_VALUE) {
            ensureGifHeader();
            long j = 0;
            try {
                Field declaredField = GifHeader.class.getDeclaredField("frames");
                declaredField.setAccessible(true);
                Field declaredField2 = Class.forName("com.bumptech.glide.gifdecoder.GifFrame").getDeclaredField("delay");
                declaredField2.setAccessible(true);
                for (Object obj : (List) declaredField.get(this.mGifHeader)) {
                    j += declaredField2.getInt(obj) * 1000;
                }
                this.mDurationUs = j;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
        return this.mDurationUs;
    }

    @Override // com.otaliastudios.gif.source.DataSource
    public MediaFormat getTrackFormat() {
        if (this.mFormat == null) {
            ensureGifHeader();
            MediaFormat mediaFormat = new MediaFormat();
            this.mFormat = mediaFormat;
            mediaFormat.setInteger("width", this.mGifHeader.getWidth());
            this.mFormat.setInteger("height", this.mGifHeader.getHeight());
            this.mFormat.setInteger("rotation-degrees", 0);
            MediaFormat mediaFormat2 = this.mFormat;
            mediaFormat2.setInteger("frame-rate", (int) Math.round(this.mGifHeader.getNumFrames() / (getDurationUs() / 1000000.0d)));
        }
        return this.mFormat;
    }

    @Override // com.otaliastudios.gif.source.DataSource
    public void start() {
        ensureGifDecoder();
        this.mGifFrame = -1;
    }

    @Override // com.otaliastudios.gif.source.DataSource
    public void read(DataSource.Chunk chunk) {
        this.mGifDecoder.advance();
        int i = this.mGifFrame + 1;
        this.mGifFrame = i;
        if (i == 0) {
            this.mLastTimestampUs = 10L;
            chunk.bitmap = this.mGifDecoder.getNextFrame();
        } else if (i < this.mGifDecoder.getFrameCount() - 1) {
            this.mLastTimestampUs += this.mGifDecoder.getDelay(this.mGifFrame - 1) * 1000;
            chunk.bitmap = this.mGifDecoder.getNextFrame();
        } else {
            this.mLastTimestampUs += this.mGifDecoder.getDelay(this.mGifFrame - 1) * 1000;
        }
        chunk.timestampUs = this.mLastTimestampUs;
    }

    @Override // com.otaliastudios.gif.source.DataSource
    public void release() {
        this.mGifHeader = null;
        GifDecoder gifDecoder = this.mGifDecoder;
        if (gifDecoder != null) {
            gifDecoder.clear();
            this.mGifDecoder = null;
        }
    }

    @Override // com.otaliastudios.gif.source.DataSource
    public boolean isDrained() {
        return this.mGifFrame == this.mGifFrames - 1;
    }

    @Override // com.otaliastudios.gif.source.DataSource
    public final long getReadUs() {
        return this.mLastTimestampUs - 10;
    }
}
