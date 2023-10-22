package kotlinx.serialization.descriptors;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SerialDescriptors.kt */
/* loaded from: classes4.dex */
public final class ClassSerialDescriptorBuilder {
    private List<? extends Annotation> annotations;
    private final List<List<Annotation>> elementAnnotations;
    private final List<SerialDescriptor> elementDescriptors;
    private final List<String> elementNames;
    private final List<Boolean> elementOptionality;
    private final String serialName;
    private final Set<String> uniqueNames;

    public ClassSerialDescriptorBuilder(String serialName) {
        List<? extends Annotation> emptyList;
        Intrinsics.checkNotNullParameter(serialName, "serialName");
        this.serialName = serialName;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.annotations = emptyList;
        this.elementNames = new ArrayList();
        this.uniqueNames = new HashSet();
        this.elementDescriptors = new ArrayList();
        this.elementAnnotations = new ArrayList();
        this.elementOptionality = new ArrayList();
    }

    public final List<Annotation> getAnnotations() {
        return this.annotations;
    }

    public final void setAnnotations(List<? extends Annotation> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.annotations = list;
    }

    public final List<String> getElementNames$kotlinx_serialization_core() {
        return this.elementNames;
    }

    public final List<SerialDescriptor> getElementDescriptors$kotlinx_serialization_core() {
        return this.elementDescriptors;
    }

    public final List<List<Annotation>> getElementAnnotations$kotlinx_serialization_core() {
        return this.elementAnnotations;
    }

    public final List<Boolean> getElementOptionality$kotlinx_serialization_core() {
        return this.elementOptionality;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void element$default(ClassSerialDescriptorBuilder classSerialDescriptorBuilder, String str, SerialDescriptor serialDescriptor, List list, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            list = CollectionsKt__CollectionsKt.emptyList();
        }
        if ((i & 8) != 0) {
            z = false;
        }
        classSerialDescriptorBuilder.element(str, serialDescriptor, list, z);
    }

    public final void element(String elementName, SerialDescriptor descriptor, List<? extends Annotation> annotations, boolean z) {
        Intrinsics.checkNotNullParameter(elementName, "elementName");
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(annotations, "annotations");
        if (!this.uniqueNames.add(elementName)) {
            throw new IllegalArgumentException(("Element with name '" + elementName + "' is already registered in " + this.serialName).toString());
        }
        this.elementNames.add(elementName);
        this.elementDescriptors.add(descriptor);
        this.elementAnnotations.add(annotations);
        this.elementOptionality.add(Boolean.valueOf(z));
    }
}
