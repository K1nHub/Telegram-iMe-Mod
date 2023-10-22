package kotlinx.serialization.json;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
/* compiled from: JsonElement.kt */
@Serializable(with = JsonNullSerializer.class)
/* loaded from: classes4.dex */
public final class JsonNull extends JsonPrimitive {
    private static final /* synthetic */ Lazy<KSerializer<Object>> $cachedSerializer$delegate;
    public static final JsonNull INSTANCE = new JsonNull();
    private static final String content = "null";

    private final /* synthetic */ Lazy get$cachedSerializer$delegate() {
        return $cachedSerializer$delegate;
    }

    public final KSerializer<JsonNull> serializer() {
        return (KSerializer) get$cachedSerializer$delegate().getValue();
    }

    private JsonNull() {
        super(null);
    }

    static {
        Lazy<KSerializer<Object>> lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0<KSerializer<Object>>() { // from class: kotlinx.serialization.json.JsonNull$$cachedSerializer$delegate$1
            @Override // kotlin.jvm.functions.Function0
            public final KSerializer<Object> invoke() {
                return JsonNullSerializer.INSTANCE;
            }
        });
        $cachedSerializer$delegate = lazy;
    }

    @Override // kotlinx.serialization.json.JsonPrimitive
    public String getContent() {
        return content;
    }
}
