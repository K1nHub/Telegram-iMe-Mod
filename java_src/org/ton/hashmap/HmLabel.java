package org.ton.hashmap;

import java.lang.annotation.Annotation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.bitstring.BitString;
import org.ton.tlb.TlbNegatedCodec;
import org.ton.tlb.TlbObject;
/* compiled from: HmLabel.kt */
@JsonClassDiscriminator(discriminator = "@type")
@Serializable
/* loaded from: classes6.dex */
public interface HmLabel extends TlbObject {
    public static final Companion Companion = Companion.$$INSTANCE;

    BitString toBitString();

    /* compiled from: HmLabel.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final KSerializer<HmLabel> serializer() {
            return new SealedClassSerializer("org.ton.hashmap.HmLabel", Reflection.getOrCreateKotlinClass(HmLabel.class), new KClass[]{Reflection.getOrCreateKotlinClass(HmlLong.class), Reflection.getOrCreateKotlinClass(HmlSame.class), Reflection.getOrCreateKotlinClass(HmlShort.class)}, new KSerializer[]{HmlLong$$serializer.INSTANCE, HmlSame$$serializer.INSTANCE, HmlShort$$serializer.INSTANCE}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.hashmap.HmLabel$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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

        public final TlbNegatedCodec<HmLabel> tlbCodec(int i) {
            if (i < 16) {
                return HashMapLabelTlbCombinator.Companion.getCACHE()[i];
            }
            return new HashMapLabelTlbCombinator(i, null, null, null, 14, null);
        }
    }
}
