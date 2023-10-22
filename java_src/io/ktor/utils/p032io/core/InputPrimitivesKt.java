package io.ktor.utils.p032io.core;

import io.ktor.utils.p032io.core.internal.ChunkBuffer;
import io.ktor.utils.p032io.core.internal.UnsafeKt;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: InputPrimitives.kt */
/* renamed from: io.ktor.utils.io.core.InputPrimitivesKt */
/* loaded from: classes4.dex */
public final class InputPrimitivesKt {
    private static final int readIntFallback(Input input) {
        ChunkBuffer prepareReadFirstHead = UnsafeKt.prepareReadFirstHead(input, 4);
        if (prepareReadFirstHead != null) {
            int readInt = BufferPrimitivesKt.readInt(prepareReadFirstHead);
            UnsafeKt.completeReadHead(input, prepareReadFirstHead);
            return readInt;
        }
        StringsKt.prematureEndOfStream(4);
        throw new KotlinNothingValueException();
    }

    private static final long readLongFallback(Input input) {
        ChunkBuffer prepareReadFirstHead = UnsafeKt.prepareReadFirstHead(input, 8);
        if (prepareReadFirstHead != null) {
            long readLong = BufferPrimitivesKt.readLong(prepareReadFirstHead);
            UnsafeKt.completeReadHead(input, prepareReadFirstHead);
            return readLong;
        }
        StringsKt.prematureEndOfStream(8);
        throw new KotlinNothingValueException();
    }

    private static final short readShortFallback(Input input) {
        ChunkBuffer prepareReadFirstHead = UnsafeKt.prepareReadFirstHead(input, 2);
        if (prepareReadFirstHead != null) {
            short readShort = BufferPrimitivesKt.readShort(prepareReadFirstHead);
            UnsafeKt.completeReadHead(input, prepareReadFirstHead);
            return readShort;
        }
        StringsKt.prematureEndOfStream(2);
        throw new KotlinNothingValueException();
    }

    public static final int readInt(Input input) {
        Intrinsics.checkNotNullParameter(input, "<this>");
        if (input.getHeadEndExclusive() - input.getHeadPosition() <= 4) {
            return readIntFallback(input);
        }
        int headPosition = input.getHeadPosition();
        input.setHeadPosition(headPosition + 4);
        return input.m1914getHeadMemorySK3TCg8().getInt(headPosition);
    }

    public static final long readLong(Input input) {
        Intrinsics.checkNotNullParameter(input, "<this>");
        if (input.getHeadEndExclusive() - input.getHeadPosition() <= 8) {
            return readLongFallback(input);
        }
        int headPosition = input.getHeadPosition();
        input.setHeadPosition(headPosition + 8);
        return input.m1914getHeadMemorySK3TCg8().getLong(headPosition);
    }

    public static final short readShort(Input input) {
        Intrinsics.checkNotNullParameter(input, "<this>");
        if (input.getHeadEndExclusive() - input.getHeadPosition() <= 2) {
            return readShortFallback(input);
        }
        int headPosition = input.getHeadPosition();
        input.setHeadPosition(headPosition + 2);
        return input.m1914getHeadMemorySK3TCg8().getShort(headPosition);
    }
}
