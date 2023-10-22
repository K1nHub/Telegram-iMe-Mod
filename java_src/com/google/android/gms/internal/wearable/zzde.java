package com.google.android.gms.internal.wearable;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
public final class zzde {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zza(zzdc zzdcVar, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        zzd(zzdcVar, sb, 0);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final void zzb(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                zzb(sb, i, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                zzb(sb, i, str, entry);
            }
        } else {
            sb.append('\n');
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                sb.append(' ');
            }
            sb.append(str);
            if (obj instanceof String) {
                sb.append(": \"");
                sb.append(zzec.zza(zzaw.zzo((String) obj)));
                sb.append('\"');
            } else if (obj instanceof zzaw) {
                sb.append(": \"");
                sb.append(zzec.zza((zzaw) obj));
                sb.append('\"');
            } else if (obj instanceof zzbv) {
                sb.append(" {");
                zzd((zzbv) obj, sb, i + 2);
                sb.append("\n");
                while (i2 < i) {
                    sb.append(' ');
                    i2++;
                }
                sb.append("}");
            } else if (obj instanceof Map.Entry) {
                sb.append(" {");
                Map.Entry entry2 = (Map.Entry) obj;
                int i4 = i + 2;
                zzb(sb, i4, "key", entry2.getKey());
                zzb(sb, i4, AppMeasurementSdk.ConditionalUserProperty.VALUE, entry2.getValue());
                sb.append("\n");
                while (i2 < i) {
                    sb.append(' ');
                    i2++;
                }
                sb.append("}");
            } else {
                sb.append(": ");
                sb.append(obj);
            }
        }
    }

    private static final String zzc(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt)) {
                sb.append("_");
            }
            sb.append(Character.toLowerCase(charAt));
        }
        return sb.toString();
    }

    private static void zzd(zzdc zzdcVar, StringBuilder sb, int i) {
        Method[] declaredMethods;
        boolean equals;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        TreeSet<String> treeSet = new TreeSet();
        for (Method method : zzdcVar.getClass().getDeclaredMethods()) {
            hashMap2.put(method.getName(), method);
            if (method.getParameterTypes().length == 0) {
                hashMap.put(method.getName(), method);
                if (method.getName().startsWith("get")) {
                    treeSet.add(method.getName());
                }
            }
        }
        for (String str : treeSet) {
            String substring = str.startsWith("get") ? str.substring(3) : str;
            if (substring.endsWith("List") && !substring.endsWith("OrBuilderList") && !substring.equals("List")) {
                String concat = String.valueOf(substring.substring(0, 1).toLowerCase()).concat(String.valueOf(substring.substring(1, substring.length() - 4)));
                Method method2 = (Method) hashMap.get(str);
                if (method2 != null && method2.getReturnType().equals(List.class)) {
                    zzb(sb, i, zzc(concat), zzbv.zzX(method2, zzdcVar, new Object[0]));
                }
            }
            if (substring.endsWith("Map") && !substring.equals("Map")) {
                String concat2 = String.valueOf(substring.substring(0, 1).toLowerCase()).concat(String.valueOf(substring.substring(1, substring.length() - 3)));
                Method method3 = (Method) hashMap.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    zzb(sb, i, zzc(concat2), zzbv.zzX(method3, zzdcVar, new Object[0]));
                }
            }
            if (((Method) hashMap2.get("set".concat(substring))) != null && (!substring.endsWith("Bytes") || !hashMap.containsKey("get".concat(String.valueOf(substring.substring(0, substring.length() - 5)))))) {
                String concat3 = String.valueOf(substring.substring(0, 1).toLowerCase()).concat(String.valueOf(substring.substring(1)));
                Method method4 = (Method) hashMap.get("get".concat(substring));
                Method method5 = (Method) hashMap.get("has".concat(substring));
                if (method4 != null) {
                    Object zzX = zzbv.zzX(method4, zzdcVar, new Object[0]);
                    if (method5 == null) {
                        if (zzX instanceof Boolean) {
                            if (((Boolean) zzX).booleanValue()) {
                                zzb(sb, i, zzc(concat3), zzX);
                            }
                        } else if (zzX instanceof Integer) {
                            if (((Integer) zzX).intValue() != 0) {
                                zzb(sb, i, zzc(concat3), zzX);
                            }
                        } else if (zzX instanceof Float) {
                            if (Float.floatToRawIntBits(((Float) zzX).floatValue()) != 0) {
                                zzb(sb, i, zzc(concat3), zzX);
                            }
                        } else if (zzX instanceof Double) {
                            if (Double.doubleToRawLongBits(((Double) zzX).doubleValue()) != 0) {
                                zzb(sb, i, zzc(concat3), zzX);
                            }
                        } else {
                            if (zzX instanceof String) {
                                equals = zzX.equals("");
                            } else if (zzX instanceof zzaw) {
                                equals = zzX.equals(zzaw.zzb);
                            } else if (zzX instanceof zzdc) {
                                if (zzX != ((zzdc) zzX).zzac()) {
                                    zzb(sb, i, zzc(concat3), zzX);
                                }
                            } else {
                                if ((zzX instanceof Enum) && ((Enum) zzX).ordinal() == 0) {
                                }
                                zzb(sb, i, zzc(concat3), zzX);
                            }
                            if (!equals) {
                                zzb(sb, i, zzc(concat3), zzX);
                            }
                        }
                    } else if (((Boolean) zzbv.zzX(method5, zzdcVar, new Object[0])).booleanValue()) {
                        zzb(sb, i, zzc(concat3), zzX);
                    }
                }
            }
        }
        if (!(zzdcVar instanceof zzbt)) {
            zzef zzefVar = ((zzbv) zzdcVar).zzc;
            if (zzefVar != null) {
                zzefVar.zzg(sb, i);
                return;
            }
            return;
        }
        zzbt zzbtVar = (zzbt) zzdcVar;
        throw null;
    }
}
