package org.ton.lite.client.internal;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.bitstring.BitString;
import org.ton.bitstring.FiftHexBitStringSerializer;
/* compiled from: BlockHeaderResult.kt */
@Serializable
/* loaded from: classes6.dex */
public final class TransactionId {
    public static final Companion Companion = new Companion(null);
    private final BitString hash;

    /* renamed from: lt */
    private final long f2121lt;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TransactionId) {
            TransactionId transactionId = (TransactionId) obj;
            return Intrinsics.areEqual(this.hash, transactionId.hash) && this.f2121lt == transactionId.f2121lt;
        }
        return false;
    }

    public int hashCode() {
        return (this.hash.hashCode() * 31) + ProfileData$$ExternalSyntheticBackport0.m1020m(this.f2121lt);
    }

    public String toString() {
        return "TransactionId(hash=" + this.hash + ", lt=" + this.f2121lt + ')';
    }

    /* compiled from: BlockHeaderResult.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<TransactionId> serializer() {
            return TransactionId$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ TransactionId(int i, BitString bitString, long j, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, TransactionId$$serializer.INSTANCE.getDescriptor());
        }
        this.hash = bitString;
        this.f2121lt = j;
        if (bitString.getSize() == 256) {
            return;
        }
        throw new IllegalArgumentException(("expected hash.size == 256, actual: " + bitString.getSize()).toString());
    }

    public TransactionId(BitString hash, long j) {
        Intrinsics.checkNotNullParameter(hash, "hash");
        this.hash = hash;
        this.f2121lt = j;
        if (hash.getSize() == 256) {
            return;
        }
        throw new IllegalArgumentException(("expected hash.size == 256, actual: " + hash.getSize()).toString());
    }

    public static final /* synthetic */ void write$Self(TransactionId transactionId, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, FiftHexBitStringSerializer.INSTANCE, transactionId.hash);
        compositeEncoder.encodeLongElement(serialDescriptor, 1, transactionId.f2121lt);
    }
}
