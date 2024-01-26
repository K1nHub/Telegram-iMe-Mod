package kotlin.reflect.jvm.internal.impl.load.java.components;

import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.KotlinRetention;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.KotlinTarget;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaEnumValueAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ArrayValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.EnumValue;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
/* compiled from: JavaAnnotationMapper.kt */
/* loaded from: classes4.dex */
public final class JavaAnnotationTargetMapper {
    public static final JavaAnnotationTargetMapper INSTANCE = new JavaAnnotationTargetMapper();
    private static final Map<String, KotlinRetention> retentionNameList;
    private static final Map<String, EnumSet<KotlinTarget>> targetNameLists;

    private JavaAnnotationTargetMapper() {
    }

    static {
        Map<String, EnumSet<KotlinTarget>> mapOf;
        Map<String, KotlinRetention> mapOf2;
        mapOf = MapsKt__MapsKt.mapOf(TuplesKt.m149to("PACKAGE", EnumSet.noneOf(KotlinTarget.class)), TuplesKt.m149to("TYPE", EnumSet.of(KotlinTarget.CLASS, KotlinTarget.FILE)), TuplesKt.m149to("ANNOTATION_TYPE", EnumSet.of(KotlinTarget.ANNOTATION_CLASS)), TuplesKt.m149to("TYPE_PARAMETER", EnumSet.of(KotlinTarget.TYPE_PARAMETER)), TuplesKt.m149to("FIELD", EnumSet.of(KotlinTarget.FIELD)), TuplesKt.m149to("LOCAL_VARIABLE", EnumSet.of(KotlinTarget.LOCAL_VARIABLE)), TuplesKt.m149to("PARAMETER", EnumSet.of(KotlinTarget.VALUE_PARAMETER)), TuplesKt.m149to("CONSTRUCTOR", EnumSet.of(KotlinTarget.CONSTRUCTOR)), TuplesKt.m149to("METHOD", EnumSet.of(KotlinTarget.FUNCTION, KotlinTarget.PROPERTY_GETTER, KotlinTarget.PROPERTY_SETTER)), TuplesKt.m149to("TYPE_USE", EnumSet.of(KotlinTarget.TYPE)));
        targetNameLists = mapOf;
        mapOf2 = MapsKt__MapsKt.mapOf(TuplesKt.m149to("RUNTIME", KotlinRetention.RUNTIME), TuplesKt.m149to("CLASS", KotlinRetention.BINARY), TuplesKt.m149to("SOURCE", KotlinRetention.SOURCE));
        retentionNameList = mapOf2;
    }

    public final Set<KotlinTarget> mapJavaTargetArgumentByName(String str) {
        Set<KotlinTarget> emptySet;
        EnumSet<KotlinTarget> enumSet = targetNameLists.get(str);
        if (enumSet != null) {
            return enumSet;
        }
        emptySet = SetsKt__SetsKt.emptySet();
        return emptySet;
    }

    public final ConstantValue<?> mapJavaRetentionArgument$descriptors_jvm(JavaAnnotationArgument javaAnnotationArgument) {
        JavaEnumValueAnnotationArgument javaEnumValueAnnotationArgument = javaAnnotationArgument instanceof JavaEnumValueAnnotationArgument ? (JavaEnumValueAnnotationArgument) javaAnnotationArgument : null;
        if (javaEnumValueAnnotationArgument != null) {
            Map<String, KotlinRetention> map = retentionNameList;
            Name entryName = javaEnumValueAnnotationArgument.getEntryName();
            KotlinRetention kotlinRetention = map.get(entryName != null ? entryName.asString() : null);
            if (kotlinRetention != null) {
                ClassId classId = ClassId.topLevel(StandardNames.FqNames.annotationRetention);
                Intrinsics.checkNotNullExpressionValue(classId, "topLevel(StandardNames.F…ames.annotationRetention)");
                Name identifier = Name.identifier(kotlinRetention.name());
                Intrinsics.checkNotNullExpressionValue(identifier, "identifier(retention.name)");
                return new EnumValue(classId, identifier);
            }
            return null;
        }
        return null;
    }

    public final ConstantValue<?> mapJavaTargetArguments$descriptors_jvm(List<? extends JavaAnnotationArgument> arguments) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(arguments, "arguments");
        ArrayList<JavaEnumValueAnnotationArgument> arrayList = new ArrayList();
        for (Object obj : arguments) {
            if (obj instanceof JavaEnumValueAnnotationArgument) {
                arrayList.add(obj);
            }
        }
        ArrayList<KotlinTarget> arrayList2 = new ArrayList();
        for (JavaEnumValueAnnotationArgument javaEnumValueAnnotationArgument : arrayList) {
            JavaAnnotationTargetMapper javaAnnotationTargetMapper = INSTANCE;
            Name entryName = javaEnumValueAnnotationArgument.getEntryName();
            CollectionsKt__MutableCollectionsKt.addAll(arrayList2, javaAnnotationTargetMapper.mapJavaTargetArgumentByName(entryName != null ? entryName.asString() : null));
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault);
        for (KotlinTarget kotlinTarget : arrayList2) {
            ClassId classId = ClassId.topLevel(StandardNames.FqNames.annotationTarget);
            Intrinsics.checkNotNullExpressionValue(classId, "topLevel(StandardNames.FqNames.annotationTarget)");
            Name identifier = Name.identifier(kotlinTarget.name());
            Intrinsics.checkNotNullExpressionValue(identifier, "identifier(kotlinTarget.name)");
            arrayList3.add(new EnumValue(classId, identifier));
        }
        return new ArrayValue(arrayList3, new Function1<ModuleDescriptor, KotlinType>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.components.JavaAnnotationTargetMapper$mapJavaTargetArguments$1
            @Override // kotlin.jvm.functions.Function1
            public final KotlinType invoke(ModuleDescriptor module) {
                Intrinsics.checkNotNullParameter(module, "module");
                ValueParameterDescriptor annotationParameterByName = DescriptorResolverUtils.getAnnotationParameterByName(JavaAnnotationMapper.INSTANCE.getTARGET_ANNOTATION_ALLOWED_TARGETS$descriptors_jvm(), module.getBuiltIns().getBuiltInClassByFqName(StandardNames.FqNames.target));
                KotlinType type = annotationParameterByName != null ? annotationParameterByName.getType() : null;
                return type == null ? ErrorUtils.createErrorType(ErrorTypeKind.UNMAPPED_ANNOTATION_TARGET_TYPE, new String[0]) : type;
            }
        });
    }
}
