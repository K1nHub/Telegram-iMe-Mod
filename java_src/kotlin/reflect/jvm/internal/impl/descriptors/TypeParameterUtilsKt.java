package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
/* compiled from: typeParameterUtils.kt */
/* loaded from: classes4.dex */
public final class TypeParameterUtilsKt {
    public static final List<TypeParameterDescriptor> computeConstructorTypeParameters(ClassifierDescriptorWithTypeParameters classifierDescriptorWithTypeParameters) {
        Sequence takeWhile;
        Sequence filter;
        Sequence flatMap;
        List list;
        List<TypeParameterDescriptor> list2;
        DeclarationDescriptor declarationDescriptor;
        List<TypeParameterDescriptor> plus;
        int collectionSizeOrDefault;
        List<TypeParameterDescriptor> plus2;
        TypeConstructor typeConstructor;
        Intrinsics.checkNotNullParameter(classifierDescriptorWithTypeParameters, "<this>");
        List<TypeParameterDescriptor> declaredTypeParameters = classifierDescriptorWithTypeParameters.getDeclaredTypeParameters();
        Intrinsics.checkNotNullExpressionValue(declaredTypeParameters, "declaredTypeParameters");
        if (classifierDescriptorWithTypeParameters.isInner() || (classifierDescriptorWithTypeParameters.getContainingDeclaration() instanceof CallableDescriptor)) {
            takeWhile = SequencesKt___SequencesKt.takeWhile(DescriptorUtilsKt.getParents(classifierDescriptorWithTypeParameters), new Function1<DeclarationDescriptor, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterUtilsKt$computeConstructorTypeParameters$parametersFromContainingFunctions$1
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(DeclarationDescriptor it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Boolean.valueOf(it instanceof CallableDescriptor);
                }
            });
            filter = SequencesKt___SequencesKt.filter(takeWhile, new Function1<DeclarationDescriptor, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterUtilsKt$computeConstructorTypeParameters$parametersFromContainingFunctions$2
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(DeclarationDescriptor it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Boolean.valueOf(!(it instanceof ConstructorDescriptor));
                }
            });
            flatMap = SequencesKt___SequencesKt.flatMap(filter, new Function1<DeclarationDescriptor, Sequence<? extends TypeParameterDescriptor>>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterUtilsKt$computeConstructorTypeParameters$parametersFromContainingFunctions$3
                @Override // kotlin.jvm.functions.Function1
                public final Sequence<TypeParameterDescriptor> invoke(DeclarationDescriptor it) {
                    Sequence<TypeParameterDescriptor> asSequence;
                    Intrinsics.checkNotNullParameter(it, "it");
                    List<TypeParameterDescriptor> typeParameters = ((CallableDescriptor) it).getTypeParameters();
                    Intrinsics.checkNotNullExpressionValue(typeParameters, "it as CallableDescriptor).typeParameters");
                    asSequence = CollectionsKt___CollectionsKt.asSequence(typeParameters);
                    return asSequence;
                }
            });
            list = SequencesKt___SequencesKt.toList(flatMap);
            Iterator<DeclarationDescriptor> it = DescriptorUtilsKt.getParents(classifierDescriptorWithTypeParameters).iterator();
            while (true) {
                list2 = null;
                if (!it.hasNext()) {
                    declarationDescriptor = null;
                    break;
                }
                declarationDescriptor = it.next();
                if (declarationDescriptor instanceof ClassDescriptor) {
                    break;
                }
            }
            ClassDescriptor classDescriptor = (ClassDescriptor) declarationDescriptor;
            if (classDescriptor != null && (typeConstructor = classDescriptor.getTypeConstructor()) != null) {
                list2 = typeConstructor.getParameters();
            }
            if (list2 == null) {
                list2 = CollectionsKt__CollectionsKt.emptyList();
            }
            if (list.isEmpty() && list2.isEmpty()) {
                List<TypeParameterDescriptor> declaredTypeParameters2 = classifierDescriptorWithTypeParameters.getDeclaredTypeParameters();
                Intrinsics.checkNotNullExpressionValue(declaredTypeParameters2, "declaredTypeParameters");
                return declaredTypeParameters2;
            }
            plus = CollectionsKt___CollectionsKt.plus((Collection) list, (Iterable) list2);
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(plus, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (TypeParameterDescriptor it2 : plus) {
                Intrinsics.checkNotNullExpressionValue(it2, "it");
                arrayList.add(capturedCopyForInnerDeclaration(it2, classifierDescriptorWithTypeParameters, declaredTypeParameters.size()));
            }
            plus2 = CollectionsKt___CollectionsKt.plus((Collection) declaredTypeParameters, (Iterable) arrayList);
            return plus2;
        }
        return declaredTypeParameters;
    }

    private static final CapturedTypeParameterDescriptor capturedCopyForInnerDeclaration(TypeParameterDescriptor typeParameterDescriptor, DeclarationDescriptor declarationDescriptor, int i) {
        return new CapturedTypeParameterDescriptor(typeParameterDescriptor, declarationDescriptor, i);
    }

    public static final PossiblyInnerType buildPossiblyInnerType(KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        ClassifierDescriptor mo2053getDeclarationDescriptor = kotlinType.getConstructor().mo2053getDeclarationDescriptor();
        return buildPossiblyInnerType(kotlinType, mo2053getDeclarationDescriptor instanceof ClassifierDescriptorWithTypeParameters ? (ClassifierDescriptorWithTypeParameters) mo2053getDeclarationDescriptor : null, 0);
    }

    private static final PossiblyInnerType buildPossiblyInnerType(KotlinType kotlinType, ClassifierDescriptorWithTypeParameters classifierDescriptorWithTypeParameters, int i) {
        if (classifierDescriptorWithTypeParameters == null || ErrorUtils.isError(classifierDescriptorWithTypeParameters)) {
            return null;
        }
        int size = classifierDescriptorWithTypeParameters.getDeclaredTypeParameters().size() + i;
        if (!classifierDescriptorWithTypeParameters.isInner()) {
            if (size != kotlinType.getArguments().size()) {
                DescriptorUtils.isLocal(classifierDescriptorWithTypeParameters);
            }
            return new PossiblyInnerType(classifierDescriptorWithTypeParameters, kotlinType.getArguments().subList(i, kotlinType.getArguments().size()), null);
        }
        List<TypeProjection> subList = kotlinType.getArguments().subList(i, size);
        DeclarationDescriptor containingDeclaration = classifierDescriptorWithTypeParameters.getContainingDeclaration();
        return new PossiblyInnerType(classifierDescriptorWithTypeParameters, subList, buildPossiblyInnerType(kotlinType, containingDeclaration instanceof ClassifierDescriptorWithTypeParameters ? (ClassifierDescriptorWithTypeParameters) containingDeclaration : null, size));
    }
}
