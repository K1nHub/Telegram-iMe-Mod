package org.ton.p045tl;

import io.ktor.utils.p032io.charsets.CharsetJVMKt;
import io.ktor.utils.p032io.core.Input;
import io.ktor.utils.p032io.core.Output;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.UInt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.UStringsKt;
import org.ton.crypto.Crc32JvmKt;
import org.ton.p045tl.TlCodec;
/* compiled from: TlConstructor.kt */
/* renamed from: org.ton.tl.TlConstructor */
/* loaded from: classes6.dex */
public abstract class TlConstructor<T> implements TlCodec<T> {
    private final Lazy id$delegate;
    private final Lazy schema$delegate;

    public TlConstructor(final String schema, final Integer num) {
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(schema, "schema");
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new Function0<String>() { // from class: org.ton.tl.TlConstructor$schema$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                String replace$default;
                String replace$default2;
                String replace$default3;
                replace$default = StringsKt__StringsJVMKt.replace$default(schema, "(", "", false, 4, (Object) null);
                replace$default2 = StringsKt__StringsJVMKt.replace$default(replace$default, ")", "", false, 4, (Object) null);
                replace$default3 = StringsKt__StringsJVMKt.replace$default(replace$default2, ";", "", false, 4, (Object) null);
                return replace$default3;
            }
        });
        this.schema$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new Function0<Integer>() { // from class: org.ton.tl.TlConstructor$id$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                byte[] encodeToByteArray;
                int crc32$default;
                Integer num2 = num;
                if (num2 != null) {
                    crc32$default = num2.intValue();
                } else {
                    String schema2 = this.getSchema();
                    Charset charset = Charsets.UTF_8;
                    if (Intrinsics.areEqual(charset, charset)) {
                        encodeToByteArray = StringsKt__StringsJVMKt.encodeToByteArray(schema2);
                    } else {
                        CharsetEncoder newEncoder = charset.newEncoder();
                        Intrinsics.checkNotNullExpressionValue(newEncoder, "charset.newEncoder()");
                        encodeToByteArray = CharsetJVMKt.encodeToByteArray(newEncoder, schema2, 0, schema2.length());
                    }
                    crc32$default = Crc32JvmKt.crc32$default(encodeToByteArray, 0, 0, 6, null);
                }
                return Integer.valueOf(crc32$default);
            }
        });
        this.id$delegate = lazy2;
    }

    public /* synthetic */ TlConstructor(String str, Integer num, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : num);
    }

    @Override // org.ton.p045tl.TlDecoder
    public T decodeBoxed(Input input) {
        return (T) TlCodec.DefaultImpls.decodeBoxed(this, input);
    }

    public T decodeBoxed(byte[] bArr) {
        return (T) TlCodec.DefaultImpls.decodeBoxed(this, bArr);
    }

    @Override // org.ton.p045tl.TlEncoder
    public void encode(Output output, T t) {
        TlCodec.DefaultImpls.encode(this, output, t);
    }

    @Override // org.ton.p045tl.TlEncoder
    public void encodeBoxed(Output output, T t) {
        TlCodec.DefaultImpls.encodeBoxed(this, output, t);
    }

    @Override // org.ton.p045tl.TlEncoder
    public byte[] encodeToByteArray(T t, boolean z) {
        return TlCodec.DefaultImpls.encodeToByteArray(this, t, z);
    }

    public byte[] hash(T t) {
        return TlCodec.DefaultImpls.hash(this, t);
    }

    public final String getSchema() {
        return (String) this.schema$delegate.getValue();
    }

    public final int getId() {
        return ((Number) this.id$delegate.getValue()).intValue();
    }

    @Override // org.ton.p045tl.TlEncoder
    public void encodeBoxed(TlWriter writer, T value) {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        writer.writeInt(getId());
        encode(writer, (TlWriter) value);
    }

    @Override // org.ton.p045tl.TlDecoder
    public T decodeBoxed(TlReader reader) {
        String padStart;
        String padStart2;
        Intrinsics.checkNotNullParameter(reader, "reader");
        int readInt = reader.readInt();
        if (!(readInt == getId())) {
            padStart = StringsKt__StringsKt.padStart(UStringsKt.m2060toStringV7xB4Y4(UInt.m1974constructorimpl(Integer.reverseBytes(getId())), 16), 8, '0');
            padStart2 = StringsKt__StringsKt.padStart(UStringsKt.m2060toStringV7xB4Y4(UInt.m1974constructorimpl(Integer.reverseBytes(readInt)), 16), 8, '0');
            throw new IllegalArgumentException(("Invalid ID. expected: " + padStart + " (" + getId() + ") actual: " + padStart2 + " (" + readInt + ')').toString());
        }
        return decode(reader);
    }

    public String toString() {
        return getSchema();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TlConstructor) {
            TlConstructor tlConstructor = (TlConstructor) obj;
            return getId() == tlConstructor.getId() && Intrinsics.areEqual(getSchema(), tlConstructor.getSchema());
        }
        return false;
    }

    public int hashCode() {
        return getId();
    }
}
