package okhttp3;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p035io.CloseableKt;
import kotlin.text.Charsets;
import okhttp3.MediaType;
import okhttp3.internal.Util;
import okio.BufferedSink;
import okio.ByteString;
import okio.Okio;
import okio.Source;
/* compiled from: RequestBody.kt */
/* loaded from: classes4.dex */
public abstract class RequestBody {
    public static final Companion Companion = new Companion(null);

    public static final RequestBody create(File file, MediaType mediaType) {
        return Companion.create(file, mediaType);
    }

    public static final RequestBody create(String str, MediaType mediaType) {
        return Companion.create(str, mediaType);
    }

    public static final RequestBody create(MediaType mediaType, File file) {
        return Companion.create(mediaType, file);
    }

    public static final RequestBody create(MediaType mediaType, String str) {
        return Companion.create(mediaType, str);
    }

    public static final RequestBody create(MediaType mediaType, ByteString byteString) {
        return Companion.create(mediaType, byteString);
    }

    public static final RequestBody create(MediaType mediaType, byte[] bArr) {
        return Companion.create$default(Companion, mediaType, bArr, 0, 0, 12, (Object) null);
    }

    public static final RequestBody create(MediaType mediaType, byte[] bArr, int i) {
        return Companion.create$default(Companion, mediaType, bArr, i, 0, 8, (Object) null);
    }

    public static final RequestBody create(MediaType mediaType, byte[] bArr, int i, int i2) {
        return Companion.create(mediaType, bArr, i, i2);
    }

    public static final RequestBody create(ByteString byteString, MediaType mediaType) {
        return Companion.create(byteString, mediaType);
    }

    public static final RequestBody create(byte[] bArr) {
        return Companion.create$default(Companion, bArr, (MediaType) null, 0, 0, 7, (Object) null);
    }

    public static final RequestBody create(byte[] bArr, MediaType mediaType) {
        return Companion.create$default(Companion, bArr, mediaType, 0, 0, 6, (Object) null);
    }

    public static final RequestBody create(byte[] bArr, MediaType mediaType, int i) {
        return Companion.create$default(Companion, bArr, mediaType, i, 0, 4, (Object) null);
    }

    public static final RequestBody create(byte[] bArr, MediaType mediaType, int i, int i2) {
        return Companion.create(bArr, mediaType, i, i2);
    }

    public long contentLength() throws IOException {
        return -1L;
    }

    public abstract MediaType contentType();

    public boolean isDuplex() {
        return false;
    }

    public boolean isOneShot() {
        return false;
    }

    public abstract void writeTo(BufferedSink bufferedSink) throws IOException;

    /* compiled from: RequestBody.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final RequestBody create(String toRequestBody, MediaType mediaType) {
            Intrinsics.checkNotNullParameter(toRequestBody, "$this$toRequestBody");
            Charset charset = Charsets.UTF_8;
            if (mediaType != null) {
                Charset charset$default = MediaType.charset$default(mediaType, null, 1, null);
                if (charset$default == null) {
                    MediaType.Companion companion = MediaType.Companion;
                    mediaType = companion.parse(mediaType + "; charset=utf-8");
                } else {
                    charset = charset$default;
                }
            }
            byte[] bytes = toRequestBody.getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
            return create(bytes, mediaType, 0, bytes.length);
        }

        public final RequestBody create(final ByteString toRequestBody, final MediaType mediaType) {
            Intrinsics.checkNotNullParameter(toRequestBody, "$this$toRequestBody");
            return new RequestBody() { // from class: okhttp3.RequestBody$Companion$toRequestBody$1
                @Override // okhttp3.RequestBody
                public MediaType contentType() {
                    return mediaType;
                }

                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return ByteString.this.size();
                }

                @Override // okhttp3.RequestBody
                public void writeTo(BufferedSink sink) {
                    Intrinsics.checkNotNullParameter(sink, "sink");
                    sink.write(ByteString.this);
                }
            };
        }

        public static /* synthetic */ RequestBody create$default(Companion companion, byte[] bArr, MediaType mediaType, int i, int i2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                mediaType = null;
            }
            if ((i3 & 2) != 0) {
                i = 0;
            }
            if ((i3 & 4) != 0) {
                i2 = bArr.length;
            }
            return companion.create(bArr, mediaType, i, i2);
        }

        public final RequestBody create(final byte[] toRequestBody, final MediaType mediaType, final int i, final int i2) {
            Intrinsics.checkNotNullParameter(toRequestBody, "$this$toRequestBody");
            Util.checkOffsetAndCount(toRequestBody.length, i, i2);
            return new RequestBody() { // from class: okhttp3.RequestBody$Companion$toRequestBody$2
                @Override // okhttp3.RequestBody
                public MediaType contentType() {
                    return mediaType;
                }

                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return i2;
                }

                @Override // okhttp3.RequestBody
                public void writeTo(BufferedSink sink) {
                    Intrinsics.checkNotNullParameter(sink, "sink");
                    sink.write(toRequestBody, i, i2);
                }
            };
        }

        public final RequestBody create(final File asRequestBody, final MediaType mediaType) {
            Intrinsics.checkNotNullParameter(asRequestBody, "$this$asRequestBody");
            return new RequestBody() { // from class: okhttp3.RequestBody$Companion$asRequestBody$1
                @Override // okhttp3.RequestBody
                public MediaType contentType() {
                    return mediaType;
                }

                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return asRequestBody.length();
                }

                @Override // okhttp3.RequestBody
                public void writeTo(BufferedSink sink) {
                    Intrinsics.checkNotNullParameter(sink, "sink");
                    Source source = Okio.source(asRequestBody);
                    try {
                        sink.writeAll(source);
                        CloseableKt.closeFinally(source, null);
                    } finally {
                    }
                }
            };
        }

        public final RequestBody create(MediaType mediaType, String content) {
            Intrinsics.checkNotNullParameter(content, "content");
            return create(content, mediaType);
        }

        public final RequestBody create(MediaType mediaType, ByteString content) {
            Intrinsics.checkNotNullParameter(content, "content");
            return create(content, mediaType);
        }

        public static /* synthetic */ RequestBody create$default(Companion companion, MediaType mediaType, byte[] bArr, int i, int i2, int i3, Object obj) {
            if ((i3 & 4) != 0) {
                i = 0;
            }
            if ((i3 & 8) != 0) {
                i2 = bArr.length;
            }
            return companion.create(mediaType, bArr, i, i2);
        }

        public final RequestBody create(MediaType mediaType, byte[] content, int i, int i2) {
            Intrinsics.checkNotNullParameter(content, "content");
            return create(content, mediaType, i, i2);
        }

        public final RequestBody create(MediaType mediaType, File file) {
            Intrinsics.checkNotNullParameter(file, "file");
            return create(file, mediaType);
        }
    }
}
