package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.Json;
/* compiled from: Composers.kt */
/* loaded from: classes4.dex */
public final class ComposersKt {
    public static final Composer Composer(JsonWriter sb, Json json) {
        Intrinsics.checkNotNullParameter(sb, "sb");
        Intrinsics.checkNotNullParameter(json, "json");
        return json.getConfiguration().getPrettyPrint() ? new ComposerWithPrettyPrint(sb, json) : new Composer(sb);
    }
}
