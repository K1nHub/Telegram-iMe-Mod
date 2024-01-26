package com.bumptech.glide.integration.webp;

import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.Base64;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import com.bumptech.glide.util.Preconditions;
import com.google.android.exoplayer2.source.rtsp.RtpPacket;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes.dex */
public class WebpHeaderParser {
    public static final boolean sIsExtendedWebpSupported = isExtendedWebpSupported();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface Reader {
        int getByte() throws IOException;

        int getUInt16() throws IOException;

        long skip(long j) throws IOException;
    }

    public static boolean isExtendedWebpSupported() {
        int i = Build.VERSION.SDK_INT;
        if (i < 17) {
            return false;
        }
        if (i == 17) {
            byte[] decode = Base64.decode("UklGRkoAAABXRUJQVlA4WAoAAAAQAAAAAAAAAAAAQUxQSAwAAAARBxAR/Q9ERP8DAABWUDggGAAAABQBAJ0BKgEAAQAAAP4AAA3AAP7mtQAAAA==", 0);
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(decode, 0, decode.length, options);
            if (options.outHeight != 1 || options.outWidth != 1) {
                return false;
            }
        }
        return true;
    }

    public static boolean isStaticWebpType(WebpImageType webpImageType) {
        return webpImageType == WebpImageType.WEBP_SIMPLE || webpImageType == WebpImageType.WEBP_LOSSLESS || webpImageType == WebpImageType.WEBP_LOSSLESS_WITH_ALPHA || webpImageType == WebpImageType.WEBP_EXTENDED || webpImageType == WebpImageType.WEBP_EXTENDED_WITH_ALPHA;
    }

    public static boolean isNonSimpleWebpType(WebpImageType webpImageType) {
        return (webpImageType == WebpImageType.NONE_WEBP || webpImageType == WebpImageType.WEBP_SIMPLE) ? false : true;
    }

    public static boolean isAnimatedWebpType(WebpImageType webpImageType) {
        return webpImageType == WebpImageType.WEBP_EXTENDED_ANIMATED;
    }

    public static WebpImageType getType(InputStream inputStream, ArrayPool arrayPool) throws IOException {
        if (inputStream == null) {
            return WebpImageType.NONE_WEBP;
        }
        if (!inputStream.markSupported()) {
            inputStream = new RecyclableBufferedInputStream(inputStream, arrayPool);
        }
        inputStream.mark(21);
        try {
            return getType(new StreamReader((InputStream) Preconditions.checkNotNull(inputStream)));
        } finally {
            inputStream.reset();
        }
    }

    public static WebpImageType getType(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer == null) {
            return WebpImageType.NONE_WEBP;
        }
        return getType(new ByteBufferReader((ByteBuffer) Preconditions.checkNotNull(byteBuffer)));
    }

    public static WebpImageType getType(byte[] bArr, int i, int i2) throws IOException {
        return getType(new ByteArrayReader(bArr, i, i2));
    }

    private static WebpImageType getType(Reader reader) throws IOException {
        if ((((reader.getUInt16() << 16) & (-65536)) | (reader.getUInt16() & RtpPacket.MAX_SEQUENCE_NUMBER)) != 1380533830) {
            return WebpImageType.NONE_WEBP;
        }
        reader.skip(4L);
        if ((((reader.getUInt16() << 16) & (-65536)) | (reader.getUInt16() & RtpPacket.MAX_SEQUENCE_NUMBER)) != 1464156752) {
            return WebpImageType.NONE_WEBP;
        }
        int uInt16 = ((reader.getUInt16() << 16) & (-65536)) | (reader.getUInt16() & RtpPacket.MAX_SEQUENCE_NUMBER);
        if (uInt16 == 1448097824) {
            return WebpImageType.WEBP_SIMPLE;
        }
        if (uInt16 == 1448097868) {
            reader.skip(4L);
            return (reader.getByte() & 8) != 0 ? WebpImageType.WEBP_LOSSLESS_WITH_ALPHA : WebpImageType.WEBP_LOSSLESS;
        } else if (uInt16 == 1448097880) {
            reader.skip(4L);
            int i = reader.getByte();
            if ((i & 2) != 0) {
                return WebpImageType.WEBP_EXTENDED_ANIMATED;
            }
            if ((i & 16) != 0) {
                return WebpImageType.WEBP_EXTENDED_WITH_ALPHA;
            }
            return WebpImageType.WEBP_EXTENDED;
        } else {
            return WebpImageType.NONE_WEBP;
        }
    }

    /* loaded from: classes.dex */
    public enum WebpImageType {
        WEBP_SIMPLE(false, false),
        WEBP_LOSSLESS(false, false),
        WEBP_LOSSLESS_WITH_ALPHA(true, false),
        WEBP_EXTENDED(false, false),
        WEBP_EXTENDED_WITH_ALPHA(true, false),
        WEBP_EXTENDED_ANIMATED(false, true),
        NONE_WEBP(false, false);
        
        private final boolean hasAlpha;
        private final boolean hasAnimation;

        WebpImageType(boolean z, boolean z2) {
            this.hasAlpha = z;
            this.hasAnimation = z2;
        }

        public boolean hasAlpha() {
            return this.hasAlpha;
        }

        public boolean hasAnimation() {
            return this.hasAnimation;
        }
    }

    /* loaded from: classes.dex */
    private static final class ByteArrayReader implements Reader {
        private final byte[] data;
        private final int offset;
        private int pos;
        private final int size;

        ByteArrayReader(byte[] bArr, int i, int i2) {
            this.data = bArr;
            this.offset = i;
            this.size = i2;
            this.pos = i;
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.Reader
        public int getUInt16() throws IOException {
            return ((getByte() << 8) & 65280) | (getByte() & 255);
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.Reader
        public long skip(long j) throws IOException {
            int min = (int) Math.min((this.offset + this.size) - this.pos, j);
            this.pos += min;
            return min;
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.Reader
        public int getByte() throws IOException {
            int i = this.pos;
            if (i >= this.offset + this.size) {
                return -1;
            }
            byte[] bArr = this.data;
            this.pos = i + 1;
            return bArr[i];
        }
    }

    /* loaded from: classes.dex */
    private static final class ByteBufferReader implements Reader {
        private final ByteBuffer byteBuffer;

        ByteBufferReader(ByteBuffer byteBuffer) {
            this.byteBuffer = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.Reader
        public int getUInt16() throws IOException {
            return ((getByte() << 8) & 65280) | (getByte() & 255);
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.Reader
        public long skip(long j) throws IOException {
            int min = (int) Math.min(this.byteBuffer.remaining(), j);
            ByteBuffer byteBuffer = this.byteBuffer;
            byteBuffer.position(byteBuffer.position() + min);
            return min;
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.Reader
        public int getByte() throws IOException {
            if (this.byteBuffer.remaining() < 1) {
                return -1;
            }
            return this.byteBuffer.get();
        }
    }

    /* loaded from: classes.dex */
    private static final class StreamReader implements Reader {

        /* renamed from: is */
        private final InputStream f84is;

        StreamReader(InputStream inputStream) {
            this.f84is = inputStream;
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.Reader
        public int getUInt16() throws IOException {
            return ((this.f84is.read() << 8) & 65280) | (this.f84is.read() & 255);
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.Reader
        public long skip(long j) throws IOException {
            if (j < 0) {
                return 0L;
            }
            long j2 = j;
            while (j2 > 0) {
                long skip = this.f84is.skip(j2);
                if (skip <= 0) {
                    if (this.f84is.read() == -1) {
                        break;
                    }
                    skip = 1;
                }
                j2 -= skip;
            }
            return j - j2;
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.Reader
        public int getByte() throws IOException {
            return this.f84is.read();
        }
    }
}
