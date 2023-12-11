package io.ktor.utils.p032io.core;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: OutputPrimitives.kt */
/* renamed from: io.ktor.utils.io.core.OutputPrimitivesKt */
/* loaded from: classes4.dex */
public final class OutputPrimitivesKt {
    public static final void writeInt(Output output, int i) {
        boolean z;
        Intrinsics.checkNotNullParameter(output, "<this>");
        int tailPosition$ktor_io = output.getTailPosition$ktor_io();
        if (output.getTailEndExclusive$ktor_io() - tailPosition$ktor_io > 4) {
            output.setTailPosition$ktor_io(tailPosition$ktor_io + 4);
            output.m1922getTailMemorySK3TCg8$ktor_io().putInt(tailPosition$ktor_io, i);
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return;
        }
        writeIntFallback(output, i);
    }

    public static final void writeLong(Output output, long j) {
        boolean z;
        Intrinsics.checkNotNullParameter(output, "<this>");
        int tailPosition$ktor_io = output.getTailPosition$ktor_io();
        if (output.getTailEndExclusive$ktor_io() - tailPosition$ktor_io > 8) {
            output.setTailPosition$ktor_io(tailPosition$ktor_io + 8);
            output.m1922getTailMemorySK3TCg8$ktor_io().putLong(tailPosition$ktor_io, j);
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return;
        }
        writeLongFallback(output, j);
    }

    public static final void writeShort(Output output, short s) {
        boolean z;
        Intrinsics.checkNotNullParameter(output, "<this>");
        int tailPosition$ktor_io = output.getTailPosition$ktor_io();
        if (output.getTailEndExclusive$ktor_io() - tailPosition$ktor_io > 2) {
            output.setTailPosition$ktor_io(tailPosition$ktor_io + 2);
            output.m1922getTailMemorySK3TCg8$ktor_io().putShort(tailPosition$ktor_io, s);
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return;
        }
        writeShortFallback(output, s);
    }

    private static final void writeIntFallback(Output output, int i) {
        BufferPrimitivesKt.writeInt(output.prepareWriteHead(4), i);
        output.afterHeadWrite();
    }

    private static final void writeLongFallback(Output output, long j) {
        BufferPrimitivesKt.writeLong(output.prepareWriteHead(8), j);
        output.afterHeadWrite();
    }

    private static final void writeShortFallback(Output output, short s) {
        BufferPrimitivesKt.writeShort(output.prepareWriteHead(2), s);
        output.afterHeadWrite();
    }
}
