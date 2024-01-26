package org.ton.block;

import com.stripe.android.model.Card;
import java.lang.annotation.Annotation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: TrCreditPhase.kt */
@Serializable
/* loaded from: classes6.dex */
public final class TrCreditPhase implements TlbObject {
    private final CurrencyCollection credit;
    private final Maybe<Coins> dueFeesCollected;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new SealedClassSerializer("org.ton.block.Maybe", Reflection.getOrCreateKotlinClass(Maybe.class), new KClass[]{Reflection.getOrCreateKotlinClass(Just.class), Reflection.getOrCreateKotlinClass(Nothing.class)}, new KSerializer[]{Just.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), Nothing.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.TrCreditPhase$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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
    }}), null};

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TrCreditPhase) {
            TrCreditPhase trCreditPhase = (TrCreditPhase) obj;
            return Intrinsics.areEqual(this.dueFeesCollected, trCreditPhase.dueFeesCollected) && Intrinsics.areEqual(this.credit, trCreditPhase.credit);
        }
        return false;
    }

    public int hashCode() {
        return (this.dueFeesCollected.hashCode() * 31) + this.credit.hashCode();
    }

    public /* synthetic */ TrCreditPhase(int i, Maybe maybe, CurrencyCollection currencyCollection, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, TrCreditPhase$$serializer.INSTANCE.getDescriptor());
        }
        this.dueFeesCollected = maybe;
        this.credit = currencyCollection;
    }

    public TrCreditPhase(Maybe<Coins> dueFeesCollected, CurrencyCollection credit) {
        Intrinsics.checkNotNullParameter(dueFeesCollected, "dueFeesCollected");
        Intrinsics.checkNotNullParameter(credit, "credit");
        this.dueFeesCollected = dueFeesCollected;
        this.credit = credit;
    }

    public static final /* synthetic */ void write$Self(TrCreditPhase trCreditPhase, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, $childSerializers[0], trCreditPhase.dueFeesCollected);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, CurrencyCollection$$serializer.INSTANCE, trCreditPhase.credit);
    }

    public final Maybe<Coins> getDueFeesCollected() {
        return this.dueFeesCollected;
    }

    public final CurrencyCollection getCredit() {
        return this.credit;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: TrCreditPhase.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<TrCreditPhase> {
        private final /* synthetic */ TrCreditPhaseTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public TrCreditPhase loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public TrCreditPhase loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, TrCreditPhase value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<TrCreditPhase> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = TrCreditPhaseTlbConstructor.INSTANCE;
        }

        public final KSerializer<TrCreditPhase> serializer() {
            return TrCreditPhase$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("tr_phase_credit");
        open.field("due_fees_collected", this.dueFeesCollected);
        open.field(Card.FUNDING_CREDIT, this.credit);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
