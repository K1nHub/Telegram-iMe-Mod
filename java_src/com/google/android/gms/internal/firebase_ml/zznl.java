package com.google.android.gms.internal.firebase_ml;

import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.internal.Preconditions;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import p033j$.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public class zznl {
    private static final GmsLogger zzass = new GmsLogger("LibraryVersion", "");
    private static zznl zzast = new zznl();
    private ConcurrentHashMap<String, String> zzasu = new ConcurrentHashMap<>();

    public static zznl zzli() {
        return zzast;
    }

    private zznl() {
    }

    public final String getVersion(String str) {
        Preconditions.checkNotEmpty(str, "Please provide a valid libraryName");
        if (this.zzasu.containsKey(str)) {
            return this.zzasu.get(str);
        }
        Properties properties = new Properties();
        String str2 = null;
        try {
            InputStream resourceAsStream = zznl.class.getResourceAsStream(String.format("/%s.properties", str));
            if (resourceAsStream != null) {
                properties.load(resourceAsStream);
                str2 = properties.getProperty("version", null);
                GmsLogger gmsLogger = zzass;
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12 + String.valueOf(str2).length());
                sb.append(str);
                sb.append(" version is ");
                sb.append(str2);
                gmsLogger.m801v("LibraryVersion", sb.toString());
            } else {
                GmsLogger gmsLogger2 = zzass;
                String valueOf = String.valueOf(str);
                gmsLogger2.m805e("LibraryVersion", valueOf.length() != 0 ? "Failed to get app version for libraryName: ".concat(valueOf) : new String("Failed to get app version for libraryName: "));
            }
        } catch (IOException e) {
            GmsLogger gmsLogger3 = zzass;
            String valueOf2 = String.valueOf(str);
            gmsLogger3.m804e("LibraryVersion", valueOf2.length() != 0 ? "Failed to get app version for libraryName: ".concat(valueOf2) : new String("Failed to get app version for libraryName: "), e);
        }
        if (str2 == null) {
            zzass.m807d("LibraryVersion", ".properties file is dropped during release process. Failure to read app version isexpected druing Google internal testing where locally-built libraries are used");
            str2 = "UNKNOWN";
        }
        this.zzasu.put(str, str2);
        return str2;
    }
}
