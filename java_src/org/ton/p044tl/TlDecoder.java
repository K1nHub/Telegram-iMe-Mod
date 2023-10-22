package org.ton.p044tl;

import io.ktor.utils.p032io.core.ByteReadPacketExtensionsKt;
import io.ktor.utils.p032io.core.Input;
import java.nio.ByteBuffer;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TlDecoder.kt */
/* renamed from: org.ton.tl.TlDecoder */
/* loaded from: classes6.dex */
public interface TlDecoder<T> {
    T decode(TlReader tlReader);

    T decodeBoxed(Input input);

    T decodeBoxed(TlReader tlReader);

    /* compiled from: TlDecoder.kt */
    /* renamed from: org.ton.tl.TlDecoder$DefaultImpls */
    /* loaded from: classes6.dex */
    public static final class DefaultImpls {
        public static <T> T decodeBoxed(TlDecoder<T> tlDecoder, Input input) {
            Intrinsics.checkNotNullParameter(input, "input");
            return tlDecoder.decodeBoxed(new TlReader(input));
        }

        public static <T> T decodeBoxed(TlDecoder<T> tlDecoder, final byte[] byteArray) {
            Intrinsics.checkNotNullParameter(byteArray, "byteArray");
            ByteBuffer wrap = ByteBuffer.wrap(byteArray, 0, byteArray.length);
            Intrinsics.checkNotNullExpressionValue(wrap, "wrap(array, offset, length)");
            return tlDecoder.decodeBoxed(ByteReadPacketExtensionsKt.ByteReadPacket(wrap, new Function1<ByteBuffer, Unit>() { // from class: org.ton.tl.TlDecoder$DefaultImpls$decodeBoxed$$inlined$ByteReadPacket$default$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(ByteBuffer it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ByteBuffer byteBuffer) {
                    invoke2(byteBuffer);
                    return Unit.INSTANCE;
                }
            }));
        }
    }
}
