package org.ton.p045tl;

import io.ktor.utils.p032io.core.Input;
import io.ktor.utils.p032io.core.InputLittleEndianKt;
import io.ktor.utils.p032io.core.StringsKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.UByte;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
/* compiled from: TlReader.kt */
/* renamed from: org.ton.tl.TlReader */
/* loaded from: classes6.dex */
public final class TlReader {
    private final Input input;

    public TlReader(Input input) {
        Intrinsics.checkNotNullParameter(input, "input");
        this.input = input;
    }

    public final int readInt() {
        return InputLittleEndianKt.readIntLittleEndian(this.input);
    }

    public final long readLong() {
        return InputLittleEndianKt.readLongLittleEndian(this.input);
    }

    public final byte[] readRaw(int i) {
        return StringsKt.readBytes(this.input, i);
    }

    public final ByteString readByteString(int i) {
        return new ByteString(StringsKt.readBytes(this.input, i));
    }

    public final ByteString readByteString() {
        return new ByteString(readBytes());
    }

    public final byte[] readBytes() {
        int i;
        int m1952constructorimpl = UByte.m1952constructorimpl(this.input.readByte()) & 255;
        if (m1952constructorimpl < 254) {
            i = m1952constructorimpl + 1;
        } else if (m1952constructorimpl == 254) {
            m1952constructorimpl = (UByte.m1952constructorimpl(this.input.readByte()) & 255) | ((UByte.m1952constructorimpl(this.input.readByte()) & 255) << 8) | ((UByte.m1952constructorimpl(this.input.readByte()) & 255) << 16);
            i = m1952constructorimpl + 4;
        } else {
            long m1952constructorimpl2 = (UByte.m1952constructorimpl(this.input.readByte()) & 255) | ((UByte.m1952constructorimpl(this.input.readByte()) & 255) << 8) | ((UByte.m1952constructorimpl(this.input.readByte()) & 255) << 16) | ((UByte.m1952constructorimpl(this.input.readByte()) & 255) << 24) | ((UByte.m1952constructorimpl(this.input.readByte()) & 255) << 32) | ((UByte.m1952constructorimpl(this.input.readByte()) & 255) << 40) | ((UByte.m1952constructorimpl(this.input.readByte()) & 255) << 48);
            if (m1952constructorimpl2 > 2147483647L) {
                throw new IllegalStateException("Too big byte array: " + m1952constructorimpl2);
            }
            m1952constructorimpl = (int) m1952constructorimpl2;
            i = m1952constructorimpl + 8;
        }
        byte[] readBytes = StringsKt.readBytes(this.input, m1952constructorimpl);
        while (true) {
            int i2 = i + 1;
            if (i % 4 <= 0) {
                return readBytes;
            }
            if (!(this.input.readByte() == 0)) {
                throw new IllegalStateException("Check failed.".toString());
            }
            i = i2;
        }
    }

    public final String readString() {
        String decodeToString;
        decodeToString = StringsKt__StringsJVMKt.decodeToString(readBytes());
        return decodeToString;
    }

    public final <T> List<T> readVector(Function1<? super TlReader, ? extends T> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        int readInt = readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add(block.invoke(this));
        }
        return arrayList;
    }
}
