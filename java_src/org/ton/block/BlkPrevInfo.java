package org.ton.block;

import java.lang.annotation.Annotation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbObject;
/* compiled from: BlkPrevInfo.kt */
@JsonClassDiscriminator(discriminator = "@type")
@Serializable
/* loaded from: classes6.dex */
public interface BlkPrevInfo extends TlbObject {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: BlkPrevInfo.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final KSerializer<BlkPrevInfo> serializer() {
            return new SealedClassSerializer("org.ton.block.BlkPrevInfo", Reflection.getOrCreateKotlinClass(BlkPrevInfo.class), new KClass[]{Reflection.getOrCreateKotlinClass(PrevBlkInfo.class), Reflection.getOrCreateKotlinClass(PrevBlksInfo.class)}, new KSerializer[]{PrevBlkInfo$$serializer.INSTANCE, PrevBlksInfo$$serializer.INSTANCE}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.BlkPrevInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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

        public final TlbCodec<BlkPrevInfo> tlbCodec(boolean z) {
            TlbCodec<BlkPrevInfo> tlbCodec = z ? PrevBlksInfo.Companion : PrevBlkInfo.Companion;
            Intrinsics.checkNotNull(tlbCodec, "null cannot be cast to non-null type org.ton.tlb.TlbCodec<org.ton.block.BlkPrevInfo>");
            return tlbCodec;
        }

        public final TlbCodec<BlkPrevInfo> tlbCodec(int i) {
            return tlbCodec(i != 0);
        }
    }
}
