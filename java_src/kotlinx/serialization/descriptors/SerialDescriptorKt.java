package kotlinx.serialization.descriptors;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: SerialDescriptor.kt */
/* loaded from: classes4.dex */
public final class SerialDescriptorKt {
    public static final Iterable<SerialDescriptor> getElementDescriptors(SerialDescriptor serialDescriptor) {
        Intrinsics.checkNotNullParameter(serialDescriptor, "<this>");
        return new SerialDescriptorKt$special$$inlined$Iterable$1(serialDescriptor);
    }

    public static final Iterable<String> getElementNames(SerialDescriptor serialDescriptor) {
        Intrinsics.checkNotNullParameter(serialDescriptor, "<this>");
        return new SerialDescriptorKt$special$$inlined$Iterable$2(serialDescriptor);
    }
}
