package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.io.StringWriter;
import java.lang.reflect.Type;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class zzfz implements zzhy {
    public static final String MEDIA_TYPE = new zzfl("application/x-www-form-urlencoded").zza(zzhe.UTF_8).zzep();

    public static void zze(String str, Object obj) {
        if (str == null) {
            return;
        }
        try {
            StringReader stringReader = new StringReader(str);
            Class<?> cls = obj.getClass();
            zzhh zzc = zzhh.zzc(cls);
            List asList = Arrays.asList(cls);
            zzho zzhoVar = zzho.class.isAssignableFrom(cls) ? (zzho) obj : null;
            Map map = Map.class.isAssignableFrom(cls) ? (Map) obj : null;
            zzhd zzhdVar = new zzhd(obj);
            StringWriter stringWriter = new StringWriter();
            StringWriter stringWriter2 = new StringWriter();
            boolean z = true;
            while (true) {
                int read = stringReader.read();
                if (read == -1 || read == 38) {
                    String zzap = zzii.zzap(stringWriter.toString());
                    if (zzap.length() != 0) {
                        String zzap2 = zzii.zzap(stringWriter2.toString());
                        zzhp zzal = zzc.zzal(zzap);
                        if (zzal != null) {
                            Type zza = zzhj.zza((List<Type>) asList, zzal.getGenericType());
                            if (zzie.zzc(zza)) {
                                Class<?> zzb = zzie.zzb(asList, zzie.zzd(zza));
                                zzhdVar.zza(zzal.zzgy(), zzb, zza(zzb, asList, zzap2));
                            } else if (zzie.zza(zzie.zzb(asList, zza), (Class<?>) Iterable.class)) {
                                Collection<Object> collection = (Collection) zzal.zzh(obj);
                                if (collection == null) {
                                    collection = zzhj.zzb(zza);
                                    zzal.zzb(obj, collection);
                                }
                                collection.add(zza(zza == Object.class ? null : zzie.zze(zza), asList, zzap2));
                            } else {
                                zzal.zzb(obj, zza(zza, asList, zzap2));
                            }
                        } else if (map != null) {
                            ArrayList arrayList = (ArrayList) map.get(zzap);
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                                if (zzhoVar != null) {
                                    zzhoVar.zzb(zzap, arrayList);
                                } else {
                                    map.put(zzap, arrayList);
                                }
                            }
                            arrayList.add(zzap2);
                        }
                    }
                    StringWriter stringWriter3 = new StringWriter();
                    StringWriter stringWriter4 = new StringWriter();
                    if (read == -1) {
                        zzhdVar.zzgt();
                        return;
                    }
                    stringWriter2 = stringWriter4;
                    z = true;
                    stringWriter = stringWriter3;
                } else if (read != 61) {
                    if (z) {
                        stringWriter.write(read);
                    } else {
                        stringWriter2.write(read);
                    }
                } else if (z) {
                    z = false;
                } else {
                    stringWriter2.write(read);
                }
            }
        } catch (IOException e) {
            throw zzlc.zza(e);
        }
    }

    private static Object zza(Type type, List<Type> list, String str) {
        return zzhj.zza(zzhj.zza(list, type), str);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzhy
    public final <T> T zza(InputStream inputStream, Charset charset, Class<T> cls) throws IOException {
        throw new NoSuchMethodError();
    }
}
