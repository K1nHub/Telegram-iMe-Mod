package kotlinx.serialization;
/* compiled from: SerialFormat.kt */
/* loaded from: classes4.dex */
public interface StringFormat extends SerialFormat {
    <T> T decodeFromString(DeserializationStrategy<? extends T> deserializationStrategy, String str);

    <T> String encodeToString(SerializationStrategy<? super T> serializationStrategy, T t);
}
