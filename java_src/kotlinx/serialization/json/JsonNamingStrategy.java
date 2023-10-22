package kotlinx.serialization.json;

import kotlinx.serialization.descriptors.SerialDescriptor;
/* compiled from: JsonNamingStrategy.kt */
/* loaded from: classes4.dex */
public interface JsonNamingStrategy {
    String serialNameForJson(SerialDescriptor serialDescriptor, int i, String str);
}
