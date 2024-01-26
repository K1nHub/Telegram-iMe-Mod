package com.google.android.gms.internal.firebase_ml;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeSet;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class zzhh {
    private static final Map<Class<?>, zzhh> zzyd = new WeakHashMap();
    private static final Map<Class<?>, zzhh> zzye = new WeakHashMap();
    private final Class<?> zzyf;
    private final boolean zzyg;
    private final IdentityHashMap<String, zzhp> zzyh = new IdentityHashMap<>();
    final List<String> zzyi;

    public static zzhh zzc(Class<?> cls) {
        return zza(cls, false);
    }

    public static zzhh zza(Class<?> cls, boolean z) {
        zzhh zzhhVar;
        if (cls == null) {
            return null;
        }
        Map<Class<?>, zzhh> map = z ? zzye : zzyd;
        synchronized (map) {
            zzhhVar = map.get(cls);
            if (zzhhVar == null) {
                zzhhVar = new zzhh(cls, z);
                map.put(cls, zzhhVar);
            }
        }
        return zzhhVar;
    }

    public final boolean zzgu() {
        return this.zzyg;
    }

    public final zzhp zzal(String str) {
        if (str != null) {
            if (this.zzyg) {
                str = str.toLowerCase(Locale.US);
            }
            str = str.intern();
        }
        return this.zzyh.get(str);
    }

    public final boolean isEnum() {
        return this.zzyf.isEnum();
    }

    private zzhh(Class<?> cls, boolean z) {
        Field[] declaredFields;
        this.zzyf = cls;
        this.zzyg = z;
        boolean z2 = (z && cls.isEnum()) ? false : true;
        String valueOf = String.valueOf(cls);
        StringBuilder sb = new StringBuilder(valueOf.length() + 31);
        sb.append("cannot ignore case on an enum: ");
        sb.append(valueOf);
        zzkv.checkArgument(z2, sb.toString());
        TreeSet treeSet = new TreeSet(new zzhg(this));
        for (Field field : cls.getDeclaredFields()) {
            zzhp zza = zzhp.zza(field);
            if (zza != null) {
                String name = zza.getName();
                name = z ? name.toLowerCase(Locale.US).intern() : name;
                zzhp zzhpVar = this.zzyh.get(name);
                boolean z3 = zzhpVar == null;
                Object[] objArr = new Object[4];
                objArr[0] = z ? "case-insensitive " : "";
                objArr[1] = name;
                objArr[2] = field;
                objArr[3] = zzhpVar == null ? null : zzhpVar.zzgy();
                if (!z3) {
                    throw new IllegalArgumentException(zzld.zzb("two fields have the same %sname <%s>: %s and %s", objArr));
                }
                this.zzyh.put(name, zza);
                treeSet.add(name);
            }
        }
        Class<? super Object> superclass = cls.getSuperclass();
        if (superclass != null) {
            zzhh zza2 = zza(superclass, z);
            treeSet.addAll(zza2.zzyi);
            for (Map.Entry<String, zzhp> entry : zza2.zzyh.entrySet()) {
                String key = entry.getKey();
                if (!this.zzyh.containsKey(key)) {
                    this.zzyh.put(key, entry.getValue());
                }
            }
        }
        this.zzyi = treeSet.isEmpty() ? Collections.emptyList() : Collections.unmodifiableList(new ArrayList(treeSet));
    }

    public final Collection<zzhp> zzgv() {
        return Collections.unmodifiableCollection(this.zzyh.values());
    }
}
