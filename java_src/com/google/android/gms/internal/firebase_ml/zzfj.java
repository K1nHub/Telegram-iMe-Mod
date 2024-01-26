package com.google.android.gms.internal.firebase_ml;

import com.google.android.exoplayer2.source.rtsp.RtspHeaders;
import com.google.android.gms.internal.firebase_ml.zzho;
import java.io.IOException;
import java.io.Writer;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public final class zzfj extends zzho {
    @zzhs(RtspHeaders.ACCEPT)
    private List<String> accept;
    @zzhs("Accept-Encoding")
    private List<String> acceptEncoding;
    @zzhs("Age")
    private List<Long> age;
    @zzhs(RtspHeaders.WWW_AUTHENTICATE)
    private List<String> authenticate;
    @zzhs(RtspHeaders.AUTHORIZATION)
    private List<String> authorization;
    @zzhs(RtspHeaders.CACHE_CONTROL)
    private List<String> cacheControl;
    @zzhs(RtspHeaders.CONTENT_ENCODING)
    private List<String> contentEncoding;
    @zzhs(RtspHeaders.CONTENT_LENGTH)
    private List<Long> contentLength;
    @zzhs("Content-MD5")
    private List<String> contentMD5;
    @zzhs("Content-Range")
    private List<String> contentRange;
    @zzhs(RtspHeaders.CONTENT_TYPE)
    private List<String> contentType;
    @zzhs("Cookie")
    private List<String> cookie;
    @zzhs(RtspHeaders.DATE)
    private List<String> date;
    @zzhs("ETag")
    private List<String> etag;
    @zzhs(RtspHeaders.EXPIRES)
    private List<String> expires;
    @zzhs("If-Match")
    private List<String> ifMatch;
    @zzhs("If-Modified-Since")
    private List<String> ifModifiedSince;
    @zzhs("If-None-Match")
    private List<String> ifNoneMatch;
    @zzhs("If-Range")
    private List<String> ifRange;
    @zzhs("If-Unmodified-Since")
    private List<String> ifUnmodifiedSince;
    @zzhs("Last-Modified")
    private List<String> lastModified;
    @zzhs(RtspHeaders.LOCATION)
    private List<String> location;
    @zzhs("MIME-Version")
    private List<String> mimeVersion;
    @zzhs(RtspHeaders.RANGE)
    private List<String> range;
    @zzhs("Retry-After")
    private List<String> retryAfter;
    @zzhs(RtspHeaders.USER_AGENT)
    private List<String> userAgent;

    public zzfj() {
        super(EnumSet.of(zzho.zzc.IGNORE_CASE));
        this.acceptEncoding = new ArrayList(Collections.singleton("gzip"));
    }

    public final zzfj zzv(String str) {
        this.authorization = zza((Object) null);
        return this;
    }

    public final String getContentType() {
        return (String) zza((List<Object>) this.contentType);
    }

    public final zzfj zzw(String str) {
        this.ifModifiedSince = zza((Object) null);
        return this;
    }

    public final zzfj zzx(String str) {
        this.ifMatch = zza((Object) null);
        return this;
    }

    public final zzfj zzy(String str) {
        this.ifNoneMatch = zza((Object) null);
        return this;
    }

    public final zzfj zzz(String str) {
        this.ifUnmodifiedSince = zza((Object) null);
        return this;
    }

    public final zzfj zzaa(String str) {
        this.ifRange = zza((Object) null);
        return this;
    }

    public final String getLocation() {
        return (String) zza((List<Object>) this.location);
    }

    public final String getUserAgent() {
        return (String) zza((List<Object>) this.userAgent);
    }

    public final zzfj zzab(String str) {
        this.userAgent = zza(str);
        return this;
    }

    private static void zza(Logger logger, StringBuilder sb, StringBuilder sb2, zzfs zzfsVar, String str, Object obj, Writer writer) throws IOException {
        if (obj == null || zzhj.isNull(obj)) {
            return;
        }
        String name = obj instanceof Enum ? zzhp.zza((Enum) obj).getName() : obj.toString();
        String str2 = ((RtspHeaders.AUTHORIZATION.equalsIgnoreCase(str) || "Cookie".equalsIgnoreCase(str)) && (logger == null || !logger.isLoggable(Level.ALL))) ? "<Not Logged>" : name;
        if (sb != null) {
            sb.append(str);
            sb.append(": ");
            sb.append(str2);
            sb.append(zzib.zzzx);
        }
        if (sb2 != null) {
            sb2.append(" -H '");
            sb2.append(str);
            sb2.append(": ");
            sb2.append(str2);
            sb2.append("'");
        }
        if (zzfsVar != null) {
            zzfsVar.addHeader(str, name);
        }
        if (writer != null) {
            writer.write(str);
            writer.write(": ");
            writer.write(name);
            writer.write("\r\n");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzfj zzfjVar, StringBuilder sb, StringBuilder sb2, Logger logger, zzfs zzfsVar) throws IOException {
        HashSet hashSet = new HashSet();
        for (Map.Entry<String, Object> entry : zzfjVar.entrySet()) {
            String key = entry.getKey();
            Object[] objArr = {key};
            if (!hashSet.add(key)) {
                throw new IllegalArgumentException(zzld.zzb("multiple headers of the same name (headers are case insensitive): %s", objArr));
            }
            Object value = entry.getValue();
            if (value != null) {
                zzhp zzal = zzfjVar.zzgx().zzal(key);
                if (zzal != null) {
                    key = zzal.getName();
                }
                String str = key;
                Class<?> cls = value.getClass();
                if ((value instanceof Iterable) || cls.isArray()) {
                    for (Object obj : zzie.zzi(value)) {
                        zza(logger, sb, sb2, zzfsVar, str, obj, null);
                    }
                } else {
                    zza(logger, sb, sb2, zzfsVar, str, value, null);
                }
            }
        }
    }

    public final void zza(zzfv zzfvVar, StringBuilder sb) throws IOException {
        clear();
        zzfi zzfiVar = new zzfi(this, sb);
        int zzfi = zzfvVar.zzfi();
        for (int i = 0; i < zzfi; i++) {
            String zzy = zzfvVar.zzy(i);
            String zzz = zzfvVar.zzz(i);
            List<Type> list = zzfiVar.zztr;
            zzhh zzhhVar = zzfiVar.zztq;
            zzhd zzhdVar = zzfiVar.zzto;
            StringBuilder sb2 = zzfiVar.zztp;
            if (sb2 != null) {
                StringBuilder sb3 = new StringBuilder(String.valueOf(zzy).length() + 2 + String.valueOf(zzz).length());
                sb3.append(zzy);
                sb3.append(": ");
                sb3.append(zzz);
                sb2.append(sb3.toString());
                sb2.append(zzib.zzzx);
            }
            zzhp zzal = zzhhVar.zzal(zzy);
            if (zzal != null) {
                Type zza = zzhj.zza(list, zzal.getGenericType());
                if (zzie.zzc(zza)) {
                    Class<?> zzb = zzie.zzb(list, zzie.zzd(zza));
                    zzhdVar.zza(zzal.zzgy(), zzb, zza(zzb, list, zzz));
                } else if (zzie.zza(zzie.zzb(list, zza), (Class<?>) Iterable.class)) {
                    Collection<Object> collection = (Collection) zzal.zzh(this);
                    if (collection == null) {
                        collection = zzhj.zzb(zza);
                        zzal.zzb(this, collection);
                    }
                    collection.add(zza(zza == Object.class ? null : zzie.zze(zza), list, zzz));
                } else {
                    zzal.zzb(this, zza(zza, list, zzz));
                }
            } else {
                ArrayList arrayList = (ArrayList) get(zzy);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    zzb(zzy, arrayList);
                }
                arrayList.add(zzz);
            }
        }
        zzfiVar.zzto.zzgt();
    }

    private static <T> T zza(List<T> list) {
        if (list == null) {
            return null;
        }
        return list.get(0);
    }

    private static <T> List<T> zza(T t) {
        if (t == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(t);
        return arrayList;
    }

    private static Object zza(Type type, List<Type> list, String str) {
        return zzhj.zza(zzhj.zza(list, type), str);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzho
    public final /* synthetic */ zzho zzea() {
        return (zzfj) clone();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzho
    public final /* synthetic */ zzho zzb(String str, Object obj) {
        return (zzfj) super.zzb(str, obj);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzho, java.util.AbstractMap
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return (zzfj) super.clone();
    }
}
