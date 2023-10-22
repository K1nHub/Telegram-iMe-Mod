package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.FieldDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyGetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertySetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Modality;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Visibility;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoTypeTableUtilKt;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLite;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoContainer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedAnnotations;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedPropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedSimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedTypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.NonEmptyDeserializedAnnotations;
import kotlin.reflect.jvm.internal.impl.storage.NullableLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* compiled from: MemberDeserializer.kt */
/* loaded from: classes4.dex */
public final class MemberDeserializer {
    private final AnnotationDeserializer annotationDeserializer;

    /* renamed from: c */
    private final DeserializationContext f1383c;

    private final int loadOldFlags(int i) {
        return (i & 63) + ((i >> 8) << 6);
    }

    public MemberDeserializer(DeserializationContext c) {
        Intrinsics.checkNotNullParameter(c, "c");
        this.f1383c = c;
        this.annotationDeserializer = new AnnotationDeserializer(c.getComponents().getModuleDescriptor(), c.getComponents().getNotFoundClasses());
    }

    public final PropertyDescriptor loadProperty(ProtoBuf$Property proto) {
        ProtoBuf$Property protoBuf$Property;
        Annotations empty;
        DeserializedPropertyDescriptor deserializedPropertyDescriptor;
        ReceiverParameterDescriptor receiverParameterDescriptor;
        int collectionSizeOrDefault;
        Flags.FlagField<ProtoBuf$Visibility> flagField;
        DeserializationContext deserializationContext;
        Flags.FlagField<ProtoBuf$Modality> flagField2;
        PropertyGetterDescriptorImpl propertyGetterDescriptorImpl;
        PropertyGetterDescriptorImpl propertyGetterDescriptorImpl2;
        final DeserializedPropertyDescriptor deserializedPropertyDescriptor2;
        final ProtoBuf$Property protoBuf$Property2;
        int i;
        boolean z;
        PropertySetterDescriptorImpl propertySetterDescriptorImpl;
        List emptyList;
        List<ProtoBuf$ValueParameter> listOf;
        PropertyGetterDescriptorImpl createDefaultGetter;
        KotlinType type;
        Intrinsics.checkNotNullParameter(proto, "proto");
        int flags = proto.hasFlags() ? proto.getFlags() : loadOldFlags(proto.getOldFlags());
        DeclarationDescriptor containingDeclaration = this.f1383c.getContainingDeclaration();
        Annotations annotations = getAnnotations(proto, flags, AnnotatedCallableKind.PROPERTY);
        ProtoEnumFlags protoEnumFlags = ProtoEnumFlags.INSTANCE;
        Modality modality = protoEnumFlags.modality(Flags.MODALITY.get(flags));
        DescriptorVisibility descriptorVisibility = ProtoEnumFlagsUtilsKt.descriptorVisibility(protoEnumFlags, Flags.VISIBILITY.get(flags));
        Boolean bool = Flags.IS_VAR.get(flags);
        Intrinsics.checkNotNullExpressionValue(bool, "IS_VAR.get(flags)");
        boolean booleanValue = bool.booleanValue();
        Name name = NameResolverUtilKt.getName(this.f1383c.getNameResolver(), proto.getName());
        CallableMemberDescriptor.Kind memberKind = ProtoEnumFlagsUtilsKt.memberKind(protoEnumFlags, Flags.MEMBER_KIND.get(flags));
        Boolean bool2 = Flags.IS_LATEINIT.get(flags);
        Intrinsics.checkNotNullExpressionValue(bool2, "IS_LATEINIT.get(flags)");
        boolean booleanValue2 = bool2.booleanValue();
        Boolean bool3 = Flags.IS_CONST.get(flags);
        Intrinsics.checkNotNullExpressionValue(bool3, "IS_CONST.get(flags)");
        boolean booleanValue3 = bool3.booleanValue();
        Boolean bool4 = Flags.IS_EXTERNAL_PROPERTY.get(flags);
        Intrinsics.checkNotNullExpressionValue(bool4, "IS_EXTERNAL_PROPERTY.get(flags)");
        boolean booleanValue4 = bool4.booleanValue();
        Boolean bool5 = Flags.IS_DELEGATED.get(flags);
        Intrinsics.checkNotNullExpressionValue(bool5, "IS_DELEGATED.get(flags)");
        boolean booleanValue5 = bool5.booleanValue();
        Boolean bool6 = Flags.IS_EXPECT_PROPERTY.get(flags);
        Intrinsics.checkNotNullExpressionValue(bool6, "IS_EXPECT_PROPERTY.get(flags)");
        DeserializedPropertyDescriptor deserializedPropertyDescriptor3 = new DeserializedPropertyDescriptor(containingDeclaration, null, annotations, modality, descriptorVisibility, booleanValue, name, memberKind, booleanValue2, booleanValue3, booleanValue4, booleanValue5, bool6.booleanValue(), proto, this.f1383c.getNameResolver(), this.f1383c.getTypeTable(), this.f1383c.getVersionRequirementTable(), this.f1383c.getContainerSource());
        DeserializationContext deserializationContext2 = this.f1383c;
        List<ProtoBuf$TypeParameter> typeParameterList = proto.getTypeParameterList();
        Intrinsics.checkNotNullExpressionValue(typeParameterList, "proto.typeParameterList");
        DeserializationContext childContext$default = DeserializationContext.childContext$default(deserializationContext2, deserializedPropertyDescriptor3, typeParameterList, null, null, null, null, 60, null);
        Boolean bool7 = Flags.HAS_GETTER.get(flags);
        Intrinsics.checkNotNullExpressionValue(bool7, "HAS_GETTER.get(flags)");
        boolean booleanValue6 = bool7.booleanValue();
        if (booleanValue6 && ProtoTypeTableUtilKt.hasReceiver(proto)) {
            protoBuf$Property = proto;
            empty = getReceiverParameterAnnotations(protoBuf$Property, AnnotatedCallableKind.PROPERTY_GETTER);
        } else {
            protoBuf$Property = proto;
            empty = Annotations.Companion.getEMPTY();
        }
        KotlinType type2 = childContext$default.getTypeDeserializer().type(ProtoTypeTableUtilKt.returnType(protoBuf$Property, this.f1383c.getTypeTable()));
        List<TypeParameterDescriptor> ownTypeParameters = childContext$default.getTypeDeserializer().getOwnTypeParameters();
        ReceiverParameterDescriptor dispatchReceiverParameter = getDispatchReceiverParameter();
        ProtoBuf$Type receiverType = ProtoTypeTableUtilKt.receiverType(protoBuf$Property, this.f1383c.getTypeTable());
        if (receiverType == null || (type = childContext$default.getTypeDeserializer().type(receiverType)) == null) {
            deserializedPropertyDescriptor = deserializedPropertyDescriptor3;
            receiverParameterDescriptor = null;
        } else {
            deserializedPropertyDescriptor = deserializedPropertyDescriptor3;
            receiverParameterDescriptor = DescriptorFactory.createExtensionReceiverParameterForCallable(deserializedPropertyDescriptor, type, empty);
        }
        List<ProtoBuf$Type> contextReceiverTypes = ProtoTypeTableUtilKt.contextReceiverTypes(protoBuf$Property, this.f1383c.getTypeTable());
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(contextReceiverTypes, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        int i2 = 0;
        for (Object obj : contextReceiverTypes) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            arrayList.add(toContextReceiver((ProtoBuf$Type) obj, childContext$default, deserializedPropertyDescriptor, i2));
            i2 = i3;
        }
        deserializedPropertyDescriptor.setType(type2, ownTypeParameters, dispatchReceiverParameter, receiverParameterDescriptor, arrayList);
        Boolean bool8 = Flags.HAS_ANNOTATIONS.get(flags);
        Intrinsics.checkNotNullExpressionValue(bool8, "HAS_ANNOTATIONS.get(flags)");
        boolean booleanValue7 = bool8.booleanValue();
        Flags.FlagField<ProtoBuf$Visibility> flagField3 = Flags.VISIBILITY;
        Flags.FlagField<ProtoBuf$Modality> flagField4 = Flags.MODALITY;
        int accessorFlags = Flags.getAccessorFlags(booleanValue7, flagField3.get(flags), flagField4.get(flags), false, false, false);
        if (booleanValue6) {
            int getterFlags = proto.hasGetterFlags() ? proto.getGetterFlags() : accessorFlags;
            Boolean bool9 = Flags.IS_NOT_DEFAULT.get(getterFlags);
            Intrinsics.checkNotNullExpressionValue(bool9, "IS_NOT_DEFAULT.get(getterFlags)");
            boolean booleanValue8 = bool9.booleanValue();
            Boolean bool10 = Flags.IS_EXTERNAL_ACCESSOR.get(getterFlags);
            Intrinsics.checkNotNullExpressionValue(bool10, "IS_EXTERNAL_ACCESSOR.get(getterFlags)");
            boolean booleanValue9 = bool10.booleanValue();
            Boolean bool11 = Flags.IS_INLINE_ACCESSOR.get(getterFlags);
            Intrinsics.checkNotNullExpressionValue(bool11, "IS_INLINE_ACCESSOR.get(getterFlags)");
            boolean booleanValue10 = bool11.booleanValue();
            Annotations annotations2 = getAnnotations(protoBuf$Property, getterFlags, AnnotatedCallableKind.PROPERTY_GETTER);
            if (booleanValue8) {
                ProtoEnumFlags protoEnumFlags2 = ProtoEnumFlags.INSTANCE;
                deserializationContext = childContext$default;
                flagField2 = flagField4;
                flagField = flagField3;
                createDefaultGetter = new PropertyGetterDescriptorImpl(deserializedPropertyDescriptor, annotations2, protoEnumFlags2.modality(flagField4.get(getterFlags)), ProtoEnumFlagsUtilsKt.descriptorVisibility(protoEnumFlags2, flagField3.get(getterFlags)), !booleanValue8, booleanValue9, booleanValue10, deserializedPropertyDescriptor.getKind(), null, SourceElement.NO_SOURCE);
            } else {
                flagField = flagField3;
                deserializationContext = childContext$default;
                flagField2 = flagField4;
                createDefaultGetter = DescriptorFactory.createDefaultGetter(deserializedPropertyDescriptor, annotations2);
                Intrinsics.checkNotNullExpressionValue(createDefaultGetter, "{\n                Descri…nnotations)\n            }");
            }
            createDefaultGetter.initialize(deserializedPropertyDescriptor.getReturnType());
            propertyGetterDescriptorImpl = createDefaultGetter;
        } else {
            flagField = flagField3;
            deserializationContext = childContext$default;
            flagField2 = flagField4;
            propertyGetterDescriptorImpl = null;
        }
        Boolean bool12 = Flags.HAS_SETTER.get(flags);
        Intrinsics.checkNotNullExpressionValue(bool12, "HAS_SETTER.get(flags)");
        if (bool12.booleanValue()) {
            if (proto.hasSetterFlags()) {
                accessorFlags = proto.getSetterFlags();
            }
            int i4 = accessorFlags;
            Boolean bool13 = Flags.IS_NOT_DEFAULT.get(i4);
            Intrinsics.checkNotNullExpressionValue(bool13, "IS_NOT_DEFAULT.get(setterFlags)");
            boolean booleanValue11 = bool13.booleanValue();
            Boolean bool14 = Flags.IS_EXTERNAL_ACCESSOR.get(i4);
            Intrinsics.checkNotNullExpressionValue(bool14, "IS_EXTERNAL_ACCESSOR.get(setterFlags)");
            boolean booleanValue12 = bool14.booleanValue();
            Boolean bool15 = Flags.IS_INLINE_ACCESSOR.get(i4);
            Intrinsics.checkNotNullExpressionValue(bool15, "IS_INLINE_ACCESSOR.get(setterFlags)");
            boolean booleanValue13 = bool15.booleanValue();
            AnnotatedCallableKind annotatedCallableKind = AnnotatedCallableKind.PROPERTY_SETTER;
            Annotations annotations3 = getAnnotations(protoBuf$Property, i4, annotatedCallableKind);
            if (booleanValue11) {
                ProtoEnumFlags protoEnumFlags3 = ProtoEnumFlags.INSTANCE;
                propertyGetterDescriptorImpl2 = propertyGetterDescriptorImpl;
                PropertySetterDescriptorImpl propertySetterDescriptorImpl2 = new PropertySetterDescriptorImpl(deserializedPropertyDescriptor, annotations3, protoEnumFlags3.modality(flagField2.get(i4)), ProtoEnumFlagsUtilsKt.descriptorVisibility(protoEnumFlags3, flagField.get(i4)), !booleanValue11, booleanValue12, booleanValue13, deserializedPropertyDescriptor.getKind(), null, SourceElement.NO_SOURCE);
                emptyList = CollectionsKt__CollectionsKt.emptyList();
                z = true;
                deserializedPropertyDescriptor2 = deserializedPropertyDescriptor;
                protoBuf$Property2 = protoBuf$Property;
                i = flags;
                MemberDeserializer memberDeserializer = DeserializationContext.childContext$default(deserializationContext, propertySetterDescriptorImpl2, emptyList, null, null, null, null, 60, null).getMemberDeserializer();
                listOf = CollectionsKt__CollectionsJVMKt.listOf(proto.getSetterValueParameter());
                propertySetterDescriptorImpl2.initialize((ValueParameterDescriptor) CollectionsKt.single((List<? extends Object>) memberDeserializer.valueParameters(listOf, protoBuf$Property2, annotatedCallableKind)));
                propertySetterDescriptorImpl = propertySetterDescriptorImpl2;
            } else {
                propertyGetterDescriptorImpl2 = propertyGetterDescriptorImpl;
                deserializedPropertyDescriptor2 = deserializedPropertyDescriptor;
                protoBuf$Property2 = protoBuf$Property;
                i = flags;
                z = true;
                propertySetterDescriptorImpl = DescriptorFactory.createDefaultSetter(deserializedPropertyDescriptor2, annotations3, Annotations.Companion.getEMPTY());
                Intrinsics.checkNotNullExpressionValue(propertySetterDescriptorImpl, "{\n                Descri…          )\n            }");
            }
        } else {
            propertyGetterDescriptorImpl2 = propertyGetterDescriptorImpl;
            deserializedPropertyDescriptor2 = deserializedPropertyDescriptor;
            protoBuf$Property2 = protoBuf$Property;
            i = flags;
            z = true;
            propertySetterDescriptorImpl = null;
        }
        Boolean bool16 = Flags.HAS_CONSTANT.get(i);
        Intrinsics.checkNotNullExpressionValue(bool16, "HAS_CONSTANT.get(flags)");
        if (bool16.booleanValue()) {
            deserializedPropertyDescriptor2.setCompileTimeInitializerFactory(new Function0<NullableLazyValue<? extends ConstantValue<?>>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer$loadProperty$4
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final NullableLazyValue<? extends ConstantValue<?>> invoke() {
                    DeserializationContext deserializationContext3;
                    deserializationContext3 = MemberDeserializer.this.f1383c;
                    StorageManager storageManager = deserializationContext3.getStorageManager();
                    final MemberDeserializer memberDeserializer2 = MemberDeserializer.this;
                    final ProtoBuf$Property protoBuf$Property3 = protoBuf$Property2;
                    final DeserializedPropertyDescriptor deserializedPropertyDescriptor4 = deserializedPropertyDescriptor2;
                    return storageManager.createNullableLazyValue(new Function0<ConstantValue<?>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer$loadProperty$4.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final ConstantValue<?> invoke() {
                            DeserializationContext deserializationContext4;
                            ProtoContainer asProtoContainer;
                            DeserializationContext deserializationContext5;
                            MemberDeserializer memberDeserializer3 = MemberDeserializer.this;
                            deserializationContext4 = memberDeserializer3.f1383c;
                            asProtoContainer = memberDeserializer3.asProtoContainer(deserializationContext4.getContainingDeclaration());
                            Intrinsics.checkNotNull(asProtoContainer);
                            deserializationContext5 = MemberDeserializer.this.f1383c;
                            AnnotationAndConstantLoader<AnnotationDescriptor, ConstantValue<?>> annotationAndConstantLoader = deserializationContext5.getComponents().getAnnotationAndConstantLoader();
                            ProtoBuf$Property protoBuf$Property4 = protoBuf$Property3;
                            KotlinType returnType = deserializedPropertyDescriptor4.getReturnType();
                            Intrinsics.checkNotNullExpressionValue(returnType, "property.returnType");
                            return annotationAndConstantLoader.loadPropertyConstant(asProtoContainer, protoBuf$Property4, returnType);
                        }
                    });
                }
            });
        }
        DeclarationDescriptor containingDeclaration2 = this.f1383c.getContainingDeclaration();
        ClassDescriptor classDescriptor = containingDeclaration2 instanceof ClassDescriptor ? (ClassDescriptor) containingDeclaration2 : null;
        if ((classDescriptor != null ? classDescriptor.getKind() : null) == ClassKind.ANNOTATION_CLASS) {
            deserializedPropertyDescriptor2.setCompileTimeInitializerFactory(new Function0<NullableLazyValue<? extends ConstantValue<?>>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer$loadProperty$5
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final NullableLazyValue<? extends ConstantValue<?>> invoke() {
                    DeserializationContext deserializationContext3;
                    deserializationContext3 = MemberDeserializer.this.f1383c;
                    StorageManager storageManager = deserializationContext3.getStorageManager();
                    final MemberDeserializer memberDeserializer2 = MemberDeserializer.this;
                    final ProtoBuf$Property protoBuf$Property3 = protoBuf$Property2;
                    final DeserializedPropertyDescriptor deserializedPropertyDescriptor4 = deserializedPropertyDescriptor2;
                    return storageManager.createNullableLazyValue(new Function0<ConstantValue<?>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer$loadProperty$5.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final ConstantValue<?> invoke() {
                            DeserializationContext deserializationContext4;
                            ProtoContainer asProtoContainer;
                            DeserializationContext deserializationContext5;
                            MemberDeserializer memberDeserializer3 = MemberDeserializer.this;
                            deserializationContext4 = memberDeserializer3.f1383c;
                            asProtoContainer = memberDeserializer3.asProtoContainer(deserializationContext4.getContainingDeclaration());
                            Intrinsics.checkNotNull(asProtoContainer);
                            deserializationContext5 = MemberDeserializer.this.f1383c;
                            AnnotationAndConstantLoader<AnnotationDescriptor, ConstantValue<?>> annotationAndConstantLoader = deserializationContext5.getComponents().getAnnotationAndConstantLoader();
                            ProtoBuf$Property protoBuf$Property4 = protoBuf$Property3;
                            KotlinType returnType = deserializedPropertyDescriptor4.getReturnType();
                            Intrinsics.checkNotNullExpressionValue(returnType, "property.returnType");
                            return annotationAndConstantLoader.loadAnnotationDefaultValue(asProtoContainer, protoBuf$Property4, returnType);
                        }
                    });
                }
            });
        }
        deserializedPropertyDescriptor2.initialize(propertyGetterDescriptorImpl2, propertySetterDescriptorImpl, new FieldDescriptorImpl(getPropertyFieldAnnotations(protoBuf$Property2, false), deserializedPropertyDescriptor2), new FieldDescriptorImpl(getPropertyFieldAnnotations(protoBuf$Property2, z), deserializedPropertyDescriptor2));
        return deserializedPropertyDescriptor2;
    }

    private final void initializeWithCoroutinesExperimentalityStatus(DeserializedSimpleFunctionDescriptor deserializedSimpleFunctionDescriptor, ReceiverParameterDescriptor receiverParameterDescriptor, ReceiverParameterDescriptor receiverParameterDescriptor2, List<? extends ReceiverParameterDescriptor> list, List<? extends TypeParameterDescriptor> list2, List<? extends ValueParameterDescriptor> list3, KotlinType kotlinType, Modality modality, DescriptorVisibility descriptorVisibility, Map<? extends CallableDescriptor.UserDataKey<?>, ?> map) {
        deserializedSimpleFunctionDescriptor.initialize(receiverParameterDescriptor, receiverParameterDescriptor2, list, list2, list3, kotlinType, modality, descriptorVisibility, map);
    }

    public final SimpleFunctionDescriptor loadFunction(ProtoBuf$Function proto) {
        Annotations empty;
        VersionRequirementTable versionRequirementTable;
        Map<? extends CallableDescriptor.UserDataKey<?>, ?> emptyMap;
        KotlinType type;
        Intrinsics.checkNotNullParameter(proto, "proto");
        int flags = proto.hasFlags() ? proto.getFlags() : loadOldFlags(proto.getOldFlags());
        AnnotatedCallableKind annotatedCallableKind = AnnotatedCallableKind.FUNCTION;
        Annotations annotations = getAnnotations(proto, flags, annotatedCallableKind);
        if (ProtoTypeTableUtilKt.hasReceiver(proto)) {
            empty = getReceiverParameterAnnotations(proto, annotatedCallableKind);
        } else {
            empty = Annotations.Companion.getEMPTY();
        }
        if (Intrinsics.areEqual(DescriptorUtilsKt.getFqNameSafe(this.f1383c.getContainingDeclaration()).child(NameResolverUtilKt.getName(this.f1383c.getNameResolver(), proto.getName())), SuspendFunctionTypeUtilKt.KOTLIN_SUSPEND_BUILT_IN_FUNCTION_FQ_NAME)) {
            versionRequirementTable = VersionRequirementTable.Companion.getEMPTY();
        } else {
            versionRequirementTable = this.f1383c.getVersionRequirementTable();
        }
        DeserializedSimpleFunctionDescriptor deserializedSimpleFunctionDescriptor = new DeserializedSimpleFunctionDescriptor(this.f1383c.getContainingDeclaration(), null, annotations, NameResolverUtilKt.getName(this.f1383c.getNameResolver(), proto.getName()), ProtoEnumFlagsUtilsKt.memberKind(ProtoEnumFlags.INSTANCE, Flags.MEMBER_KIND.get(flags)), proto, this.f1383c.getNameResolver(), this.f1383c.getTypeTable(), versionRequirementTable, this.f1383c.getContainerSource(), null, 1024, null);
        DeserializationContext deserializationContext = this.f1383c;
        List<ProtoBuf$TypeParameter> typeParameterList = proto.getTypeParameterList();
        Intrinsics.checkNotNullExpressionValue(typeParameterList, "proto.typeParameterList");
        DeserializationContext childContext$default = DeserializationContext.childContext$default(deserializationContext, deserializedSimpleFunctionDescriptor, typeParameterList, null, null, null, null, 60, null);
        ProtoBuf$Type receiverType = ProtoTypeTableUtilKt.receiverType(proto, this.f1383c.getTypeTable());
        ReceiverParameterDescriptor createExtensionReceiverParameterForCallable = (receiverType == null || (type = childContext$default.getTypeDeserializer().type(receiverType)) == null) ? null : DescriptorFactory.createExtensionReceiverParameterForCallable(deserializedSimpleFunctionDescriptor, type, empty);
        ReceiverParameterDescriptor dispatchReceiverParameter = getDispatchReceiverParameter();
        List<ProtoBuf$Type> contextReceiverTypes = ProtoTypeTableUtilKt.contextReceiverTypes(proto, this.f1383c.getTypeTable());
        List<? extends ReceiverParameterDescriptor> arrayList = new ArrayList<>();
        int i = 0;
        for (Object obj : contextReceiverTypes) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            ReceiverParameterDescriptor contextReceiver = toContextReceiver((ProtoBuf$Type) obj, childContext$default, deserializedSimpleFunctionDescriptor, i);
            if (contextReceiver != null) {
                arrayList.add(contextReceiver);
            }
            i = i2;
        }
        List<TypeParameterDescriptor> ownTypeParameters = childContext$default.getTypeDeserializer().getOwnTypeParameters();
        MemberDeserializer memberDeserializer = childContext$default.getMemberDeserializer();
        List<ProtoBuf$ValueParameter> valueParameterList = proto.getValueParameterList();
        Intrinsics.checkNotNullExpressionValue(valueParameterList, "proto.valueParameterList");
        List<ValueParameterDescriptor> valueParameters = memberDeserializer.valueParameters(valueParameterList, proto, AnnotatedCallableKind.FUNCTION);
        KotlinType type2 = childContext$default.getTypeDeserializer().type(ProtoTypeTableUtilKt.returnType(proto, this.f1383c.getTypeTable()));
        ProtoEnumFlags protoEnumFlags = ProtoEnumFlags.INSTANCE;
        Modality modality = protoEnumFlags.modality(Flags.MODALITY.get(flags));
        DescriptorVisibility descriptorVisibility = ProtoEnumFlagsUtilsKt.descriptorVisibility(protoEnumFlags, Flags.VISIBILITY.get(flags));
        emptyMap = MapsKt__MapsKt.emptyMap();
        initializeWithCoroutinesExperimentalityStatus(deserializedSimpleFunctionDescriptor, createExtensionReceiverParameterForCallable, dispatchReceiverParameter, arrayList, ownTypeParameters, valueParameters, type2, modality, descriptorVisibility, emptyMap);
        Boolean bool = Flags.IS_OPERATOR.get(flags);
        Intrinsics.checkNotNullExpressionValue(bool, "IS_OPERATOR.get(flags)");
        deserializedSimpleFunctionDescriptor.setOperator(bool.booleanValue());
        Boolean bool2 = Flags.IS_INFIX.get(flags);
        Intrinsics.checkNotNullExpressionValue(bool2, "IS_INFIX.get(flags)");
        deserializedSimpleFunctionDescriptor.setInfix(bool2.booleanValue());
        Boolean bool3 = Flags.IS_EXTERNAL_FUNCTION.get(flags);
        Intrinsics.checkNotNullExpressionValue(bool3, "IS_EXTERNAL_FUNCTION.get(flags)");
        deserializedSimpleFunctionDescriptor.setExternal(bool3.booleanValue());
        Boolean bool4 = Flags.IS_INLINE.get(flags);
        Intrinsics.checkNotNullExpressionValue(bool4, "IS_INLINE.get(flags)");
        deserializedSimpleFunctionDescriptor.setInline(bool4.booleanValue());
        Boolean bool5 = Flags.IS_TAILREC.get(flags);
        Intrinsics.checkNotNullExpressionValue(bool5, "IS_TAILREC.get(flags)");
        deserializedSimpleFunctionDescriptor.setTailrec(bool5.booleanValue());
        Boolean bool6 = Flags.IS_SUSPEND.get(flags);
        Intrinsics.checkNotNullExpressionValue(bool6, "IS_SUSPEND.get(flags)");
        deserializedSimpleFunctionDescriptor.setSuspend(bool6.booleanValue());
        Boolean bool7 = Flags.IS_EXPECT_FUNCTION.get(flags);
        Intrinsics.checkNotNullExpressionValue(bool7, "IS_EXPECT_FUNCTION.get(flags)");
        deserializedSimpleFunctionDescriptor.setExpect(bool7.booleanValue());
        deserializedSimpleFunctionDescriptor.setHasStableParameterNames(!Flags.IS_FUNCTION_WITH_NON_STABLE_PARAMETER_NAMES.get(flags).booleanValue());
        Pair<CallableDescriptor.UserDataKey<?>, Object> deserializeContractFromFunction = this.f1383c.getComponents().getContractDeserializer().deserializeContractFromFunction(proto, deserializedSimpleFunctionDescriptor, this.f1383c.getTypeTable(), childContext$default.getTypeDeserializer());
        if (deserializeContractFromFunction != null) {
            deserializedSimpleFunctionDescriptor.putInUserDataMap(deserializeContractFromFunction.getFirst(), deserializeContractFromFunction.getSecond());
        }
        return deserializedSimpleFunctionDescriptor;
    }

    public final TypeAliasDescriptor loadTypeAlias(ProtoBuf$TypeAlias proto) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(proto, "proto");
        Annotations.Companion companion = Annotations.Companion;
        List<ProtoBuf$Annotation> annotationList = proto.getAnnotationList();
        Intrinsics.checkNotNullExpressionValue(annotationList, "proto.annotationList");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(annotationList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (ProtoBuf$Annotation it : annotationList) {
            AnnotationDeserializer annotationDeserializer = this.annotationDeserializer;
            Intrinsics.checkNotNullExpressionValue(it, "it");
            arrayList.add(annotationDeserializer.deserializeAnnotation(it, this.f1383c.getNameResolver()));
        }
        DeserializedTypeAliasDescriptor deserializedTypeAliasDescriptor = new DeserializedTypeAliasDescriptor(this.f1383c.getStorageManager(), this.f1383c.getContainingDeclaration(), companion.create(arrayList), NameResolverUtilKt.getName(this.f1383c.getNameResolver(), proto.getName()), ProtoEnumFlagsUtilsKt.descriptorVisibility(ProtoEnumFlags.INSTANCE, Flags.VISIBILITY.get(proto.getFlags())), proto, this.f1383c.getNameResolver(), this.f1383c.getTypeTable(), this.f1383c.getVersionRequirementTable(), this.f1383c.getContainerSource());
        DeserializationContext deserializationContext = this.f1383c;
        List<ProtoBuf$TypeParameter> typeParameterList = proto.getTypeParameterList();
        Intrinsics.checkNotNullExpressionValue(typeParameterList, "proto.typeParameterList");
        DeserializationContext childContext$default = DeserializationContext.childContext$default(deserializationContext, deserializedTypeAliasDescriptor, typeParameterList, null, null, null, null, 60, null);
        deserializedTypeAliasDescriptor.initialize(childContext$default.getTypeDeserializer().getOwnTypeParameters(), childContext$default.getTypeDeserializer().simpleType(ProtoTypeTableUtilKt.underlyingType(proto, this.f1383c.getTypeTable()), false), childContext$default.getTypeDeserializer().simpleType(ProtoTypeTableUtilKt.expandedType(proto, this.f1383c.getTypeTable()), false));
        return deserializedTypeAliasDescriptor;
    }

    private final ReceiverParameterDescriptor getDispatchReceiverParameter() {
        DeclarationDescriptor containingDeclaration = this.f1383c.getContainingDeclaration();
        ClassDescriptor classDescriptor = containingDeclaration instanceof ClassDescriptor ? (ClassDescriptor) containingDeclaration : null;
        if (classDescriptor != null) {
            return classDescriptor.getThisAsReceiverParameter();
        }
        return null;
    }

    public final ClassConstructorDescriptor loadConstructor(ProtoBuf$Constructor proto, boolean z) {
        List emptyList;
        Intrinsics.checkNotNullParameter(proto, "proto");
        DeclarationDescriptor containingDeclaration = this.f1383c.getContainingDeclaration();
        Intrinsics.checkNotNull(containingDeclaration, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
        ClassDescriptor classDescriptor = (ClassDescriptor) containingDeclaration;
        int flags = proto.getFlags();
        AnnotatedCallableKind annotatedCallableKind = AnnotatedCallableKind.FUNCTION;
        DeserializedClassConstructorDescriptor deserializedClassConstructorDescriptor = new DeserializedClassConstructorDescriptor(classDescriptor, null, getAnnotations(proto, flags, annotatedCallableKind), z, CallableMemberDescriptor.Kind.DECLARATION, proto, this.f1383c.getNameResolver(), this.f1383c.getTypeTable(), this.f1383c.getVersionRequirementTable(), this.f1383c.getContainerSource(), null, 1024, null);
        DeserializationContext deserializationContext = this.f1383c;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        MemberDeserializer memberDeserializer = DeserializationContext.childContext$default(deserializationContext, deserializedClassConstructorDescriptor, emptyList, null, null, null, null, 60, null).getMemberDeserializer();
        List<ProtoBuf$ValueParameter> valueParameterList = proto.getValueParameterList();
        Intrinsics.checkNotNullExpressionValue(valueParameterList, "proto.valueParameterList");
        deserializedClassConstructorDescriptor.initialize(memberDeserializer.valueParameters(valueParameterList, proto, annotatedCallableKind), ProtoEnumFlagsUtilsKt.descriptorVisibility(ProtoEnumFlags.INSTANCE, Flags.VISIBILITY.get(proto.getFlags())));
        deserializedClassConstructorDescriptor.setReturnType(classDescriptor.getDefaultType());
        deserializedClassConstructorDescriptor.setExpect(classDescriptor.isExpect());
        deserializedClassConstructorDescriptor.setHasStableParameterNames(!Flags.IS_CONSTRUCTOR_WITH_NON_STABLE_PARAMETER_NAMES.get(proto.getFlags()).booleanValue());
        return deserializedClassConstructorDescriptor;
    }

    private final Annotations getAnnotations(final MessageLite messageLite, int i, final AnnotatedCallableKind annotatedCallableKind) {
        if (!Flags.HAS_ANNOTATIONS.get(i).booleanValue()) {
            return Annotations.Companion.getEMPTY();
        }
        return new NonEmptyDeserializedAnnotations(this.f1383c.getStorageManager(), new Function0<List<? extends AnnotationDescriptor>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer$getAnnotations$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends AnnotationDescriptor> invoke() {
                DeserializationContext deserializationContext;
                ProtoContainer asProtoContainer;
                List<? extends AnnotationDescriptor> list;
                List<? extends AnnotationDescriptor> emptyList;
                DeserializationContext deserializationContext2;
                MemberDeserializer memberDeserializer = MemberDeserializer.this;
                deserializationContext = memberDeserializer.f1383c;
                asProtoContainer = memberDeserializer.asProtoContainer(deserializationContext.getContainingDeclaration());
                if (asProtoContainer != null) {
                    MemberDeserializer memberDeserializer2 = MemberDeserializer.this;
                    MessageLite messageLite2 = messageLite;
                    AnnotatedCallableKind annotatedCallableKind2 = annotatedCallableKind;
                    deserializationContext2 = memberDeserializer2.f1383c;
                    list = CollectionsKt___CollectionsKt.toList(deserializationContext2.getComponents().getAnnotationAndConstantLoader().loadCallableAnnotations(asProtoContainer, messageLite2, annotatedCallableKind2));
                } else {
                    list = null;
                }
                if (list == null) {
                    emptyList = CollectionsKt__CollectionsKt.emptyList();
                    return emptyList;
                }
                return list;
            }
        });
    }

    private final Annotations getPropertyFieldAnnotations(final ProtoBuf$Property protoBuf$Property, final boolean z) {
        if (!Flags.HAS_ANNOTATIONS.get(protoBuf$Property.getFlags()).booleanValue()) {
            return Annotations.Companion.getEMPTY();
        }
        return new NonEmptyDeserializedAnnotations(this.f1383c.getStorageManager(), new Function0<List<? extends AnnotationDescriptor>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer$getPropertyFieldAnnotations$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends AnnotationDescriptor> invoke() {
                DeserializationContext deserializationContext;
                ProtoContainer asProtoContainer;
                List<? extends AnnotationDescriptor> list;
                List<? extends AnnotationDescriptor> emptyList;
                DeserializationContext deserializationContext2;
                DeserializationContext deserializationContext3;
                MemberDeserializer memberDeserializer = MemberDeserializer.this;
                deserializationContext = memberDeserializer.f1383c;
                asProtoContainer = memberDeserializer.asProtoContainer(deserializationContext.getContainingDeclaration());
                if (asProtoContainer != null) {
                    boolean z2 = z;
                    MemberDeserializer memberDeserializer2 = MemberDeserializer.this;
                    ProtoBuf$Property protoBuf$Property2 = protoBuf$Property;
                    if (z2) {
                        deserializationContext3 = memberDeserializer2.f1383c;
                        list = CollectionsKt___CollectionsKt.toList(deserializationContext3.getComponents().getAnnotationAndConstantLoader().loadPropertyDelegateFieldAnnotations(asProtoContainer, protoBuf$Property2));
                    } else {
                        deserializationContext2 = memberDeserializer2.f1383c;
                        list = CollectionsKt___CollectionsKt.toList(deserializationContext2.getComponents().getAnnotationAndConstantLoader().loadPropertyBackingFieldAnnotations(asProtoContainer, protoBuf$Property2));
                    }
                } else {
                    list = null;
                }
                if (list == null) {
                    emptyList = CollectionsKt__CollectionsKt.emptyList();
                    return emptyList;
                }
                return list;
            }
        });
    }

    private final Annotations getReceiverParameterAnnotations(final MessageLite messageLite, final AnnotatedCallableKind annotatedCallableKind) {
        return new DeserializedAnnotations(this.f1383c.getStorageManager(), new Function0<List<? extends AnnotationDescriptor>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer$getReceiverParameterAnnotations$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends AnnotationDescriptor> invoke() {
                DeserializationContext deserializationContext;
                ProtoContainer asProtoContainer;
                List<AnnotationDescriptor> list;
                List<? extends AnnotationDescriptor> emptyList;
                DeserializationContext deserializationContext2;
                MemberDeserializer memberDeserializer = MemberDeserializer.this;
                deserializationContext = memberDeserializer.f1383c;
                asProtoContainer = memberDeserializer.asProtoContainer(deserializationContext.getContainingDeclaration());
                if (asProtoContainer != null) {
                    MemberDeserializer memberDeserializer2 = MemberDeserializer.this;
                    MessageLite messageLite2 = messageLite;
                    AnnotatedCallableKind annotatedCallableKind2 = annotatedCallableKind;
                    deserializationContext2 = memberDeserializer2.f1383c;
                    list = deserializationContext2.getComponents().getAnnotationAndConstantLoader().loadExtensionReceiverParameterAnnotations(asProtoContainer, messageLite2, annotatedCallableKind2);
                } else {
                    list = null;
                }
                if (list == null) {
                    emptyList = CollectionsKt__CollectionsKt.emptyList();
                    return emptyList;
                }
                return list;
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00f4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.List<kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor> valueParameters(java.util.List<kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter> r26, final kotlin.reflect.jvm.internal.impl.protobuf.MessageLite r27, final kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotatedCallableKind r28) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer.valueParameters(java.util.List, kotlin.reflect.jvm.internal.impl.protobuf.MessageLite, kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotatedCallableKind):java.util.List");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ProtoContainer asProtoContainer(DeclarationDescriptor declarationDescriptor) {
        if (declarationDescriptor instanceof PackageFragmentDescriptor) {
            return new ProtoContainer.Package(((PackageFragmentDescriptor) declarationDescriptor).getFqName(), this.f1383c.getNameResolver(), this.f1383c.getTypeTable(), this.f1383c.getContainerSource());
        }
        if (declarationDescriptor instanceof DeserializedClassDescriptor) {
            return ((DeserializedClassDescriptor) declarationDescriptor).getThisAsProtoContainer$deserialization();
        }
        return null;
    }

    private final ReceiverParameterDescriptor toContextReceiver(ProtoBuf$Type protoBuf$Type, DeserializationContext deserializationContext, CallableDescriptor callableDescriptor, int i) {
        return DescriptorFactory.createContextReceiverParameterForCallable(callableDescriptor, deserializationContext.getTypeDeserializer().type(protoBuf$Type), null, Annotations.Companion.getEMPTY(), i);
    }
}
