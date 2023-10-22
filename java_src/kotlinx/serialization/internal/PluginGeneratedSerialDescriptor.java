package kotlinx.serialization.internal;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;
/* compiled from: PluginGeneratedSerialDescriptor.kt */
/* loaded from: classes4.dex */
public class PluginGeneratedSerialDescriptor implements SerialDescriptor, CachedNames {
    private final Lazy _hashCode$delegate;
    private int added;
    private final Lazy childSerializers$delegate;
    private List<Annotation> classAnnotations;
    private final int elementsCount;
    private final boolean[] elementsOptionality;
    private final GeneratedSerializer<?> generatedSerializer;
    private Map<String, Integer> indices;
    private final String[] names;
    private final List<Annotation>[] propertiesAnnotations;
    private final String serialName;
    private final Lazy typeParameterDescriptors$delegate;

    public PluginGeneratedSerialDescriptor(String serialName, GeneratedSerializer<?> generatedSerializer, int i) {
        Map<String, Integer> emptyMap;
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Intrinsics.checkNotNullParameter(serialName, "serialName");
        this.serialName = serialName;
        this.generatedSerializer = generatedSerializer;
        this.elementsCount = i;
        this.added = -1;
        String[] strArr = new String[i];
        for (int i2 = 0; i2 < i; i2++) {
            strArr[i2] = "[UNINITIALIZED]";
        }
        this.names = strArr;
        int i3 = this.elementsCount;
        this.propertiesAnnotations = new List[i3];
        this.elementsOptionality = new boolean[i3];
        emptyMap = MapsKt__MapsKt.emptyMap();
        this.indices = emptyMap;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new Function0<KSerializer<?>[]>() { // from class: kotlinx.serialization.internal.PluginGeneratedSerialDescriptor$childSerializers$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final KSerializer<?>[] invoke() {
                GeneratedSerializer generatedSerializer2;
                KSerializer<?>[] childSerializers;
                generatedSerializer2 = PluginGeneratedSerialDescriptor.this.generatedSerializer;
                return (generatedSerializer2 == null || (childSerializers = generatedSerializer2.childSerializers()) == null) ? PluginHelperInterfacesKt.EMPTY_SERIALIZER_ARRAY : childSerializers;
            }
        });
        this.childSerializers$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new Function0<SerialDescriptor[]>() { // from class: kotlinx.serialization.internal.PluginGeneratedSerialDescriptor$typeParameterDescriptors$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final SerialDescriptor[] invoke() {
                GeneratedSerializer generatedSerializer2;
                ArrayList arrayList;
                KSerializer<?>[] typeParametersSerializers;
                generatedSerializer2 = PluginGeneratedSerialDescriptor.this.generatedSerializer;
                if (generatedSerializer2 == null || (typeParametersSerializers = generatedSerializer2.typeParametersSerializers()) == null) {
                    arrayList = null;
                } else {
                    arrayList = new ArrayList(typeParametersSerializers.length);
                    for (KSerializer<?> kSerializer : typeParametersSerializers) {
                        arrayList.add(kSerializer.getDescriptor());
                    }
                }
                return Platform_commonKt.compactArray(arrayList);
            }
        });
        this.typeParameterDescriptors$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new Function0<Integer>() { // from class: kotlinx.serialization.internal.PluginGeneratedSerialDescriptor$_hashCode$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = PluginGeneratedSerialDescriptor.this;
                return Integer.valueOf(PluginGeneratedSerialDescriptorKt.hashCodeImpl(pluginGeneratedSerialDescriptor, pluginGeneratedSerialDescriptor.getTypeParameterDescriptors$kotlinx_serialization_core()));
            }
        });
        this._hashCode$delegate = lazy3;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isInline() {
        return SerialDescriptor.DefaultImpls.isInline(this);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isNullable() {
        return SerialDescriptor.DefaultImpls.isNullable(this);
    }

    public /* synthetic */ PluginGeneratedSerialDescriptor(String str, GeneratedSerializer generatedSerializer, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : generatedSerializer, i);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public String getSerialName() {
        return this.serialName;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final int getElementsCount() {
        return this.elementsCount;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public SerialKind getKind() {
        return StructureKind.CLASS.INSTANCE;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public List<Annotation> getAnnotations() {
        List<Annotation> emptyList;
        List<Annotation> list = this.classAnnotations;
        if (list == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        return list;
    }

    @Override // kotlinx.serialization.internal.CachedNames
    public Set<String> getSerialNames() {
        return this.indices.keySet();
    }

    private final KSerializer<?>[] getChildSerializers() {
        return (KSerializer[]) this.childSerializers$delegate.getValue();
    }

    public final SerialDescriptor[] getTypeParameterDescriptors$kotlinx_serialization_core() {
        return (SerialDescriptor[]) this.typeParameterDescriptors$delegate.getValue();
    }

    private final int get_hashCode() {
        return ((Number) this._hashCode$delegate.getValue()).intValue();
    }

    public static /* synthetic */ void addElement$default(PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor, String str, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addElement");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        pluginGeneratedSerialDescriptor.addElement(str, z);
    }

    public final void addElement(String name, boolean z) {
        Intrinsics.checkNotNullParameter(name, "name");
        String[] strArr = this.names;
        int i = this.added + 1;
        this.added = i;
        strArr[i] = name;
        this.elementsOptionality[i] = z;
        this.propertiesAnnotations[i] = null;
        if (i == this.elementsCount - 1) {
            this.indices = buildIndices();
        }
    }

    public final void pushAnnotation(Annotation annotation) {
        Intrinsics.checkNotNullParameter(annotation, "annotation");
        List<Annotation> list = this.propertiesAnnotations[this.added];
        if (list == null) {
            list = new ArrayList<>(1);
            this.propertiesAnnotations[this.added] = list;
        }
        list.add(annotation);
    }

    public final void pushClassAnnotation(Annotation a) {
        Intrinsics.checkNotNullParameter(a, "a");
        if (this.classAnnotations == null) {
            this.classAnnotations = new ArrayList(1);
        }
        List<Annotation> list = this.classAnnotations;
        Intrinsics.checkNotNull(list);
        list.add(a);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public SerialDescriptor getElementDescriptor(int i) {
        return getChildSerializers()[i].getDescriptor();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isElementOptional(int i) {
        return this.elementsOptionality[i];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public List<Annotation> getElementAnnotations(int i) {
        List<Annotation> emptyList;
        List<Annotation> list = this.propertiesAnnotations[i];
        if (list == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        return list;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public String getElementName(int i) {
        return this.names[i];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int getElementIndex(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        Integer num = this.indices.get(name);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    private final Map<String, Integer> buildIndices() {
        HashMap hashMap = new HashMap();
        int length = this.names.length;
        for (int i = 0; i < length; i++) {
            hashMap.put(this.names[i], Integer.valueOf(i));
        }
        return hashMap;
    }

    public int hashCode() {
        return get_hashCode();
    }

    public String toString() {
        IntRange until;
        String joinToString$default;
        until = RangesKt___RangesKt.until(0, this.elementsCount);
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(until, ", ", getSerialName() + '(', ")", 0, null, new Function1<Integer, CharSequence>() { // from class: kotlinx.serialization.internal.PluginGeneratedSerialDescriptor$toString$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ CharSequence invoke(Integer num) {
                return invoke(num.intValue());
            }

            public final CharSequence invoke(int i) {
                return PluginGeneratedSerialDescriptor.this.getElementName(i) + ": " + PluginGeneratedSerialDescriptor.this.getElementDescriptor(i).getSerialName();
            }
        }, 24, null);
        return joinToString$default;
    }

    public boolean equals(Object obj) {
        int i;
        if (this == obj) {
            return true;
        }
        if (obj instanceof PluginGeneratedSerialDescriptor) {
            SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
            if (Intrinsics.areEqual(getSerialName(), serialDescriptor.getSerialName()) && Arrays.equals(getTypeParameterDescriptors$kotlinx_serialization_core(), ((PluginGeneratedSerialDescriptor) obj).getTypeParameterDescriptors$kotlinx_serialization_core()) && getElementsCount() == serialDescriptor.getElementsCount()) {
                int elementsCount = getElementsCount();
                for (i = 0; i < elementsCount; i = i + 1) {
                    i = (Intrinsics.areEqual(getElementDescriptor(i).getSerialName(), serialDescriptor.getElementDescriptor(i).getSerialName()) && Intrinsics.areEqual(getElementDescriptor(i).getKind(), serialDescriptor.getElementDescriptor(i).getKind())) ? i + 1 : 0;
                }
                return true;
            }
        }
        return false;
    }
}
