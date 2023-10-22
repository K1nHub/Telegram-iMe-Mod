package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.util.capitalizeDecapitalize.CapitalizeDecapitalizeKt;
import kotlin.text.StringsKt__StringsJVMKt;
/* compiled from: JvmAbi.kt */
/* loaded from: classes4.dex */
public final class JvmAbi {
    public static final JvmAbi INSTANCE = new JvmAbi();
    public static final FqName JVM_FIELD_ANNOTATION_FQ_NAME;
    private static final ClassId REPEATABLE_ANNOTATION_CONTAINER_META_ANNOTATION;

    private JvmAbi() {
    }

    static {
        FqName fqName = new FqName("kotlin.jvm.JvmField");
        JVM_FIELD_ANNOTATION_FQ_NAME = fqName;
        Intrinsics.checkNotNullExpressionValue(ClassId.topLevel(fqName), "topLevel(JVM_FIELD_ANNOTATION_FQ_NAME)");
        Intrinsics.checkNotNullExpressionValue(ClassId.topLevel(new FqName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl")), "topLevel(FqName(\"kotlin.….ReflectionFactoryImpl\"))");
        ClassId fromString = ClassId.fromString("kotlin/jvm/internal/RepeatableContainer");
        Intrinsics.checkNotNullExpressionValue(fromString, "fromString(\"kotlin/jvm/i…nal/RepeatableContainer\")");
        REPEATABLE_ANNOTATION_CONTAINER_META_ANNOTATION = fromString;
    }

    public final ClassId getREPEATABLE_ANNOTATION_CONTAINER_META_ANNOTATION() {
        return REPEATABLE_ANNOTATION_CONTAINER_META_ANNOTATION;
    }

    public static final boolean isGetterName(String name) {
        boolean startsWith$default;
        boolean startsWith$default2;
        Intrinsics.checkNotNullParameter(name, "name");
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(name, "get", false, 2, null);
        if (!startsWith$default) {
            startsWith$default2 = StringsKt__StringsJVMKt.startsWith$default(name, "is", false, 2, null);
            if (!startsWith$default2) {
                return false;
            }
        }
        return true;
    }

    public static final boolean isSetterName(String name) {
        boolean startsWith$default;
        Intrinsics.checkNotNullParameter(name, "name");
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(name, "set", false, 2, null);
        return startsWith$default;
    }

    public static final String getterName(String propertyName) {
        Intrinsics.checkNotNullParameter(propertyName, "propertyName");
        if (startsWithIsPrefix(propertyName)) {
            return propertyName;
        }
        return "get" + CapitalizeDecapitalizeKt.capitalizeAsciiOnly(propertyName);
    }

    public static final String setterName(String propertyName) {
        String capitalizeAsciiOnly;
        Intrinsics.checkNotNullParameter(propertyName, "propertyName");
        StringBuilder sb = new StringBuilder();
        sb.append("set");
        if (startsWithIsPrefix(propertyName)) {
            capitalizeAsciiOnly = propertyName.substring(2);
            Intrinsics.checkNotNullExpressionValue(capitalizeAsciiOnly, "this as java.lang.String).substring(startIndex)");
        } else {
            capitalizeAsciiOnly = CapitalizeDecapitalizeKt.capitalizeAsciiOnly(propertyName);
        }
        sb.append(capitalizeAsciiOnly);
        return sb.toString();
    }

    public static final boolean startsWithIsPrefix(String name) {
        boolean startsWith$default;
        Intrinsics.checkNotNullParameter(name, "name");
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(name, "is", false, 2, null);
        if (startsWith$default && name.length() != 2) {
            char charAt = name.charAt(2);
            return Intrinsics.compare(97, (int) charAt) > 0 || Intrinsics.compare((int) charAt, 122) > 0;
        }
        return false;
    }
}
