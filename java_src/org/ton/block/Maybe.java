package org.ton.block;

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
/* compiled from: Maybe.kt */
@JsonClassDiscriminator(discriminator = "@type")
@Serializable
/* loaded from: classes6.dex */
public interface Maybe<X> extends TlbObject {
    public static final Companion Companion = Companion.$$INSTANCE;

    X getValue();

    /* compiled from: Maybe.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final <T0> KSerializer<Maybe<T0>> serializer(KSerializer<T0> typeSerial0) {
            Intrinsics.checkNotNullParameter(typeSerial0, "typeSerial0");
            return new SealedClassSerializer("org.ton.block.Maybe", Reflection.getOrCreateKotlinClass(Maybe.class), new KClass[]{Reflection.getOrCreateKotlinClass(Just.class), Reflection.getOrCreateKotlinClass(Nothing.class)}, new KSerializer[]{new Just$$serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), new Nothing$$serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new C7755x6b9840d7("@type")});
        }

        /* renamed from: of */
        public final <X> Maybe<X> m37of(X x) {
            return x != null ? new Just(x) : new Nothing();
        }

        public final <X> TlbCodec<Maybe<X>> tlbCodec(TlbCodec<X> x) {
            Intrinsics.checkNotNullParameter(x, "x");
            return new MaybeTlbCombinator(x, null, 2, null);
        }
    }
}
