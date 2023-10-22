package kotlin.reflect.jvm.internal.impl.name;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
/* compiled from: NameUtils.kt */
/* loaded from: classes4.dex */
public final class NameUtils {
    private static final Regex SANITIZE_AS_JAVA_INVALID_CHARACTERS;

    private NameUtils() {
    }

    static {
        new NameUtils();
        SANITIZE_AS_JAVA_INVALID_CHARACTERS = new Regex("[^\\p{L}\\p{Digit}]");
    }

    public static final String sanitizeAsJavaIdentifier(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return SANITIZE_AS_JAVA_INVALID_CHARACTERS.replace(name, "_");
    }

    public static final Name contextReceiverName(int i) {
        Name identifier = Name.identifier("_context_receiver_" + i);
        Intrinsics.checkNotNullExpressionValue(identifier, "identifier(\"_context_receiver_$index\")");
        return identifier;
    }
}
