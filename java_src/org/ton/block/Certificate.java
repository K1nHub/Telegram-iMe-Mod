package org.ton.block;

import kotlin.UInt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.UIntSerializer;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: Certificate.kt */
@Serializable
/* loaded from: classes6.dex */
public final class Certificate {
    public static final Companion Companion = new Companion(null);
    private final SigPubKey temp_key;
    private final int valid_since;
    private final int valid_until;

    public /* synthetic */ Certificate(int i, SigPubKey sigPubKey, UInt uInt, UInt uInt2, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, sigPubKey, uInt, uInt2, serializationConstructorMarker);
    }

    public /* synthetic */ Certificate(SigPubKey sigPubKey, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(sigPubKey, i, i2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Certificate) {
            Certificate certificate = (Certificate) obj;
            return Intrinsics.areEqual(this.temp_key, certificate.temp_key) && this.valid_since == certificate.valid_since && this.valid_until == certificate.valid_until;
        }
        return false;
    }

    public int hashCode() {
        return (((this.temp_key.hashCode() * 31) + UInt.m1977hashCodeimpl(this.valid_since)) * 31) + UInt.m1977hashCodeimpl(this.valid_until);
    }

    public String toString() {
        return "Certificate(temp_key=" + this.temp_key + ", valid_since=" + ((Object) UInt.m1978toStringimpl(this.valid_since)) + ", valid_until=" + ((Object) UInt.m1978toStringimpl(this.valid_until)) + ')';
    }

    private Certificate(int i, SigPubKey sigPubKey, UInt uInt, UInt uInt2, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, Certificate$$serializer.INSTANCE.getDescriptor());
        }
        this.temp_key = sigPubKey;
        this.valid_since = uInt.m1979unboximpl();
        this.valid_until = uInt2.m1979unboximpl();
    }

    private Certificate(SigPubKey temp_key, int i, int i2) {
        Intrinsics.checkNotNullParameter(temp_key, "temp_key");
        this.temp_key = temp_key;
        this.valid_since = i;
        this.valid_until = i2;
    }

    public static final /* synthetic */ void write$Self(Certificate certificate, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, SigPubKey$$serializer.INSTANCE, certificate.temp_key);
        UIntSerializer uIntSerializer = UIntSerializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, uIntSerializer, UInt.m1974boximpl(certificate.valid_since));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, uIntSerializer, UInt.m1974boximpl(certificate.valid_until));
    }

    public final SigPubKey getTemp_key() {
        return this.temp_key;
    }

    /* renamed from: getValid_since-pVg5ArA  reason: not valid java name */
    public final int m5262getValid_sincepVg5ArA() {
        return this.valid_since;
    }

    /* renamed from: getValid_until-pVg5ArA  reason: not valid java name */
    public final int m5263getValid_untilpVg5ArA() {
        return this.valid_until;
    }

    /* compiled from: Certificate.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<Certificate> {
        private final /* synthetic */ CertificateTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public Certificate loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public Certificate loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, Certificate value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<Certificate> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = CertificateTlbConstructor.INSTANCE;
        }

        public final KSerializer<Certificate> serializer() {
            return Certificate$$serializer.INSTANCE;
        }
    }
}
