package org.ton.p045tl;

import io.ktor.utils.p032io.core.Output;
import io.ktor.utils.p032io.core.OutputKt;
import io.ktor.utils.p032io.core.OutputLittleEndianKt;
import kotlin.UByte;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
/* compiled from: TlWriter.kt */
/* renamed from: org.ton.tl.TlWriter */
/* loaded from: classes6.dex */
public final class TlWriter {
    private final Output output;

    public TlWriter(Output output) {
        Intrinsics.checkNotNullParameter(output, "output");
        this.output = output;
    }

    public final void writeInt(int i) {
        OutputLittleEndianKt.writeIntLittleEndian(this.output, i);
    }

    public final void writeLong(long j) {
        OutputLittleEndianKt.writeLongLittleEndian(this.output, j);
    }

    public final void writeRaw(byte[] value) {
        Intrinsics.checkNotNullParameter(value, "value");
        OutputKt.writeFully$default(this.output, value, 0, 0, 6, null);
    }

    public final void writeRaw(ByteString value) {
        Intrinsics.checkNotNullParameter(value, "value");
        OutputKt.writeFully$default(this.output, value.getData$ton_kotlin_tl(), 0, 0, 6, null);
    }

    public static /* synthetic */ void writeBytes$default(TlWriter tlWriter, ByteString byteString, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = byteString.getSize();
        }
        tlWriter.writeBytes(byteString, i, i2);
    }

    public final void writeBytes(ByteString value, int i, int i2) {
        Intrinsics.checkNotNullParameter(value, "value");
        writeBytes(value.getData$ton_kotlin_tl(), i, i2);
    }

    public static /* synthetic */ void writeBytes$default(TlWriter tlWriter, byte[] bArr, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = bArr.length - i;
        }
        tlWriter.writeBytes(bArr, i, i2);
    }

    public final void writeBytes(byte[] value, int i, int i2) {
        int i3;
        Intrinsics.checkNotNullParameter(value, "value");
        if (i2 < 254) {
            this.output.writeByte(UByte.m1952constructorimpl((byte) i2));
            i3 = i2 + 1;
        } else if (i2 < 16777216) {
            this.output.writeByte((byte) -2);
            this.output.writeByte(UByte.m1952constructorimpl((byte) (i2 & 255)));
            this.output.writeByte(UByte.m1952constructorimpl((byte) ((i2 >> 8) & 255)));
            this.output.writeByte(UByte.m1952constructorimpl((byte) (i2 >> 16)));
            i3 = i2 + 4;
        } else if (i2 >= Integer.MAX_VALUE) {
            throw new IllegalStateException("Too big byte array: " + i2);
        } else {
            this.output.writeByte((byte) -1);
            this.output.writeByte(UByte.m1952constructorimpl((byte) (i2 & 255)));
            this.output.writeByte(UByte.m1952constructorimpl((byte) ((i2 >> 8) & 255)));
            this.output.writeByte(UByte.m1952constructorimpl((byte) ((i2 >> 16) & 255)));
            this.output.writeByte(UByte.m1952constructorimpl((byte) ((i2 >> 24) & 255)));
            this.output.writeByte((byte) 0);
            this.output.writeByte((byte) 0);
            this.output.writeByte((byte) 0);
            i3 = i2 + 8;
        }
        OutputKt.writeFully(this.output, value, i, i2);
        while (true) {
            int i4 = i3 + 1;
            if (i3 % 4 <= 0) {
                return;
            }
            this.output.writeByte((byte) 0);
            i3 = i4;
        }
    }

    public final void writeString(String value) {
        byte[] encodeToByteArray;
        Intrinsics.checkNotNullParameter(value, "value");
        encodeToByteArray = StringsKt__StringsJVMKt.encodeToByteArray(value);
        writeBytes$default(this, encodeToByteArray, 0, 0, 6, (Object) null);
    }
}
