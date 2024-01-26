package kotlin.reflect.jvm.internal.impl.name;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
/* compiled from: StandardClassIds.kt */
/* loaded from: classes4.dex */
public final class StandardClassIds {
    private static final ClassId Array;
    private static final FqName BASE_ANNOTATION_PACKAGE;
    private static final FqName BASE_COLLECTIONS_PACKAGE;
    private static final FqName BASE_COROUTINES_PACKAGE;
    private static final FqName BASE_ENUMS_PACKAGE;
    private static final FqName BASE_INTERNAL_PACKAGE;
    private static final FqName BASE_JVM_PACKAGE;
    private static final FqName BASE_KOTLIN_PACKAGE;
    private static final FqName BASE_RANGES_PACKAGE;
    private static final FqName BASE_REFLECT_PACKAGE;
    private static final ClassId Boolean;
    private static final ClassId Byte;
    private static final ClassId Char;
    private static final ClassId Double;
    private static final ClassId EnumEntries;
    private static final ClassId Float;
    public static final StandardClassIds INSTANCE = new StandardClassIds();
    private static final ClassId Int;
    private static final ClassId KClass;
    private static final ClassId KFunction;
    private static final ClassId Long;
    private static final ClassId Map;
    private static final ClassId MutableList;
    private static final ClassId MutableMap;
    private static final ClassId MutableSet;
    private static final ClassId Short;
    private static final ClassId String;
    private static final ClassId UByte;
    private static final ClassId UInt;
    private static final ClassId ULong;
    private static final ClassId UShort;
    private static final Map<ClassId, ClassId> elementTypeByPrimitiveArrayType;
    private static final Map<ClassId, ClassId> elementTypeByUnsignedArrayType;
    private static final Map<ClassId, ClassId> primitiveArrayTypeByElementType;
    private static final Set<ClassId> primitiveTypes;
    private static final Map<ClassId, ClassId> unsignedArrayTypeByElementType;
    private static final Set<ClassId> unsignedTypes;

    private StandardClassIds() {
    }

    static {
        ClassId baseId;
        ClassId baseId2;
        ClassId baseId3;
        ClassId baseId4;
        ClassId baseId5;
        ClassId baseId6;
        ClassId baseId7;
        ClassId baseId8;
        ClassId baseId9;
        ClassId unsignedId;
        ClassId unsignedId2;
        ClassId unsignedId3;
        ClassId unsignedId4;
        ClassId baseId10;
        ClassId reflectId;
        ClassId reflectId2;
        Set<ClassId> of;
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        Map<ClassId, ClassId> inverseMap;
        Set<ClassId> of2;
        int collectionSizeOrDefault2;
        int mapCapacity2;
        int coerceAtLeast2;
        Map<ClassId, ClassId> inverseMap2;
        Set plus;
        ClassId collectionsId;
        ClassId collectionsId2;
        ClassId collectionsId3;
        ClassId collectionsId4;
        ClassId enumsId;
        ClassId primitiveArrayId;
        ClassId primitiveArrayId2;
        FqName fqName = new FqName("kotlin");
        BASE_KOTLIN_PACKAGE = fqName;
        FqName child = fqName.child(Name.identifier("reflect"));
        Intrinsics.checkNotNullExpressionValue(child, "BASE_KOTLIN_PACKAGE.chil…me.identifier(\"reflect\"))");
        BASE_REFLECT_PACKAGE = child;
        FqName child2 = fqName.child(Name.identifier("collections"));
        Intrinsics.checkNotNullExpressionValue(child2, "BASE_KOTLIN_PACKAGE.chil…dentifier(\"collections\"))");
        BASE_COLLECTIONS_PACKAGE = child2;
        FqName child3 = fqName.child(Name.identifier("ranges"));
        Intrinsics.checkNotNullExpressionValue(child3, "BASE_KOTLIN_PACKAGE.chil…ame.identifier(\"ranges\"))");
        BASE_RANGES_PACKAGE = child3;
        FqName child4 = fqName.child(Name.identifier("jvm"));
        Intrinsics.checkNotNullExpressionValue(child4, "BASE_KOTLIN_PACKAGE.child(Name.identifier(\"jvm\"))");
        BASE_JVM_PACKAGE = child4;
        Intrinsics.checkNotNullExpressionValue(child4.child(Name.identifier("internal")), "BASE_JVM_PACKAGE.child(N…e.identifier(\"internal\"))");
        FqName child5 = fqName.child(Name.identifier("annotation"));
        Intrinsics.checkNotNullExpressionValue(child5, "BASE_KOTLIN_PACKAGE.chil…identifier(\"annotation\"))");
        BASE_ANNOTATION_PACKAGE = child5;
        FqName child6 = fqName.child(Name.identifier("internal"));
        Intrinsics.checkNotNullExpressionValue(child6, "BASE_KOTLIN_PACKAGE.chil…e.identifier(\"internal\"))");
        BASE_INTERNAL_PACKAGE = child6;
        Intrinsics.checkNotNullExpressionValue(child6.child(Name.identifier("ir")), "BASE_INTERNAL_PACKAGE.child(Name.identifier(\"ir\"))");
        FqName child7 = fqName.child(Name.identifier("coroutines"));
        Intrinsics.checkNotNullExpressionValue(child7, "BASE_KOTLIN_PACKAGE.chil…identifier(\"coroutines\"))");
        BASE_COROUTINES_PACKAGE = child7;
        FqName child8 = fqName.child(Name.identifier("enums"));
        Intrinsics.checkNotNullExpressionValue(child8, "BASE_KOTLIN_PACKAGE.chil…Name.identifier(\"enums\"))");
        BASE_ENUMS_PACKAGE = child8;
        SetsKt__SetsKt.setOf((Object[]) new FqName[]{fqName, child2, child3, child5, child, child6, child7});
        StandardClassIdsKt.baseId("Nothing");
        StandardClassIdsKt.baseId("Unit");
        StandardClassIdsKt.baseId("Any");
        StandardClassIdsKt.baseId("Enum");
        StandardClassIdsKt.baseId("Annotation");
        baseId = StandardClassIdsKt.baseId("Array");
        Array = baseId;
        baseId2 = StandardClassIdsKt.baseId("Boolean");
        Boolean = baseId2;
        baseId3 = StandardClassIdsKt.baseId("Char");
        Char = baseId3;
        baseId4 = StandardClassIdsKt.baseId("Byte");
        Byte = baseId4;
        baseId5 = StandardClassIdsKt.baseId("Short");
        Short = baseId5;
        baseId6 = StandardClassIdsKt.baseId("Int");
        Int = baseId6;
        baseId7 = StandardClassIdsKt.baseId("Long");
        Long = baseId7;
        baseId8 = StandardClassIdsKt.baseId("Float");
        Float = baseId8;
        baseId9 = StandardClassIdsKt.baseId("Double");
        Double = baseId9;
        unsignedId = StandardClassIdsKt.unsignedId(baseId4);
        UByte = unsignedId;
        unsignedId2 = StandardClassIdsKt.unsignedId(baseId5);
        UShort = unsignedId2;
        unsignedId3 = StandardClassIdsKt.unsignedId(baseId6);
        UInt = unsignedId3;
        unsignedId4 = StandardClassIdsKt.unsignedId(baseId7);
        ULong = unsignedId4;
        StandardClassIdsKt.baseId("CharSequence");
        baseId10 = StandardClassIdsKt.baseId("String");
        String = baseId10;
        StandardClassIdsKt.baseId("Throwable");
        StandardClassIdsKt.baseId("Cloneable");
        StandardClassIdsKt.reflectId("KProperty");
        StandardClassIdsKt.reflectId("KMutableProperty");
        StandardClassIdsKt.reflectId("KProperty0");
        StandardClassIdsKt.reflectId("KMutableProperty0");
        StandardClassIdsKt.reflectId("KProperty1");
        StandardClassIdsKt.reflectId("KMutableProperty1");
        StandardClassIdsKt.reflectId("KProperty2");
        StandardClassIdsKt.reflectId("KMutableProperty2");
        reflectId = StandardClassIdsKt.reflectId("KFunction");
        KFunction = reflectId;
        reflectId2 = StandardClassIdsKt.reflectId("KClass");
        KClass = reflectId2;
        StandardClassIdsKt.reflectId("KCallable");
        StandardClassIdsKt.baseId("Comparable");
        StandardClassIdsKt.baseId("Number");
        StandardClassIdsKt.baseId("Function");
        of = SetsKt__SetsKt.setOf((Object[]) new ClassId[]{baseId2, baseId3, baseId4, baseId5, baseId6, baseId7, baseId8, baseId9});
        primitiveTypes = of;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(of, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        for (Object obj : of) {
            Name shortClassName = ((ClassId) obj).getShortClassName();
            Intrinsics.checkNotNullExpressionValue(shortClassName, "id.shortClassName");
            primitiveArrayId2 = StandardClassIdsKt.primitiveArrayId(shortClassName);
            linkedHashMap.put(obj, primitiveArrayId2);
        }
        primitiveArrayTypeByElementType = linkedHashMap;
        inverseMap = StandardClassIdsKt.inverseMap(linkedHashMap);
        elementTypeByPrimitiveArrayType = inverseMap;
        of2 = SetsKt__SetsKt.setOf((Object[]) new ClassId[]{UByte, UShort, UInt, ULong});
        unsignedTypes = of2;
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(of2, 10);
        mapCapacity2 = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault2);
        coerceAtLeast2 = RangesKt___RangesKt.coerceAtLeast(mapCapacity2, 16);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(coerceAtLeast2);
        for (Object obj2 : of2) {
            Name shortClassName2 = ((ClassId) obj2).getShortClassName();
            Intrinsics.checkNotNullExpressionValue(shortClassName2, "id.shortClassName");
            primitiveArrayId = StandardClassIdsKt.primitiveArrayId(shortClassName2);
            linkedHashMap2.put(obj2, primitiveArrayId);
        }
        unsignedArrayTypeByElementType = linkedHashMap2;
        inverseMap2 = StandardClassIdsKt.inverseMap(linkedHashMap2);
        elementTypeByUnsignedArrayType = inverseMap2;
        plus = SetsKt___SetsKt.plus((Set) primitiveTypes, (Iterable) unsignedTypes);
        SetsKt___SetsKt.plus(plus, String);
        StandardClassIdsKt.coroutinesId("Continuation");
        StandardClassIdsKt.collectionsId("Iterator");
        StandardClassIdsKt.collectionsId("Iterable");
        StandardClassIdsKt.collectionsId("Collection");
        StandardClassIdsKt.collectionsId("List");
        StandardClassIdsKt.collectionsId("ListIterator");
        StandardClassIdsKt.collectionsId("Set");
        collectionsId = StandardClassIdsKt.collectionsId("Map");
        Map = collectionsId;
        StandardClassIdsKt.collectionsId("MutableIterator");
        StandardClassIdsKt.collectionsId("CharIterator");
        StandardClassIdsKt.collectionsId("MutableIterable");
        StandardClassIdsKt.collectionsId("MutableCollection");
        collectionsId2 = StandardClassIdsKt.collectionsId("MutableList");
        MutableList = collectionsId2;
        StandardClassIdsKt.collectionsId("MutableListIterator");
        collectionsId3 = StandardClassIdsKt.collectionsId("MutableSet");
        MutableSet = collectionsId3;
        collectionsId4 = StandardClassIdsKt.collectionsId("MutableMap");
        MutableMap = collectionsId4;
        Intrinsics.checkNotNullExpressionValue(collectionsId.createNestedClassId(Name.identifier("Entry")), "Map.createNestedClassId(Name.identifier(\"Entry\"))");
        Intrinsics.checkNotNullExpressionValue(collectionsId4.createNestedClassId(Name.identifier("MutableEntry")), "MutableMap.createNestedC…entifier(\"MutableEntry\"))");
        StandardClassIdsKt.baseId("Result");
        StandardClassIdsKt.rangesId("IntRange");
        StandardClassIdsKt.rangesId("LongRange");
        StandardClassIdsKt.rangesId("CharRange");
        StandardClassIdsKt.annotationId("AnnotationRetention");
        StandardClassIdsKt.annotationId("AnnotationTarget");
        enumsId = StandardClassIdsKt.enumsId("EnumEntries");
        EnumEntries = enumsId;
    }

    public final FqName getBASE_KOTLIN_PACKAGE() {
        return BASE_KOTLIN_PACKAGE;
    }

    public final FqName getBASE_REFLECT_PACKAGE() {
        return BASE_REFLECT_PACKAGE;
    }

    public final FqName getBASE_COLLECTIONS_PACKAGE() {
        return BASE_COLLECTIONS_PACKAGE;
    }

    public final FqName getBASE_RANGES_PACKAGE() {
        return BASE_RANGES_PACKAGE;
    }

    public final FqName getBASE_ANNOTATION_PACKAGE() {
        return BASE_ANNOTATION_PACKAGE;
    }

    public final FqName getBASE_COROUTINES_PACKAGE() {
        return BASE_COROUTINES_PACKAGE;
    }

    public final FqName getBASE_ENUMS_PACKAGE() {
        return BASE_ENUMS_PACKAGE;
    }

    public final ClassId getArray() {
        return Array;
    }

    public final ClassId getKFunction() {
        return KFunction;
    }

    public final ClassId getKClass() {
        return KClass;
    }

    public final ClassId getMutableList() {
        return MutableList;
    }

    public final ClassId getMutableSet() {
        return MutableSet;
    }

    public final ClassId getMutableMap() {
        return MutableMap;
    }

    public final ClassId getEnumEntries() {
        return EnumEntries;
    }
}
