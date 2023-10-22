package org.ton.hashmap;

import java.util.Iterator;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.bitstring.BitString;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* compiled from: HmeEmpty.kt */
@Serializable
/* loaded from: classes6.dex */
public final class HmeEmpty<T> implements HashMapE<T> {
    public static final Companion Companion = new Companion(null);
    private static final SerialDescriptor $cachedDescriptor = new PluginGeneratedSerialDescriptor("hme_empty", null, 0);

    public static final /* synthetic */ void write$Self(HmeEmpty hmeEmpty, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor, KSerializer kSerializer) {
    }

    /* compiled from: HmeEmpty.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final <T0> KSerializer<HmeEmpty<T0>> serializer(KSerializer<T0> typeSerial0) {
            Intrinsics.checkNotNullParameter(typeSerial0, "typeSerial0");
            return new HmeEmpty$$serializer(typeSerial0);
        }
    }

    public HmeEmpty() {
    }

    public /* synthetic */ HmeEmpty(int i, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 0) != 0) {
            PluginExceptionsKt.throwMissingFieldException(i, 0, $cachedDescriptor);
        }
    }

    @Override // java.lang.Iterable
    public Iterator<Pair<BitString, T>> iterator() {
        return new EmptyIterator();
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        return printer.type("hme_empty");
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }
}
