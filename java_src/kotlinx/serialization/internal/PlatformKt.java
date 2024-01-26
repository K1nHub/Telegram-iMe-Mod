package kotlinx.serialization.internal;

import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Polymorphic;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.Serializable;
/* compiled from: Platform.kt */
/* loaded from: classes4.dex */
public final class PlatformKt {
    public static final <T> KSerializer<T> compiledSerializerImpl(KClass<T> kClass) {
        Intrinsics.checkNotNullParameter(kClass, "<this>");
        return constructSerializerForGivenTypeArgs(kClass, new KSerializer[0]);
    }

    public static final <T, E extends T> E[] toNativeArrayImpl(ArrayList<E> arrayList, KClass<T> eClass) {
        Intrinsics.checkNotNullParameter(arrayList, "<this>");
        Intrinsics.checkNotNullParameter(eClass, "eClass");
        Object newInstance = Array.newInstance(JvmClassMappingKt.getJavaClass(eClass), arrayList.size());
        Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type kotlin.Array<E of kotlinx.serialization.internal.PlatformKt.toNativeArrayImpl>");
        E[] eArr = (E[]) arrayList.toArray((Object[]) newInstance);
        Intrinsics.checkNotNullExpressionValue(eArr, "toArray(java.lang.reflec….java, size) as Array<E>)");
        return eArr;
    }

    public static final Void platformSpecificSerializerNotRegistered(KClass<?> kClass) {
        Intrinsics.checkNotNullParameter(kClass, "<this>");
        Platform_commonKt.serializerNotRegistered(kClass);
        throw new KotlinNothingValueException();
    }

    public static final <T> KSerializer<T> constructSerializerForGivenTypeArgs(KClass<T> kClass, KSerializer<Object>... args) {
        Intrinsics.checkNotNullParameter(kClass, "<this>");
        Intrinsics.checkNotNullParameter(args, "args");
        return constructSerializerForGivenTypeArgs(JvmClassMappingKt.getJavaClass(kClass), (KSerializer[]) Arrays.copyOf(args, args.length));
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0063, code lost:
        if (r3 == false) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0082 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> kotlinx.serialization.KSerializer<T> constructSerializerForGivenTypeArgs(java.lang.Class<T> r8, kotlinx.serialization.KSerializer<java.lang.Object>... r9) {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.lang.String r0 = "args"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            boolean r0 = r8.isEnum()
            if (r0 == 0) goto L1b
            boolean r0 = isNotAnnotated(r8)
            if (r0 == 0) goto L1b
            kotlinx.serialization.KSerializer r8 = createEnumSerializer(r8)
            return r8
        L1b:
            boolean r0 = r8.isInterface()
            if (r0 == 0) goto L28
            kotlinx.serialization.KSerializer r0 = interfaceSerializer(r8)
            if (r0 == 0) goto L28
            return r0
        L28:
            int r0 = r9.length
            java.lang.Object[] r9 = java.util.Arrays.copyOf(r9, r0)
            kotlinx.serialization.KSerializer[] r9 = (kotlinx.serialization.KSerializer[]) r9
            kotlinx.serialization.KSerializer r9 = invokeSerializerOnCompanion(r8, r9)
            if (r9 == 0) goto L36
            return r9
        L36:
            kotlinx.serialization.KSerializer r9 = findObjectSerializer(r8)
            if (r9 == 0) goto L3d
            return r9
        L3d:
            r9 = 0
            java.lang.Class[] r0 = r8.getDeclaredClasses()     // Catch: java.lang.NoSuchFieldException -> L7f
            java.lang.String r1 = "declaredClasses"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)     // Catch: java.lang.NoSuchFieldException -> L7f
            int r1 = r0.length     // Catch: java.lang.NoSuchFieldException -> L7f
            r2 = 0
            r4 = r9
            r3 = r2
        L4b:
            if (r2 >= r1) goto L63
            r5 = r0[r2]     // Catch: java.lang.NoSuchFieldException -> L7f
            java.lang.String r6 = r5.getSimpleName()     // Catch: java.lang.NoSuchFieldException -> L7f
            java.lang.String r7 = "$serializer"
            boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r7)     // Catch: java.lang.NoSuchFieldException -> L7f
            if (r6 == 0) goto L60
            if (r3 == 0) goto L5e
            goto L65
        L5e:
            r3 = 1
            r4 = r5
        L60:
            int r2 = r2 + 1
            goto L4b
        L63:
            if (r3 != 0) goto L66
        L65:
            r4 = r9
        L66:
            java.lang.Class r4 = (java.lang.Class) r4     // Catch: java.lang.NoSuchFieldException -> L7f
            if (r4 == 0) goto L77
            java.lang.String r0 = "INSTANCE"
            java.lang.reflect.Field r0 = r4.getField(r0)     // Catch: java.lang.NoSuchFieldException -> L7f
            if (r0 == 0) goto L77
            java.lang.Object r0 = r0.get(r9)     // Catch: java.lang.NoSuchFieldException -> L7f
            goto L78
        L77:
            r0 = r9
        L78:
            boolean r1 = r0 instanceof kotlinx.serialization.KSerializer     // Catch: java.lang.NoSuchFieldException -> L7f
            if (r1 == 0) goto L7f
            kotlinx.serialization.KSerializer r0 = (kotlinx.serialization.KSerializer) r0     // Catch: java.lang.NoSuchFieldException -> L7f
            goto L80
        L7f:
            r0 = r9
        L80:
            if (r0 == 0) goto L83
            return r0
        L83:
            boolean r0 = isPolymorphicSerializer(r8)
            if (r0 == 0) goto L92
            kotlinx.serialization.PolymorphicSerializer r9 = new kotlinx.serialization.PolymorphicSerializer
            kotlin.reflect.KClass r8 = kotlin.jvm.JvmClassMappingKt.getKotlinClass(r8)
            r9.<init>(r8)
        L92:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.internal.PlatformKt.constructSerializerForGivenTypeArgs(java.lang.Class, kotlinx.serialization.KSerializer[]):kotlinx.serialization.KSerializer");
    }

    private static final <T> boolean isNotAnnotated(Class<T> cls) {
        return cls.getAnnotation(Serializable.class) == null && cls.getAnnotation(Polymorphic.class) == null;
    }

    private static final <T> boolean isPolymorphicSerializer(Class<T> cls) {
        if (cls.getAnnotation(Polymorphic.class) != null) {
            return true;
        }
        Serializable serializable = (Serializable) cls.getAnnotation(Serializable.class);
        return serializable != null && Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(serializable.with()), Reflection.getOrCreateKotlinClass(PolymorphicSerializer.class));
    }

    private static final <T> KSerializer<T> interfaceSerializer(Class<T> cls) {
        Serializable serializable = (Serializable) cls.getAnnotation(Serializable.class);
        if (serializable == null || Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(serializable.with()), Reflection.getOrCreateKotlinClass(PolymorphicSerializer.class))) {
            return new PolymorphicSerializer(JvmClassMappingKt.getKotlinClass(cls));
        }
        return null;
    }

    private static final <T> KSerializer<T> invokeSerializerOnCompanion(Class<?> cls, KSerializer<Object>... kSerializerArr) {
        Class[] clsArr;
        Object companionOrNull = companionOrNull(cls);
        if (companionOrNull == null) {
            return null;
        }
        try {
            if (kSerializerArr.length == 0) {
                clsArr = new Class[0];
            } else {
                int length = kSerializerArr.length;
                Class[] clsArr2 = new Class[length];
                for (int i = 0; i < length; i++) {
                    clsArr2[i] = KSerializer.class;
                }
                clsArr = clsArr2;
            }
            Object invoke = companionOrNull.getClass().getDeclaredMethod("serializer", (Class[]) Arrays.copyOf(clsArr, clsArr.length)).invoke(companionOrNull, Arrays.copyOf(kSerializerArr, kSerializerArr.length));
            if (invoke instanceof KSerializer) {
                return (KSerializer) invoke;
            }
            return null;
        } catch (NoSuchMethodException unused) {
            return null;
        } catch (InvocationTargetException e) {
            Throwable cause = e.getCause();
            if (cause == null) {
                throw e;
            }
            String message = cause.getMessage();
            if (message == null) {
                message = e.getMessage();
            }
            throw new InvocationTargetException(cause, message);
        }
    }

    private static final Object companionOrNull(Class<?> cls) {
        try {
            Field declaredField = cls.getDeclaredField("Companion");
            declaredField.setAccessible(true);
            return declaredField.get(null);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static final <T> KSerializer<T> createEnumSerializer(Class<T> cls) {
        T[] enumConstants = cls.getEnumConstants();
        String canonicalName = cls.getCanonicalName();
        Intrinsics.checkNotNullExpressionValue(canonicalName, "canonicalName");
        Intrinsics.checkNotNull(enumConstants, "null cannot be cast to non-null type kotlin.Array<out kotlin.Enum<*>>");
        return new EnumSerializer(canonicalName, (Enum[]) enumConstants);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0041, code lost:
        if (r5 == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0097, code lost:
        if (r5 == false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0099, code lost:
        r6 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0094 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final <T> kotlinx.serialization.KSerializer<T> findObjectSerializer(java.lang.Class<T> r11) {
        /*
            java.lang.reflect.Field[] r0 = r11.getDeclaredFields()
            java.lang.String r1 = "declaredFields"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            int r1 = r0.length
            r2 = 0
            r3 = 0
            r4 = r2
            r5 = r4
            r6 = r3
        Lf:
            r7 = 1
            if (r4 >= r1) goto L41
            r8 = r0[r4]
            java.lang.String r9 = r8.getName()
            java.lang.String r10 = "INSTANCE"
            boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r9, r10)
            if (r9 == 0) goto L36
            java.lang.Class r9 = r8.getType()
            boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r9, r11)
            if (r9 == 0) goto L36
            int r9 = r8.getModifiers()
            boolean r9 = java.lang.reflect.Modifier.isStatic(r9)
            if (r9 == 0) goto L36
            r9 = r7
            goto L37
        L36:
            r9 = r2
        L37:
            if (r9 == 0) goto L3e
            if (r5 == 0) goto L3c
            goto L43
        L3c:
            r5 = r7
            r6 = r8
        L3e:
            int r4 = r4 + 1
            goto Lf
        L41:
            if (r5 != 0) goto L44
        L43:
            r6 = r3
        L44:
            java.lang.reflect.Field r6 = (java.lang.reflect.Field) r6
            if (r6 != 0) goto L49
            return r3
        L49:
            java.lang.Object r0 = r6.get(r3)
            java.lang.reflect.Method[] r11 = r11.getMethods()
            java.lang.String r1 = "methods"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r11, r1)
            int r1 = r11.length
            r4 = r2
            r5 = r4
            r6 = r3
        L5b:
            if (r4 >= r1) goto L97
            r8 = r11[r4]
            java.lang.String r9 = r8.getName()
            java.lang.String r10 = "serializer"
            boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r9, r10)
            if (r9 == 0) goto L8c
            java.lang.Class[] r9 = r8.getParameterTypes()
            java.lang.String r10 = "it.parameterTypes"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r10)
            int r9 = r9.length
            if (r9 != 0) goto L7b
            r9 = r7
            goto L7c
        L7b:
            r9 = r2
        L7c:
            if (r9 == 0) goto L8c
            java.lang.Class r9 = r8.getReturnType()
            java.lang.Class<kotlinx.serialization.KSerializer> r10 = kotlinx.serialization.KSerializer.class
            boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r9, r10)
            if (r9 == 0) goto L8c
            r9 = r7
            goto L8d
        L8c:
            r9 = r2
        L8d:
            if (r9 == 0) goto L94
            if (r5 == 0) goto L92
            goto L99
        L92:
            r5 = r7
            r6 = r8
        L94:
            int r4 = r4 + 1
            goto L5b
        L97:
            if (r5 != 0) goto L9a
        L99:
            r6 = r3
        L9a:
            java.lang.reflect.Method r6 = (java.lang.reflect.Method) r6
            if (r6 != 0) goto L9f
            return r3
        L9f:
            java.lang.Object[] r11 = new java.lang.Object[r2]
            java.lang.Object r11 = r6.invoke(r0, r11)
            boolean r0 = r11 instanceof kotlinx.serialization.KSerializer
            if (r0 == 0) goto Lac
            r3 = r11
            kotlinx.serialization.KSerializer r3 = (kotlinx.serialization.KSerializer) r3
        Lac:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.internal.PlatformKt.findObjectSerializer(java.lang.Class):kotlinx.serialization.KSerializer");
    }

    public static final boolean isReferenceArray(KClass<Object> rootClass) {
        Intrinsics.checkNotNullParameter(rootClass, "rootClass");
        return JvmClassMappingKt.getJavaClass(rootClass).isArray();
    }
}
