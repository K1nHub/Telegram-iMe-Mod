package kotlin.reflect.jvm.internal.impl.types.typeUtil;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IndexedValue;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.types.AbstractStubType;
import kotlin.reflect.jvm.internal.impl.types.DefinitelyNotNullType;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.StubTypeForBuilderInference;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributesKt;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutionKt;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.TypeWithEnhancementKt;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorType;
/* compiled from: TypeUtils.kt */
/* loaded from: classes4.dex */
public final class TypeUtilsKt {
    public static final boolean hasTypeParameterRecursiveBounds(TypeParameterDescriptor typeParameter) {
        Intrinsics.checkNotNullParameter(typeParameter, "typeParameter");
        return hasTypeParameterRecursiveBounds$default(typeParameter, null, null, 6, null);
    }

    public static final KotlinBuiltIns getBuiltIns(KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        KotlinBuiltIns builtIns = kotlinType.getConstructor().getBuiltIns();
        Intrinsics.checkNotNullExpressionValue(builtIns, "constructor.builtIns");
        return builtIns;
    }

    public static final KotlinType makeNullable(KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        KotlinType makeNullable = TypeUtils.makeNullable(kotlinType);
        Intrinsics.checkNotNullExpressionValue(makeNullable, "makeNullable(this)");
        return makeNullable;
    }

    public static final KotlinType makeNotNullable(KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        KotlinType makeNotNullable = TypeUtils.makeNotNullable(kotlinType);
        Intrinsics.checkNotNullExpressionValue(makeNotNullable, "makeNotNullable(this)");
        return makeNotNullable;
    }

    public static final boolean isNothing(KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        return KotlinBuiltIns.isNothing(kotlinType);
    }

    public static final boolean isBoolean(KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        return KotlinBuiltIns.isBoolean(kotlinType);
    }

    public static final boolean isTypeParameter(KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        return TypeUtils.isTypeParameter(kotlinType);
    }

    public static final boolean containsTypeParameter(KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        return TypeUtils.contains(kotlinType, new Function1<UnwrappedType, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt$containsTypeParameter$1
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(UnwrappedType unwrappedType) {
                return Boolean.valueOf(TypeUtils.isTypeParameter(unwrappedType));
            }
        });
    }

    public static final boolean isSubtypeOf(KotlinType kotlinType, KotlinType superType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        Intrinsics.checkNotNullParameter(superType, "superType");
        return KotlinTypeChecker.DEFAULT.isSubtypeOf(kotlinType, superType);
    }

    public static final KotlinType replaceAnnotations(KotlinType kotlinType, Annotations newAnnotations) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        Intrinsics.checkNotNullParameter(newAnnotations, "newAnnotations");
        return (kotlinType.getAnnotations().isEmpty() && newAnnotations.isEmpty()) ? kotlinType : kotlinType.unwrap().replaceAttributes(TypeAttributesKt.replaceAnnotations(kotlinType.getAttributes(), newAnnotations));
    }

    public static final TypeProjection createProjection(KotlinType type, Variance projectionKind, TypeParameterDescriptor typeParameterDescriptor) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(projectionKind, "projectionKind");
        if ((typeParameterDescriptor != null ? typeParameterDescriptor.getVariance() : null) == projectionKind) {
            projectionKind = Variance.INVARIANT;
        }
        return new TypeProjectionImpl(projectionKind, type);
    }

    public static final TypeProjection asTypeProjection(KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        return new TypeProjectionImpl(kotlinType);
    }

    public static final boolean contains(KotlinType kotlinType, Function1<? super UnwrappedType, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        return TypeUtils.contains(kotlinType, predicate);
    }

    public static final Set<TypeParameterDescriptor> extractTypeParametersFromUpperBounds(KotlinType kotlinType, Set<? extends TypeParameterDescriptor> set) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        extractTypeParametersFromUpperBounds(kotlinType, kotlinType, linkedHashSet, set);
        return linkedHashSet;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final void extractTypeParametersFromUpperBounds(KotlinType kotlinType, KotlinType kotlinType2, Set<TypeParameterDescriptor> set, Set<? extends TypeParameterDescriptor> set2) {
        boolean contains;
        ClassifierDescriptor mo2054getDeclarationDescriptor = kotlinType.getConstructor().mo2054getDeclarationDescriptor();
        if (mo2054getDeclarationDescriptor instanceof TypeParameterDescriptor) {
            if (!Intrinsics.areEqual(kotlinType.getConstructor(), kotlinType2.getConstructor())) {
                set.add(mo2054getDeclarationDescriptor);
                return;
            }
            for (KotlinType upperBound : ((TypeParameterDescriptor) mo2054getDeclarationDescriptor).getUpperBounds()) {
                Intrinsics.checkNotNullExpressionValue(upperBound, "upperBound");
                extractTypeParametersFromUpperBounds(upperBound, kotlinType2, set, set2);
            }
            return;
        }
        ClassifierDescriptor mo2054getDeclarationDescriptor2 = kotlinType.getConstructor().mo2054getDeclarationDescriptor();
        ClassifierDescriptorWithTypeParameters classifierDescriptorWithTypeParameters = mo2054getDeclarationDescriptor2 instanceof ClassifierDescriptorWithTypeParameters ? (ClassifierDescriptorWithTypeParameters) mo2054getDeclarationDescriptor2 : null;
        List<TypeParameterDescriptor> declaredTypeParameters = classifierDescriptorWithTypeParameters != null ? classifierDescriptorWithTypeParameters.getDeclaredTypeParameters() : null;
        int i = 0;
        for (TypeProjection typeProjection : kotlinType.getArguments()) {
            int i2 = i + 1;
            TypeParameterDescriptor typeParameterDescriptor = declaredTypeParameters != null ? (TypeParameterDescriptor) CollectionsKt.getOrNull(declaredTypeParameters, i) : null;
            if (!((typeParameterDescriptor == null || set2 == null || !set2.contains(typeParameterDescriptor)) ? false : true) && !typeProjection.isStarProjection()) {
                contains = CollectionsKt___CollectionsKt.contains(set, typeProjection.getType().getConstructor().mo2054getDeclarationDescriptor());
                if (!contains && !Intrinsics.areEqual(typeProjection.getType().getConstructor(), kotlinType2.getConstructor())) {
                    KotlinType type = typeProjection.getType();
                    Intrinsics.checkNotNullExpressionValue(type, "argument.type");
                    extractTypeParametersFromUpperBounds(type, kotlinType2, set, set2);
                }
            }
            i = i2;
        }
    }

    public static /* synthetic */ boolean hasTypeParameterRecursiveBounds$default(TypeParameterDescriptor typeParameterDescriptor, TypeConstructor typeConstructor, Set set, int i, Object obj) {
        if ((i & 2) != 0) {
            typeConstructor = null;
        }
        if ((i & 4) != 0) {
            set = null;
        }
        return hasTypeParameterRecursiveBounds(typeParameterDescriptor, typeConstructor, set);
    }

    public static final boolean hasTypeParameterRecursiveBounds(TypeParameterDescriptor typeParameter, TypeConstructor typeConstructor, Set<? extends TypeParameterDescriptor> set) {
        boolean z;
        Intrinsics.checkNotNullParameter(typeParameter, "typeParameter");
        List<KotlinType> upperBounds = typeParameter.getUpperBounds();
        Intrinsics.checkNotNullExpressionValue(upperBounds, "typeParameter.upperBounds");
        if (!(upperBounds instanceof Collection) || !upperBounds.isEmpty()) {
            for (KotlinType upperBound : upperBounds) {
                Intrinsics.checkNotNullExpressionValue(upperBound, "upperBound");
                if (containsSelfTypeParameter(upperBound, typeParameter.getDefaultType().getConstructor(), set) && (typeConstructor == null || Intrinsics.areEqual(upperBound.getConstructor(), typeConstructor))) {
                    z = true;
                    continue;
                } else {
                    z = false;
                    continue;
                }
                if (z) {
                    return true;
                }
            }
        }
        return false;
    }

    private static final boolean containsSelfTypeParameter(KotlinType kotlinType, TypeConstructor typeConstructor, Set<? extends TypeParameterDescriptor> set) {
        Iterable<IndexedValue> withIndex;
        boolean z;
        if (Intrinsics.areEqual(kotlinType.getConstructor(), typeConstructor)) {
            return true;
        }
        ClassifierDescriptor mo2054getDeclarationDescriptor = kotlinType.getConstructor().mo2054getDeclarationDescriptor();
        ClassifierDescriptorWithTypeParameters classifierDescriptorWithTypeParameters = mo2054getDeclarationDescriptor instanceof ClassifierDescriptorWithTypeParameters ? (ClassifierDescriptorWithTypeParameters) mo2054getDeclarationDescriptor : null;
        List<TypeParameterDescriptor> declaredTypeParameters = classifierDescriptorWithTypeParameters != null ? classifierDescriptorWithTypeParameters.getDeclaredTypeParameters() : null;
        withIndex = CollectionsKt___CollectionsKt.withIndex(kotlinType.getArguments());
        if (!(withIndex instanceof Collection) || !((Collection) withIndex).isEmpty()) {
            for (IndexedValue indexedValue : withIndex) {
                int component1 = indexedValue.component1();
                TypeProjection typeProjection = (TypeProjection) indexedValue.component2();
                TypeParameterDescriptor typeParameterDescriptor = declaredTypeParameters != null ? (TypeParameterDescriptor) CollectionsKt.getOrNull(declaredTypeParameters, component1) : null;
                if (((typeParameterDescriptor == null || set == null || !set.contains(typeParameterDescriptor)) ? false : true) || typeProjection.isStarProjection()) {
                    z = false;
                    continue;
                } else {
                    KotlinType type = typeProjection.getType();
                    Intrinsics.checkNotNullExpressionValue(type, "argument.type");
                    z = containsSelfTypeParameter(type, typeConstructor, set);
                    continue;
                }
                if (z) {
                    return true;
                }
            }
        }
        return false;
    }

    public static final boolean containsTypeAliasParameters(KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        return contains(kotlinType, new Function1<UnwrappedType, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt$containsTypeAliasParameters$1
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(UnwrappedType it) {
                Intrinsics.checkNotNullParameter(it, "it");
                ClassifierDescriptor mo2054getDeclarationDescriptor = it.getConstructor().mo2054getDeclarationDescriptor();
                return Boolean.valueOf(mo2054getDeclarationDescriptor != null ? TypeUtilsKt.isTypeAliasParameter(mo2054getDeclarationDescriptor) : false);
            }
        });
    }

    public static final boolean isTypeAliasParameter(ClassifierDescriptor classifierDescriptor) {
        Intrinsics.checkNotNullParameter(classifierDescriptor, "<this>");
        return (classifierDescriptor instanceof TypeParameterDescriptor) && (((TypeParameterDescriptor) classifierDescriptor).getContainingDeclaration() instanceof TypeAliasDescriptor);
    }

    public static final boolean requiresTypeAliasExpansion(KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        return contains(kotlinType, new Function1<UnwrappedType, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt$requiresTypeAliasExpansion$1
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(UnwrappedType it) {
                Intrinsics.checkNotNullParameter(it, "it");
                ClassifierDescriptor mo2054getDeclarationDescriptor = it.getConstructor().mo2054getDeclarationDescriptor();
                boolean z = false;
                if (mo2054getDeclarationDescriptor != null && ((mo2054getDeclarationDescriptor instanceof TypeAliasDescriptor) || (mo2054getDeclarationDescriptor instanceof TypeParameterDescriptor))) {
                    z = true;
                }
                return Boolean.valueOf(z);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0051, code lost:
        r3 = r2;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0052 A[EDGE_INSN: B:22:0x0052->B:18:0x0052 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlin.reflect.jvm.internal.impl.types.KotlinType getRepresentativeUpperBound(kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor r7) {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            java.util.List r0 = r7.getUpperBounds()
            java.lang.String r1 = "upperBounds"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r0.isEmpty()
            java.util.List r0 = r7.getUpperBounds()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            java.util.Iterator r0 = r0.iterator()
        L1d:
            boolean r2 = r0.hasNext()
            r3 = 0
            if (r2 == 0) goto L52
            java.lang.Object r2 = r0.next()
            r4 = r2
            kotlin.reflect.jvm.internal.impl.types.KotlinType r4 = (kotlin.reflect.jvm.internal.impl.types.KotlinType) r4
            kotlin.reflect.jvm.internal.impl.types.TypeConstructor r4 = r4.getConstructor()
            kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor r4 = r4.mo2054getDeclarationDescriptor()
            boolean r5 = r4 instanceof kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
            if (r5 == 0) goto L3a
            r3 = r4
            kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor r3 = (kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor) r3
        L3a:
            r4 = 0
            if (r3 != 0) goto L3e
            goto L4f
        L3e:
            kotlin.reflect.jvm.internal.impl.descriptors.ClassKind r5 = r3.getKind()
            kotlin.reflect.jvm.internal.impl.descriptors.ClassKind r6 = kotlin.reflect.jvm.internal.impl.descriptors.ClassKind.INTERFACE
            if (r5 == r6) goto L4f
            kotlin.reflect.jvm.internal.impl.descriptors.ClassKind r3 = r3.getKind()
            kotlin.reflect.jvm.internal.impl.descriptors.ClassKind r5 = kotlin.reflect.jvm.internal.impl.descriptors.ClassKind.ANNOTATION_CLASS
            if (r3 == r5) goto L4f
            r4 = 1
        L4f:
            if (r4 == 0) goto L1d
            r3 = r2
        L52:
            kotlin.reflect.jvm.internal.impl.types.KotlinType r3 = (kotlin.reflect.jvm.internal.impl.types.KotlinType) r3
            if (r3 != 0) goto L6a
            java.util.List r7 = r7.getUpperBounds()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, r1)
            java.lang.Object r7 = kotlin.collections.CollectionsKt.first(r7)
            java.lang.String r0 = "upperBounds.first()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, r0)
            r3 = r7
            kotlin.reflect.jvm.internal.impl.types.KotlinType r3 = (kotlin.reflect.jvm.internal.impl.types.KotlinType) r3
        L6a:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt.getRepresentativeUpperBound(kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor):kotlin.reflect.jvm.internal.impl.types.KotlinType");
    }

    public static final boolean isStubType(KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        if (!(kotlinType instanceof AbstractStubType)) {
            if (!((kotlinType instanceof DefinitelyNotNullType) && (((DefinitelyNotNullType) kotlinType).getOriginal() instanceof AbstractStubType))) {
                return false;
            }
        }
        return true;
    }

    public static final boolean isStubTypeForBuilderInference(KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        if (!(kotlinType instanceof StubTypeForBuilderInference)) {
            if (!((kotlinType instanceof DefinitelyNotNullType) && (((DefinitelyNotNullType) kotlinType).getOriginal() instanceof StubTypeForBuilderInference))) {
                return false;
            }
        }
        return true;
    }

    public static final boolean isUnresolvedType(KotlinType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return (type instanceof ErrorType) && ((ErrorType) type).getKind().isUnresolved();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [kotlin.reflect.jvm.internal.impl.types.UnwrappedType] */
    public static final KotlinType replaceArgumentsWithStarProjections(KotlinType kotlinType) {
        int collectionSizeOrDefault;
        SimpleType simpleType;
        int collectionSizeOrDefault2;
        int collectionSizeOrDefault3;
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        UnwrappedType unwrap = kotlinType.unwrap();
        if (unwrap instanceof FlexibleType) {
            FlexibleType flexibleType = (FlexibleType) unwrap;
            SimpleType lowerBound = flexibleType.getLowerBound();
            if (!lowerBound.getConstructor().getParameters().isEmpty() && lowerBound.getConstructor().mo2054getDeclarationDescriptor() != null) {
                List<TypeParameterDescriptor> parameters = lowerBound.getConstructor().getParameters();
                Intrinsics.checkNotNullExpressionValue(parameters, "constructor.parameters");
                collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(parameters, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault3);
                for (TypeParameterDescriptor typeParameterDescriptor : parameters) {
                    arrayList.add(new StarProjectionImpl(typeParameterDescriptor));
                }
                lowerBound = TypeSubstitutionKt.replace$default(lowerBound, arrayList, null, 2, null);
            }
            SimpleType upperBound = flexibleType.getUpperBound();
            if (!upperBound.getConstructor().getParameters().isEmpty() && upperBound.getConstructor().mo2054getDeclarationDescriptor() != null) {
                List<TypeParameterDescriptor> parameters2 = upperBound.getConstructor().getParameters();
                Intrinsics.checkNotNullExpressionValue(parameters2, "constructor.parameters");
                collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(parameters2, 10);
                ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
                for (TypeParameterDescriptor typeParameterDescriptor2 : parameters2) {
                    arrayList2.add(new StarProjectionImpl(typeParameterDescriptor2));
                }
                upperBound = TypeSubstitutionKt.replace$default(upperBound, arrayList2, null, 2, null);
            }
            simpleType = KotlinTypeFactory.flexibleType(lowerBound, upperBound);
        } else if (!(unwrap instanceof SimpleType)) {
            throw new NoWhenBranchMatchedException();
        } else {
            SimpleType simpleType2 = (SimpleType) unwrap;
            boolean isEmpty = simpleType2.getConstructor().getParameters().isEmpty();
            simpleType = simpleType2;
            if (!isEmpty) {
                ClassifierDescriptor mo2054getDeclarationDescriptor = simpleType2.getConstructor().mo2054getDeclarationDescriptor();
                simpleType = simpleType2;
                if (mo2054getDeclarationDescriptor != null) {
                    List<TypeParameterDescriptor> parameters3 = simpleType2.getConstructor().getParameters();
                    Intrinsics.checkNotNullExpressionValue(parameters3, "constructor.parameters");
                    collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(parameters3, 10);
                    ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault);
                    for (TypeParameterDescriptor typeParameterDescriptor3 : parameters3) {
                        arrayList3.add(new StarProjectionImpl(typeParameterDescriptor3));
                    }
                    simpleType = TypeSubstitutionKt.replace$default(simpleType2, arrayList3, null, 2, null);
                }
            }
        }
        return TypeWithEnhancementKt.inheritEnhancement(simpleType, unwrap);
    }
}
