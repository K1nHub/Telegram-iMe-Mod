package kotlinx.serialization.json;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.StringFormat;
import kotlinx.serialization.json.internal.DescriptorSchemaCache;
import kotlinx.serialization.json.internal.JsonStreamsKt;
import kotlinx.serialization.json.internal.JsonToStringWriter;
import kotlinx.serialization.json.internal.StreamingJsonDecoder;
import kotlinx.serialization.json.internal.StringJsonLexer;
import kotlinx.serialization.json.internal.WriteMode;
import kotlinx.serialization.modules.SerializersModule;
import kotlinx.serialization.modules.SerializersModuleBuildersKt;
/* compiled from: Json.kt */
/* loaded from: classes4.dex */
public abstract class Json implements StringFormat {
    public static final Default Default = new Default(null);
    private final DescriptorSchemaCache _schemaCache;
    private final JsonConfiguration configuration;
    private final SerializersModule serializersModule;

    public /* synthetic */ Json(JsonConfiguration jsonConfiguration, SerializersModule serializersModule, DefaultConstructorMarker defaultConstructorMarker) {
        this(jsonConfiguration, serializersModule);
    }

    private Json(JsonConfiguration jsonConfiguration, SerializersModule serializersModule) {
        this.configuration = jsonConfiguration;
        this.serializersModule = serializersModule;
        this._schemaCache = new DescriptorSchemaCache();
    }

    public final JsonConfiguration getConfiguration() {
        return this.configuration;
    }

    @Override // kotlinx.serialization.SerialFormat
    public SerializersModule getSerializersModule() {
        return this.serializersModule;
    }

    public final DescriptorSchemaCache get_schemaCache$kotlinx_serialization_json() {
        return this._schemaCache;
    }

    /* compiled from: Json.kt */
    /* loaded from: classes4.dex */
    public static final class Default extends Json {
        public /* synthetic */ Default(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Default() {
            super(new JsonConfiguration(false, false, false, false, false, false, null, false, false, null, false, false, null, 8191, null), SerializersModuleBuildersKt.EmptySerializersModule(), null);
        }
    }

    @Override // kotlinx.serialization.StringFormat
    public final <T> String encodeToString(SerializationStrategy<? super T> serializer, T t) {
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        JsonToStringWriter jsonToStringWriter = new JsonToStringWriter();
        try {
            JsonStreamsKt.encodeByWriter(this, jsonToStringWriter, serializer, t);
            return jsonToStringWriter.toString();
        } finally {
            jsonToStringWriter.release();
        }
    }

    @Override // kotlinx.serialization.StringFormat
    public final <T> T decodeFromString(DeserializationStrategy<? extends T> deserializer, String string) {
        Intrinsics.checkNotNullParameter(deserializer, "deserializer");
        Intrinsics.checkNotNullParameter(string, "string");
        StringJsonLexer stringJsonLexer = new StringJsonLexer(string);
        T t = (T) new StreamingJsonDecoder(this, WriteMode.OBJ, stringJsonLexer, deserializer.getDescriptor(), null).decodeSerializableValue(deserializer);
        stringJsonLexer.expectEof();
        return t;
    }
}
