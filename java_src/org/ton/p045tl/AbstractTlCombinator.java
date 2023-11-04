package org.ton.p045tl;

import io.ktor.utils.p032io.core.Input;
import io.ktor.utils.p032io.core.Output;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.ton.p045tl.TlCodec;
/* compiled from: AbstractTlCombinator.kt */
/* renamed from: org.ton.tl.AbstractTlCombinator */
/* loaded from: classes6.dex */
public abstract class AbstractTlCombinator<T> implements TlCodec<T> {
    public abstract TlDecoder<? extends T> findConstructorOrNull(int i);

    public abstract TlEncoder<T> findConstructorOrNull(T t);

    @Override // org.ton.p045tl.TlDecoder
    public T decodeBoxed(Input input) {
        return (T) TlCodec.DefaultImpls.decodeBoxed(this, input);
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

    @Override // org.ton.p045tl.TlDecoder
    public T decode(TlReader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return decodeBoxed(reader);
    }

    @Override // org.ton.p045tl.TlDecoder
    public T decodeBoxed(TlReader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        int readInt = reader.readInt();
        TlDecoder<? extends T> findConstructorOrNull = findConstructorOrNull(readInt);
        if (findConstructorOrNull == null) {
            throw new IllegalArgumentException(("Unknown constructor ID: " + readInt).toString());
        }
        return findConstructorOrNull.decode(reader);
    }

    @Override // org.ton.p045tl.TlEncoder
    public void encode(TlWriter writer, T value) {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        encodeBoxed(writer, (TlWriter) value);
    }

    @Override // org.ton.p045tl.TlEncoder
    public void encodeBoxed(TlWriter writer, T value) {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        TlEncoder<T> findConstructorOrNull = findConstructorOrNull((AbstractTlCombinator<T>) value);
        if (findConstructorOrNull == null) {
            throw new IllegalArgumentException(("Unknown constructor for type: " + Reflection.getOrCreateKotlinClass(value.getClass())).toString());
        }
        findConstructorOrNull.encodeBoxed(writer, (TlWriter) value);
    }
}
