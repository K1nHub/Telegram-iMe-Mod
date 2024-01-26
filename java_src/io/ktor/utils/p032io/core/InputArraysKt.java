package io.ktor.utils.p032io.core;

import io.ktor.utils.p032io.core.internal.ChunkBuffer;
import io.ktor.utils.p032io.core.internal.UnsafeKt;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: InputArrays.kt */
/* renamed from: io.ktor.utils.io.core.InputArraysKt */
/* loaded from: classes4.dex */
public final class InputArraysKt {
    public static /* synthetic */ int readAvailable$default(Input input, byte[] bArr, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = bArr.length - i;
        }
        return readAvailable(input, bArr, i, i2);
    }

    public static final int readAvailable(Input input, byte[] dst, int i, int i2) {
        int i3;
        Intrinsics.checkNotNullParameter(input, "<this>");
        Intrinsics.checkNotNullParameter(dst, "dst");
        boolean z = true;
        ChunkBuffer prepareReadFirstHead = UnsafeKt.prepareReadFirstHead(input, 1);
        if (prepareReadFirstHead == null) {
            i3 = i2;
        } else {
            i3 = i2;
            while (true) {
                try {
                    int min = Math.min(i3, prepareReadFirstHead.getWritePosition() - prepareReadFirstHead.getReadPosition());
                    BufferPrimitivesKt.readFully(prepareReadFirstHead, dst, i, min);
                    i3 -= min;
                    i += min;
                    if (!(i3 > 0)) {
                        break;
                    }
                    try {
                        ChunkBuffer prepareReadNextHead = UnsafeKt.prepareReadNextHead(input, prepareReadFirstHead);
                        if (prepareReadNextHead == null) {
                            z = false;
                            break;
                        }
                        prepareReadFirstHead = prepareReadNextHead;
                    } catch (Throwable th) {
                        th = th;
                        z = false;
                        if (z) {
                            UnsafeKt.completeReadHead(input, prepareReadFirstHead);
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            if (z) {
                UnsafeKt.completeReadHead(input, prepareReadFirstHead);
            }
        }
        return i2 - i3;
    }

    public static final void readFully(Input input, byte[] dst, int i, int i2) {
        Intrinsics.checkNotNullParameter(input, "<this>");
        Intrinsics.checkNotNullParameter(dst, "dst");
        boolean z = true;
        ChunkBuffer prepareReadFirstHead = UnsafeKt.prepareReadFirstHead(input, 1);
        if (prepareReadFirstHead != null) {
            while (true) {
                try {
                    int min = Math.min(i2, prepareReadFirstHead.getWritePosition() - prepareReadFirstHead.getReadPosition());
                    BufferPrimitivesKt.readFully(prepareReadFirstHead, dst, i, min);
                    i2 -= min;
                    i += min;
                    if (!(i2 > 0)) {
                        break;
                    }
                    try {
                        ChunkBuffer prepareReadNextHead = UnsafeKt.prepareReadNextHead(input, prepareReadFirstHead);
                        if (prepareReadNextHead == null) {
                            z = false;
                            break;
                        }
                        prepareReadFirstHead = prepareReadNextHead;
                    } catch (Throwable th) {
                        th = th;
                        z = false;
                        if (z) {
                            UnsafeKt.completeReadHead(input, prepareReadFirstHead);
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            if (z) {
                UnsafeKt.completeReadHead(input, prepareReadFirstHead);
            }
        }
        if (i2 <= 0) {
            return;
        }
        StringsKt.prematureEndOfStream(i2);
        throw new KotlinNothingValueException();
    }
}
