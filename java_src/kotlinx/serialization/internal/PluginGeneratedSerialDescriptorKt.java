package kotlinx.serialization.internal;

import java.util.Arrays;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorKt;
import kotlinx.serialization.descriptors.SerialKind;
/* compiled from: PluginGeneratedSerialDescriptor.kt */
/* loaded from: classes4.dex */
public final class PluginGeneratedSerialDescriptorKt {
    public static final int hashCodeImpl(SerialDescriptor serialDescriptor, SerialDescriptor[] typeParams) {
        Intrinsics.checkNotNullParameter(serialDescriptor, "<this>");
        Intrinsics.checkNotNullParameter(typeParams, "typeParams");
        int hashCode = (serialDescriptor.getSerialName().hashCode() * 31) + Arrays.hashCode(typeParams);
        Iterable<SerialDescriptor> elementDescriptors = SerialDescriptorKt.getElementDescriptors(serialDescriptor);
        Iterator<SerialDescriptor> it = elementDescriptors.iterator();
        int i = 1;
        int i2 = 1;
        while (true) {
            int i3 = 0;
            if (!it.hasNext()) {
                break;
            }
            int i4 = i2 * 31;
            String serialName = it.next().getSerialName();
            if (serialName != null) {
                i3 = serialName.hashCode();
            }
            i2 = i4 + i3;
        }
        for (SerialDescriptor serialDescriptor2 : elementDescriptors) {
            int i5 = i * 31;
            SerialKind kind = serialDescriptor2.getKind();
            i = i5 + (kind != null ? kind.hashCode() : 0);
        }
        return (((hashCode * 31) + i2) * 31) + i;
    }
}
