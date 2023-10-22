package io.ktor.utils.p032io.core;

import io.ktor.utils.p032io.core.internal.ChunkBuffer;
import java.io.EOFException;
import java.nio.ByteBuffer;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ByteBuffers.kt */
/* renamed from: io.ktor.utils.io.core.ByteBuffersKt */
/* loaded from: classes4.dex */
public final class ByteBuffersKt {
    public static final int readFully(ByteReadPacket byteReadPacket, ByteBuffer dst) {
        Intrinsics.checkNotNullParameter(byteReadPacket, "<this>");
        Intrinsics.checkNotNullParameter(dst, "dst");
        int readAsMuchAsPossible = readAsMuchAsPossible(byteReadPacket, dst, 0);
        if (dst.hasRemaining()) {
            throw new EOFException("Not enough data in packet to fill buffer: " + dst.remaining() + " more bytes required");
        }
        return readAsMuchAsPossible;
    }

    private static final int readAsMuchAsPossible(ByteReadPacket byteReadPacket, ByteBuffer byteBuffer, int i) {
        ChunkBuffer prepareRead;
        while (byteBuffer.hasRemaining() && (prepareRead = byteReadPacket.prepareRead(1)) != null) {
            int remaining = byteBuffer.remaining();
            int writePosition = prepareRead.getWritePosition() - prepareRead.getReadPosition();
            if (remaining >= writePosition) {
                BufferUtilsJvmKt.readFully(prepareRead, byteBuffer, writePosition);
                byteReadPacket.releaseHead$ktor_io(prepareRead);
                i += writePosition;
            } else {
                BufferUtilsJvmKt.readFully(prepareRead, byteBuffer, remaining);
                byteReadPacket.setHeadPosition(prepareRead.getReadPosition());
                return i + remaining;
            }
        }
        return i;
    }
}
