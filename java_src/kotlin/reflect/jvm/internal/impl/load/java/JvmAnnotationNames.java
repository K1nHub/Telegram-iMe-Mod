package kotlin.reflect.jvm.internal.impl.load.java;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmClassName;
/* loaded from: classes4.dex */
public final class JvmAnnotationNames {
    public static final Name DEFAULT_ANNOTATION_MEMBER_NAME;
    public static final FqName DEPRECATED_ANNOTATION;
    public static final FqName DOCUMENTED_ANNOTATION;
    public static final FqName ENHANCED_MUTABILITY_ANNOTATION;
    public static final FqName ENHANCED_NULLABILITY_ANNOTATION;
    public static final FqName JETBRAINS_MUTABLE_ANNOTATION;
    public static final FqName JETBRAINS_NOT_NULL_ANNOTATION;
    public static final FqName JETBRAINS_NULLABLE_ANNOTATION;
    public static final FqName JETBRAINS_READONLY_ANNOTATION;
    public static final FqName METADATA_FQ_NAME;
    public static final FqName MUTABLE_ANNOTATION;
    public static final FqName PURELY_IMPLEMENTS_ANNOTATION;
    public static final FqName READONLY_ANNOTATION;
    public static final FqName REPEATABLE_ANNOTATION;
    public static final FqName RETENTION_ANNOTATION;
    public static final FqName SERIALIZED_IR_FQ_NAME;
    public static final FqName TARGET_ANNOTATION;

    static {
        FqName fqName = new FqName("kotlin.Metadata");
        METADATA_FQ_NAME = fqName;
        StringBuilder sb = new StringBuilder();
        sb.append("L");
        sb.append(JvmClassName.byFqNameWithoutInnerClasses(fqName).getInternalName());
        sb.append(";");
        DEFAULT_ANNOTATION_MEMBER_NAME = Name.identifier(AppMeasurementSdk.ConditionalUserProperty.VALUE);
        TARGET_ANNOTATION = new FqName(Target.class.getName());
        new FqName(ElementType.class.getName());
        RETENTION_ANNOTATION = new FqName(Retention.class.getName());
        new FqName(RetentionPolicy.class.getName());
        DEPRECATED_ANNOTATION = new FqName(Deprecated.class.getName());
        DOCUMENTED_ANNOTATION = new FqName(Documented.class.getName());
        REPEATABLE_ANNOTATION = new FqName("java.lang.annotation.Repeatable");
        JETBRAINS_NOT_NULL_ANNOTATION = new FqName("org.jetbrains.annotations.NotNull");
        JETBRAINS_NULLABLE_ANNOTATION = new FqName("org.jetbrains.annotations.Nullable");
        JETBRAINS_MUTABLE_ANNOTATION = new FqName("org.jetbrains.annotations.Mutable");
        JETBRAINS_READONLY_ANNOTATION = new FqName("org.jetbrains.annotations.ReadOnly");
        READONLY_ANNOTATION = new FqName("kotlin.annotations.jvm.ReadOnly");
        MUTABLE_ANNOTATION = new FqName("kotlin.annotations.jvm.Mutable");
        PURELY_IMPLEMENTS_ANNOTATION = new FqName("kotlin.jvm.PurelyImplements");
        new FqName("kotlin.jvm.internal");
        FqName fqName2 = new FqName("kotlin.jvm.internal.SerializedIr");
        SERIALIZED_IR_FQ_NAME = fqName2;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("L");
        sb2.append(JvmClassName.byFqNameWithoutInnerClasses(fqName2).getInternalName());
        sb2.append(";");
        ENHANCED_NULLABILITY_ANNOTATION = new FqName("kotlin.jvm.internal.EnhancedNullability");
        ENHANCED_MUTABILITY_ANNOTATION = new FqName("kotlin.jvm.internal.EnhancedMutability");
    }
}
