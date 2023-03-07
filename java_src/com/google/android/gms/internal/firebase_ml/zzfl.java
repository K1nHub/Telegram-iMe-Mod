package com.google.android.gms.internal.firebase_ml;

import com.google.android.exoplayer2.util.MimeTypes;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public final class zzfl {
    private static final Pattern zzui = Pattern.compile("[\\w!#$&.+\\-\\^_]+|[*]");
    private static final Pattern zzuj = Pattern.compile("[\\p{ASCII}&&[^\\p{Cntrl} ;/=\\[\\]\\(\\)\\<\\>\\@\\,\\:\\\"\\?\\=]]+");
    private static final Pattern zzuk;
    private static final Pattern zzul;
    private String type;
    private String zzum;
    private final SortedMap<String, String> zzun = new TreeMap();
    private String zzuo;

    public zzfl(String str) {
        this.type = MimeTypes.BASE_TYPE_APPLICATION;
        this.zzum = "octet-stream";
        Matcher matcher = zzuk.matcher(str);
        zzkv.checkArgument(matcher.matches(), "Type must be in the 'maintype/subtype; parameter=value' format");
        String group = matcher.group(1);
        Pattern pattern = zzui;
        zzkv.checkArgument(pattern.matcher(group).matches(), "Type contains reserved characters");
        this.type = group;
        this.zzuo = null;
        String group2 = matcher.group(2);
        zzkv.checkArgument(pattern.matcher(group2).matches(), "Subtype contains reserved characters");
        this.zzum = group2;
        this.zzuo = null;
        String group3 = matcher.group(3);
        if (group3 != null) {
            Matcher matcher2 = zzul.matcher(group3);
            while (matcher2.find()) {
                String group4 = matcher2.group(1);
                String group5 = matcher2.group(3);
                if (group5 == null) {
                    group5 = matcher2.group(2);
                }
                zza(group4, group5);
            }
        }
    }

    private final zzfl zza(String str, String str2) {
        if (str2 == null) {
            this.zzuo = null;
            this.zzun.remove(str.toLowerCase(Locale.US));
            return this;
        }
        zzkv.checkArgument(zzuj.matcher(str).matches(), "Name contains reserved characters");
        this.zzuo = null;
        this.zzun.put(str.toLowerCase(Locale.US), str2);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzad(String str) {
        return zzuj.matcher(str).matches();
    }

    public final String zzep() {
        String str = this.zzuo;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.type);
        sb.append('/');
        sb.append(this.zzum);
        SortedMap<String, String> sortedMap = this.zzun;
        if (sortedMap != null) {
            for (Map.Entry<String, String> entry : sortedMap.entrySet()) {
                String value = entry.getValue();
                sb.append("; ");
                sb.append(entry.getKey());
                sb.append("=");
                if (!zzad(value)) {
                    String replace = value.replace("\\", "\\\\").replace("\"", "\\\"");
                    StringBuilder sb2 = new StringBuilder(String.valueOf(replace).length() + 2);
                    sb2.append("\"");
                    sb2.append(replace);
                    sb2.append("\"");
                    value = sb2.toString();
                }
                sb.append(value);
            }
        }
        String sb3 = sb.toString();
        this.zzuo = sb3;
        return sb3;
    }

    public final String toString() {
        return zzep();
    }

    private final boolean zza(zzfl zzflVar) {
        return zzflVar != null && this.type.equalsIgnoreCase(zzflVar.type) && this.zzum.equalsIgnoreCase(zzflVar.zzum);
    }

    public static boolean zzb(String str, String str2) {
        return str2 != null && new zzfl(str).zza(new zzfl(str2));
    }

    public final zzfl zza(Charset charset) {
        zza("charset", charset == null ? null : charset.name());
        return this;
    }

    public final Charset zzfb() {
        String str = this.zzun.get("charset".toLowerCase(Locale.US));
        if (str == null) {
            return null;
        }
        return Charset.forName(str);
    }

    public final int hashCode() {
        return zzep().hashCode();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzfl) {
            zzfl zzflVar = (zzfl) obj;
            return zza(zzflVar) && this.zzun.equals(zzflVar.zzun);
        }
        return false;
    }

    static {
        StringBuilder sb = new StringBuilder("[^\\s/=;\"]+".length() + 14 + "[^\\s/=;\"]+".length() + ";.*".length());
        sb.append("\\s*(");
        sb.append("[^\\s/=;\"]+");
        sb.append(")/(");
        sb.append("[^\\s/=;\"]+");
        sb.append(")\\s*(");
        sb.append(";.*");
        sb.append(")?");
        zzuk = Pattern.compile(sb.toString(), 32);
        StringBuilder sb2 = new StringBuilder("\"([^\"]*)\"".length() + 1 + "[^\\s;\"]*".length());
        sb2.append("\"([^\"]*)\"");
        sb2.append("|");
        sb2.append("[^\\s;\"]*");
        String sb3 = sb2.toString();
        StringBuilder sb4 = new StringBuilder("[^\\s/=;\"]+".length() + 12 + String.valueOf(sb3).length());
        sb4.append("\\s*;\\s*(");
        sb4.append("[^\\s/=;\"]+");
        sb4.append(")=(");
        sb4.append(sb3);
        sb4.append(")");
        zzul = Pattern.compile(sb4.toString());
    }
}
