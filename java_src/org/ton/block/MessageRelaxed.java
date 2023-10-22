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
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* compiled from: MessageRelaxed.kt */
@Serializable
/* loaded from: classes6.dex */
public final class MessageRelaxed<X> implements TlbObject {
    private static final SerialDescriptor $cachedDescriptor;
    private final Either<X, CellRef<X>> body;
    private final CommonMsgInfoRelaxed info;
    private final Maybe<Either<StateInit, CellRef<StateInit>>> init;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new SealedClassSerializer("org.ton.block.CommonMsgInfoRelaxed", Reflection.getOrCreateKotlinClass(CommonMsgInfoRelaxed.class), new KClass[0], new KSerializer[0], new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.MessageRelaxed$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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
    }}), new SealedClassSerializer("org.ton.block.Maybe", Reflection.getOrCreateKotlinClass(Maybe.class), new KClass[]{Reflection.getOrCreateKotlinClass(Just.class), Reflection.getOrCreateKotlinClass(Nothing.class)}, new KSerializer[]{Just.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), Nothing.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.MessageRelaxed$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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
    }}), new SealedClassSerializer("org.ton.block.Either", Reflection.getOrCreateKotlinClass(Either.class), new KClass[]{Reflection.getOrCreateKotlinClass(Either.Left.class), Reflection.getOrCreateKotlinClass(Either.Right.class)}, new KSerializer[]{Either.Left.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), Either.Right.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.MessageRelaxed$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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
        if (obj instanceof MessageRelaxed) {
            MessageRelaxed messageRelaxed = (MessageRelaxed) obj;
            return Intrinsics.areEqual(this.info, messageRelaxed.info) && Intrinsics.areEqual(this.init, messageRelaxed.init) && Intrinsics.areEqual(this.body, messageRelaxed.body);
        }
        return false;
    }

    public int hashCode() {
        return (((this.info.hashCode() * 31) + this.init.hashCode()) * 31) + this.body.hashCode();
    }

    public /* synthetic */ MessageRelaxed(int i, CommonMsgInfoRelaxed commonMsgInfoRelaxed, Maybe maybe, Either either, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, $cachedDescriptor);
        }
        this.info = commonMsgInfoRelaxed;
        this.init = maybe;
        this.body = either;
    }

    public MessageRelaxed(CommonMsgInfoRelaxed info, Maybe<Either<StateInit, CellRef<StateInit>>> init, Either<X, CellRef<X>> body) {
        Intrinsics.checkNotNullParameter(info, "info");
        Intrinsics.checkNotNullParameter(init, "init");
        Intrinsics.checkNotNullParameter(body, "body");
        this.info = info;
        this.init = init;
        this.body = body;
    }

    public static final /* synthetic */ void write$Self(MessageRelaxed messageRelaxed, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor, KSerializer kSerializer) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, kSerializerArr[0], messageRelaxed.info);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], messageRelaxed.init);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, kSerializerArr[2], messageRelaxed.body);
    }

    public final CommonMsgInfoRelaxed getInfo() {
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

    /* compiled from: MessageRelaxed.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final <T0> KSerializer<MessageRelaxed<T0>> serializer(KSerializer<T0> typeSerial0) {
            Intrinsics.checkNotNullParameter(typeSerial0, "typeSerial0");
            return new MessageRelaxed$$serializer(typeSerial0);
        }

        public final <X> org.ton.tlb.TlbConstructor<MessageRelaxed<X>> tlbCodec(TlbCodec<X> x) {
            Intrinsics.checkNotNullParameter(x, "x");
            return new MessageRelaxedTlbConstructor(x);
        }
    }

    static {
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.ton.block.MessageRelaxed", null, 3);
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
