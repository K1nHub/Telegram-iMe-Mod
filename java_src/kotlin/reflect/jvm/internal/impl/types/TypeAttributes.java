package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.util.ArrayMap;
import kotlin.reflect.jvm.internal.impl.util.AttributeArrayOwner;
import kotlin.reflect.jvm.internal.impl.util.TypeRegistry;
import kotlin.reflect.jvm.internal.impl.utils.CollectionsKt;
import p033j$.util.concurrent.ConcurrentHashMap;
/* compiled from: TypeAttributes.kt */
/* loaded from: classes4.dex */
public final class TypeAttributes extends AttributeArrayOwner<TypeAttribute<?>, TypeAttribute<?>> {
    public static final Companion Companion = new Companion(null);
    private static final TypeAttributes Empty;

    public /* synthetic */ TypeAttributes(List list, DefaultConstructorMarker defaultConstructorMarker) {
        this(list);
    }

    private TypeAttributes(List<? extends TypeAttribute<?>> list) {
        for (TypeAttribute<?> typeAttribute : list) {
            registerComponent(typeAttribute.getKey(), typeAttribute);
        }
    }

    /* compiled from: TypeAttributes.kt */
    /* loaded from: classes4.dex */
    public static final class Companion extends TypeRegistry<TypeAttribute<?>, TypeAttribute<?>> {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.util.TypeRegistry
        public int customComputeIfAbsent(ConcurrentHashMap<String, Integer> concurrentHashMap, String key, Function1<? super String, Integer> compute) {
            int intValue;
            Intrinsics.checkNotNullParameter(concurrentHashMap, "<this>");
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(compute, "compute");
            Integer num = concurrentHashMap.get(key);
            if (num == null) {
                synchronized (concurrentHashMap) {
                    Integer num2 = concurrentHashMap.get(key);
                    if (num2 == null) {
                        Integer invoke = compute.invoke(key);
                        concurrentHashMap.putIfAbsent(key, Integer.valueOf(invoke.intValue()));
                        num2 = invoke;
                    }
                    Intrinsics.checkNotNullExpressionValue(num2, "this[key] ?: compute(key…is.putIfAbsent(key, it) }");
                    intValue = num2.intValue();
                }
                return intValue;
            }
            return num.intValue();
        }

        public final TypeAttributes getEmpty() {
            return TypeAttributes.Empty;
        }

        public final TypeAttributes create(List<? extends TypeAttribute<?>> attributes) {
            Intrinsics.checkNotNullParameter(attributes, "attributes");
            if (attributes.isEmpty()) {
                return getEmpty();
            }
            return new TypeAttributes(attributes, null);
        }
    }

    static {
        List emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Empty = new TypeAttributes(emptyList);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private TypeAttributes(kotlin.reflect.jvm.internal.impl.types.TypeAttribute<?> r1) {
        /*
            r0 = this;
            java.util.List r1 = kotlin.collections.CollectionsKt.listOf(r1)
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.TypeAttributes.<init>(kotlin.reflect.jvm.internal.impl.types.TypeAttribute):void");
    }

    public final boolean contains(TypeAttribute<?> attribute) {
        Intrinsics.checkNotNullParameter(attribute, "attribute");
        return getArrayMap().get(Companion.getId(attribute.getKey())) != null;
    }

    public final TypeAttributes plus(TypeAttribute<?> attribute) {
        List list;
        List<? extends TypeAttribute<?>> plus;
        Intrinsics.checkNotNullParameter(attribute, "attribute");
        if (contains(attribute)) {
            return this;
        }
        if (isEmpty()) {
            return new TypeAttributes(attribute);
        }
        list = CollectionsKt___CollectionsKt.toList(this);
        plus = CollectionsKt___CollectionsKt.plus((Collection<? extends Object>) ((Collection) list), (Object) attribute);
        return Companion.create(plus);
    }

    public final TypeAttributes remove(TypeAttribute<?> attribute) {
        Intrinsics.checkNotNullParameter(attribute, "attribute");
        if (isEmpty()) {
            return this;
        }
        ArrayMap<TypeAttribute<?>> arrayMap = getArrayMap();
        ArrayList arrayList = new ArrayList();
        for (TypeAttribute<?> typeAttribute : arrayMap) {
            if (!Intrinsics.areEqual(typeAttribute, attribute)) {
                arrayList.add(typeAttribute);
            }
        }
        return arrayList.size() == getArrayMap().getSize() ? this : Companion.create(arrayList);
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.AbstractArrayMapOwner
    protected TypeRegistry<TypeAttribute<?>, TypeAttribute<?>> getTypeRegistry() {
        return Companion;
    }

    public final TypeAttributes intersect(TypeAttributes other) {
        Object intersect;
        Intrinsics.checkNotNullParameter(other, "other");
        if (isEmpty() && other.isEmpty()) {
            return this;
        }
        ArrayList arrayList = new ArrayList();
        for (Number number : Companion.getIndices()) {
            int intValue = number.intValue();
            TypeAttribute<?> typeAttribute = getArrayMap().get(intValue);
            TypeAttribute<?> typeAttribute2 = other.getArrayMap().get(intValue);
            if (typeAttribute == null) {
                intersect = typeAttribute2 != null ? typeAttribute2.intersect(typeAttribute) : null;
            } else {
                intersect = typeAttribute.intersect(typeAttribute2);
            }
            CollectionsKt.addIfNotNull(arrayList, intersect);
        }
        return Companion.create(arrayList);
    }

    public final TypeAttributes add(TypeAttributes other) {
        Object add;
        Intrinsics.checkNotNullParameter(other, "other");
        if (isEmpty() && other.isEmpty()) {
            return this;
        }
        ArrayList arrayList = new ArrayList();
        for (Number number : Companion.getIndices()) {
            int intValue = number.intValue();
            TypeAttribute<?> typeAttribute = getArrayMap().get(intValue);
            TypeAttribute<?> typeAttribute2 = other.getArrayMap().get(intValue);
            if (typeAttribute == null) {
                add = typeAttribute2 != null ? typeAttribute2.add(typeAttribute) : null;
            } else {
                add = typeAttribute.add(typeAttribute2);
            }
            CollectionsKt.addIfNotNull(arrayList, add);
        }
        return Companion.create(arrayList);
    }
}
