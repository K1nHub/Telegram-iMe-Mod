package com.google.android.gms.internal.firebase_ml;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;
import p035j$.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public final class zzhj {
    private static final Boolean zzyj;
    private static final String zzyk;
    private static final Character zzyl;
    private static final Byte zzym;
    private static final Short zzyn;
    private static final Integer zzyo;
    private static final Float zzyp;
    private static final Long zzyq;
    private static final Double zzyr;
    private static final BigInteger zzys;
    private static final BigDecimal zzyt;
    private static final zzhm zzyu;
    private static final ConcurrentHashMap<Class<?>, Object> zzyv;

    public static <T> T zzd(Class<?> cls) {
        ConcurrentHashMap<Class<?>, Object> concurrentHashMap = zzyv;
        T t = (T) concurrentHashMap.get(cls);
        if (t == null) {
            synchronized (concurrentHashMap) {
                t = concurrentHashMap.get(cls);
                if (t == null) {
                    int i = 0;
                    if (cls.isArray()) {
                        Class<?> cls2 = cls;
                        do {
                            cls2 = cls2.getComponentType();
                            i++;
                        } while (cls2.isArray());
                        t = (T) Array.newInstance(cls2, new int[i]);
                    } else if (cls.isEnum()) {
                        zzhp zzal = zzhh.zzc(cls).zzal(null);
                        Object[] objArr = {cls};
                        if (zzal == null) {
                            throw new NullPointerException(zzld.zzb("enum missing constant with @NullValue annotation: %s", objArr));
                        }
                        t = zzal.zzha();
                    } else {
                        t = zzie.zzf((Class<Object>) cls);
                    }
                    zzyv.put(cls, t);
                }
            }
        }
        return t;
    }

    public static boolean isNull(Object obj) {
        return obj != null && obj == zzyv.get(obj.getClass());
    }

    public static Map<String, Object> zzf(Object obj) {
        if (obj == null || isNull(obj)) {
            return Collections.emptyMap();
        }
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return new zzhi(obj, false);
    }

    public static <T> T clone(T t) {
        T t2;
        if (t == null || zza(t.getClass())) {
            return t;
        }
        if (t instanceof zzho) {
            return (T) ((zzho) ((zzho) t).clone());
        }
        Class<?> cls = t.getClass();
        if (cls.isArray()) {
            t2 = (T) Array.newInstance(cls.getComponentType(), Array.getLength(t));
        } else if (t instanceof zzhb) {
            t2 = (T) ((zzhb) ((zzhb) t).clone());
        } else if ("java.util.Arrays$ArrayList".equals(cls.getName())) {
            Object[] array = ((List) t).toArray();
            zza(array, array);
            return (T) Arrays.asList(array);
        } else {
            t2 = (T) zzie.zzf((Class<Object>) cls);
        }
        zza(t, t2);
        return t2;
    }

    public static void zza(Object obj, Object obj2) {
        Class<?> cls = obj.getClass();
        int i = 0;
        zzkv.checkArgument(cls == obj2.getClass());
        if (cls.isArray()) {
            zzkv.checkArgument(Array.getLength(obj) == Array.getLength(obj2));
            for (Object obj3 : zzie.zzi(obj)) {
                Array.set(obj2, i, clone(obj3));
                i++;
            }
        } else if (Collection.class.isAssignableFrom(cls)) {
            Collection<Object> collection = (Collection) obj;
            if (ArrayList.class.isAssignableFrom(cls)) {
                ((ArrayList) obj2).ensureCapacity(collection.size());
            }
            Collection collection2 = (Collection) obj2;
            for (Object obj4 : collection) {
                collection2.add(clone(obj4));
            }
        } else {
            boolean isAssignableFrom = zzho.class.isAssignableFrom(cls);
            if (isAssignableFrom || !Map.class.isAssignableFrom(cls)) {
                zzhh zzc = isAssignableFrom ? ((zzho) obj).zztq : zzhh.zzc(cls);
                for (String str : zzc.zzyi) {
                    zzhp zzal = zzc.zzal(str);
                    if (!zzal.zzgz() && (!isAssignableFrom || !zzal.isPrimitive())) {
                        Object zzh = zzal.zzh(obj);
                        if (zzh != null) {
                            zzal.zzb(obj2, clone(zzh));
                        }
                    }
                }
            } else if (zzhb.class.isAssignableFrom(cls)) {
                zzhb zzhbVar = (zzhb) obj2;
                zzhb zzhbVar2 = (zzhb) obj;
                int size = zzhbVar2.size();
                while (i < size) {
                    zzhbVar.set(i, clone(zzhbVar2.zzac(i)));
                    i++;
                }
            } else {
                Map map = (Map) obj2;
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    map.put((String) entry.getKey(), clone(entry.getValue()));
                }
            }
        }
    }

    public static boolean zza(Type type) {
        if (type instanceof WildcardType) {
            type = zzie.zza((WildcardType) type);
        }
        if (type instanceof Class) {
            Class cls = (Class) type;
            return cls.isPrimitive() || cls == Character.class || cls == String.class || cls == Integer.class || cls == Long.class || cls == Short.class || cls == Byte.class || cls == Float.class || cls == Double.class || cls == BigInteger.class || cls == BigDecimal.class || cls == zzhm.class || cls == Boolean.class;
        }
        return false;
    }

    public static boolean zzg(Object obj) {
        return obj == null || zza(obj.getClass());
    }

    public static Object zza(Type type, String str) {
        Class cls = type instanceof Class ? (Class) type : null;
        if (type == null || cls != null) {
            if (cls == Void.class) {
                return null;
            }
            if (str == null || cls == null || cls.isAssignableFrom(String.class)) {
                return str;
            }
            if (cls == Character.class || cls == Character.TYPE) {
                if (str.length() != 1) {
                    String valueOf = String.valueOf(cls);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 37);
                    sb.append("expected type Character/char but got ");
                    sb.append(valueOf);
                    throw new IllegalArgumentException(sb.toString());
                }
                return Character.valueOf(str.charAt(0));
            } else if (cls == Boolean.class || cls == Boolean.TYPE) {
                return Boolean.valueOf(str);
            } else {
                if (cls == Byte.class || cls == Byte.TYPE) {
                    return Byte.valueOf(str);
                }
                if (cls == Short.class || cls == Short.TYPE) {
                    return Short.valueOf(str);
                }
                if (cls == Integer.class || cls == Integer.TYPE) {
                    return Integer.valueOf(str);
                }
                if (cls == Long.class || cls == Long.TYPE) {
                    return Long.valueOf(str);
                }
                if (cls == Float.class || cls == Float.TYPE) {
                    return Float.valueOf(str);
                }
                if (cls == Double.class || cls == Double.TYPE) {
                    return Double.valueOf(str);
                }
                if (cls == zzhm.class) {
                    return zzhm.zzam(str);
                }
                if (cls == BigInteger.class) {
                    return new BigInteger(str);
                }
                if (cls == BigDecimal.class) {
                    return new BigDecimal(str);
                }
                if (cls.isEnum()) {
                    if (!zzhh.zzc(cls).zzyi.contains(str)) {
                        throw new IllegalArgumentException(String.format("given enum name %s not part of enumeration", str));
                    }
                    return zzhh.zzc(cls).zzal(str).zzha();
                }
            }
        }
        String valueOf2 = String.valueOf(type);
        StringBuilder sb2 = new StringBuilder(valueOf2.length() + 35);
        sb2.append("expected primitive class, but got: ");
        sb2.append(valueOf2);
        throw new IllegalArgumentException(sb2.toString());
    }

    public static Collection<Object> zzb(Type type) {
        if (type instanceof WildcardType) {
            type = zzie.zza((WildcardType) type);
        }
        if (type instanceof ParameterizedType) {
            type = ((ParameterizedType) type).getRawType();
        }
        Class cls = type instanceof Class ? (Class) type : null;
        if (type == null || (type instanceof GenericArrayType) || (cls != null && (cls.isArray() || cls.isAssignableFrom(ArrayList.class)))) {
            return new ArrayList();
        }
        if (cls == null) {
            String valueOf = String.valueOf(type);
            StringBuilder sb = new StringBuilder(valueOf.length() + 39);
            sb.append("unable to create new instance of type: ");
            sb.append(valueOf);
            throw new IllegalArgumentException(sb.toString());
        } else if (cls.isAssignableFrom(HashSet.class)) {
            return new HashSet();
        } else {
            if (cls.isAssignableFrom(TreeSet.class)) {
                return new TreeSet();
            }
            return (Collection) zzie.zzf((Class<Object>) cls);
        }
    }

    public static Map<String, Object> zze(Class<?> cls) {
        if (cls == null || cls.isAssignableFrom(zzhb.class)) {
            return new zzhb();
        }
        if (cls.isAssignableFrom(TreeMap.class)) {
            return new TreeMap();
        }
        return (Map) zzie.zzf((Class<Object>) cls);
    }

    public static Type zza(List<Type> list, Type type) {
        if (type instanceof WildcardType) {
            type = zzie.zza((WildcardType) type);
        }
        while (type instanceof TypeVariable) {
            Type zza = zzie.zza(list, (TypeVariable) type);
            if (zza != null) {
                type = zza;
            }
            if (type instanceof TypeVariable) {
                type = ((TypeVariable) type).getBounds()[0];
            }
        }
        return type;
    }

    static {
        Boolean bool = new Boolean(true);
        zzyj = bool;
        String str = new String();
        zzyk = str;
        Character ch = new Character((char) 0);
        zzyl = ch;
        Byte b = new Byte((byte) 0);
        zzym = b;
        Short sh = new Short((short) 0);
        zzyn = sh;
        Integer num = new Integer(0);
        zzyo = num;
        Float f = new Float((float) BitmapDescriptorFactory.HUE_RED);
        zzyp = f;
        Long l = new Long(0L);
        zzyq = l;
        Double d = new Double(0.0d);
        zzyr = d;
        BigInteger bigInteger = new BigInteger(SessionDescription.SUPPORTED_SDP_VERSION);
        zzys = bigInteger;
        BigDecimal bigDecimal = new BigDecimal(SessionDescription.SUPPORTED_SDP_VERSION);
        zzyt = bigDecimal;
        zzhm zzhmVar = new zzhm(0L);
        zzyu = zzhmVar;
        ConcurrentHashMap<Class<?>, Object> concurrentHashMap = new ConcurrentHashMap<>();
        zzyv = concurrentHashMap;
        concurrentHashMap.put(Boolean.class, bool);
        concurrentHashMap.put(String.class, str);
        concurrentHashMap.put(Character.class, ch);
        concurrentHashMap.put(Byte.class, b);
        concurrentHashMap.put(Short.class, sh);
        concurrentHashMap.put(Integer.class, num);
        concurrentHashMap.put(Float.class, f);
        concurrentHashMap.put(Long.class, l);
        concurrentHashMap.put(Double.class, d);
        concurrentHashMap.put(BigInteger.class, bigInteger);
        concurrentHashMap.put(BigDecimal.class, bigDecimal);
        concurrentHashMap.put(zzhm.class, zzhmVar);
    }
}
