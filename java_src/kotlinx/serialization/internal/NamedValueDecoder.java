package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
/* compiled from: Tagged.kt */
/* loaded from: classes4.dex */
public abstract class NamedValueDecoder extends TaggedDecoder<String> {
    protected abstract String composeName(String str, String str2);

    protected abstract String elementName(SerialDescriptor serialDescriptor, int i);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedDecoder
    public final String getTag(SerialDescriptor serialDescriptor, int i) {
        Intrinsics.checkNotNullParameter(serialDescriptor, "<this>");
        return nested(elementName(serialDescriptor, i));
    }

    protected final String nested(String nestedName) {
        Intrinsics.checkNotNullParameter(nestedName, "nestedName");
        String currentTagOrNull = getCurrentTagOrNull();
        if (currentTagOrNull == null) {
            currentTagOrNull = "";
        }
        return composeName(currentTagOrNull, nestedName);
    }
}
