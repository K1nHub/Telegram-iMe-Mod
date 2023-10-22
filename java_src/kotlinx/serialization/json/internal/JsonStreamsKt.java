package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonEncoder;
/* compiled from: JsonStreams.kt */
/* loaded from: classes4.dex */
public final class JsonStreamsKt {
    public static final <T> void encodeByWriter(Json json, JsonWriter writer, SerializationStrategy<? super T> serializer, T t) {
        Intrinsics.checkNotNullParameter(json, "<this>");
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        new StreamingJsonEncoder(writer, json, WriteMode.OBJ, new JsonEncoder[WriteMode.values().length]).encodeSerializableValue(serializer, t);
    }
}
