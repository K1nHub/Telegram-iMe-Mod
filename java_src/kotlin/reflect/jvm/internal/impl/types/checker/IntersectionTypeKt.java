package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.ArrayList;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.types.DynamicTypesKt;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.FlexibleTypesKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
/* compiled from: IntersectionType.kt */
/* loaded from: classes4.dex */
public final class IntersectionTypeKt {
    public static final UnwrappedType intersectTypes(List<? extends UnwrappedType> types) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        SimpleType lowerBound;
        Intrinsics.checkNotNullParameter(types, "types");
        int size = types.size();
        if (size != 0) {
            if (size != 1) {
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(types, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                boolean z = false;
                boolean z2 = false;
                for (UnwrappedType unwrappedType : types) {
                    z = z || KotlinTypeKt.isError(unwrappedType);
                    if (unwrappedType instanceof SimpleType) {
                        lowerBound = (SimpleType) unwrappedType;
                    } else if (!(unwrappedType instanceof FlexibleType)) {
                        throw new NoWhenBranchMatchedException();
                    } else {
                        if (DynamicTypesKt.isDynamic(unwrappedType)) {
                            return unwrappedType;
                        }
                        lowerBound = ((FlexibleType) unwrappedType).getLowerBound();
                        z2 = true;
                    }
                    arrayList.add(lowerBound);
                }
                if (z) {
                    return ErrorUtils.createErrorType(ErrorTypeKind.INTERSECTION_OF_ERROR_TYPES, types.toString());
                }
                if (z2) {
                    collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(types, 10);
                    ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
                    for (UnwrappedType unwrappedType2 : types) {
                        arrayList2.add(FlexibleTypesKt.upperIfFlexible(unwrappedType2));
                    }
                    TypeIntersector typeIntersector = TypeIntersector.INSTANCE;
                    return KotlinTypeFactory.flexibleType(typeIntersector.intersectTypes$descriptors(arrayList), typeIntersector.intersectTypes$descriptors(arrayList2));
                }
                return TypeIntersector.INSTANCE.intersectTypes$descriptors(arrayList);
            }
            return (UnwrappedType) CollectionsKt.single((List<? extends Object>) types);
        }
        throw new IllegalStateException("Expected some types".toString());
    }
}
