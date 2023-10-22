package kotlin.reflect.jvm.internal.impl.resolve.jvm;

import java.util.EnumMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.name.FqName;
/* loaded from: classes4.dex */
public enum JvmPrimitiveType {
    BOOLEAN(PrimitiveType.BOOLEAN, "boolean", "Z", "java.lang.Boolean"),
    CHAR(PrimitiveType.CHAR, "char", "C", "java.lang.Character"),
    BYTE(PrimitiveType.BYTE, "byte", "B", "java.lang.Byte"),
    SHORT(PrimitiveType.SHORT, "short", "S", "java.lang.Short"),
    INT(PrimitiveType.INT, "int", "I", "java.lang.Integer"),
    FLOAT(PrimitiveType.FLOAT, "float", "F", "java.lang.Float"),
    LONG(PrimitiveType.LONG, "long", "J", "java.lang.Long"),
    DOUBLE(PrimitiveType.DOUBLE, "double", "D", "java.lang.Double");
    
    private final String desc;
    private final String name;
    private final PrimitiveType primitiveType;
    private final FqName wrapperFqName;
    private static final Set<FqName> WRAPPERS_CLASS_NAMES = new HashSet();
    private static final Map<String, JvmPrimitiveType> TYPE_BY_NAME = new HashMap();
    private static final Map<PrimitiveType, JvmPrimitiveType> TYPE_BY_PRIMITIVE_TYPE = new EnumMap(PrimitiveType.class);
    private static final Map<String, JvmPrimitiveType> TYPE_BY_DESC = new HashMap();

    /* JADX WARN: Removed duplicated region for block: B:11:0x0015  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x004a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0082 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0087  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static /* synthetic */ void $$$reportNull$$$0(int r7) {
        /*
            r0 = 4
            r1 = 2
            if (r7 == r1) goto Lc
            if (r7 == r0) goto Lc
            switch(r7) {
                case 10: goto Lc;
                case 11: goto Lc;
                case 12: goto Lc;
                case 13: goto Lc;
                default: goto L9;
            }
        L9:
            java.lang.String r2 = "Argument for @NotNull parameter '%s' of %s.%s must not be null"
            goto Le
        Lc:
            java.lang.String r2 = "@NotNull method %s.%s must not return null"
        Le:
            if (r7 == r1) goto L17
            if (r7 == r0) goto L17
            switch(r7) {
                case 10: goto L17;
                case 11: goto L17;
                case 12: goto L17;
                case 13: goto L17;
                default: goto L15;
            }
        L15:
            r3 = 3
            goto L18
        L17:
            r3 = r1
        L18:
            java.lang.Object[] r3 = new java.lang.Object[r3]
            java.lang.String r4 = "kotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType"
            r5 = 0
            switch(r7) {
                case 1: goto L40;
                case 2: goto L3d;
                case 3: goto L37;
                case 4: goto L3d;
                case 5: goto L32;
                case 6: goto L2c;
                case 7: goto L40;
                case 8: goto L32;
                case 9: goto L26;
                case 10: goto L3d;
                case 11: goto L3d;
                case 12: goto L3d;
                case 13: goto L3d;
                default: goto L21;
            }
        L21:
            java.lang.String r6 = "className"
            r3[r5] = r6
            goto L45
        L26:
            java.lang.String r6 = "wrapperClassName"
            r3[r5] = r6
            goto L45
        L2c:
            java.lang.String r6 = "primitiveType"
            r3[r5] = r6
            goto L45
        L32:
            java.lang.String r6 = "desc"
            r3[r5] = r6
            goto L45
        L37:
            java.lang.String r6 = "type"
            r3[r5] = r6
            goto L45
        L3d:
            r3[r5] = r4
            goto L45
        L40:
            java.lang.String r6 = "name"
            r3[r5] = r6
        L45:
            java.lang.String r5 = "get"
            r6 = 1
            if (r7 == r1) goto L66
            if (r7 == r0) goto L66
            switch(r7) {
                case 10: goto L61;
                case 11: goto L5c;
                case 12: goto L57;
                case 13: goto L52;
                default: goto L4f;
            }
        L4f:
            r3[r6] = r4
            goto L68
        L52:
            java.lang.String r4 = "getWrapperFqName"
            r3[r6] = r4
            goto L68
        L57:
            java.lang.String r4 = "getDesc"
            r3[r6] = r4
            goto L68
        L5c:
            java.lang.String r4 = "getJavaKeywordName"
            r3[r6] = r4
            goto L68
        L61:
            java.lang.String r4 = "getPrimitiveType"
            r3[r6] = r4
            goto L68
        L66:
            r3[r6] = r5
        L68:
            switch(r7) {
                case 1: goto L7a;
                case 2: goto L7c;
                case 3: goto L7a;
                case 4: goto L7c;
                case 5: goto L75;
                case 6: goto L70;
                case 7: goto L70;
                case 8: goto L70;
                case 9: goto L70;
                case 10: goto L7c;
                case 11: goto L7c;
                case 12: goto L7c;
                case 13: goto L7c;
                default: goto L6b;
            }
        L6b:
            java.lang.String r4 = "isWrapperClassName"
            r3[r1] = r4
            goto L7c
        L70:
            java.lang.String r4 = "<init>"
            r3[r1] = r4
            goto L7c
        L75:
            java.lang.String r4 = "getByDesc"
            r3[r1] = r4
            goto L7c
        L7a:
            r3[r1] = r5
        L7c:
            java.lang.String r2 = java.lang.String.format(r2, r3)
            if (r7 == r1) goto L8d
            if (r7 == r0) goto L8d
            switch(r7) {
                case 10: goto L8d;
                case 11: goto L8d;
                case 12: goto L8d;
                case 13: goto L8d;
                default: goto L87;
            }
        L87:
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
            r7.<init>(r2)
            goto L92
        L8d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            r7.<init>(r2)
        L92:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType.$$$reportNull$$$0(int):void");
    }

    static {
        JvmPrimitiveType[] values;
        for (JvmPrimitiveType jvmPrimitiveType : values()) {
            WRAPPERS_CLASS_NAMES.add(jvmPrimitiveType.getWrapperFqName());
            TYPE_BY_NAME.put(jvmPrimitiveType.getJavaKeywordName(), jvmPrimitiveType);
            TYPE_BY_PRIMITIVE_TYPE.put(jvmPrimitiveType.getPrimitiveType(), jvmPrimitiveType);
            TYPE_BY_DESC.put(jvmPrimitiveType.getDesc(), jvmPrimitiveType);
        }
    }

    public static JvmPrimitiveType get(String str) {
        if (str == null) {
            $$$reportNull$$$0(1);
        }
        JvmPrimitiveType jvmPrimitiveType = TYPE_BY_NAME.get(str);
        if (jvmPrimitiveType != null) {
            return jvmPrimitiveType;
        }
        throw new AssertionError("Non-primitive type name passed: " + str);
    }

    public static JvmPrimitiveType get(PrimitiveType primitiveType) {
        if (primitiveType == null) {
            $$$reportNull$$$0(3);
        }
        JvmPrimitiveType jvmPrimitiveType = TYPE_BY_PRIMITIVE_TYPE.get(primitiveType);
        if (jvmPrimitiveType == null) {
            $$$reportNull$$$0(4);
        }
        return jvmPrimitiveType;
    }

    JvmPrimitiveType(PrimitiveType primitiveType, String str, String str2, String str3) {
        if (primitiveType == null) {
            $$$reportNull$$$0(6);
        }
        if (str == null) {
            $$$reportNull$$$0(7);
        }
        if (str2 == null) {
            $$$reportNull$$$0(8);
        }
        if (str3 == null) {
            $$$reportNull$$$0(9);
        }
        this.primitiveType = primitiveType;
        this.name = str;
        this.desc = str2;
        this.wrapperFqName = new FqName(str3);
    }

    public PrimitiveType getPrimitiveType() {
        PrimitiveType primitiveType = this.primitiveType;
        if (primitiveType == null) {
            $$$reportNull$$$0(10);
        }
        return primitiveType;
    }

    public String getJavaKeywordName() {
        String str = this.name;
        if (str == null) {
            $$$reportNull$$$0(11);
        }
        return str;
    }

    public String getDesc() {
        String str = this.desc;
        if (str == null) {
            $$$reportNull$$$0(12);
        }
        return str;
    }

    public FqName getWrapperFqName() {
        FqName fqName = this.wrapperFqName;
        if (fqName == null) {
            $$$reportNull$$$0(13);
        }
        return fqName;
    }
}
