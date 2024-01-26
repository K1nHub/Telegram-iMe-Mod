package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
/* compiled from: CompanionObjectMapping.kt */
/* loaded from: classes4.dex */
public final class CompanionObjectMapping {
    public static final CompanionObjectMapping INSTANCE = new CompanionObjectMapping();
    private static final Set<ClassId> classIds;

    private CompanionObjectMapping() {
    }

    public final Set<ClassId> getClassIds() {
        return classIds;
    }

    static {
        int collectionSizeOrDefault;
        List plus;
        List plus2;
        List<FqName> plus3;
        Set<PrimitiveType> set = PrimitiveType.NUMBER_TYPES;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(set, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (PrimitiveType primitiveType : set) {
            arrayList.add(StandardNames.getPrimitiveFqName(primitiveType));
        }
        FqName safe = StandardNames.FqNames.string.toSafe();
        Intrinsics.checkNotNullExpressionValue(safe, "string.toSafe()");
        plus = CollectionsKt___CollectionsKt.plus((Collection<? extends Object>) ((Collection) arrayList), (Object) safe);
        FqName safe2 = StandardNames.FqNames._boolean.toSafe();
        Intrinsics.checkNotNullExpressionValue(safe2, "_boolean.toSafe()");
        plus2 = CollectionsKt___CollectionsKt.plus((Collection<? extends Object>) ((Collection) plus), (Object) safe2);
        FqName safe3 = StandardNames.FqNames._enum.toSafe();
        Intrinsics.checkNotNullExpressionValue(safe3, "_enum.toSafe()");
        plus3 = CollectionsKt___CollectionsKt.plus((Collection<? extends Object>) ((Collection) plus2), (Object) safe3);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (FqName fqName : plus3) {
            linkedHashSet.add(ClassId.topLevel(fqName));
        }
        classIds = linkedHashSet;
    }

    public final Set<ClassId> allClassesWithIntrinsicCompanions() {
        return classIds;
    }
}
