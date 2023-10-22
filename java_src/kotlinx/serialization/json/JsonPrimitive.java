package kotlinx.serialization.json;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
/* compiled from: JsonElement.kt */
@Serializable(with = JsonPrimitiveSerializer.class)
/* loaded from: classes4.dex */
public abstract class JsonPrimitive extends JsonElement {
    public static final Companion Companion = new Companion(null);

    public /* synthetic */ JsonPrimitive(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract String getContent();

    /* compiled from: JsonElement.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<JsonPrimitive> serializer() {
            return JsonPrimitiveSerializer.INSTANCE;
        }
    }

    private JsonPrimitive() {
        super(null);
    }

    public String toString() {
        return getContent();
    }
}
