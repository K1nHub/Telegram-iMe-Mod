package io.ktor.utils.p032io.core;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: OutputLittleEndian.kt */
/* renamed from: io.ktor.utils.io.core.OutputLittleEndianKt */
/* loaded from: classes4.dex */
public final class OutputLittleEndianKt {
    public static final void writeIntLittleEndian(Output output, int i) {
        Intrinsics.checkNotNullParameter(output, "<this>");
        OutputPrimitivesKt.writeInt(output, Integer.reverseBytes(i));
    }

    public static final void writeLongLittleEndian(Output output, long j) {
        Intrinsics.checkNotNullParameter(output, "<this>");
        OutputPrimitivesKt.writeLong(output, Long.reverseBytes(j));
    }
}
