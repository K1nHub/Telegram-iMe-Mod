package com.google.android.gms.internal.firebase_ml;

import com.google.android.gms.internal.firebase_ml.zzgo;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes.dex */
public abstract class zzgn {
    private static WeakHashMap<Class<?>, Field> zzwd = new WeakHashMap<>();
    private static final Lock zzwe = new ReentrantLock();

    public abstract void close() throws IOException;

    public abstract int getIntValue() throws IOException;

    public abstract String getText() throws IOException;

    public abstract zzgj zzfy();

    public abstract zzgp zzfz() throws IOException;

    public abstract zzgp zzga();

    public abstract String zzgb() throws IOException;

    public abstract zzgn zzgc() throws IOException;

    public abstract byte zzgd() throws IOException;

    public abstract short zzge() throws IOException;

    public abstract float zzgf() throws IOException;

    public abstract long zzgg() throws IOException;

    public abstract double zzgh() throws IOException;

    public abstract BigInteger zzgi() throws IOException;

    public abstract BigDecimal zzgj() throws IOException;

    public final <T> T zza(Class<T> cls, zzgh zzghVar) throws IOException {
        try {
            return (T) zza(cls, false, null);
        } finally {
            close();
        }
    }

    public final String zza(Set<String> set) throws IOException {
        zzgp zzgl = zzgl();
        while (zzgl == zzgp.FIELD_NAME) {
            String text = getText();
            zzfz();
            if (set.contains(text)) {
                return text;
            }
            zzgc();
            zzgl = zzfz();
        }
        return null;
    }

    private final zzgp zzgk() throws IOException {
        zzgp zzga = zzga();
        if (zzga == null) {
            zzga = zzfz();
        }
        zzkv.checkArgument(zzga != null, "no JSON input found");
        return zzga;
    }

    private final zzgp zzgl() throws IOException {
        zzgp zzgk = zzgk();
        int i = zzgm.zzwc[zzgk.ordinal()];
        boolean z = true;
        if (i != 1) {
            return i != 2 ? zzgk : zzfz();
        }
        zzgp zzfz = zzfz();
        if (zzfz != zzgp.FIELD_NAME && zzfz != zzgp.END_OBJECT) {
            z = false;
        }
        zzkv.checkArgument(z, zzfz);
        return zzfz;
    }

    public final Object zza(Type type, boolean z, zzgh zzghVar) throws IOException {
        try {
            if (!Void.class.equals(type)) {
                zzgk();
            }
            return zza(null, type, new ArrayList<>(), null, null, true);
        } finally {
            if (z) {
                close();
            }
        }
    }

    private final void zza(Field field, Map<String, Object> map, Type type, ArrayList<Type> arrayList, zzgh zzghVar) throws IOException {
        zzgp zzgl = zzgl();
        while (zzgl == zzgp.FIELD_NAME) {
            String text = getText();
            zzfz();
            if (zzghVar != null) {
                throw new NoSuchMethodError();
            }
            map.put(text, zza(field, type, arrayList, map, zzghVar, true));
            zzgl = zzfz();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:182:0x0270, code lost:
        if (com.google.android.gms.internal.firebase_ml.zzie.zza(r3, (java.lang.Class<?>) java.util.Map.class) == false) goto L271;
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x0272, code lost:
        r1 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:125:0x01b4 A[Catch: IllegalArgumentException -> 0x0430, TryCatch #0 {IllegalArgumentException -> 0x0430, blocks: (B:14:0x002f, B:15:0x003d, B:16:0x0040, B:263:0x0411, B:264:0x042f, B:18:0x0046, B:21:0x004d, B:23:0x0054, B:25:0x005c, B:27:0x0064, B:29:0x0071, B:31:0x0079, B:33:0x0086, B:35:0x008f, B:38:0x00a3, B:48:0x00c3, B:51:0x00cd, B:54:0x00d6, B:55:0x00db, B:41:0x00a9, B:43:0x00b1, B:45:0x00b9, B:58:0x00e6, B:61:0x00ef, B:63:0x00f6, B:68:0x0104, B:71:0x010b, B:76:0x0115, B:80:0x011c, B:85:0x0125, B:90:0x012e, B:95:0x0137, B:98:0x013c, B:99:0x015c, B:100:0x015d, B:102:0x0166, B:104:0x016f, B:106:0x0178, B:108:0x0181, B:110:0x018a, B:112:0x0193, B:115:0x019a, B:118:0x01a0, B:123:0x01ac, B:125:0x01b4, B:127:0x01b8, B:129:0x01bb, B:131:0x01be, B:132:0x01c7, B:133:0x01c8, B:137:0x01d2, B:142:0x01de, B:147:0x01eb, B:148:0x01f0, B:149:0x01f1, B:151:0x01f7, B:156:0x020a, B:157:0x0212, B:159:0x0216, B:161:0x022f, B:153:0x01fe, B:155:0x0206, B:164:0x0239, B:165:0x0242, B:166:0x0243, B:170:0x024c, B:173:0x0256, B:178:0x0262, B:179:0x0267, B:181:0x026a, B:186:0x0277, B:192:0x028b, B:194:0x0292, B:196:0x0297, B:198:0x029f, B:200:0x02a7, B:203:0x02b0, B:205:0x02bf, B:207:0x02c3, B:208:0x02cd, B:210:0x02e1, B:212:0x02e9, B:238:0x0389, B:241:0x038f, B:245:0x039f, B:247:0x03b8, B:249:0x03c4, B:255:0x03d3, B:257:0x03df, B:259:0x03e9, B:258:0x03e4, B:250:0x03ca, B:213:0x02fe, B:215:0x0302, B:217:0x030b, B:219:0x0311, B:221:0x0317, B:224:0x031e, B:225:0x0325, B:226:0x0326, B:232:0x0372, B:229:0x0357, B:231:0x036f, B:233:0x037b, B:234:0x0380, B:235:0x0381, B:236:0x0386, B:190:0x0282, B:191:0x0287, B:261:0x0407, B:262:0x0410), top: B:275:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x01be A[Catch: IllegalArgumentException -> 0x0430, TryCatch #0 {IllegalArgumentException -> 0x0430, blocks: (B:14:0x002f, B:15:0x003d, B:16:0x0040, B:263:0x0411, B:264:0x042f, B:18:0x0046, B:21:0x004d, B:23:0x0054, B:25:0x005c, B:27:0x0064, B:29:0x0071, B:31:0x0079, B:33:0x0086, B:35:0x008f, B:38:0x00a3, B:48:0x00c3, B:51:0x00cd, B:54:0x00d6, B:55:0x00db, B:41:0x00a9, B:43:0x00b1, B:45:0x00b9, B:58:0x00e6, B:61:0x00ef, B:63:0x00f6, B:68:0x0104, B:71:0x010b, B:76:0x0115, B:80:0x011c, B:85:0x0125, B:90:0x012e, B:95:0x0137, B:98:0x013c, B:99:0x015c, B:100:0x015d, B:102:0x0166, B:104:0x016f, B:106:0x0178, B:108:0x0181, B:110:0x018a, B:112:0x0193, B:115:0x019a, B:118:0x01a0, B:123:0x01ac, B:125:0x01b4, B:127:0x01b8, B:129:0x01bb, B:131:0x01be, B:132:0x01c7, B:133:0x01c8, B:137:0x01d2, B:142:0x01de, B:147:0x01eb, B:148:0x01f0, B:149:0x01f1, B:151:0x01f7, B:156:0x020a, B:157:0x0212, B:159:0x0216, B:161:0x022f, B:153:0x01fe, B:155:0x0206, B:164:0x0239, B:165:0x0242, B:166:0x0243, B:170:0x024c, B:173:0x0256, B:178:0x0262, B:179:0x0267, B:181:0x026a, B:186:0x0277, B:192:0x028b, B:194:0x0292, B:196:0x0297, B:198:0x029f, B:200:0x02a7, B:203:0x02b0, B:205:0x02bf, B:207:0x02c3, B:208:0x02cd, B:210:0x02e1, B:212:0x02e9, B:238:0x0389, B:241:0x038f, B:245:0x039f, B:247:0x03b8, B:249:0x03c4, B:255:0x03d3, B:257:0x03df, B:259:0x03e9, B:258:0x03e4, B:250:0x03ca, B:213:0x02fe, B:215:0x0302, B:217:0x030b, B:219:0x0311, B:221:0x0317, B:224:0x031e, B:225:0x0325, B:226:0x0326, B:232:0x0372, B:229:0x0357, B:231:0x036f, B:233:0x037b, B:234:0x0380, B:235:0x0381, B:236:0x0386, B:190:0x0282, B:191:0x0287, B:261:0x0407, B:262:0x0410), top: B:275:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0239 A[Catch: IllegalArgumentException -> 0x0430, TryCatch #0 {IllegalArgumentException -> 0x0430, blocks: (B:14:0x002f, B:15:0x003d, B:16:0x0040, B:263:0x0411, B:264:0x042f, B:18:0x0046, B:21:0x004d, B:23:0x0054, B:25:0x005c, B:27:0x0064, B:29:0x0071, B:31:0x0079, B:33:0x0086, B:35:0x008f, B:38:0x00a3, B:48:0x00c3, B:51:0x00cd, B:54:0x00d6, B:55:0x00db, B:41:0x00a9, B:43:0x00b1, B:45:0x00b9, B:58:0x00e6, B:61:0x00ef, B:63:0x00f6, B:68:0x0104, B:71:0x010b, B:76:0x0115, B:80:0x011c, B:85:0x0125, B:90:0x012e, B:95:0x0137, B:98:0x013c, B:99:0x015c, B:100:0x015d, B:102:0x0166, B:104:0x016f, B:106:0x0178, B:108:0x0181, B:110:0x018a, B:112:0x0193, B:115:0x019a, B:118:0x01a0, B:123:0x01ac, B:125:0x01b4, B:127:0x01b8, B:129:0x01bb, B:131:0x01be, B:132:0x01c7, B:133:0x01c8, B:137:0x01d2, B:142:0x01de, B:147:0x01eb, B:148:0x01f0, B:149:0x01f1, B:151:0x01f7, B:156:0x020a, B:157:0x0212, B:159:0x0216, B:161:0x022f, B:153:0x01fe, B:155:0x0206, B:164:0x0239, B:165:0x0242, B:166:0x0243, B:170:0x024c, B:173:0x0256, B:178:0x0262, B:179:0x0267, B:181:0x026a, B:186:0x0277, B:192:0x028b, B:194:0x0292, B:196:0x0297, B:198:0x029f, B:200:0x02a7, B:203:0x02b0, B:205:0x02bf, B:207:0x02c3, B:208:0x02cd, B:210:0x02e1, B:212:0x02e9, B:238:0x0389, B:241:0x038f, B:245:0x039f, B:247:0x03b8, B:249:0x03c4, B:255:0x03d3, B:257:0x03df, B:259:0x03e9, B:258:0x03e4, B:250:0x03ca, B:213:0x02fe, B:215:0x0302, B:217:0x030b, B:219:0x0311, B:221:0x0317, B:224:0x031e, B:225:0x0325, B:226:0x0326, B:232:0x0372, B:229:0x0357, B:231:0x036f, B:233:0x037b, B:234:0x0380, B:235:0x0381, B:236:0x0386, B:190:0x0282, B:191:0x0287, B:261:0x0407, B:262:0x0410), top: B:275:0x002f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object zza(java.lang.reflect.Field r20, java.lang.reflect.Type r21, java.util.ArrayList<java.lang.reflect.Type> r22, java.lang.Object r23, com.google.android.gms.internal.firebase_ml.zzgh r24, boolean r25) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1146
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_ml.zzgn.zza(java.lang.reflect.Field, java.lang.reflect.Type, java.util.ArrayList, java.lang.Object, com.google.android.gms.internal.firebase_ml.zzgh, boolean):java.lang.Object");
    }

    private static Field zzb(Class<?> cls) {
        Field field = null;
        if (cls == null) {
            return null;
        }
        Lock lock = zzwe;
        lock.lock();
        try {
            if (zzwd.containsKey(cls)) {
                Field field2 = zzwd.get(cls);
                lock.unlock();
                return field2;
            }
            for (zzhp zzhpVar : zzhh.zzc(cls).zzgv()) {
                Field zzgy = zzhpVar.zzgy();
                zzgo zzgoVar = (zzgo) zzgy.getAnnotation(zzgo.class);
                if (zzgoVar != null) {
                    Object[] objArr = {cls};
                    if (!(field == null)) {
                        throw new IllegalArgumentException(zzld.zzb("Class contains more than one field with @JsonPolymorphicTypeMap annotation: %s", objArr));
                    }
                    boolean zza = zzhj.zza(zzgy.getType());
                    Object[] objArr2 = {cls, zzgy.getType()};
                    if (!zza) {
                        throw new IllegalArgumentException(zzld.zzb("Field which has the @JsonPolymorphicTypeMap, %s, is not a supported type: %s", objArr2));
                    }
                    zzgo.zza[] zzgo = zzgoVar.zzgo();
                    HashSet hashSet = new HashSet();
                    zzkv.checkArgument(zzgo.length > 0, "@JsonPolymorphicTypeMap must have at least one @TypeDef");
                    for (zzgo.zza zzaVar : zzgo) {
                        boolean add = hashSet.add(zzaVar.zzgm());
                        Object[] objArr3 = {zzaVar.zzgm()};
                        if (!add) {
                            throw new IllegalArgumentException(zzld.zzb("Class contains two @TypeDef annotations with identical key: %s", objArr3));
                        }
                    }
                    field = zzgy;
                }
            }
            zzwd.put(cls, field);
            return field;
        } finally {
            zzwe.unlock();
        }
    }
}
