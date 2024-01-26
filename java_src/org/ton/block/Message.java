package org.ton.block;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
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
import org.ton.block.Either;
import org.ton.cell.Cell;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.constructor.AnyTlbConstructor;
/* compiled from: Message.kt */
@Serializable
/* loaded from: classes6.dex */
public final class Message<X> implements TlbObject {
    private static final SerialDescriptor $cachedDescriptor;
    private static final KSerializer<Object>[] $childSerializers;
    private static final org.ton.tlb.TlbConstructor<Message<Cell>> Any;
    public static final Companion Companion;
    private final Either<X, CellRef<X>> body;
    private final CommonMsgInfo info;
    private final Maybe<Either<StateInit, CellRef<StateInit>>> init;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Message) {
            Message message = (Message) obj;
            return Intrinsics.areEqual(this.info, message.info) && Intrinsics.areEqual(this.init, message.init) && Intrinsics.areEqual(this.body, message.body);
        }
        return false;
    }

    public int hashCode() {
        return (((this.info.hashCode() * 31) + this.init.hashCode()) * 31) + this.body.hashCode();
    }

    public /* synthetic */ Message(int i, CommonMsgInfo commonMsgInfo, Maybe maybe, Either either, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, $cachedDescriptor);
        }
        this.info = commonMsgInfo;
        this.init = maybe;
        this.body = either;
    }

    public Message(CommonMsgInfo info, Maybe<Either<StateInit, CellRef<StateInit>>> init, Either<X, CellRef<X>> body) {
        Intrinsics.checkNotNullParameter(info, "info");
        Intrinsics.checkNotNullParameter(init, "init");
        Intrinsics.checkNotNullParameter(body, "body");
        this.info = info;
        this.init = init;
        this.body = body;
    }

    public static final /* synthetic */ void write$Self(Message message, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor, KSerializer kSerializer) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, kSerializerArr[0], message.info);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], message.init);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, kSerializerArr[2], message.body);
    }

    public final CommonMsgInfo getInfo() {
        return this.info;
    }

    public final Maybe<Either<StateInit, CellRef<StateInit>>> getInit() {
        return this.init;
    }

    public final Either<X, CellRef<X>> getBody() {
        return this.body;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: Message.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final <T0> KSerializer<Message<T0>> serializer(KSerializer<T0> typeSerial0) {
            Intrinsics.checkNotNullParameter(typeSerial0, "typeSerial0");
            return new Message$$serializer(typeSerial0);
        }

        public final org.ton.tlb.TlbConstructor<Message<Cell>> getAny() {
            return Message.Any;
        }

        public final <X> org.ton.tlb.TlbConstructor<Message<X>> tlbCodec(TlbCodec<X> x) {
            Intrinsics.checkNotNullParameter(x, "x");
            return new MessageTlbConstructor(x);
        }
    }

    static {
        Companion companion = new Companion(null);
        Companion = companion;
        Any = companion.tlbCodec(AnyTlbConstructor.INSTANCE);
        $childSerializers = new KSerializer[]{new SealedClassSerializer("org.ton.block.CommonMsgInfo", Reflection.getOrCreateKotlinClass(CommonMsgInfo.class), new KClass[]{Reflection.getOrCreateKotlinClass(ExtInMsgInfo.class), Reflection.getOrCreateKotlinClass(ExtOutMsgInfo.class), Reflection.getOrCreateKotlinClass(IntMsgInfo.class)}, new KSerializer[]{ExtInMsgInfo$$serializer.INSTANCE, ExtOutMsgInfo$$serializer.INSTANCE, IntMsgInfo$$serializer.INSTANCE}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.Message$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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
        }}), new SealedClassSerializer("org.ton.block.Maybe", Reflection.getOrCreateKotlinClass(Maybe.class), new KClass[]{Reflection.getOrCreateKotlinClass(Just.class), Reflection.getOrCreateKotlinClass(Nothing.class)}, new KSerializer[]{Just.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), Nothing.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.Message$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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
        }}), new SealedClassSerializer("org.ton.block.Either", Reflection.getOrCreateKotlinClass(Either.class), new KClass[]{Reflection.getOrCreateKotlinClass(Either.Left.class), Reflection.getOrCreateKotlinClass(Either.Right.class)}, new KSerializer[]{Either.Left.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), Either.Right.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.Message$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.ton.block.Message", null, 3);
        pluginGeneratedSerialDescriptor.addElement("info", false);
        pluginGeneratedSerialDescriptor.addElement("init", false);
        pluginGeneratedSerialDescriptor.addElement(TtmlNode.TAG_BODY, false);
        $cachedDescriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("message");
        open.field("info", this.info);
        open.field("init", this.init);
        open.field(TtmlNode.TAG_BODY, this.body);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
