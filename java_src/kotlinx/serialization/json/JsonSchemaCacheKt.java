package kotlinx.serialization.json;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.DescriptorSchemaCache;
/* compiled from: JsonSchemaCache.kt */
/* loaded from: classes4.dex */
public final class JsonSchemaCacheKt {
    public static final DescriptorSchemaCache getSchemaCache(Json json) {
        Intrinsics.checkNotNullParameter(json, "<this>");
        return json.get_schemaCache$kotlinx_serialization_json();
    }
}
