package kotlinx.serialization.json;

import java.lang.annotation.Annotation;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
/* compiled from: JsonElementSerializers.kt */
/* loaded from: classes4.dex */
public final class JsonObjectSerializer implements KSerializer<JsonObject> {
    public static final JsonObjectSerializer INSTANCE = new JsonObjectSerializer();
    private static final SerialDescriptor descriptor = JsonObjectDescriptor.INSTANCE;

    private JsonObjectSerializer() {
    }

    /* compiled from: JsonElementSerializers.kt */
    /* loaded from: classes4.dex */
    private static final class JsonObjectDescriptor implements SerialDescriptor {
        public static final JsonObjectDescriptor INSTANCE = new JsonObjectDescriptor();
        private static final String serialName = "kotlinx.serialization.json.JsonObject";
        private final /* synthetic */ SerialDescriptor $$delegate_0 = BuiltinSerializersKt.MapSerializer(BuiltinSerializersKt.serializer(StringCompanionObject.INSTANCE), JsonElementSerializer.INSTANCE).getDescriptor();

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public List<Annotation> getAnnotations() {
            return this.$$delegate_0.getAnnotations();
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public List<Annotation> getElementAnnotations(int i) {
            return this.$$delegate_0.getElementAnnotations(i);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public SerialDescriptor getElementDescriptor(int i) {
            return this.$$delegate_0.getElementDescriptor(i);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public int getElementIndex(String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            return this.$$delegate_0.getElementIndex(name);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public String getElementName(int i) {
            return this.$$delegate_0.getElementName(i);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public int getElementsCount() {
            return this.$$delegate_0.getElementsCount();
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public SerialKind getKind() {
            return this.$$delegate_0.getKind();
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public boolean isElementOptional(int i) {
            return this.$$delegate_0.isElementOptional(i);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public boolean isInline() {
            return this.$$delegate_0.isInline();
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public boolean isNullable() {
            return this.$$delegate_0.isNullable();
        }

        private JsonObjectDescriptor() {
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public String getSerialName() {
            return serialName;
        }
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, JsonObject value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        JsonElementSerializersKt.verify(encoder);
        BuiltinSerializersKt.MapSerializer(BuiltinSerializersKt.serializer(StringCompanionObject.INSTANCE), JsonElementSerializer.INSTANCE).serialize(encoder, value);
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public JsonObject deserialize(Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        JsonElementSerializersKt.verify(decoder);
        return new JsonObject((Map) BuiltinSerializersKt.MapSerializer(BuiltinSerializersKt.serializer(StringCompanionObject.INSTANCE), JsonElementSerializer.INSTANCE).deserialize(decoder));
    }
}
