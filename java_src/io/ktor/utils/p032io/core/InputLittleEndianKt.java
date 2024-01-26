package io.ktor.utils.p032io.core;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: InputLittleEndian.kt */
/* renamed from: io.ktor.utils.io.core.InputLittleEndianKt */
/* loaded from: classes4.dex */
public final class InputLittleEndianKt {
    public static final int readIntLittleEndian(Input input) {
        Intrinsics.checkNotNullParameter(input, "<this>");
        return Integer.reverseBytes(InputPrimitivesKt.readInt(input));
    }

    public static final long readLongLittleEndian(Input input) {
        Intrinsics.checkNotNullParameter(input, "<this>");
        return Long.reverseBytes(InputPrimitivesKt.readLong(input));
    }
}
