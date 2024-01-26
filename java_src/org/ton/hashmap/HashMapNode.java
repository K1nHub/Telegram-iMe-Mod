package org.ton.hashmap;

import java.lang.annotation.Annotation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbObject;
/* compiled from: HashMapNode.kt */
@JsonClassDiscriminator(discriminator = "@type")
@Serializable
/* loaded from: classes6.dex */
public interface HashMapNode<T> extends TlbObject {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: HashMapNode.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final <T0> KSerializer<HashMapNode<T0>> serializer(KSerializer<T0> typeSerial0) {
            Intrinsics.checkNotNullParameter(typeSerial0, "typeSerial0");
            return new SealedClassSerializer("org.ton.hashmap.HashMapNode", Reflection.getOrCreateKotlinClass(HashMapNode.class), new KClass[]{Reflection.getOrCreateKotlinClass(HmnFork.class), Reflection.getOrCreateKotlinClass(HmnLeaf.class)}, new KSerializer[]{new HmnFork$$serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), new HmnLeaf$$serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.hashmap.HashMapNode$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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
            }});
        }

        public final <X> TlbCodec<HashMapNode<X>> tlbCodec(int i, TlbCodec<X> x) {
            TlbCodec<HmnLeaf<T>> tlbCodec;
            Intrinsics.checkNotNullParameter(x, "x");
            if (i == 0) {
                tlbCodec = HmnLeaf.Companion.tlbCodec(x);
            } else {
                tlbCodec = HmnFork.Companion.tlbCodec(i, x);
            }
            Intrinsics.checkNotNull(tlbCodec, "null cannot be cast to non-null type org.ton.tlb.TlbCodec<org.ton.hashmap.HashMapNode<X of org.ton.hashmap.HashMapNode.Companion.tlbCodec>>");
            return tlbCodec;
        }
    }
}
