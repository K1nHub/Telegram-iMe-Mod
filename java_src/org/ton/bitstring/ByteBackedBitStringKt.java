package org.ton.bitstring;

import java.util.Arrays;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ByteBackedBitString.kt */
/* loaded from: classes6.dex */
public final class ByteBackedBitStringKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final byte[] appendAugmentTag(byte[] bArr, int i) {
        int lastIndex;
        int lastIndex2;
        int lastIndex3;
        int i2 = i % 8;
        if (i2 != 0) {
            if (!(bArr.length == 0)) {
                byte[] copyOf = Arrays.copyOf(bArr, (i / 8) + 1);
                Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
                lastIndex2 = ArraysKt___ArraysKt.getLastIndex(copyOf);
                int i3 = copyOf[lastIndex2] & 255;
                if (i2 != 7) {
                    i3 >>= 7 - i2;
                }
                int i4 = i3 | 1;
                if (i2 != 7) {
                    i4 <<= 7 - i2;
                }
                lastIndex3 = ArraysKt___ArraysKt.getLastIndex(copyOf);
                copyOf[lastIndex3] = (byte) i4;
                return copyOf;
            }
        }
        byte[] copyOf2 = Arrays.copyOf(bArr, (i / 8) + 1);
        Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(this, newSize)");
        lastIndex = ArraysKt___ArraysKt.getLastIndex(copyOf2);
        copyOf2[lastIndex] = Byte.MIN_VALUE;
        return copyOf2;
    }
}
