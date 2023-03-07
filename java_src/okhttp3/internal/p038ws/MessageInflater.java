package okhttp3.internal.p038ws;

import com.google.android.exoplayer2.source.rtsp.RtpPacket;
import java.io.Closeable;
import java.io.IOException;
import java.util.zip.Inflater;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.InflaterSource;
import okio.Source;
/* compiled from: MessageInflater.kt */
/* renamed from: okhttp3.internal.ws.MessageInflater */
/* loaded from: classes4.dex */
public final class MessageInflater implements Closeable {
    private final Buffer deflatedBytes;
    private final Inflater inflater;
    private final InflaterSource inflaterSource;
    private final boolean noContextTakeover;

    public MessageInflater(boolean z) {
        this.noContextTakeover = z;
        Buffer buffer = new Buffer();
        this.deflatedBytes = buffer;
        Inflater inflater = new Inflater(true);
        this.inflater = inflater;
        this.inflaterSource = new InflaterSource((Source) buffer, inflater);
    }

    public final void inflate(Buffer buffer) throws IOException {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        if (!(this.deflatedBytes.size() == 0)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (this.noContextTakeover) {
            this.inflater.reset();
        }
        this.deflatedBytes.writeAll(buffer);
        this.deflatedBytes.writeInt(RtpPacket.MAX_SEQUENCE_NUMBER);
        long bytesRead = this.inflater.getBytesRead() + this.deflatedBytes.size();
        do {
            this.inflaterSource.readOrInflate(buffer, Long.MAX_VALUE);
        } while (this.inflater.getBytesRead() < bytesRead);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.inflaterSource.close();
    }
}
