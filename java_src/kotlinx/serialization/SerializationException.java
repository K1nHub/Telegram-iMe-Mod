package kotlinx.serialization;
/* compiled from: SerializationExceptions.kt */
/* loaded from: classes4.dex */
public class SerializationException extends IllegalArgumentException {
    public SerializationException(String str) {
        super(str);
    }

    public SerializationException(String str, Throwable th) {
        super(str, th);
    }
}
