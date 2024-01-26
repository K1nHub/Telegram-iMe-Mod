package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class zzgi {
    public abstract void flush() throws IOException;

    public abstract void writeBoolean(boolean z) throws IOException;

    public abstract void writeString(String str) throws IOException;

    public abstract void zza(double d) throws IOException;

    public abstract void zza(BigDecimal bigDecimal) throws IOException;

    public abstract void zza(BigInteger bigInteger) throws IOException;

    public abstract void zzaa(int i) throws IOException;

    public abstract void zzaj(String str) throws IOException;

    public abstract void zze(long j) throws IOException;

    public abstract void zzfq() throws IOException;

    public abstract void zzfr() throws IOException;

    public abstract void zzfs() throws IOException;

    public abstract void zzft() throws IOException;

    public abstract void zzfu() throws IOException;

    public void zzfv() throws IOException {
    }

    public abstract void zzl(float f) throws IOException;

    public final void zzc(Object obj) throws IOException {
        zza(false, obj);
    }

    private final void zza(boolean z, Object obj) throws IOException {
        boolean z2;
        if (obj == null) {
            return;
        }
        Class<?> cls = obj.getClass();
        if (zzhj.isNull(obj)) {
            zzfu();
        } else if (obj instanceof String) {
            writeString((String) obj);
        } else {
            boolean z3 = true;
            if (obj instanceof Number) {
                if (z) {
                    writeString(obj.toString());
                } else if (obj instanceof BigDecimal) {
                    zza((BigDecimal) obj);
                } else if (obj instanceof BigInteger) {
                    zza((BigInteger) obj);
                } else if (obj instanceof Long) {
                    zze(((Long) obj).longValue());
                } else if (obj instanceof Float) {
                    float floatValue = ((Number) obj).floatValue();
                    zzkv.checkArgument((Float.isInfinite(floatValue) || Float.isNaN(floatValue)) ? false : false);
                    zzl(floatValue);
                } else if ((obj instanceof Integer) || (obj instanceof Short) || (obj instanceof Byte)) {
                    zzaa(((Number) obj).intValue());
                } else {
                    double doubleValue = ((Number) obj).doubleValue();
                    zzkv.checkArgument((Double.isInfinite(doubleValue) || Double.isNaN(doubleValue)) ? false : false);
                    zza(doubleValue);
                }
            } else if (obj instanceof Boolean) {
                writeBoolean(((Boolean) obj).booleanValue());
            } else if (obj instanceof zzhm) {
                writeString(((zzhm) obj).zzgw());
            } else if ((obj instanceof Iterable) || cls.isArray()) {
                zzfq();
                for (Object obj2 : zzie.zzi(obj)) {
                    zza(z, obj2);
                }
                zzfr();
            } else if (cls.isEnum()) {
                String name = zzhp.zza((Enum) obj).getName();
                if (name == null) {
                    zzfu();
                } else {
                    writeString(name);
                }
            } else {
                zzfs();
                boolean z4 = (obj instanceof Map) && !(obj instanceof zzho);
                zzhh zzc = z4 ? null : zzhh.zzc(cls);
                for (Map.Entry<String, Object> entry : zzhj.zzf(obj).entrySet()) {
                    Object value = entry.getValue();
                    if (value != null) {
                        String key = entry.getKey();
                        if (z4) {
                            z2 = z;
                        } else {
                            zzhp zzal = zzc.zzal(key);
                            Field zzgy = zzal == null ? null : zzal.zzgy();
                            z2 = (zzgy == null || zzgy.getAnnotation(zzgq.class) == null) ? false : true;
                        }
                        zzaj(key);
                        zza(z2, value);
                    }
                }
                zzft();
            }
        }
    }
}
