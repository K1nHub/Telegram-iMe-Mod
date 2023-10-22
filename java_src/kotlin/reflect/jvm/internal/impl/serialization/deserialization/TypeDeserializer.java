package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.FunctionTypesKt;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoTypeTableUtilKt;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedAnnotations;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedTypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.types.DefinitelyNotNullType;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.SpecialTypesKt;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionForAbsentTypeParameter;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeAttribute;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributeTranslator;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
/* compiled from: TypeDeserializer.kt */
/* loaded from: classes4.dex */
public final class TypeDeserializer {

    /* renamed from: c */
    private final DeserializationContext f1385c;
    private final Function1<Integer, ClassifierDescriptor> classifierDescriptors;
    private final String containerPresentableName;
    private final String debugName;
    private final TypeDeserializer parent;
    private final Function1<Integer, ClassifierDescriptor> typeAliasDescriptors;
    private final Map<Integer, TypeParameterDescriptor> typeParameterDescriptors;

    public TypeDeserializer(DeserializationContext c, TypeDeserializer typeDeserializer, List<ProtoBuf$TypeParameter> typeParameterProtos, String debugName, String containerPresentableName) {
        Map<Integer, TypeParameterDescriptor> linkedHashMap;
        Intrinsics.checkNotNullParameter(c, "c");
        Intrinsics.checkNotNullParameter(typeParameterProtos, "typeParameterProtos");
        Intrinsics.checkNotNullParameter(debugName, "debugName");
        Intrinsics.checkNotNullParameter(containerPresentableName, "containerPresentableName");
        this.f1385c = c;
        this.parent = typeDeserializer;
        this.debugName = debugName;
        this.containerPresentableName = containerPresentableName;
        this.classifierDescriptors = c.getStorageManager().createMemoizedFunctionWithNullableValues(new Function1<Integer, ClassifierDescriptor>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.TypeDeserializer$classifierDescriptors$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ ClassifierDescriptor invoke(Integer num) {
                return invoke(num.intValue());
            }

            public final ClassifierDescriptor invoke(int i) {
                ClassifierDescriptor computeClassifierDescriptor;
                computeClassifierDescriptor = TypeDeserializer.this.computeClassifierDescriptor(i);
                return computeClassifierDescriptor;
            }
        });
        this.typeAliasDescriptors = c.getStorageManager().createMemoizedFunctionWithNullableValues(new Function1<Integer, ClassifierDescriptor>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.TypeDeserializer$typeAliasDescriptors$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ ClassifierDescriptor invoke(Integer num) {
                return invoke(num.intValue());
            }

            public final ClassifierDescriptor invoke(int i) {
                ClassifierDescriptor computeTypeAliasDescriptor;
                computeTypeAliasDescriptor = TypeDeserializer.this.computeTypeAliasDescriptor(i);
                return computeTypeAliasDescriptor;
            }
        });
        if (typeParameterProtos.isEmpty()) {
            linkedHashMap = MapsKt__MapsKt.emptyMap();
        } else {
            linkedHashMap = new LinkedHashMap<>();
            int i = 0;
            for (ProtoBuf$TypeParameter protoBuf$TypeParameter : typeParameterProtos) {
                linkedHashMap.put(Integer.valueOf(protoBuf$TypeParameter.getId()), new DeserializedTypeParameterDescriptor(this.f1385c, protoBuf$TypeParameter, i));
                i++;
            }
        }
        this.typeParameterDescriptors = linkedHashMap;
    }

    public final List<TypeParameterDescriptor> getOwnTypeParameters() {
        List<TypeParameterDescriptor> list;
        list = CollectionsKt___CollectionsKt.toList(this.typeParameterDescriptors.values());
        return list;
    }

    public final KotlinType type(ProtoBuf$Type proto) {
        Intrinsics.checkNotNullParameter(proto, "proto");
        if (proto.hasFlexibleTypeCapabilitiesId()) {
            String string = this.f1385c.getNameResolver().getString(proto.getFlexibleTypeCapabilitiesId());
            SimpleType simpleType$default = simpleType$default(this, proto, false, 2, null);
            ProtoBuf$Type flexibleUpperBound = ProtoTypeTableUtilKt.flexibleUpperBound(proto, this.f1385c.getTypeTable());
            Intrinsics.checkNotNull(flexibleUpperBound);
            return this.f1385c.getComponents().getFlexibleTypeDeserializer().create(proto, string, simpleType$default, simpleType$default(this, flexibleUpperBound, false, 2, null));
        }
        return simpleType(proto, true);
    }

    public static /* synthetic */ SimpleType simpleType$default(TypeDeserializer typeDeserializer, ProtoBuf$Type protoBuf$Type, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return typeDeserializer.simpleType(protoBuf$Type, z);
    }

    public final SimpleType simpleType(final ProtoBuf$Type proto, boolean z) {
        SimpleType computeLocalClassifierReplacementType;
        int collectionSizeOrDefault;
        List<? extends TypeProjection> list;
        SimpleType simpleType$default;
        SimpleType withAbbreviation;
        List<? extends AnnotationDescriptor> plus;
        Intrinsics.checkNotNullParameter(proto, "proto");
        if (proto.hasClassName()) {
            computeLocalClassifierReplacementType = computeLocalClassifierReplacementType(proto.getClassName());
        } else {
            computeLocalClassifierReplacementType = proto.hasTypeAliasName() ? computeLocalClassifierReplacementType(proto.getTypeAliasName()) : null;
        }
        if (computeLocalClassifierReplacementType != null) {
            return computeLocalClassifierReplacementType;
        }
        TypeConstructor typeConstructor = typeConstructor(proto);
        boolean z2 = true;
        if (ErrorUtils.isError(typeConstructor.mo2046getDeclarationDescriptor())) {
            return ErrorUtils.INSTANCE.createErrorType(ErrorTypeKind.TYPE_FOR_ERROR_TYPE_CONSTRUCTOR, typeConstructor, typeConstructor.toString());
        }
        DeserializedAnnotations deserializedAnnotations = new DeserializedAnnotations(this.f1385c.getStorageManager(), new Function0<List<? extends AnnotationDescriptor>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.TypeDeserializer$simpleType$annotations$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends AnnotationDescriptor> invoke() {
                DeserializationContext deserializationContext;
                DeserializationContext deserializationContext2;
                deserializationContext = TypeDeserializer.this.f1385c;
                AnnotationAndConstantLoader<AnnotationDescriptor, ConstantValue<?>> annotationAndConstantLoader = deserializationContext.getComponents().getAnnotationAndConstantLoader();
                ProtoBuf$Type protoBuf$Type = proto;
                deserializationContext2 = TypeDeserializer.this.f1385c;
                return annotationAndConstantLoader.loadTypeAnnotations(protoBuf$Type, deserializationContext2.getNameResolver());
            }
        });
        TypeAttributes attributes = toAttributes(this.f1385c.getComponents().getTypeAttributeTranslators(), deserializedAnnotations, typeConstructor, this.f1385c.getContainingDeclaration());
        List<ProtoBuf$Type.Argument> simpleType$collectAllArguments = simpleType$collectAllArguments(proto, this);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(simpleType$collectAllArguments, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        int i = 0;
        for (Object obj : simpleType$collectAllArguments) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            List<TypeParameterDescriptor> parameters = typeConstructor.getParameters();
            Intrinsics.checkNotNullExpressionValue(parameters, "constructor.parameters");
            arrayList.add(typeArgument((TypeParameterDescriptor) CollectionsKt.getOrNull(parameters, i), (ProtoBuf$Type.Argument) obj));
            i = i2;
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        ClassifierDescriptor mo2046getDeclarationDescriptor = typeConstructor.mo2046getDeclarationDescriptor();
        if (z && (mo2046getDeclarationDescriptor instanceof TypeAliasDescriptor)) {
            KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
            SimpleType computeExpandedType = KotlinTypeFactory.computeExpandedType((TypeAliasDescriptor) mo2046getDeclarationDescriptor, list);
            List<TypeAttributeTranslator> typeAttributeTranslators = this.f1385c.getComponents().getTypeAttributeTranslators();
            Annotations.Companion companion = Annotations.Companion;
            plus = CollectionsKt___CollectionsKt.plus((Iterable) deserializedAnnotations, (Iterable) computeExpandedType.getAnnotations());
            TypeAttributes attributes2 = toAttributes(typeAttributeTranslators, companion.create(plus), typeConstructor, this.f1385c.getContainingDeclaration());
            if (!KotlinTypeKt.isNullable(computeExpandedType) && !proto.getNullable()) {
                z2 = false;
            }
            simpleType$default = computeExpandedType.makeNullableAsSpecified(z2).replaceAttributes(attributes2);
        } else {
            Boolean bool = Flags.SUSPEND_TYPE.get(proto.getFlags());
            Intrinsics.checkNotNullExpressionValue(bool, "SUSPEND_TYPE.get(proto.flags)");
            if (bool.booleanValue()) {
                simpleType$default = createSuspendFunctionType(attributes, typeConstructor, list, proto.getNullable());
            } else {
                simpleType$default = KotlinTypeFactory.simpleType$default(attributes, typeConstructor, list, proto.getNullable(), null, 16, null);
                Boolean bool2 = Flags.DEFINITELY_NOT_NULL_TYPE.get(proto.getFlags());
                Intrinsics.checkNotNullExpressionValue(bool2, "DEFINITELY_NOT_NULL_TYPE.get(proto.flags)");
                if (bool2.booleanValue()) {
                    DefinitelyNotNullType makeDefinitelyNotNull$default = DefinitelyNotNullType.Companion.makeDefinitelyNotNull$default(DefinitelyNotNullType.Companion, simpleType$default, true, false, 4, null);
                    if (makeDefinitelyNotNull$default == null) {
                        throw new IllegalStateException(("null DefinitelyNotNullType for '" + simpleType$default + '\'').toString());
                    }
                    simpleType$default = makeDefinitelyNotNull$default;
                }
            }
        }
        ProtoBuf$Type abbreviatedType = ProtoTypeTableUtilKt.abbreviatedType(proto, this.f1385c.getTypeTable());
        if (abbreviatedType != null && (withAbbreviation = SpecialTypesKt.withAbbreviation(simpleType$default, simpleType(abbreviatedType, false))) != null) {
            simpleType$default = withAbbreviation;
        }
        return proto.hasClassName() ? this.f1385c.getComponents().getPlatformDependentTypeTransformer().transformPlatformType(NameResolverUtilKt.getClassId(this.f1385c.getNameResolver(), proto.getClassName()), simpleType$default) : simpleType$default;
    }

    private static final List<ProtoBuf$Type.Argument> simpleType$collectAllArguments(ProtoBuf$Type protoBuf$Type, TypeDeserializer typeDeserializer) {
        List<ProtoBuf$Type.Argument> plus;
        List<ProtoBuf$Type.Argument> argumentList = protoBuf$Type.getArgumentList();
        Intrinsics.checkNotNullExpressionValue(argumentList, "argumentList");
        ProtoBuf$Type outerType = ProtoTypeTableUtilKt.outerType(protoBuf$Type, typeDeserializer.f1385c.getTypeTable());
        List<ProtoBuf$Type.Argument> simpleType$collectAllArguments = outerType != null ? simpleType$collectAllArguments(outerType, typeDeserializer) : null;
        if (simpleType$collectAllArguments == null) {
            simpleType$collectAllArguments = CollectionsKt__CollectionsKt.emptyList();
        }
        plus = CollectionsKt___CollectionsKt.plus((Collection) argumentList, (Iterable) simpleType$collectAllArguments);
        return plus;
    }

    private static final ClassDescriptor typeConstructor$notFoundClass(final TypeDeserializer typeDeserializer, ProtoBuf$Type protoBuf$Type, int i) {
        Sequence generateSequence;
        Sequence map;
        List<Integer> mutableList;
        Sequence generateSequence2;
        int count;
        ClassId classId = NameResolverUtilKt.getClassId(typeDeserializer.f1385c.getNameResolver(), i);
        generateSequence = SequencesKt__SequencesKt.generateSequence(protoBuf$Type, new Function1<ProtoBuf$Type, ProtoBuf$Type>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.TypeDeserializer$typeConstructor$notFoundClass$typeParametersCount$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ProtoBuf$Type invoke(ProtoBuf$Type it) {
                DeserializationContext deserializationContext;
                Intrinsics.checkNotNullParameter(it, "it");
                deserializationContext = TypeDeserializer.this.f1385c;
                return ProtoTypeTableUtilKt.outerType(it, deserializationContext.getTypeTable());
            }
        });
        map = SequencesKt___SequencesKt.map(generateSequence, new Function1<ProtoBuf$Type, Integer>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.TypeDeserializer$typeConstructor$notFoundClass$typeParametersCount$2
            @Override // kotlin.jvm.functions.Function1
            public final Integer invoke(ProtoBuf$Type it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Integer.valueOf(it.getArgumentCount());
            }
        });
        mutableList = SequencesKt___SequencesKt.toMutableList(map);
        generateSequence2 = SequencesKt__SequencesKt.generateSequence(classId, C3449x1c22db09.INSTANCE);
        count = SequencesKt___SequencesKt.count(generateSequence2);
        while (mutableList.size() < count) {
            mutableList.add(0);
        }
        return typeDeserializer.f1385c.getComponents().getNotFoundClasses().getClass(classId, mutableList);
    }

    private final TypeConstructor typeConstructor(ProtoBuf$Type protoBuf$Type) {
        ClassifierDescriptor invoke;
        Object obj;
        if (protoBuf$Type.hasClassName()) {
            invoke = this.classifierDescriptors.invoke(Integer.valueOf(protoBuf$Type.getClassName()));
            if (invoke == null) {
                invoke = typeConstructor$notFoundClass(this, protoBuf$Type, protoBuf$Type.getClassName());
            }
        } else if (protoBuf$Type.hasTypeParameter()) {
            invoke = loadTypeParameter(protoBuf$Type.getTypeParameter());
            if (invoke == null) {
                return ErrorUtils.INSTANCE.createErrorTypeConstructor(ErrorTypeKind.CANNOT_LOAD_DESERIALIZE_TYPE_PARAMETER, String.valueOf(protoBuf$Type.getTypeParameter()), this.containerPresentableName);
            }
        } else if (protoBuf$Type.hasTypeParameterName()) {
            String string = this.f1385c.getNameResolver().getString(protoBuf$Type.getTypeParameterName());
            Iterator<T> it = getOwnTypeParameters().iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (Intrinsics.areEqual(((TypeParameterDescriptor) obj).getName().asString(), string)) {
                    break;
                }
            }
            invoke = (TypeParameterDescriptor) obj;
            if (invoke == null) {
                return ErrorUtils.INSTANCE.createErrorTypeConstructor(ErrorTypeKind.CANNOT_LOAD_DESERIALIZE_TYPE_PARAMETER_BY_NAME, string, this.f1385c.getContainingDeclaration().toString());
            }
        } else if (protoBuf$Type.hasTypeAliasName()) {
            invoke = this.typeAliasDescriptors.invoke(Integer.valueOf(protoBuf$Type.getTypeAliasName()));
            if (invoke == null) {
                invoke = typeConstructor$notFoundClass(this, protoBuf$Type, protoBuf$Type.getTypeAliasName());
            }
        } else {
            return ErrorUtils.INSTANCE.createErrorTypeConstructor(ErrorTypeKind.UNKNOWN_TYPE, new String[0]);
        }
        TypeConstructor typeConstructor = invoke.getTypeConstructor();
        Intrinsics.checkNotNullExpressionValue(typeConstructor, "classifier.typeConstructor");
        return typeConstructor;
    }

    private final SimpleType createSuspendFunctionType(TypeAttributes typeAttributes, TypeConstructor typeConstructor, List<? extends TypeProjection> list, boolean z) {
        int size;
        int size2 = typeConstructor.getParameters().size() - list.size();
        SimpleType simpleType = null;
        if (size2 == 0) {
            simpleType = createSuspendFunctionTypeForBasicCase(typeAttributes, typeConstructor, list, z);
        } else if (size2 == 1 && (size = list.size() - 1) >= 0) {
            TypeConstructor typeConstructor2 = typeConstructor.getBuiltIns().getSuspendFunction(size).getTypeConstructor();
            Intrinsics.checkNotNullExpressionValue(typeConstructor2, "functionTypeConstructor.…on(arity).typeConstructor");
            simpleType = KotlinTypeFactory.simpleType$default(typeAttributes, typeConstructor2, list, z, null, 16, null);
        }
        return simpleType == null ? ErrorUtils.INSTANCE.createErrorTypeWithArguments(ErrorTypeKind.INCONSISTENT_SUSPEND_FUNCTION, list, typeConstructor, new String[0]) : simpleType;
    }

    private final SimpleType createSuspendFunctionTypeForBasicCase(TypeAttributes typeAttributes, TypeConstructor typeConstructor, List<? extends TypeProjection> list, boolean z) {
        SimpleType simpleType$default = KotlinTypeFactory.simpleType$default(typeAttributes, typeConstructor, list, z, null, 16, null);
        if (FunctionTypesKt.isFunctionType(simpleType$default)) {
            return transformRuntimeFunctionTypeToSuspendFunction(simpleType$default);
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x003f, code lost:
        if (kotlin.jvm.internal.Intrinsics.areEqual(r2, r3) == false) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final kotlin.reflect.jvm.internal.impl.types.SimpleType transformRuntimeFunctionTypeToSuspendFunction(kotlin.reflect.jvm.internal.impl.types.KotlinType r6) {
        /*
            r5 = this;
            java.util.List r0 = kotlin.reflect.jvm.internal.impl.builtins.FunctionTypesKt.getValueParameterTypesFromFunctionType(r6)
            java.lang.Object r0 = kotlin.collections.CollectionsKt.lastOrNull(r0)
            kotlin.reflect.jvm.internal.impl.types.TypeProjection r0 = (kotlin.reflect.jvm.internal.impl.types.TypeProjection) r0
            r1 = 0
            if (r0 == 0) goto L7e
            kotlin.reflect.jvm.internal.impl.types.KotlinType r0 = r0.getType()
            if (r0 != 0) goto L14
            goto L7e
        L14:
            kotlin.reflect.jvm.internal.impl.types.TypeConstructor r2 = r0.getConstructor()
            kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor r2 = r2.mo2046getDeclarationDescriptor()
            if (r2 == 0) goto L23
            kotlin.reflect.jvm.internal.impl.name.FqName r2 = kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt.getFqNameSafe(r2)
            goto L24
        L23:
            r2 = r1
        L24:
            java.util.List r3 = r0.getArguments()
            int r3 = r3.size()
            r4 = 1
            if (r3 != r4) goto L7b
            kotlin.reflect.jvm.internal.impl.name.FqName r3 = kotlin.reflect.jvm.internal.impl.builtins.StandardNames.CONTINUATION_INTERFACE_FQ_NAME
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r3)
            if (r3 != 0) goto L42
            kotlin.reflect.jvm.internal.impl.name.FqName r3 = kotlin.reflect.jvm.internal.impl.serialization.deserialization.TypeDeserializerKt.access$getEXPERIMENTAL_CONTINUATION_FQ_NAME$p()
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r3)
            if (r2 != 0) goto L42
            goto L7b
        L42:
            java.util.List r0 = r0.getArguments()
            java.lang.Object r0 = kotlin.collections.CollectionsKt.single(r0)
            kotlin.reflect.jvm.internal.impl.types.TypeProjection r0 = (kotlin.reflect.jvm.internal.impl.types.TypeProjection) r0
            kotlin.reflect.jvm.internal.impl.types.KotlinType r0 = r0.getType()
            java.lang.String r2 = "continuationArgumentType.arguments.single().type"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationContext r2 = r5.f1385c
            kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor r2 = r2.getContainingDeclaration()
            boolean r3 = r2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
            if (r3 == 0) goto L62
            kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor r2 = (kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor) r2
            goto L63
        L62:
            r2 = r1
        L63:
            if (r2 == 0) goto L69
            kotlin.reflect.jvm.internal.impl.name.FqName r1 = kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt.fqNameOrNull(r2)
        L69:
            kotlin.reflect.jvm.internal.impl.name.FqName r2 = kotlin.reflect.jvm.internal.impl.serialization.deserialization.SuspendFunctionTypeUtilKt.KOTLIN_SUSPEND_BUILT_IN_FUNCTION_FQ_NAME
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r2)
            if (r1 == 0) goto L76
            kotlin.reflect.jvm.internal.impl.types.SimpleType r6 = r5.createSimpleSuspendFunctionType(r6, r0)
            return r6
        L76:
            kotlin.reflect.jvm.internal.impl.types.SimpleType r6 = r5.createSimpleSuspendFunctionType(r6, r0)
            return r6
        L7b:
            kotlin.reflect.jvm.internal.impl.types.SimpleType r6 = (kotlin.reflect.jvm.internal.impl.types.SimpleType) r6
            return r6
        L7e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.TypeDeserializer.transformRuntimeFunctionTypeToSuspendFunction(kotlin.reflect.jvm.internal.impl.types.KotlinType):kotlin.reflect.jvm.internal.impl.types.SimpleType");
    }

    private final SimpleType createSimpleSuspendFunctionType(KotlinType kotlinType, KotlinType kotlinType2) {
        List<TypeProjection> dropLast;
        int collectionSizeOrDefault;
        KotlinBuiltIns builtIns = TypeUtilsKt.getBuiltIns(kotlinType);
        Annotations annotations = kotlinType.getAnnotations();
        KotlinType receiverTypeFromFunctionType = FunctionTypesKt.getReceiverTypeFromFunctionType(kotlinType);
        List<KotlinType> contextReceiverTypesFromFunctionType = FunctionTypesKt.getContextReceiverTypesFromFunctionType(kotlinType);
        dropLast = CollectionsKt___CollectionsKt.dropLast(FunctionTypesKt.getValueParameterTypesFromFunctionType(kotlinType), 1);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(dropLast, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TypeProjection typeProjection : dropLast) {
            arrayList.add(typeProjection.getType());
        }
        return FunctionTypesKt.createFunctionType(builtIns, annotations, receiverTypeFromFunctionType, contextReceiverTypesFromFunctionType, arrayList, null, kotlinType2, true).makeNullableAsSpecified(kotlinType.isMarkedNullable());
    }

    private final TypeParameterDescriptor loadTypeParameter(int i) {
        TypeParameterDescriptor typeParameterDescriptor = this.typeParameterDescriptors.get(Integer.valueOf(i));
        if (typeParameterDescriptor == null) {
            TypeDeserializer typeDeserializer = this.parent;
            if (typeDeserializer != null) {
                return typeDeserializer.loadTypeParameter(i);
            }
            return null;
        }
        return typeParameterDescriptor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ClassifierDescriptor computeClassifierDescriptor(int i) {
        ClassId classId = NameResolverUtilKt.getClassId(this.f1385c.getNameResolver(), i);
        if (classId.isLocal()) {
            return this.f1385c.getComponents().deserializeClass(classId);
        }
        return FindClassInModuleKt.findClassifierAcrossModuleDependencies(this.f1385c.getComponents().getModuleDescriptor(), classId);
    }

    private final SimpleType computeLocalClassifierReplacementType(int i) {
        if (NameResolverUtilKt.getClassId(this.f1385c.getNameResolver(), i).isLocal()) {
            return this.f1385c.getComponents().getLocalClassifierTypeSettings().getReplacementTypeForLocalClassifiers();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ClassifierDescriptor computeTypeAliasDescriptor(int i) {
        ClassId classId = NameResolverUtilKt.getClassId(this.f1385c.getNameResolver(), i);
        if (classId.isLocal()) {
            return null;
        }
        return FindClassInModuleKt.findTypeAliasAcrossModuleDependencies(this.f1385c.getComponents().getModuleDescriptor(), classId);
    }

    private final TypeProjection typeArgument(TypeParameterDescriptor typeParameterDescriptor, ProtoBuf$Type.Argument argument) {
        if (argument.getProjection() == ProtoBuf$Type.Argument.Projection.STAR) {
            if (typeParameterDescriptor == null) {
                return new StarProjectionForAbsentTypeParameter(this.f1385c.getComponents().getModuleDescriptor().getBuiltIns());
            }
            return new StarProjectionImpl(typeParameterDescriptor);
        }
        ProtoEnumFlags protoEnumFlags = ProtoEnumFlags.INSTANCE;
        ProtoBuf$Type.Argument.Projection projection = argument.getProjection();
        Intrinsics.checkNotNullExpressionValue(projection, "typeArgumentProto.projection");
        Variance variance = protoEnumFlags.variance(projection);
        ProtoBuf$Type type = ProtoTypeTableUtilKt.type(argument, this.f1385c.getTypeTable());
        if (type == null) {
            return new TypeProjectionImpl(ErrorUtils.createErrorType(ErrorTypeKind.NO_RECORDED_TYPE, argument.toString()));
        }
        return new TypeProjectionImpl(variance, type(type));
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(this.debugName);
        if (this.parent == null) {
            str = "";
        } else {
            str = ". Child of " + this.parent.debugName;
        }
        sb.append(str);
        return sb.toString();
    }

    private final TypeAttributes toAttributes(List<? extends TypeAttributeTranslator> list, Annotations annotations, TypeConstructor typeConstructor, DeclarationDescriptor declarationDescriptor) {
        int collectionSizeOrDefault;
        List<? extends TypeAttribute<?>> flatten;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TypeAttributeTranslator typeAttributeTranslator : list) {
            arrayList.add(typeAttributeTranslator.toAttributes(annotations, typeConstructor, declarationDescriptor));
        }
        flatten = CollectionsKt__IterablesKt.flatten(arrayList);
        return TypeAttributes.Companion.create(flatten);
    }
}
