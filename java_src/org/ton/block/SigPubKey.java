package org.ton.block;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.bitstring.BitString;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: SigPubKey.kt */
@Serializable
/* loaded from: classes6.dex */
public final class SigPubKey {
    public static final Companion Companion = new Companion(null);
    private final BitString pubkey;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof SigPubKey) && Intrinsics.areEqual(this.pubkey, ((SigPubKey) obj).pubkey);
    }

    public int hashCode() {
        return this.pubkey.hashCode();
    }

    public String toString() {
        return "SigPubKey(pubkey=" + this.pubkey + ')';
    }

    public /* synthetic */ SigPubKey(int i, BitString bitString, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, SigPubKey$$serializer.INSTANCE.getDescriptor());
        }
        this.pubkey = bitString;
        if (bitString.getSize() == 256) {
            return;
        }
        throw new IllegalArgumentException(("required: pubkey.size == 256, actual: " + bitString.getSize()).toString());
    }

    public SigPubKey(BitString pubkey) {
        Intrinsics.checkNotNullParameter(pubkey, "pubkey");
        this.pubkey = pubkey;
        if (pubkey.getSize() == 256) {
            return;
        }
        throw new IllegalArgumentException(("required: pubkey.size == 256, actual: " + pubkey.getSize()).toString());
    }

    public final BitString getPubkey() {
        return this.pubkey;
    }

    /* compiled from: SigPubKey.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<SigPubKey> {
        private final /* synthetic */ SigPubKeyTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public SigPubKey loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public SigPubKey loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, SigPubKey value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<SigPubKey> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = SigPubKeyTlbConstructor.INSTANCE;
        }

        public final KSerializer<SigPubKey> serializer() {
            return SigPubKey$$serializer.INSTANCE;
        }
    }
}
