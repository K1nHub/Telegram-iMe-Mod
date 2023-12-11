package org.ton.block;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
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
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* compiled from: Either.kt */
@JsonClassDiscriminator(discriminator = "@type")
@Serializable
/* loaded from: classes6.dex */
public interface Either<X, Y> extends TlbObject {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: Either.kt */
    @Serializable
    /* loaded from: classes6.dex */
    public static final class Left<X, Y> implements Either<X, Y> {
        private static final SerialDescriptor $cachedDescriptor;
        public static final Companion Companion = new Companion(null);
        private final X value;

        /* renamed from: x */
        private final X f2038x;

        /* renamed from: y */
        private final Y f2039y;

        /* compiled from: Either.kt */
        /* loaded from: classes6.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final <T0, T1> KSerializer<Left<T0, T1>> serializer(KSerializer<T0> typeSerial0, KSerializer<T1> typeSerial1) {
                Intrinsics.checkNotNullParameter(typeSerial0, "typeSerial0");
                Intrinsics.checkNotNullParameter(typeSerial1, "typeSerial1");
                return new Either$Left$$serializer(typeSerial0, typeSerial1);
            }
        }

        static {
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor(TtmlNode.LEFT, null, 3);
            pluginGeneratedSerialDescriptor.addElement(AppMeasurementSdk.ConditionalUserProperty.VALUE, false);
            pluginGeneratedSerialDescriptor.addElement("x", true);
            pluginGeneratedSerialDescriptor.addElement("y", true);
            $cachedDescriptor = pluginGeneratedSerialDescriptor;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public /* synthetic */ Left(int i, Object obj, Object obj2, Object obj3, SerializationConstructorMarker serializationConstructorMarker) {
            if (1 != (i & 1)) {
                PluginExceptionsKt.throwMissingFieldException(i, 1, $cachedDescriptor);
            }
            this.value = obj;
            if ((i & 2) == 0) {
                this.f2038x = obj;
            } else {
                this.f2038x = obj2;
            }
            if ((i & 4) == 0) {
                this.f2039y = null;
            } else {
                this.f2039y = obj3;
            }
        }

        public Left(X x) {
            this.value = x;
            this.f2038x = x;
        }

        public static final /* synthetic */ void write$Self(Left left, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor, KSerializer kSerializer, KSerializer kSerializer2) {
            compositeEncoder.encodeSerializableElement(serialDescriptor, 0, kSerializer, left.value);
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 1) || !Intrinsics.areEqual(left.getX(), left.value)) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 1, kSerializer, left.getX());
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 2) || left.getY() != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 2, kSerializer2, left.getY());
            }
        }

        public final X getValue() {
            return this.value;
        }

        public X getX() {
            return this.f2038x;
        }

        public Y getY() {
            return this.f2039y;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Left) && Intrinsics.areEqual(this.value, ((Left) obj).value);
        }

        public int hashCode() {
            X x = this.value;
            if (x != null) {
                return x.hashCode();
            }
            return 0;
        }

        public String toString() {
            return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
        }

        @Override // org.ton.tlb.TlbObject
        public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
            Intrinsics.checkNotNullParameter(printer, "printer");
            TlbPrettyPrinter open = printer.open(TtmlNode.LEFT);
            open.field(AppMeasurementSdk.ConditionalUserProperty.VALUE, this.value);
            TlbPrettyPrinter.close$default(open, null, 1, null);
            return printer;
        }
    }

    /* compiled from: Either.kt */
    @Serializable
    /* loaded from: classes6.dex */
    public static final class Right<X, Y> implements Either<X, Y> {
        private static final SerialDescriptor $cachedDescriptor;
        public static final Companion Companion = new Companion(null);
        private final Y value;

        /* renamed from: x */
        private final X f2040x;

        /* renamed from: y */
        private final Y f2041y;

        /* compiled from: Either.kt */
        /* loaded from: classes6.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final <T0, T1> KSerializer<Right<T0, T1>> serializer(KSerializer<T0> typeSerial0, KSerializer<T1> typeSerial1) {
                Intrinsics.checkNotNullParameter(typeSerial0, "typeSerial0");
                Intrinsics.checkNotNullParameter(typeSerial1, "typeSerial1");
                return new Either$Right$$serializer(typeSerial0, typeSerial1);
            }
        }

        static {
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor(TtmlNode.RIGHT, null, 3);
            pluginGeneratedSerialDescriptor.addElement(AppMeasurementSdk.ConditionalUserProperty.VALUE, false);
            pluginGeneratedSerialDescriptor.addElement("x", true);
            pluginGeneratedSerialDescriptor.addElement("y", true);
            $cachedDescriptor = pluginGeneratedSerialDescriptor;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public /* synthetic */ Right(int i, Object obj, Object obj2, Object obj3, SerializationConstructorMarker serializationConstructorMarker) {
            if (1 != (i & 1)) {
                PluginExceptionsKt.throwMissingFieldException(i, 1, $cachedDescriptor);
            }
            this.value = obj;
            this.f2040x = (X) ((i & 2) == 0 ? (X) null : obj2);
            if ((i & 4) == 0) {
                this.f2041y = obj;
            } else {
                this.f2041y = obj3;
            }
        }

        public Right(Y y) {
            this.value = y;
            this.f2041y = y;
        }

        public static final /* synthetic */ void write$Self(Right right, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor, KSerializer kSerializer, KSerializer kSerializer2) {
            compositeEncoder.encodeSerializableElement(serialDescriptor, 0, kSerializer2, right.value);
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 1) || right.getX() != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 1, kSerializer, right.getX());
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 2) || !Intrinsics.areEqual(right.getY(), right.value)) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 2, kSerializer2, right.getY());
            }
        }

        public final Y getValue() {
            return this.value;
        }

        public X getX() {
            return this.f2040x;
        }

        public Y getY() {
            return this.f2041y;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Right) && Intrinsics.areEqual(this.value, ((Right) obj).value);
        }

        public int hashCode() {
            Y y = this.value;
            if (y != null) {
                return y.hashCode();
            }
            return 0;
        }

        public String toString() {
            return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
        }

        @Override // org.ton.tlb.TlbObject
        public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
            Intrinsics.checkNotNullParameter(printer, "printer");
            TlbPrettyPrinter open = printer.open(TtmlNode.RIGHT);
            open.field(AppMeasurementSdk.ConditionalUserProperty.VALUE, this.value);
            TlbPrettyPrinter.close$default(open, null, 1, null);
            return printer;
        }
    }

    /* compiled from: Either.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final <T0, T1> KSerializer<Either<T0, T1>> serializer(KSerializer<T0> typeSerial0, KSerializer<T1> typeSerial1) {
            Intrinsics.checkNotNullParameter(typeSerial0, "typeSerial0");
            Intrinsics.checkNotNullParameter(typeSerial1, "typeSerial1");
            return new SealedClassSerializer("org.ton.block.Either", Reflection.getOrCreateKotlinClass(Either.class), new KClass[]{Reflection.getOrCreateKotlinClass(Left.class), Reflection.getOrCreateKotlinClass(Right.class)}, new KSerializer[]{new Either$Left$$serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), new Either$Right$$serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new C7549x9f9cbbcf("@type")});
        }

        /* renamed from: of */
        public final <X, Y> Either<X, Y> m38of(X x, Y y) {
            if (x != null) {
                return new Left(x);
            }
            if (y != null) {
                return new Right(y);
            }
            throw new IllegalArgumentException("first & second == null; At least one element must be non-null");
        }

        public final <X, Y> TlbCodec<Either<X, Y>> tlbCodec(TlbCodec<X> x, TlbCodec<Y> y) {
            Intrinsics.checkNotNullParameter(x, "x");
            Intrinsics.checkNotNullParameter(y, "y");
            return new EitherTlbCombinator(x, y, null, null, 12, null);
        }
    }
}
