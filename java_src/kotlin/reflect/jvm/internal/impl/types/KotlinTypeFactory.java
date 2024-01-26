package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptorKt;
import kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerLiteralTypeConstructor;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.TypeAliasExpansionReportStrategy;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorScopeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
/* compiled from: KotlinTypeFactory.kt */
/* loaded from: classes4.dex */
public final class KotlinTypeFactory {
    public static final KotlinTypeFactory INSTANCE = new KotlinTypeFactory();

    public static final SimpleType simpleType(TypeAttributes attributes, TypeConstructor constructor, List<? extends TypeProjection> arguments, boolean z) {
        Intrinsics.checkNotNullParameter(attributes, "attributes");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(arguments, "arguments");
        return simpleType$default(attributes, constructor, arguments, z, null, 16, null);
    }

    private KotlinTypeFactory() {
    }

    static {
        KotlinTypeFactory$EMPTY_REFINED_TYPE_FACTORY$1 kotlinTypeFactory$EMPTY_REFINED_TYPE_FACTORY$1 = new Function1() { // from class: kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory$EMPTY_REFINED_TYPE_FACTORY$1
            @Override // kotlin.jvm.functions.Function1
            public final Void invoke(KotlinTypeRefiner kotlinTypeRefiner) {
                Intrinsics.checkNotNullParameter(kotlinTypeRefiner, "<anonymous parameter 0>");
                return null;
            }
        };
    }

    private final MemberScope computeMemberScope(TypeConstructor typeConstructor, List<? extends TypeProjection> list, KotlinTypeRefiner kotlinTypeRefiner) {
        ClassifierDescriptor mo2054getDeclarationDescriptor = typeConstructor.mo2054getDeclarationDescriptor();
        if (mo2054getDeclarationDescriptor instanceof TypeParameterDescriptor) {
            return ((TypeParameterDescriptor) mo2054getDeclarationDescriptor).getDefaultType().getMemberScope();
        }
        if (mo2054getDeclarationDescriptor instanceof ClassDescriptor) {
            if (kotlinTypeRefiner == null) {
                kotlinTypeRefiner = DescriptorUtilsKt.getKotlinTypeRefiner(DescriptorUtilsKt.getModule(mo2054getDeclarationDescriptor));
            }
            if (list.isEmpty()) {
                return ModuleAwareClassDescriptorKt.getRefinedUnsubstitutedMemberScopeIfPossible((ClassDescriptor) mo2054getDeclarationDescriptor, kotlinTypeRefiner);
            }
            return ModuleAwareClassDescriptorKt.getRefinedMemberScopeIfPossible((ClassDescriptor) mo2054getDeclarationDescriptor, TypeConstructorSubstitution.Companion.create(typeConstructor, list), kotlinTypeRefiner);
        } else if (mo2054getDeclarationDescriptor instanceof TypeAliasDescriptor) {
            ErrorScopeKind errorScopeKind = ErrorScopeKind.SCOPE_FOR_ABBREVIATION_TYPE;
            String name = ((TypeAliasDescriptor) mo2054getDeclarationDescriptor).getName().toString();
            Intrinsics.checkNotNullExpressionValue(name, "descriptor.name.toString()");
            return ErrorUtils.createErrorScope(errorScopeKind, true, name);
        } else if (typeConstructor instanceof IntersectionTypeConstructor) {
            return ((IntersectionTypeConstructor) typeConstructor).createScopeForKotlinType();
        } else {
            throw new IllegalStateException("Unsupported classifier: " + mo2054getDeclarationDescriptor + " for constructor: " + typeConstructor);
        }
    }

    public static /* synthetic */ SimpleType simpleType$default(TypeAttributes typeAttributes, TypeConstructor typeConstructor, List list, boolean z, KotlinTypeRefiner kotlinTypeRefiner, int i, Object obj) {
        if ((i & 16) != 0) {
            kotlinTypeRefiner = null;
        }
        return simpleType(typeAttributes, typeConstructor, list, z, kotlinTypeRefiner);
    }

    public static final SimpleType simpleType(final TypeAttributes attributes, final TypeConstructor constructor, final List<? extends TypeProjection> arguments, final boolean z, KotlinTypeRefiner kotlinTypeRefiner) {
        Intrinsics.checkNotNullParameter(attributes, "attributes");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(arguments, "arguments");
        if (attributes.isEmpty() && arguments.isEmpty() && !z && constructor.mo2054getDeclarationDescriptor() != null) {
            ClassifierDescriptor mo2054getDeclarationDescriptor = constructor.mo2054getDeclarationDescriptor();
            Intrinsics.checkNotNull(mo2054getDeclarationDescriptor);
            SimpleType defaultType = mo2054getDeclarationDescriptor.getDefaultType();
            Intrinsics.checkNotNullExpressionValue(defaultType, "constructor.declarationDescriptor!!.defaultType");
            return defaultType;
        }
        return simpleTypeWithNonTrivialMemberScope(attributes, constructor, arguments, z, INSTANCE.computeMemberScope(constructor, arguments, kotlinTypeRefiner), new Function1<KotlinTypeRefiner, SimpleType>() { // from class: kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory$simpleType$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final SimpleType invoke(KotlinTypeRefiner refiner) {
                KotlinTypeFactory.ExpandedTypeOrRefinedConstructor refineConstructor;
                Intrinsics.checkNotNullParameter(refiner, "refiner");
                refineConstructor = KotlinTypeFactory.INSTANCE.refineConstructor(TypeConstructor.this, refiner, arguments);
                if (refineConstructor == null) {
                    return null;
                }
                SimpleType expandedType = refineConstructor.getExpandedType();
                if (expandedType != null) {
                    return expandedType;
                }
                TypeAttributes typeAttributes = attributes;
                TypeConstructor refinedConstructor = refineConstructor.getRefinedConstructor();
                Intrinsics.checkNotNull(refinedConstructor);
                return KotlinTypeFactory.simpleType(typeAttributes, refinedConstructor, arguments, z, refiner);
            }
        });
    }

    public static final SimpleType computeExpandedType(TypeAliasDescriptor typeAliasDescriptor, List<? extends TypeProjection> arguments) {
        Intrinsics.checkNotNullParameter(typeAliasDescriptor, "<this>");
        Intrinsics.checkNotNullParameter(arguments, "arguments");
        return new TypeAliasExpander(TypeAliasExpansionReportStrategy.DO_NOTHING.INSTANCE, false).expand(TypeAliasExpansion.Companion.create(null, typeAliasDescriptor, arguments), TypeAttributes.Companion.getEmpty());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ExpandedTypeOrRefinedConstructor refineConstructor(TypeConstructor typeConstructor, KotlinTypeRefiner kotlinTypeRefiner, List<? extends TypeProjection> list) {
        ClassifierDescriptor refineDescriptor;
        ClassifierDescriptor mo2054getDeclarationDescriptor = typeConstructor.mo2054getDeclarationDescriptor();
        if (mo2054getDeclarationDescriptor == null || (refineDescriptor = kotlinTypeRefiner.refineDescriptor(mo2054getDeclarationDescriptor)) == null) {
            return null;
        }
        if (refineDescriptor instanceof TypeAliasDescriptor) {
            return new ExpandedTypeOrRefinedConstructor(computeExpandedType((TypeAliasDescriptor) refineDescriptor, list), null);
        }
        TypeConstructor refine = refineDescriptor.getTypeConstructor().refine(kotlinTypeRefiner);
        Intrinsics.checkNotNullExpressionValue(refine, "descriptor.typeConstruct…refine(kotlinTypeRefiner)");
        return new ExpandedTypeOrRefinedConstructor(null, refine);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: KotlinTypeFactory.kt */
    /* loaded from: classes4.dex */
    public static final class ExpandedTypeOrRefinedConstructor {
        private final SimpleType expandedType;
        private final TypeConstructor refinedConstructor;

        public ExpandedTypeOrRefinedConstructor(SimpleType simpleType, TypeConstructor typeConstructor) {
            this.expandedType = simpleType;
            this.refinedConstructor = typeConstructor;
        }

        public final SimpleType getExpandedType() {
            return this.expandedType;
        }

        public final TypeConstructor getRefinedConstructor() {
            return this.refinedConstructor;
        }
    }

    public static final SimpleType simpleTypeWithNonTrivialMemberScope(final TypeAttributes attributes, final TypeConstructor constructor, final List<? extends TypeProjection> arguments, final boolean z, final MemberScope memberScope) {
        Intrinsics.checkNotNullParameter(attributes, "attributes");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(arguments, "arguments");
        Intrinsics.checkNotNullParameter(memberScope, "memberScope");
        SimpleTypeImpl simpleTypeImpl = new SimpleTypeImpl(constructor, arguments, z, memberScope, new Function1<KotlinTypeRefiner, SimpleType>() { // from class: kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory$simpleTypeWithNonTrivialMemberScope$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final SimpleType invoke(KotlinTypeRefiner kotlinTypeRefiner) {
                KotlinTypeFactory.ExpandedTypeOrRefinedConstructor refineConstructor;
                Intrinsics.checkNotNullParameter(kotlinTypeRefiner, "kotlinTypeRefiner");
                refineConstructor = KotlinTypeFactory.INSTANCE.refineConstructor(TypeConstructor.this, kotlinTypeRefiner, arguments);
                if (refineConstructor == null) {
                    return null;
                }
                SimpleType expandedType = refineConstructor.getExpandedType();
                if (expandedType != null) {
                    return expandedType;
                }
                TypeAttributes typeAttributes = attributes;
                TypeConstructor refinedConstructor = refineConstructor.getRefinedConstructor();
                Intrinsics.checkNotNull(refinedConstructor);
                return KotlinTypeFactory.simpleTypeWithNonTrivialMemberScope(typeAttributes, refinedConstructor, arguments, z, memberScope);
            }
        });
        return attributes.isEmpty() ? simpleTypeImpl : new SimpleTypeWithAttributes(simpleTypeImpl, attributes);
    }

    public static final SimpleType simpleTypeWithNonTrivialMemberScope(TypeAttributes attributes, TypeConstructor constructor, List<? extends TypeProjection> arguments, boolean z, MemberScope memberScope, Function1<? super KotlinTypeRefiner, ? extends SimpleType> refinedTypeFactory) {
        Intrinsics.checkNotNullParameter(attributes, "attributes");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(arguments, "arguments");
        Intrinsics.checkNotNullParameter(memberScope, "memberScope");
        Intrinsics.checkNotNullParameter(refinedTypeFactory, "refinedTypeFactory");
        SimpleTypeImpl simpleTypeImpl = new SimpleTypeImpl(constructor, arguments, z, memberScope, refinedTypeFactory);
        return attributes.isEmpty() ? simpleTypeImpl : new SimpleTypeWithAttributes(simpleTypeImpl, attributes);
    }

    public static final SimpleType simpleNotNullType(TypeAttributes attributes, ClassDescriptor descriptor, List<? extends TypeProjection> arguments) {
        Intrinsics.checkNotNullParameter(attributes, "attributes");
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(arguments, "arguments");
        TypeConstructor typeConstructor = descriptor.getTypeConstructor();
        Intrinsics.checkNotNullExpressionValue(typeConstructor, "descriptor.typeConstructor");
        return simpleType$default(attributes, typeConstructor, arguments, false, null, 16, null);
    }

    public static final UnwrappedType flexibleType(SimpleType lowerBound, SimpleType upperBound) {
        Intrinsics.checkNotNullParameter(lowerBound, "lowerBound");
        Intrinsics.checkNotNullParameter(upperBound, "upperBound");
        return Intrinsics.areEqual(lowerBound, upperBound) ? lowerBound : new FlexibleTypeImpl(lowerBound, upperBound);
    }

    public static final SimpleType integerLiteralType(TypeAttributes attributes, IntegerLiteralTypeConstructor constructor, boolean z) {
        List emptyList;
        Intrinsics.checkNotNullParameter(attributes, "attributes");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return simpleTypeWithNonTrivialMemberScope(attributes, constructor, emptyList, z, ErrorUtils.createErrorScope(ErrorScopeKind.INTEGER_LITERAL_TYPE_SCOPE, true, "unknown integer literal type"));
    }
}
