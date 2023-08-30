package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.util.Arrays;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes.dex */
public final class zzgf extends zzft {
    private static final String[] zzva;
    private final HostnameVerifier hostnameVerifier;
    private final zzfy zzvy;
    private final SSLSocketFactory zzvz;

    public zzgf() {
        this(null, null, null);
    }

    private zzgf(zzfy zzfyVar, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier) {
        zzgb zzgbVar;
        if (System.getProperty("com.google.api.client.should_use_proxy") != null) {
            zzgbVar = new zzgb(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(System.getProperty("https.proxyHost"), Integer.parseInt(System.getProperty("https.proxyPort")))));
        } else {
            zzgbVar = new zzgb();
        }
        this.zzvy = zzgbVar;
        this.zzvz = null;
        this.hostnameVerifier = null;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzft
    public final boolean zzag(String str) {
        return Arrays.binarySearch(zzva, str) >= 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.firebase_ml.zzft
    public final /* synthetic */ zzfs zzc(String str, String str2) throws IOException {
        Object[] objArr = {str};
        if (!zzag(str)) {
            throw new IllegalArgumentException(zzld.zzb("HTTP method %s not supported", objArr));
        }
        HttpURLConnection zza = this.zzvy.zza(new URL(str2));
        zza.setRequestMethod(str);
        boolean z = zza instanceof HttpsURLConnection;
        return new zzga(zza);
    }

    static {
        String[] strArr = {"DELETE", "GET", "HEAD", "OPTIONS", "POST", "PUT", "TRACE"};
        zzva = strArr;
        Arrays.sort(strArr);
    }
}
