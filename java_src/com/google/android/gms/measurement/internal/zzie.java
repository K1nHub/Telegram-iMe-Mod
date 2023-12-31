package com.google.android.gms.measurement.internal;

import android.os.Build;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes3.dex */
public final class zzie extends zzgp {
    private final SSLSocketFactory zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzie(zzfv zzfvVar) {
        super(zzfvVar);
        this.zza = Build.VERSION.SDK_INT < 19 ? new zzlb(HttpsURLConnection.getDefaultSSLSocketFactory()) : null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @VisibleForTesting
    public final HttpURLConnection zza(URL url) throws IOException {
        URLConnection openConnection = url.openConnection();
        if (openConnection instanceof HttpURLConnection) {
            SSLSocketFactory sSLSocketFactory = this.zza;
            if (sSLSocketFactory != null && (openConnection instanceof HttpsURLConnection)) {
                ((HttpsURLConnection) openConnection).setSSLSocketFactory(sSLSocketFactory);
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
            httpURLConnection.setDefaultUseCaches(false);
            this.zzs.zzf();
            httpURLConnection.setConnectTimeout(60000);
            this.zzs.zzf();
            httpURLConnection.setReadTimeout(61000);
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setDoInput(true);
            return httpURLConnection;
        }
        throw new IOException("Failed to obtain HTTP connection");
    }

    @Override // com.google.android.gms.measurement.internal.zzgp
    protected final boolean zzf() {
        return false;
    }
}
