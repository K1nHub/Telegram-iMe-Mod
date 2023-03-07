package com.google.android.gms.internal.firebase_ml;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public final class zzfc extends zzho {
    private static final zzih zzth = new zzik("=&-_.!~*'()@:$,;/?:", false);
    private String fragment;
    private int port;
    private String zzti;
    private String zztj;
    private String zztk;
    private List<String> zztl;

    public zzfc() {
        this.port = -1;
    }

    public zzfc(String str) {
        this(zzu(str));
    }

    public zzfc(URL url) {
        this(url.getProtocol(), url.getHost(), url.getPort(), url.getPath(), url.getRef(), url.getQuery(), url.getUserInfo());
    }

    private zzfc(String str, String str2, int i, String str3, String str4, String str5, String str6) {
        this.port = -1;
        this.zzti = str.toLowerCase(Locale.US);
        this.zztj = str2;
        this.port = i;
        this.zztl = zzt(str3);
        this.fragment = str4 != null ? zzii.zzap(str4) : null;
        if (str5 != null) {
            zzfz.zze(str5, this);
        }
        this.zztk = str6 != null ? zzii.zzap(str6) : null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        return zzep().hashCode();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (super.equals(obj) && (obj instanceof zzfc)) {
            return zzep().equals(((zzfc) obj).zzep());
        }
        return false;
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        return zzep();
    }

    public final String zzep() {
        StringBuilder sb = new StringBuilder();
        sb.append((String) zzkv.checkNotNull(this.zzti));
        sb.append("://");
        String str = this.zztk;
        if (str != null) {
            sb.append(zzii.zzas(str));
            sb.append('@');
        }
        sb.append((String) zzkv.checkNotNull(this.zztj));
        int i = this.port;
        if (i != -1) {
            sb.append(':');
            sb.append(i);
        }
        String valueOf = String.valueOf(sb.toString());
        StringBuilder sb2 = new StringBuilder();
        List<String> list = this.zztl;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                String str2 = this.zztl.get(i2);
                if (i2 != 0) {
                    sb2.append('/');
                }
                if (str2.length() != 0) {
                    sb2.append(zzii.zzaq(str2));
                }
            }
        }
        zza(entrySet(), sb2);
        String str3 = this.fragment;
        if (str3 != null) {
            sb2.append('#');
            sb2.append(zzth.zzan(str3));
        }
        String valueOf2 = String.valueOf(sb2.toString());
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    public final URL zzr(String str) {
        try {
            return new URL(zzu(zzep()), str);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public final void zzs(String str) {
        this.zztl = zzt(null);
    }

    private static List<String> zzt(String str) {
        String substring;
        if (str == null || str.length() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        boolean z = true;
        int i = 0;
        while (z) {
            int indexOf = str.indexOf(47, i);
            boolean z2 = indexOf != -1;
            if (z2) {
                substring = str.substring(i, indexOf);
            } else {
                substring = str.substring(i);
            }
            arrayList.add(zzii.zzap(substring));
            i = indexOf + 1;
            z = z2;
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Set<Map.Entry<String, Object>> set, StringBuilder sb) {
        boolean z = true;
        for (Map.Entry<String, Object> entry : set) {
            Object value = entry.getValue();
            if (value != null) {
                String zzat = zzii.zzat(entry.getKey());
                if (value instanceof Collection) {
                    for (Object obj : (Collection) value) {
                        z = zza(z, sb, zzat, obj);
                    }
                } else {
                    z = zza(z, sb, zzat, value);
                }
            }
        }
    }

    private static boolean zza(boolean z, StringBuilder sb, String str, Object obj) {
        if (z) {
            z = false;
            sb.append('?');
        } else {
            sb.append('&');
        }
        sb.append(str);
        String zzat = zzii.zzat(obj.toString());
        if (zzat.length() != 0) {
            sb.append('=');
            sb.append(zzat);
        }
        return z;
    }

    private static URL zzu(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException(e);
        }
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzho
    public final /* synthetic */ zzho zzea() {
        return (zzfc) clone();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzho
    public final /* synthetic */ zzho zzb(String str, Object obj) {
        return (zzfc) super.zzb(str, obj);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzho, java.util.AbstractMap
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzfc zzfcVar = (zzfc) super.clone();
        if (this.zztl != null) {
            zzfcVar.zztl = new ArrayList(this.zztl);
        }
        return zzfcVar;
    }
}
