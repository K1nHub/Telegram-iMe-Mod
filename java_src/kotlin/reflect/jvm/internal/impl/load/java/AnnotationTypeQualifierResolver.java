package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ArrayValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.EnumValue;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
/* compiled from: AnnotationTypeQualifierResolver.kt */
/* loaded from: classes4.dex */
public final class AnnotationTypeQualifierResolver extends AbstractAnnotationTypeQualifierResolver<AnnotationDescriptor> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnnotationTypeQualifierResolver(JavaTypeEnhancementState javaTypeEnhancementState) {
        super(javaTypeEnhancementState);
        Intrinsics.checkNotNullParameter(javaTypeEnhancementState, "javaTypeEnhancementState");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.load.java.AbstractAnnotationTypeQualifierResolver
    public Iterable<AnnotationDescriptor> getMetaAnnotations(AnnotationDescriptor annotationDescriptor) {
        List emptyList;
        Annotations annotations;
        Intrinsics.checkNotNullParameter(annotationDescriptor, "<this>");
        ClassDescriptor annotationClass = DescriptorUtilsKt.getAnnotationClass(annotationDescriptor);
        if (annotationClass == null || (annotations = annotationClass.getAnnotations()) == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        return annotations;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.load.java.AbstractAnnotationTypeQualifierResolver
    public Object getKey(AnnotationDescriptor annotationDescriptor) {
        Intrinsics.checkNotNullParameter(annotationDescriptor, "<this>");
        ClassDescriptor annotationClass = DescriptorUtilsKt.getAnnotationClass(annotationDescriptor);
        Intrinsics.checkNotNull(annotationClass);
        return annotationClass;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.load.java.AbstractAnnotationTypeQualifierResolver
    public FqName getFqName(AnnotationDescriptor annotationDescriptor) {
        Intrinsics.checkNotNullParameter(annotationDescriptor, "<this>");
        return annotationDescriptor.getFqName();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.load.java.AbstractAnnotationTypeQualifierResolver
    public Iterable<String> enumArguments(AnnotationDescriptor annotationDescriptor, boolean z) {
        List<String> enumNames;
        Intrinsics.checkNotNullParameter(annotationDescriptor, "<this>");
        Map<Name, ConstantValue<?>> allValueArguments = annotationDescriptor.getAllValueArguments();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<Name, ConstantValue<?>> entry : allValueArguments.entrySet()) {
            Name key = entry.getKey();
            ConstantValue<?> value = entry.getValue();
            if (!z || Intrinsics.areEqual(key, JvmAnnotationNames.DEFAULT_ANNOTATION_MEMBER_NAME)) {
                enumNames = toEnumNames(value);
            } else {
                enumNames = CollectionsKt__CollectionsKt.emptyList();
            }
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, enumNames);
        }
        return arrayList;
    }

    private final List<String> toEnumNames(ConstantValue<?> constantValue) {
        List<String> emptyList;
        List<String> listOf;
        if (!(constantValue instanceof ArrayValue)) {
            if (constantValue instanceof EnumValue) {
                listOf = CollectionsKt__CollectionsJVMKt.listOf(((EnumValue) constantValue).getEnumEntryName().getIdentifier());
                return listOf;
            }
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        ArrayList arrayList = new ArrayList();
        for (ConstantValue<?> constantValue2 : ((ArrayValue) constantValue).getValue()) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, toEnumNames(constantValue2));
        }
        return arrayList;
    }
}
