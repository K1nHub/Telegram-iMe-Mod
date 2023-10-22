package org.ton.block;

import java.lang.annotation.Annotation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: AccountInfo.kt */
@Serializable
/* loaded from: classes6.dex */
public final class AccountInfo implements Account {
    private final MsgAddressInt addr;
    private final AccountStorage storage;
    private final StorageInfo storageStat;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new SealedClassSerializer("org.ton.block.MsgAddressInt", Reflection.getOrCreateKotlinClass(MsgAddressInt.class), new KClass[]{Reflection.getOrCreateKotlinClass(AddrStd.class), Reflection.getOrCreateKotlinClass(AddrVar.class)}, new KSerializer[]{AddrStd$$serializer.INSTANCE, AddrVar$$serializer.INSTANCE}, new Annotation[]{new C7448x4da51fa4("@type")}), null, null};

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AccountInfo) {
            AccountInfo accountInfo = (AccountInfo) obj;
            return Intrinsics.areEqual(this.addr, accountInfo.addr) && Intrinsics.areEqual(this.storageStat, accountInfo.storageStat) && Intrinsics.areEqual(this.storage, accountInfo.storage);
        }
        return false;
    }

    public int hashCode() {
        return (((this.addr.hashCode() * 31) + this.storageStat.hashCode()) * 31) + this.storage.hashCode();
    }

    public /* synthetic */ AccountInfo(int i, MsgAddressInt msgAddressInt, StorageInfo storageInfo, AccountStorage accountStorage, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, AccountInfo$$serializer.INSTANCE.getDescriptor());
        }
        this.addr = msgAddressInt;
        this.storageStat = storageInfo;
        this.storage = accountStorage;
    }

    public AccountInfo(MsgAddressInt addr, StorageInfo storageStat, AccountStorage storage) {
        Intrinsics.checkNotNullParameter(addr, "addr");
        Intrinsics.checkNotNullParameter(storageStat, "storageStat");
        Intrinsics.checkNotNullParameter(storage, "storage");
        this.addr = addr;
        this.storageStat = storageStat;
        this.storage = storage;
    }

    public static final /* synthetic */ void write$Self(AccountInfo accountInfo, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, $childSerializers[0], accountInfo.addr);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, StorageInfo$$serializer.INSTANCE, accountInfo.storageStat);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, AccountStorage$$serializer.INSTANCE, accountInfo.storage);
    }

    public final MsgAddressInt addr() {
        return this.addr;
    }

    public final StorageInfo storageStat() {
        return this.storageStat;
    }

    public final AccountStorage storage() {
        return this.storage;
    }

    /* compiled from: AccountInfo.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<AccountInfo> {
        private final /* synthetic */ AccountInfoTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public AccountInfo loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public AccountInfo loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, AccountInfo value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<AccountInfo> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = AccountInfoTlbConstructor.INSTANCE;
        }

        public final KSerializer<AccountInfo> serializer() {
            return AccountInfo$$serializer.INSTANCE;
        }
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("account");
        open.field("addr", this.addr);
        open.field("storage_stat", this.storageStat);
        open.field("storage", this.storage);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
