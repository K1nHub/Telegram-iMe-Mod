package okio;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt__CharJVMKt;
import okio.internal.BufferKt;
/* compiled from: RealBufferedSource.kt */
/* loaded from: classes4.dex */
public final class RealBufferedSource implements BufferedSource {
    public final Buffer bufferField;
    public boolean closed;
    public final Source source;

    @Override // okio.Source
    public long read(Buffer sink, long j) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (!(j >= 0)) {
            throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
        } else if (true ^ this.closed) {
            if (this.bufferField.size() == 0 && this.source.read(this.bufferField, 8192) == -1) {
                return -1L;
            }
            return this.bufferField.read(sink, Math.min(j, this.bufferField.size()));
        } else {
            throw new IllegalStateException("closed".toString());
        }
    }

    @Override // okio.BufferedSource
    public boolean exhausted() {
        if (!this.closed) {
            return this.bufferField.exhausted() && this.source.read(this.bufferField, (long) 8192) == -1;
        }
        throw new IllegalStateException("closed".toString());
    }

    public RealBufferedSource(Source source) {
        Intrinsics.checkNotNullParameter(source, "source");
        this.source = source;
        this.bufferField = new Buffer();
    }

    @Override // okio.BufferedSource
    public void require(long j) {
        if (!request(j)) {
            throw new EOFException();
        }
    }

    @Override // okio.BufferedSource
    public boolean request(long j) {
        if (!(j >= 0)) {
            throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
        } else if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        } else {
            while (this.bufferField.size() < j) {
                if (this.source.read(this.bufferField, 8192) == -1) {
                    return false;
                }
            }
            return true;
        }
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    public Buffer getBuffer() {
        return this.bufferField;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (this.bufferField.size() == 0 && this.source.read(this.bufferField, 8192) == -1) {
            return -1;
        }
        return this.bufferField.read(sink);
    }

    @Override // okio.BufferedSource
    public byte[] readByteArray() {
        this.bufferField.writeAll(this.source);
        return this.bufferField.readByteArray();
    }

    @Override // okio.BufferedSource
    public ByteString readByteString() {
        this.bufferField.writeAll(this.source);
        return this.bufferField.readByteString();
    }

    @Override // okio.BufferedSource
    public String readString(Charset charset) {
        Intrinsics.checkNotNullParameter(charset, "charset");
        this.bufferField.writeAll(this.source);
        return this.bufferField.readString(charset);
    }

    @Override // okio.BufferedSource
    public Buffer buffer() {
        return this.bufferField;
    }

    @Override // okio.BufferedSource
    public byte readByte() {
        require(1L);
        return this.bufferField.readByte();
    }

    @Override // okio.BufferedSource
    public ByteString readByteString(long j) {
        require(j);
        return this.bufferField.readByteString(j);
    }

    @Override // okio.BufferedSource
    public int select(Options options) {
        Intrinsics.checkNotNullParameter(options, "options");
        if (!this.closed) {
            while (true) {
                int selectPrefix = BufferKt.selectPrefix(this.bufferField, options, true);
                if (selectPrefix == -2) {
                    if (this.source.read(this.bufferField, 8192) == -1) {
                        break;
                    }
                } else if (selectPrefix != -1) {
                    this.bufferField.skip(options.getByteStrings$okio()[selectPrefix].size());
                    return selectPrefix;
                }
            }
            return -1;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSource
    public String readUtf8LineStrict() {
        return readUtf8LineStrict(Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public byte[] readByteArray(long j) {
        require(j);
        return this.bufferField.readByteArray(j);
    }

    @Override // okio.BufferedSource
    public void readFully(byte[] sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        try {
            require(sink.length);
            this.bufferField.readFully(sink);
        } catch (EOFException e) {
            int i = 0;
            while (this.bufferField.size() > 0) {
                Buffer buffer = this.bufferField;
                int read = buffer.read(sink, i, (int) buffer.size());
                if (read == -1) {
                    throw new AssertionError();
                }
                i += read;
            }
            throw e;
        }
    }

    public long indexOf(byte b) {
        return indexOf(b, 0L, Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public InputStream inputStream() {
        return new InputStream() { // from class: okio.RealBufferedSource$inputStream$1
            @Override // java.io.InputStream
            public int read() {
                RealBufferedSource realBufferedSource = RealBufferedSource.this;
                if (realBufferedSource.closed) {
                    throw new IOException("closed");
                }
                if (realBufferedSource.bufferField.size() == 0) {
                    RealBufferedSource realBufferedSource2 = RealBufferedSource.this;
                    if (realBufferedSource2.source.read(realBufferedSource2.bufferField, 8192) == -1) {
                        return -1;
                    }
                }
                return RealBufferedSource.this.bufferField.readByte() & 255;
            }

            @Override // java.io.InputStream
            public int read(byte[] data, int i, int i2) {
                Intrinsics.checkNotNullParameter(data, "data");
                if (RealBufferedSource.this.closed) {
                    throw new IOException("closed");
                }
                Util.checkOffsetAndCount(data.length, i, i2);
                if (RealBufferedSource.this.bufferField.size() == 0) {
                    RealBufferedSource realBufferedSource = RealBufferedSource.this;
                    if (realBufferedSource.source.read(realBufferedSource.bufferField, 8192) == -1) {
                        return -1;
                    }
                }
                return RealBufferedSource.this.bufferField.read(data, i, i2);
            }

            @Override // java.io.InputStream
            public int available() {
                RealBufferedSource realBufferedSource = RealBufferedSource.this;
                if (!realBufferedSource.closed) {
                    return (int) Math.min(realBufferedSource.bufferField.size(), Integer.MAX_VALUE);
                }
                throw new IOException("closed");
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                RealBufferedSource.this.close();
            }

            public String toString() {
                return RealBufferedSource.this + ".inputStream()";
            }
        };
    }

    @Override // okio.BufferedSource
    public void readFully(Buffer sink, long j) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        try {
            require(j);
            this.bufferField.readFully(sink, j);
        } catch (EOFException e) {
            sink.writeAll(this.bufferField);
            throw e;
        }
    }

    @Override // okio.BufferedSource
    public long readAll(Sink sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        long j = 0;
        while (this.source.read(this.bufferField, 8192) != -1) {
            long completeSegmentByteCount = this.bufferField.completeSegmentByteCount();
            if (completeSegmentByteCount > 0) {
                j += completeSegmentByteCount;
                sink.write(this.bufferField, completeSegmentByteCount);
            }
        }
        if (this.bufferField.size() > 0) {
            long size = j + this.bufferField.size();
            Buffer buffer = this.bufferField;
            sink.write(buffer, buffer.size());
            return size;
        }
        return j;
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.closed;
    }

    @Override // okio.BufferedSource
    public String readUtf8LineStrict(long j) {
        if (!(j >= 0)) {
            throw new IllegalArgumentException(("limit < 0: " + j).toString());
        }
        long j2 = j == Long.MAX_VALUE ? Long.MAX_VALUE : j + 1;
        byte b = (byte) 10;
        long indexOf = indexOf(b, 0L, j2);
        if (indexOf != -1) {
            return BufferKt.readUtf8Line(this.bufferField, indexOf);
        }
        if (j2 < Long.MAX_VALUE && request(j2) && this.bufferField.getByte(j2 - 1) == ((byte) 13) && request(1 + j2) && this.bufferField.getByte(j2) == b) {
            return BufferKt.readUtf8Line(this.bufferField, j2);
        }
        Buffer buffer = new Buffer();
        Buffer buffer2 = this.bufferField;
        buffer2.copyTo(buffer, 0L, Math.min(32, buffer2.size()));
        throw new EOFException("\\n not found: limit=" + Math.min(this.bufferField.size(), j) + " content=" + buffer.readByteString().hex() + "…");
    }

    @Override // okio.BufferedSource
    public short readShort() {
        require(2L);
        return this.bufferField.readShort();
    }

    public short readShortLe() {
        require(2L);
        return this.bufferField.readShortLe();
    }

    @Override // okio.BufferedSource
    public int readInt() {
        require(4L);
        return this.bufferField.readInt();
    }

    public int readIntLe() {
        require(4L);
        return this.bufferField.readIntLe();
    }

    @Override // okio.BufferedSource
    public long readLong() {
        require(8L);
        return this.bufferField.readLong();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002c, code lost:
        if (r9 == 0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002f, code lost:
        r1 = new java.lang.StringBuilder();
        r1.append("Expected leading [0-9] or '-' character but was 0x");
        r2 = kotlin.text.CharsKt__CharJVMKt.checkRadix(16);
        r2 = kotlin.text.CharsKt__CharJVMKt.checkRadix(r2);
        r2 = java.lang.Integer.toString(r8, r2);
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, "java.lang.Integer.toStri…(this, checkRadix(radix))");
        r1.append(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0058, code lost:
        throw new java.lang.NumberFormatException(r1.toString());
     */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readDecimalLong() {
        /*
            r10 = this;
            r0 = 1
            r10.require(r0)
            r2 = 0
            r4 = r2
        L8:
            long r6 = r4 + r0
            boolean r8 = r10.request(r6)
            if (r8 == 0) goto L59
            okio.Buffer r8 = r10.bufferField
            byte r8 = r8.getByte(r4)
            r9 = 48
            byte r9 = (byte) r9
            if (r8 < r9) goto L20
            r9 = 57
            byte r9 = (byte) r9
            if (r8 <= r9) goto L2a
        L20:
            int r9 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r9 != 0) goto L2c
            r4 = 45
            byte r4 = (byte) r4
            if (r8 == r4) goto L2a
            goto L2c
        L2a:
            r4 = r6
            goto L8
        L2c:
            if (r9 == 0) goto L2f
            goto L59
        L2f:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Expected leading [0-9] or '-' character but was 0x"
            r1.append(r2)
            r2 = 16
            int r2 = kotlin.text.CharsKt.checkRadix(r2)
            int r2 = kotlin.text.CharsKt.checkRadix(r2)
            java.lang.String r2 = java.lang.Integer.toString(r8, r2)
            java.lang.String r3 = "java.lang.Integer.toStri…(this, checkRadix(radix))"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L59:
            okio.Buffer r0 = r10.bufferField
            long r0 = r0.readDecimalLong()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.RealBufferedSource.readDecimalLong():long");
    }

    @Override // okio.BufferedSource
    public long readHexadecimalUnsignedLong() {
        byte b;
        int checkRadix;
        int checkRadix2;
        require(1L);
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (!request(i2)) {
                break;
            }
            b = this.bufferField.getByte(i);
            if ((b < ((byte) 48) || b > ((byte) 57)) && ((b < ((byte) 97) || b > ((byte) 102)) && (b < ((byte) 65) || b > ((byte) 70)))) {
                break;
            }
            i = i2;
        }
        if (i == 0) {
            StringBuilder sb = new StringBuilder();
            sb.append("Expected leading [0-9a-fA-F] character but was 0x");
            checkRadix = CharsKt__CharJVMKt.checkRadix(16);
            checkRadix2 = CharsKt__CharJVMKt.checkRadix(checkRadix);
            String num = Integer.toString(b, checkRadix2);
            Intrinsics.checkNotNullExpressionValue(num, "java.lang.Integer.toStri…(this, checkRadix(radix))");
            sb.append(num);
            throw new NumberFormatException(sb.toString());
        }
        return this.bufferField.readHexadecimalUnsignedLong();
    }

    @Override // okio.BufferedSource
    public void skip(long j) {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        while (j > 0) {
            if (this.bufferField.size() == 0 && this.source.read(this.bufferField, 8192) == -1) {
                throw new EOFException();
            }
            long min = Math.min(j, this.bufferField.size());
            this.bufferField.skip(min);
            j -= min;
        }
    }

    public long indexOf(byte b, long j, long j2) {
        boolean z = true;
        if (!this.closed) {
            if (!((0 > j || j2 < j) ? false : false)) {
                throw new IllegalArgumentException(("fromIndex=" + j + " toIndex=" + j2).toString());
            }
            while (j < j2) {
                long indexOf = this.bufferField.indexOf(b, j, j2);
                if (indexOf != -1) {
                    return indexOf;
                }
                long size = this.bufferField.size();
                if (size >= j2 || this.source.read(this.bufferField, 8192) == -1) {
                    return -1L;
                }
                j = Math.max(j, size);
            }
            return -1L;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.closed) {
            return;
        }
        this.closed = true;
        this.source.close();
        this.bufferField.clear();
    }

    @Override // okio.Source
    public Timeout timeout() {
        return this.source.timeout();
    }

    public String toString() {
        return "buffer(" + this.source + ')';
    }
}
