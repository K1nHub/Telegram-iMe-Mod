package org.ton.hashmap;

import java.lang.annotation.Annotation;
import java.util.Iterator;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.bitstring.BitString;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* compiled from: HmEdge.kt */
@Serializable
/* loaded from: classes6.dex */
public final class HmEdge<T> implements Iterable<Pair<? extends BitString, ? extends T>>, TlbObject, KMappedMarker {
    private static final SerialDescriptor $cachedDescriptor;
    private final HmLabel label;
    private final HashMapNode<T> node;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new SealedClassSerializer("org.ton.hashmap.HmLabel", Reflection.getOrCreateKotlinClass(HmLabel.class), new KClass[]{Reflection.getOrCreateKotlinClass(HmlLong.class), Reflection.getOrCreateKotlinClass(HmlSame.class), Reflection.getOrCreateKotlinClass(HmlShort.class)}, new KSerializer[]{HmlLong$$serializer.INSTANCE, HmlSame$$serializer.INSTANCE, HmlShort$$serializer.INSTANCE}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.hashmap.HmEdge$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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
    }}), new SealedClassSerializer("org.ton.hashmap.HashMapNode", Reflection.getOrCreateKotlinClass(HashMapNode.class), new KClass[]{Reflection.getOrCreateKotlinClass(HmnFork.class), Reflection.getOrCreateKotlinClass(HmnLeaf.class)}, new KSerializer[]{HmnFork.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), HmnLeaf.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.hashmap.HmEdge$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof HmEdge) {
            HmEdge hmEdge = (HmEdge) obj;
            return Intrinsics.areEqual(this.label, hmEdge.label) && Intrinsics.areEqual(this.node, hmEdge.node);
        }
        return false;
    }

    public int hashCode() {
        return (this.label.hashCode() * 31) + this.node.hashCode();
    }

    public /* synthetic */ HmEdge(int i, HmLabel hmLabel, HashMapNode hashMapNode, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, $cachedDescriptor);
        }
        this.label = hmLabel;
        this.node = hashMapNode;
    }

    public HmEdge(HmLabel label, HashMapNode<T> node) {
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(node, "node");
        this.label = label;
        this.node = node;
    }

    public static final /* synthetic */ void write$Self(HmEdge hmEdge, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor, KSerializer kSerializer) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, kSerializerArr[0], hmEdge.label);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], hmEdge.node);
    }

    public final HmLabel getLabel() {
        return this.label;
    }

    public final HashMapNode<T> getNode() {
        return this.node;
    }

    @Override // java.lang.Iterable
    public Iterator<Pair<BitString, T>> iterator() {
        return new HmEdgeIterator(this);
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: HmEdge.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final <T0> KSerializer<HmEdge<T0>> serializer(KSerializer<T0> typeSerial0) {
            Intrinsics.checkNotNullParameter(typeSerial0, "typeSerial0");
            return new HmEdge$$serializer(typeSerial0);
        }

        public final <X> TlbCodec<HmEdge<X>> tlbCodec(int i, TlbCodec<X> x) {
            Intrinsics.checkNotNullParameter(x, "x");
            return new HashMapEdgeTlbConstructor(i, x);
        }
    }

    static {
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("hm_edge", null, 2);
        pluginGeneratedSerialDescriptor.addElement("label", false);
        pluginGeneratedSerialDescriptor.addElement("node", false);
        $cachedDescriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("hm_edge");
        open.field("label", this.label);
        open.field("node", this.node);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
