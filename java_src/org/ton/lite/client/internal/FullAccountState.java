package org.ton.lite.client.internal;

import java.lang.annotation.Annotation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.api.tonnode.TonNodeBlockIdExt;
import org.ton.api.tonnode.TonNodeBlockIdExt$$serializer;
import org.ton.block.Account;
import org.ton.block.AddrStd;
import org.ton.block.AddrStd$$serializer;
import org.ton.tlb.CellRef;
/* compiled from: BlockHeaderResult.kt */
@Serializable
/* loaded from: classes6.dex */
public final class FullAccountState {
    private final CellRef<Account> account;
    private final AddrStd address;
    private final TonNodeBlockIdExt blockId;
    private final TransactionId lastTransactionId;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, null, new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0])};

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FullAccountState) {
            FullAccountState fullAccountState = (FullAccountState) obj;
            return Intrinsics.areEqual(this.blockId, fullAccountState.blockId) && Intrinsics.areEqual(this.address, fullAccountState.address) && Intrinsics.areEqual(this.lastTransactionId, fullAccountState.lastTransactionId) && Intrinsics.areEqual(this.account, fullAccountState.account);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((this.blockId.hashCode() * 31) + this.address.hashCode()) * 31;
        TransactionId transactionId = this.lastTransactionId;
        return ((hashCode + (transactionId == null ? 0 : transactionId.hashCode())) * 31) + this.account.hashCode();
    }

    public String toString() {
        return "FullAccountState(blockId=" + this.blockId + ", address=" + this.address + ", lastTransactionId=" + this.lastTransactionId + ", account=" + this.account + ')';
    }

    /* compiled from: BlockHeaderResult.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<FullAccountState> serializer() {
            return FullAccountState$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ FullAccountState(int i, TonNodeBlockIdExt tonNodeBlockIdExt, AddrStd addrStd, TransactionId transactionId, CellRef cellRef, SerializationConstructorMarker serializationConstructorMarker) {
        if (15 != (i & 15)) {
            PluginExceptionsKt.throwMissingFieldException(i, 15, FullAccountState$$serializer.INSTANCE.getDescriptor());
        }
        this.blockId = tonNodeBlockIdExt;
        this.address = addrStd;
        this.lastTransactionId = transactionId;
        this.account = cellRef;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FullAccountState(TonNodeBlockIdExt blockId, AddrStd address, TransactionId transactionId, CellRef<? extends Account> account) {
        Intrinsics.checkNotNullParameter(blockId, "blockId");
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(account, "account");
        this.blockId = blockId;
        this.address = address;
        this.lastTransactionId = transactionId;
        this.account = account;
    }

    public static final /* synthetic */ void write$Self(FullAccountState fullAccountState, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, TonNodeBlockIdExt$$serializer.INSTANCE, fullAccountState.blockId);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, AddrStd$$serializer.INSTANCE, fullAccountState.address);
        compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 2, TransactionId$$serializer.INSTANCE, fullAccountState.lastTransactionId);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 3, kSerializerArr[3], fullAccountState.account);
    }

    public final CellRef<Account> account() {
        return this.account;
    }
}
