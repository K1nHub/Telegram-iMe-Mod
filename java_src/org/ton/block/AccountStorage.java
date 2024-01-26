package org.ton.block;

import java.lang.annotation.Annotation;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.ULongSerializer;
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: AccountStorage.kt */
@Serializable
/* loaded from: classes6.dex */
public final class AccountStorage implements TlbObject {
    private final CurrencyCollection balance;
    private final long lastTransLt;
    private final AccountState state;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, new SealedClassSerializer("org.ton.block.AccountState", Reflection.getOrCreateKotlinClass(AccountState.class), new KClass[]{Reflection.getOrCreateKotlinClass(AccountActive.class), Reflection.getOrCreateKotlinClass(AccountFrozen.class), Reflection.getOrCreateKotlinClass(AccountUninit.class)}, new KSerializer[]{AccountActive$$serializer.INSTANCE, AccountFrozen$$serializer.INSTANCE, new ObjectSerializer("account_uninit", AccountUninit.INSTANCE, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.AccountStorage$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
        private final /* synthetic */ String discriminator;

        {
            Intrinsics.checkNotNullParameter(discriminator, "discriminator");
            this.discriminator = discriminator;
        }

        @Override // java.lang.annotation.Annotation
        public final /* synthetic */ Class annotationType() {
            return JsonClassDiscriminator.class;
        }

        @Override // kotlinx.serialization.json.JsonClassDiscriminator
        public final /* synthetic */ String discriminator() {
            return this.discriminator;
        }

        @Override // java.lang.annotation.Annotation
        public final boolean equals(Object obj) {
            return (obj instanceof JsonClassDiscriminator) && Intrinsics.areEqual(discriminator(), ((JsonClassDiscriminator) obj).discriminator());
        }

        @Override // java.lang.annotation.Annotation
        public final int hashCode() {
            return this.discriminator.hashCode() ^ 707790692;
        }

        @Override // java.lang.annotation.Annotation
        public final String toString() {
            return "@kotlinx.serialization.json.JsonClassDiscriminator(discriminator=" + this.discriminator + ')';
        }
    }})}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.AccountStorage$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
        private final /* synthetic */ String discriminator;

        {
            Intrinsics.checkNotNullParameter(discriminator, "discriminator");
            this.discriminator = discriminator;
        }

        @Override // java.lang.annotation.Annotation
        public final /* synthetic */ Class annotationType() {
            return JsonClassDiscriminator.class;
        }

        @Override // kotlinx.serialization.json.JsonClassDiscriminator
        public final /* synthetic */ String discriminator() {
            return this.discriminator;
        }

        @Override // java.lang.annotation.Annotation
        public final boolean equals(Object obj) {
            return (obj instanceof JsonClassDiscriminator) && Intrinsics.areEqual(discriminator(), ((JsonClassDiscriminator) obj).discriminator());
        }

        @Override // java.lang.annotation.Annotation
        public final int hashCode() {
            return this.discriminator.hashCode() ^ 707790692;
        }

        @Override // java.lang.annotation.Annotation
        public final String toString() {
            return "@kotlinx.serialization.json.JsonClassDiscriminator(discriminator=" + this.discriminator + ')';
        }
    }})};

    public /* synthetic */ AccountStorage(int i, ULong uLong, CurrencyCollection currencyCollection, AccountState accountState, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, uLong, currencyCollection, accountState, serializationConstructorMarker);
    }

    public /* synthetic */ AccountStorage(long j, CurrencyCollection currencyCollection, AccountState accountState, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, currencyCollection, accountState);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AccountStorage) {
            AccountStorage accountStorage = (AccountStorage) obj;
            return this.lastTransLt == accountStorage.lastTransLt && Intrinsics.areEqual(this.balance, accountStorage.balance) && Intrinsics.areEqual(this.state, accountStorage.state);
        }
        return false;
    }

    public int hashCode() {
        return (((ULong.m1999hashCodeimpl(this.lastTransLt) * 31) + this.balance.hashCode()) * 31) + this.state.hashCode();
    }

    private AccountStorage(int i, ULong uLong, CurrencyCollection currencyCollection, AccountState accountState, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, AccountStorage$$serializer.INSTANCE.getDescriptor());
        }
        this.lastTransLt = uLong.m2001unboximpl();
        this.balance = currencyCollection;
        this.state = accountState;
    }

    private AccountStorage(long j, CurrencyCollection balance, AccountState state) {
        Intrinsics.checkNotNullParameter(balance, "balance");
        Intrinsics.checkNotNullParameter(state, "state");
        this.lastTransLt = j;
        this.balance = balance;
        this.state = state;
    }

    public static final /* synthetic */ void write$Self(AccountStorage accountStorage, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, ULongSerializer.INSTANCE, ULong.m1996boximpl(accountStorage.lastTransLt));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, CurrencyCollection$$serializer.INSTANCE, accountStorage.balance);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, kSerializerArr[2], accountStorage.state);
    }

    public final long lastTransLt() {
        return this.lastTransLt;
    }

    public final CurrencyCollection balance() {
        return this.balance;
    }

    public final AccountState state() {
        return this.state;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: AccountStorage.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<AccountStorage> {
        private final /* synthetic */ AccountStorageTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public AccountStorage loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public AccountStorage loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, AccountStorage value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<AccountStorage> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = AccountStorageTlbConstructor.INSTANCE;
        }

        public final KSerializer<AccountStorage> serializer() {
            return AccountStorage$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("account_storage");
        open.field("last_trans_lt", ULong.m1996boximpl(this.lastTransLt));
        open.field("balance", this.balance);
        open.field("state", this.state);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
