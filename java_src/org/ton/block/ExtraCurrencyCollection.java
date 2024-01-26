package org.ton.block;

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
import org.ton.hashmap.HashMapE;
import org.ton.hashmap.HmeEmpty;
import org.ton.hashmap.HmeRoot;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: ExtraCurrencyCollection.kt */
@Serializable
/* loaded from: classes6.dex */
public final class ExtraCurrencyCollection implements TlbObject {
    private final HashMapE<VarUInteger> dict;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new SealedClassSerializer("org.ton.hashmap.HashMapE", Reflection.getOrCreateKotlinClass(HashMapE.class), new KClass[]{Reflection.getOrCreateKotlinClass(HmeEmpty.class), Reflection.getOrCreateKotlinClass(HmeRoot.class)}, new KSerializer[]{HmeEmpty.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), HmeRoot.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.ExtraCurrencyCollection$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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

    public ExtraCurrencyCollection() {
        this((HashMapE) null, 1, (DefaultConstructorMarker) null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ExtraCurrencyCollection) && Intrinsics.areEqual(this.dict, ((ExtraCurrencyCollection) obj).dict);
    }

    public int hashCode() {
        return this.dict.hashCode();
    }

    public /* synthetic */ ExtraCurrencyCollection(int i, HashMapE hashMapE, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 0) != 0) {
            PluginExceptionsKt.throwMissingFieldException(i, 0, ExtraCurrencyCollection$$serializer.INSTANCE.getDescriptor());
        }
        if ((i & 1) == 0) {
            this.dict = HashMapE.Companion.m26of();
        } else {
            this.dict = hashMapE;
        }
    }

    public ExtraCurrencyCollection(HashMapE<VarUInteger> dict) {
        Intrinsics.checkNotNullParameter(dict, "dict");
        this.dict = dict;
    }

    public static final /* synthetic */ void write$Self(ExtraCurrencyCollection extraCurrencyCollection, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        boolean z = true;
        if (!compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 0) && Intrinsics.areEqual(extraCurrencyCollection.dict, HashMapE.Companion.m26of())) {
            z = false;
        }
        if (z) {
            compositeEncoder.encodeSerializableElement(serialDescriptor, 0, kSerializerArr[0], extraCurrencyCollection.dict);
        }
    }

    public /* synthetic */ ExtraCurrencyCollection(HashMapE hashMapE, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? HashMapE.Companion.m26of() : hashMapE);
    }

    public final HashMapE<VarUInteger> dict() {
        return this.dict;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: ExtraCurrencyCollection.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<ExtraCurrencyCollection> {
        private final /* synthetic */ ExtraCurrencyCollectionTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public ExtraCurrencyCollection loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public ExtraCurrencyCollection loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, ExtraCurrencyCollection value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<ExtraCurrencyCollection> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = ExtraCurrencyCollectionTlbConstructor.INSTANCE;
        }

        public final KSerializer<ExtraCurrencyCollection> serializer() {
            return ExtraCurrencyCollection$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("extra_currencies");
        open.field("dict", this.dict);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
