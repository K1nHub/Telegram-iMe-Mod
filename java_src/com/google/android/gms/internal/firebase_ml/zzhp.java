package com.google.android.gms.internal.firebase_ml;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class zzhp {
    private static final Map<Field, zzhp> zzyd = new WeakHashMap();
    private final String name;
    private final boolean zzzj;
    private final Field zzzk;

    public static zzhp zza(Enum<?> r5) {
        try {
            zzhp zza = zza(r5.getClass().getField(r5.name()));
            Object[] objArr = {r5};
            if (zza != null) {
                return zza;
            }
            throw new IllegalArgumentException(zzld.zzb("enum constant missing @Value or @NullValue annotation: %s", objArr));
        } catch (NoSuchFieldException e) {
            throw new RuntimeException(e);
        }
    }

    public static zzhp zza(Field field) {
        String str = null;
        if (field == null) {
            return null;
        }
        Map<Field, zzhp> map = zzyd;
        synchronized (map) {
            zzhp zzhpVar = map.get(field);
            boolean isEnumConstant = field.isEnumConstant();
            if (zzhpVar == null && (isEnumConstant || !Modifier.isStatic(field.getModifiers()))) {
                if (isEnumConstant) {
                    zzif zzifVar = (zzif) field.getAnnotation(zzif.class);
                    if (zzifVar != null) {
                        str = zzifVar.value();
                    } else if (((zzhv) field.getAnnotation(zzhv.class)) == null) {
                        return null;
                    }
                } else {
                    zzhs zzhsVar = (zzhs) field.getAnnotation(zzhs.class);
                    if (zzhsVar == null) {
                        return null;
                    }
                    str = zzhsVar.value();
                    field.setAccessible(true);
                }
                if ("##default".equals(str)) {
                    str = field.getName();
                }
                zzhpVar = new zzhp(field, str);
                map.put(field, zzhpVar);
            }
            return zzhpVar;
        }
    }

    private zzhp(Field field, String str) {
        this.zzzk = field;
        this.name = str == null ? null : str.intern();
        this.zzzj = zzhj.zza(field.getType());
    }

    public final Field zzgy() {
        return this.zzzk;
    }

    public final String getName() {
        return this.name;
    }

    public final Type getGenericType() {
        return this.zzzk.getGenericType();
    }

    public final boolean zzgz() {
        return Modifier.isFinal(this.zzzk.getModifiers());
    }

    public final boolean isPrimitive() {
        return this.zzzj;
    }

    public final Object zzh(Object obj) {
        return zza(this.zzzk, obj);
    }

    public final void zzb(Object obj, Object obj2) {
        zza(this.zzzk, obj, obj2);
    }

    public final <T extends Enum<T>> T zzha() {
        return (T) Enum.valueOf(this.zzzk.getDeclaringClass(), this.zzzk.getName());
    }

    private static Object zza(Field field, Object obj) {
        try {
            return field.get(obj);
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static void zza(Field field, Object obj, Object obj2) {
        if (Modifier.isFinal(field.getModifiers())) {
            Object zza = zza(field, obj);
            if (obj2 == null) {
                if (zza == null) {
                    return;
                }
            } else if (obj2.equals(zza)) {
                return;
            }
            String valueOf = String.valueOf(zza);
            String valueOf2 = String.valueOf(obj2);
            String name = field.getName();
            String name2 = obj.getClass().getName();
            StringBuilder sb = new StringBuilder(valueOf.length() + 48 + valueOf2.length() + String.valueOf(name).length() + name2.length());
            sb.append("expected final value <");
            sb.append(valueOf);
            sb.append("> but was <");
            sb.append(valueOf2);
            sb.append("> on ");
            sb.append(name);
            sb.append(" field in ");
            sb.append(name2);
            throw new IllegalArgumentException(sb.toString());
        }
        try {
            field.set(obj, obj2);
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException(e);
        } catch (SecurityException e2) {
            throw new IllegalArgumentException(e2);
        }
    }
}
